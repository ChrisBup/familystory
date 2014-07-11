var FamilyStory = FamilyStory || { Models: {}, Collections: {}, Views: {} };

FamilyStory.initialize = function(){

  var members = new FamilyStory.Collections.MemberCollection();
  var listView = new FamilyStory.Views.MemberListView({
    el: $('.members'),
    collection: members
  });

  members.fetch();

  $('form.member-form').on('submit', function(e){
    e.preventDefault();
    var nameField = $('form.member-form input');
    var newName = nameField.val();
    nameField.val('');
    members.create({name: newName});
  })

};

$(function(){
  FamilyStory.initialize();
})

