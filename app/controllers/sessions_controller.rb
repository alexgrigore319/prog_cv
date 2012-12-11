class SessionsController < ApplicationController

def new
end

def create
@user = User.find_by_email( params[:sessions][:email].downcase )

if @user && @user.authenticate( params[:sessions][:password] )
  sign_in @user
  redirect_to root_path
 elsif (!@user)
   render 'new'
   flash[:notice] = "Nu exista niciun user cu acest email!"
  else render 'new' 
      flash[:notice] = "Parola este gresita"
       
end

end

def destroy
  sign_out
  redirect_to root_path
end

end
