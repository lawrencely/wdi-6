var app = {};
app.Views = {};
app.Models = {};
app.Collections = {};

app.BlogRouter = Backbone.Router.extend({
  routes: {
    '': 'index',
    'posts/:id': 'getPost',
    '*anythingElse': 'pageNotFound'
  },

  index: function () {
    var appView = new app.Views.AppView({collection: app.posts});
    appView.render();
  },

  getPost: function (id) {
    var post = app.posts.get(id)
    if (!post) {
      app.router.navigate('', {trigger: true})
    } else {
      var view = new app.Views.PostView({model: post});
      view.render();
    }
  },

  pageNotFound: function () {
    // TODO: redirect to home page
    console.log('page not found');
  }
});

app.Models.Post = Backbone.Model.extend({
  defaults: {
    title: 'Untitled post',
    content: 'Your add here'
  }
});

app.Collections.Posts = Backbone.Collection.extend({
  model: app.Models.Post
});

app.Views.AppView = Backbone.View.extend({
  el: '#main',
  initialize: function () {},
  render: function () {
    var template = $('#appView').html();
    this.$el.html( template );

    this.collection.each(function (post) {
      var view = new app.Views.PostListView({model: post});
      view.render();
    });
  }
});

app.Views.PostListView = Backbone.View.extend({
  tagName: 'li',
  events: {
    'click': 'viewPost'
  },
  initialize: function () {},
  render: function () {

    var template = $('#postListView').html();
    var postListHTML = Handlebars.compile(template);

    this.$el.html( postListHTML(this.model.toJSON()));
    $('#posts').append(this.el);
  },
  viewPost: function () {
    app.router.navigate('posts/' + this.model.get('id'), {trigger: true})
  }
});

app.Views.PostView = Backbone.View.extend({
  el: '#main',
  initialize: function () {},
  render: function () {
    var template = $('#postView').html();
    var postHTML = Handlebars.compile(template);

    this.$el.html(postHTML(this.model.toJSON()));
  }
});

$(document).ready( function () {
  app.posts = new app.Collections.Posts([
    new app.Models.Post({id: 1, title: 'First post', content: 'This is the first post'}),
    new app.Models.Post({id: 2, title: 'Second post', content: 'This is my second post'}),
    new app.Models.Post({id: 3, title: 'Third post', content: "This is the third"}),
    new app.Models.Post({id: 4, title: 'Fourth post', content: 'THIS IS THE FOURTH POST'})

    // define seed data
    ]);

  app.router = new app.BlogRouter();
  Backbone.history.start();
});