var FamilyStory = FamilyStory || { Models: {}, Collections: {}, Views: {} };

var MemberEditView = Backbone.View.extend({
  el: '.page',
  events: {
    'submit .edit-member-form': 'saveMember',
    'click .delete': 'deleteMember'
  },
  saveMember: function (ev) {
    var memberDetails = $(ev.currentTarget).serializeObject();
    var member = new Member();
    member.save(memberDetails, {
      success: function (member) {
        router.navigate('', {trigger:true});
      }
    });
    return false;
  },
  deleteMember: function (ev) {
    this.member.destroy({
      success: function () {
        console.log('destroyed');
        router.navigate('', {trigger:true});
      }
    });
    return false;
  },
  render: function (options) {
    var that = this;
    if(options.id) {
      that.member = new Member({id: options.id});
      that.member.fetch({
        success: function (member) {
          var template = _.template($('#edit-member-template').html(), {member: member});
          that.$el.html(template);
        }
      })
    } else {
      var template = _.template($('#edit-member-template').html(), {member: null});
      that.$el.html(template);
    }
  }
});
