class HomeController < ApplicationController
  def index
  end
  def bulletin
  end	
  def user_edit  	
  	if params[:user].present?
	  	fname =	params[:user][:fname]
	  	lname =	params[:user][:lname]
	  	address =	params[:user][:address]
	  	current_user.update(:fname => fname, :lname=>lname, :address=>address)
    end	
  end	

  def subscribe_mail
    UserMailer.subscription_confirmation(params[:email_subs]).deliver
    redirect_to root_path
  end  
end
