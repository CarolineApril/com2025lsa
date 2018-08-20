class HomeController < ApplicationController
  def home #defining home page
  end

  def contact #adding contact page
  end
  
  def request_contact #fields for sending an email
    name = params[:name]
    email = params[:email]
    telephone = params[:telephone]
    message = params[:message]
    
    if email.blank?
    flash[:alert] = I18n.t('home.request_contact.no_email') #make sure that an empty email isn't sent 
    else
    ContactMailer.contact_email(email, name, telephone, message).deliver_now #send email
    flash[:notice] = I18n.t('home.request_contact.email_sent')
    end
    
    redirect_to root_path
  end

end
