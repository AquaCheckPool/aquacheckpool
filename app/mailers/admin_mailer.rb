class AdminMailer < ApplicationMailer
    default from: 'familiacarrerasdf@gmail.com'
 
    def limits_alert_email(admin, pool, error)
      @admin = admin
      @pool = pool
      @error = error
      mail(to: @admin.email, subject: 'Aviso: compruebe los valores de los parámetros de la piscina')
    end
end
