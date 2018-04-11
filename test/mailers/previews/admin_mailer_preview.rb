# Preview all emails at http://localhost:3000/rails/mailers/admin_mailer
class AdminMailerPreview < ActionMailer::Preview
    def admin_mail_preview
		AdminMailer.limits_alert_email(Admin.first, Pool.first, ['pH fuera de rango', 'CLORO muy bajo'])
	end
end
