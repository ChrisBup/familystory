var FamilyStory = FamilyStory || { Models: {}, Collections: {}, Views: {} };

var MemberListView = Backbone.View.extend({
  el: '.page',
  render: function(){
    var that = this;
    var members = new Members();
    members.fetch({
      success: function(members){
        var template = _.template($('#member-list-template').html(), {members: members.models});
        that.$el.html(template);
      }
    })
  }
});
