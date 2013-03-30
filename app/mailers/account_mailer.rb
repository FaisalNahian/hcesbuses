class AccountMailer < ActionMailer::Base
  default from: "info@hcesbuses.com"
  layout 'account_mailer'
  
  def unfinished_registration_reminder(user_id)
    @user = User.find(user_id)
    @subject = "Reminder about your HCESBuses.com account"
    @preview = "You haven't completed the steps to register for your HCESBuses.com account"
    mail(:to => @user.email, :subject => @subject) do |format|
      format.text
      format.html
    end
  end
  
  def new_year_subscription_reminder(user_id)
    @user = User.find(user_id)
    @subject = "It's a new school year at HCESBuses.com!"
    @preview = "Be sure that you are correctly set up to watch your buses for this new school year!"
    mail(:to => @user.email, :subject => @subject) do |format|
      format.text
      format.html
    end
  end
  
end
