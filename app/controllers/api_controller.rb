class ApiController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def add_pool_values
    @pool_id = params[:pool_id]
    @ph = params[:ph]
    @cl2 = params[:cl2]
    @temp = params[:temp]
    Ph.create(value:@ph, pool_id:@pool_id)
    Cl2.create(value:@cl2, pool_id:@pool_id)
    Temp.create(value:@temp, pool_id:@pool_id)

    errors = check_limits(@ph, @cl2, @temp)
    if !errors.empty?
      AdminMailer.limits_alert_email(Admin.first, Pool.find(@pool_id), errors).deliver_now
    end

  end

  def check_limits(ph, cl2, temp)
    errors = []
    if @ph > Pool.max_ph 
      errors.push("· Valor de PH elevado")
    elsif @ph < Pool.min_ph 
      errors.push("· Valor de PH muy bajo")
    end
    if @cl2 > Pool.max_cl2
      errors.push("· Valor de CLORO elevado")
    elsif @cl2 < Pool.min_cl2
      errors.push("· Valor de CLORO muy bajo")
    end
    return errors
  end

end
