class CalcController < ApplicationController

  def s_n
    render({ :template => "calc_templates/square" })
  end

  def s_r
    @number = params[:square].to_f
    @square = @number * @number
    render({ :template => "calc_templates/square_results" })
  end

  def sr_n
    render({ :template => "calc_templates/sqrt" })
  end

  def sr_r
    @number = params[:user_number].to_f
    @square_root = Math.sqrt(@number)
    render({ :template => "calc_templates/sqrt_results" })
  end

  def p_n
    render({ :template => "calc_templates/payment" })
  end

  def p_r
    @apr = params[:user_apr].to_f
    @years = params[:user_years].to_i
    @principle = params[:user_pv].to_f
    @monthly_rate = (@apr / 100) / 12
  
    @num_months = @years * 12
  
    @numerator = @monthly_rate * @principle
    @denominator = 1 - (1 + @monthly_rate)**-@num_months
    @monthly_payment = @numerator / @denominator
    render({ :template => "calc_templates/payment_results" })
  end

  def r_n
    render({ :template => "calc_templates/random" })
  end

  def r_r
    @min = params[:user_min].to_f
    @max = params[:user_max].to_f
    @num = rand(@min..@max)
    render({ :template => "calc_templates/random_results" })
  end
end
