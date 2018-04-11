class JoinMailer < ApplicationMailer
	default from: "FFootballSurvivor@gmail.com"

  def join_email(email, join_url)
  	@join_url = join_url
    mail(to: email, subject: 'Join Fantasy Football Survivor League')
  end
end
