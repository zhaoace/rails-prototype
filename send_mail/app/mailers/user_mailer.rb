class UserMailer < ActionMailer::Base
  default from: "yeinsight@gmail.com"
  # default from: "63687580@qq.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.confirm.subject
  #
  def confirm(email_to="yeinsight@gmail.com")
    @greeting = "Hi  #{email_to}"

    mail to: email_to
  end



end

