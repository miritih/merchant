class SessionsController < ApplicationController
	before_action :store_return_to, only: [:create]
	def create
        #render text: request.env["omniauth.auth"]
		@user = User.find_or_create_by_auth(request.env["omniauth.auth"])      
		session[:user_id] = @user.id
		load_order
	    @order.update_attributes(user_id: @user.id)
		redirect_back_or_default()
	end
	
	def destroy
	  session[:user_id] = nil
  	  session[:order_id] = nil
	  redirect_to root_path, notice: "Goodbye"
	end
   private 
	 def store_return_to
     session[:return_to] = request.url
     end
end


  
