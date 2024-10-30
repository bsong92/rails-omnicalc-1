class ZebraController < ApplicationController
  def rules
    render({ :template => "calc_templates/rules"})
  end
  
  def square_new
    @the_num = params.fetch("number").to_f

    @the_result = @the_num ** 2
  
    render({ :template => "calc_templates/square_new"})
  end
end
