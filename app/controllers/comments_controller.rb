class CommentController < ApplicationController

#                     POST   /members/:member_id/comments(.:format)          comments#create
def create
  member = Member.find(params[:member_id])
  comment = Comment.create(comment_params)
  member.comments << comment
  redirect_to member_path(member)
  render json: comment.to_json
end

#  new_member_comment GET    /members/:member_id/comments/new(.:format)      comments#new
def new
  member = Member.find(params[:member_id])
  render json: member.to_json
end

# edit_member_comment GET    /members/:member_id/comments/:id/edit(.:format) comments#edit
def edit
  @member = Member.find(params[:member_id])
  comment = Comment.find(comment_params)
  render json: comment.to_json
end

#                     PATCH  /members/:member_id/comments/:id(.:format)      comments#update
#                     PUT    /members/:member_id/comments/:id(.:format)      comments#update
def update
  @member = Member.find(params[:member_id])
  comment = Comment.find(comment_params)
  comment.update(comment_params)
  render json: comment.to_json
  redirect_to member_path(member)
end

#                     DELETE /members/:member_id/comments/:id(.:format)      comments#destroy
def destroy
  member = Member.find(params[:member_id])
  Comment.delete(params[:id])
  render json: comment.to_json
  redirect_to members_path
end

private

def comment_params
  params.require(:comment).permit(:content, :commentee_id, :member_id)
end

end
