class ProductsController < ApplicationController
  def index
    render text: 'What do you want me to say?'
  end

  def times
    session.key?(:counter) ? session[:counter] += 1 : session[:counter] = 0
    render text: "You visited this url #{session[:counter]} times"
  end

  def create
    @product = Product.create( name: params[:name], description: params[:description])
    redirect_to '/products/index'
  end

  def hello
    render text: 'Hello CodingDojo!'
  end

  def say_hello_name
    render text: "Saying hello #{params[:name]}"
  end

  def say_hello
    render text: "Saying hello"
  end

  def restart
    session.delete(:counter)
    return render text: 'Destroyed the session!'
  end
end
