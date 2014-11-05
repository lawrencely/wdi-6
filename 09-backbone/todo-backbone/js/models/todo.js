
// variable app is equal to itself or an empty object
var app = app || {};

// todo model

app.ToDo = Backbone.Model.extend({

  //default attributes of the todo created has a title and completed key value pairs
  defaults: {
    title: '',
    completed: false
  },

  // this will toggle the completed state of the todo item
  toggle: function() {
    this.save({
      completed: !this.get('completed')
    });
  }

});