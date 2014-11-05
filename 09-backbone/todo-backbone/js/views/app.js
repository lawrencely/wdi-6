var app = app || {};

// the application
//----------------

// the overall appview is the toplevel piece of UI
app.AppView = Backbone.View.extend({
  //instead of generation a new element bind to the exisiting skeleton of
  // the App already present in the html.
  el: '#todoapp',

  // our template for the line of statistics at the bottom of the app.
statsTemplate: _.template( $('#stats-template').html() ),

  //at initialization we bind the relevant events on the todos
  // collection when items are added or changed
  initialize: function () {
    this.allCheckbox = this.$('#toggle-all')[0];
    this.$input = this.$('#new-todo');
    this.$footer = this.$('#footer');
    this.$main = this.$('#main');

    this.listenTo(app.Todos, 'add', this.addOne);
    this.listenTo(app.Todos, 'reset', this.addAll);

    this.listenTo(app.Todos, 'change:completed', this.filterOne);
    this.listenTo(app.Todos, 'filter', this.filterAll);
    //this.listenTo(app.Todos, 'all', this.render);

    app.Todos.fetch();
  },

  //re-rendering the app just mean refreshing the statistics -- the rest
  // of the app doesnt chage

  render: function () {
    var completed = app.Todos.completed().length;
    var remaining = app.Todos.remaining().length;

    if ( app.Todos.length ){
      this.$main.show();
      this.$footer.show();

      this.$footer.html(this.statsTemplate({
        completed: completed,
        remaining: remaining
      }));

      this.$('#filters li a')
        .removeClass('selected')
        .filter('[href="#/' + ( app.TodoFilter || '') + '"]')
        .addClass('selected');
    } else {
      this.$main.hide();
      this.$footer.hide();
    }
    this.allCheckbox.checked = !remaining;
  },

  //add a single todo item to the list by creating a view for it, and
  // appending its element to the <ul> tags

  addOne: function ( todo ) {
    var view = new app.TodoView({ model: todo });
   // $('#todo-list').append( view.render().el );
  },

  //add all items in the todo collection at once
  addAll: function () {
    this.$('#todo-list').html('');
    app.Todos.each(this.addOne, this);
  },

  filterOne: function ( todo ) {
    todo.trigger('visible');
  },

  filterAll: function () {
    app.Todos.each(this.filterOne, this);
  },

  //generating new attributes

  newAttributes: function () {
    return {
      title: this.$input.val().trim(),
      order: app.Todos.nextOrder(),
      completed: false
    };
  },

  // if you hit return in the main input field create new todo model
  // persisting it to localstorage
  createOnEnter: function (event) {
    if ( event.which !== ENTER_KEY || !this.$input.val().trim() ) {
      return;
    }

    app.Todos.create( this.newAttributes() );
    this.$input.val('');
  },

  clearCompleted: function () {
    var completed = this.allCheckbox.checked;

    app.Todos.each(function (todo) {
      todo.save({
        'completed': completed
      });
    });
  }
});