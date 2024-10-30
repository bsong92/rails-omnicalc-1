class ZebraController < ApplicationController
  def rules
    render({ :template => "calc_templates/rules"})
  end
  
  def square_new
    render({ :template => "calc_templates/square_new" })
  end

  def square_results
    @the_num = params.fetch("number", 0).to_f
    @the_result = @the_num ** 2
    render({ :template => "calc_templates/square_results" })
  end

  def square_root
    render({ :template => "calc_templates/square_root" })
  end

  def square_root_results
    @the_num = params.fetch("user_number").to_f
    @the_result = Math.sqrt(@the_num)
    render({ :template => "calc_templates/square_root_results" })
  end

  def payment
    render({ :template => "calc_templates/payment" })
  end

  def payment_results
    @apr = params.fetch("user_apr").to_f
    @years = params.fetch("user_years").to_i
    @principal = params.fetch("user_pv").to_f
  
    monthly_rate = @apr / 100 / 12
    num_payments = @years * 12
  
    if monthly_rate == 0
      @payment = @principal / num_payments
    else
      numerator = monthly_rate * @principal
      denominator = 1 - (1 + monthly_rate) ** -num_payments
      @payment = numerator / denominator
    end
    
    render({ :template => "calc_templates/payment_results" })
  end

  def random_new
    render({ :template => "calc_templates/random_new" })
  end

  def random_results
    @min_value = params.fetch("user_min").to_f
    @max_value = params.fetch("user_max").to_f
  
    @random_number = rand(@min_value..@max_value)
    render({ :template => "calc_templates/random_results" })
  end


end
