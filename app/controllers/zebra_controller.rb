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

end
