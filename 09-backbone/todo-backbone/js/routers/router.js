//router

var Workspace = Backbone.Router.extend({
  router:{
    '*filter': 'setFilter'
  },

  setFilter: function() {
    //set the filter to be used
    if (param) {
      param = param.trim();
    }
    app.TodoFilter = param || '';

    // trigger a collection of filter event causing hiding and unhidding of todo view items
    app.Todos.trigger('filter');
  }
});

app.TodoRouter = new Workspace();
Backbone.history.start();
