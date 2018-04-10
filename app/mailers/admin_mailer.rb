class AdminMailer < ApplicationMailer
    default from: 'familiacarrerasdf@gmail.com'
 
    def limits_alert_email(admin, pool, errors)
      @admin = admin
      @pool = pool
      @errors = errors
      mail(to: @admin.email, subject: 'Aviso: parámetros de piscina no válidos')
    end
end
