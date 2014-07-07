class StaticPublicController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => [:send_mail]

  def index
  end




  def send_mail

    @email_to = params[:email_to] if params[:email_to]
    p @email_to
    UserMailer.confirm(@email_to).deliver
    redirect_to :action => :index


  end

  def success
  end

  def fail
  end
end
