module AppMailer

  class UserMailer < ActionMailer::Base
    helper ApplicationHelper
    helper Rails.application.routes.url_helpers

    default from: "My project <noreply@mayapp.com>"
   
    layout 'email'

    def welcome_message(user_name, user_mail)
      @user_name = user_name
      @user_mail = user_mail
      mail(to: @user_mail, subject: 'Bem vindo')
    end
    
  end


end
