class SessionsController < ApplicationController

def new
end

def create
@user = User.find_by_email( params[:sessions][:email].downcase )

if @user && @user.authenticate( params[:sessions][:password] )
  sign_in @user
  redirect_to root_path
 elsif (!@user)
   flash[:notice] = "Nu exista niciun user cu acest email!"
   render 'new'
  else flash[:notice] = "Parola este gresita"
       render 'new'
end

end

def destroy
end

end
