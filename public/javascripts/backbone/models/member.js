var FamilyStory = FamilyStory || { Models: {}, Collections: {}, Views: {} };

FamilyStory.Models.Member = Backbone.Model.extend({
  urlRoot: '/members'
});

