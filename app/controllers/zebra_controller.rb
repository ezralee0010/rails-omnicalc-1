class ZebraController < ApplicationController
  def index
    render({ :template => "game_templates/home_page"})
  end

  def fall
    render({ :template => "game_templates/square"})
  end

  def winter
    @the_num = params.fetch("users_number")

    @the_result = @the_num.to_f ** 2
    render({ :template => "game_templates/square_results"})
  end

  def spring
    render({ :template => "game_templates/square_root"})
  end

  def summer
    @the_num = params.fetch("users_number")

    @the_result = @the_num.to_f ** 0.5
    render({ :template => "game_templates/square_root_results"})
  end

  def milk
    render({ :template => "game_templates/payment"})
  end

  def cookie
    @the_apr = params.fetch("apr_num").to_f

    @the_years = params.fetch("years")

    @the_principal = params.fetch("principal").to_f

    @apr_as_percent = @the_apr / 100

    #use this r
    @apr_as_monthly = @apr_as_percent / 12

    #use this n
    @loan_term = @the_years.to_i * 12

    @numerator = @apr_as_monthly * @the_principal

    @denominator = 1 - (1 + @apr_as_monthly) ** (-@loan_term)

    @result = @numerator / @denominator
    render({ :template => "game_templates/payment_results"})
  end

  def tennis
    render({ :template => "game_templates/random"})
  end

  def shoe
    @min = params.fetch("minimum").to_f
    @max = params.fetch("maximum").to_f

    @result = rand(@min..@max)

    render({ :template => "game_templates/random_results"})
  end

end
