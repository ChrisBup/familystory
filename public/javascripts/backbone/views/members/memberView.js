var FamilyStory = FamilyStory || { Models: {}, Collections: {}, Views: {} };

FamilyStory.Views.MemberView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model, 'destroy', this.remove)
    this.listenTo(this.model, 'all', this.render)
  },
  tagName: 'li',
  template: _.template($('#member-template').html()),
  editTemplate: _.template($('#edit-member-template').html()),
  render: function(){
    this.$el.html( this.template( this.model.attributes ) );
    return this;
  },
  events:{
    'click [data-action="release"]' : 'deleteMember',
    'click [data-action="edit"]' : 'renderEditForm',
    'mouseover' : 'colorize1',
    'mouseout' : 'colorize2',
  },
  deleteMember: function(){
    this.model.destroy();
    return this;
  },
  renderEditForm: function(){
    var that = this;
    this.$el.html( this.editTemplate( this.model.attributes ) );
    this.$el.find('form').on('submit', function(e){
      e.preventDefault();
      var nameField = that.$el.find('input');
      var newName = nameField.val();
      nameField.val('');
      that.model.save();
    })
    return this;
  },
  colorize1: function(){
    this.$el.css('background-color', 'steelblue');
    return this;
  },
  colorize2: function(){
    this.$el.css('background-color', 'slategray');
    return this;
  }
});
