var FamilyStory = FamilyStory || { Models: {}, Collections: {}, Views: {} };

FamilyStory.Views.MemberListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'all', this.render)
  },
  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(member){
      var memberView = new FamilyStory.Views.MemberView({model: member});
      that.$el.append( memberView.render().el );
    })
    return this;
  }
});
