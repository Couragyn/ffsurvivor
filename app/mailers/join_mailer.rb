class JoinMailer < ApplicationMailer
	default from: "FFootballSurvivor@gmail.com"

  def join_email(user)
    @user = user
    mail(to: @user.email, subject: 'Join Fantasy Football Survivor League')
  end
end
