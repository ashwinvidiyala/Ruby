class RpgController < ApplicationController
  def index
    render 'index.html.erb'
  end

  def ninja_gold
    session[:gold] ||= 0
    session[:activity] ||= []

    if params[:place] == 'farm'
      gold = rand(10..20)
      session[:gold] += gold
      session[:activity].push("Earned #{gold} golds from the #{params[:place]}")
    elsif params[:place] == 'cave'
      gold = rand(5..10)
      session[:gold] += gold
      session[:activity].push("Earned #{gold} golds from the #{params[:place]}")
    elsif params[:place] == 'house'
      gold = rand(2..5)
      session[:gold] += gold
      session[:activity].push("Earned #{gold} golds from the #{params[:place]}")
    elsif params[:place] == 'casino'
      gold = rand(-50..50)
      session[:gold] += gold
      session[:activity].push("Earned #{gold} golds from the #{params[:place]}")
    end

    return redirect_to root_path
  end

end
