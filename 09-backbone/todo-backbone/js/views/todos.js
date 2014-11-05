var app = app || {}

// todo item view

app.TodoView = Backbone.View.extend({
  // list tag
  tagName: 'li',

  //cache the template unction for a single item
  template: _.template( $('#item-template').html() ),

  // the DOM events specific to an item
  events: {
    'dblclick label': 'edit',
    'keypress .edit': 'updateOnEnter',
    'blur .edit': 'close'
  },

  // the todoview listens for changes to its model re rendering
  // since theres a one to one correspondence between todo and todoview
  // in this app we set a direct reference on the model for convenience
  initialize: function () {
    //this.listenTo(this.model, 'change', this.render);
    this.listenTo(this.model, 'destroy', this.remove);
    this.listenTo(this.model, 'visible', this.toggleVisible);
  },

  render: function () {
    this.$el.html( this.template( this.model.attributes) );

    this.$el.toggleClass( 'completed', this.model.get('completed') );
    this.toggleVisible();

    this.$input = this.$('.edit');
    return this;
  },

  toggleVisible : function () {
    this.$el.toggleClass( 'hidden', this.isHidden());
  },

  isHidden : function () {
    var isCompleted = this.model.get('completed');
    return ( // hidden cases only
      (!isCompleted && app.TodoFilter === 'completed')
      || (isCompleted && app.TodoFilter === 'active')
      );
  },

  toggleCompleted: function () {
    this.model.toggle();
  },

  edit: function(){
    this.$el.addClass('editing');
    this.$input.focus();
  },

  close: function () {
    var value = this.$this.val().trim();

    if ( value ) {
      this.model.save({ title: value });
    }

    this.$el.removeClass('editing');
  },

  updateOnEnter: function( e ) {
    if ( e.which === ENTER_KEY ) {
      this.close();
    }
  },

  clear: function () {
    this.model.destroy();
  }
});