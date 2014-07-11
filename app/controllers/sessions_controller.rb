 class SessionsController < AppllicationController

  def new
  end

  def create
    member = login(params[:email], params[:password])
    if member
      redirect_back_or_to root_path, :notice => "logged in"
    else
      flash.now.alert = "email or password was invalid"
      render :_form
    end
  end

  def destroy
    logout
    redirect_to root_path
  end

 end
