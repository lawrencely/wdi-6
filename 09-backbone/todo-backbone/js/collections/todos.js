var app = app || {};

//todo collection
//----------------

// the collection of todos is backed by localstorage instead of a remote server
var TodoList = Backbone.Collection.extend({

  //reference to this collection's model.
  model: app.Todo,

  localStorage: new Backbone.LocalStorage('todos-backbone'),

  // filter down the list of all todo items that are finished.
  completed: function() {
    return this.filter(function( todo ) {
      return todo.get("completed");
    });
  },

  //filter down the list to only todo items that are still not finisehd
  remaining: function() {
  return this.without.apply( this, this.completed() );
  },

  //we keep the Todos in sequential order, despite being saved by unordered
  // GUID in the database. This generated the next order number for new itmes

  nextOrder: function() {
    if (!this.length ) {
      return 1;
    }
    return this.last().get('order') + 1;
  },

  // todos are sorted by their original insertion order.
  comparator: function (todo ) {
    return todo.get('order');
  }
});

//Create our global collection of **todos**
app.Todos = new Todolist();

