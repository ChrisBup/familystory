var FamilyStory = FamilyStory || { Models: {}, Collections: {}, Views: {} };

FamilyStory.Collections.MemberCollection = Backbone.Collection.extend({
  model: FamilyStory.Models.Member,
  url: '/members'
});
