 class SessionsController < AppllicationController

  def new
  end

  def create
    member = login(params[:email], params[:password])
    if member
      redirect_to root_path
    else
      render :_form
    end
  end

  def destroy
    logout
    redirect_to root_path
  end

 end
