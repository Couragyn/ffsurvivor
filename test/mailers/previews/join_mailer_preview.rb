# Preview all emails at http://localhost:3000/rails/mailers/join_mailer
class JoinMailerPreview < ActionMailer::Preview
	def join_mail_preview
    JoinMailer.join_email("t@t.t", "join_url")
  end
end
