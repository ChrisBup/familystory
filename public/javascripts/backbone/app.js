var FamilyStory = FamilyStory || { Models: {}, Collections: {}, Views: {} };

$.fn.serializeObject = function() {
  var o = {};
  var a = this.serializeArray();
  $.each(a, function() {
      if (o[this.name] !== undefined) {
          if (!o[this.name].push) {
              o[this.name] = [o[this.name]];
          }
          o[this.name].push(this.value || '');
      } else {
          o[this.name] = this.value || '';
      }
  });
  return o;
};

var Router = Backbone.Router.extend({
  routes: {
    "": "home",
    "edit/:id": "edit",
    "new": "edit"
  }
});

FamilyStory.initialize = function(){

  var members = new FamilyStory.Collections.MemberCollection();
  var memberListView = new FamilyStory.Views.MemberListView({
    el: $('.members'),
    collection: members
  });
  var memberEditView = new FamilyStory.Views.MemberEditView();

  members.fetch();

  FamilyStory.router = new Router;

  router.on('route:home', function(){
    memberListView.render();
  })
  router.on('route:edit', function(id){
    memberEditView.render({id: id});
  })
  Backbone.history.start();

};
