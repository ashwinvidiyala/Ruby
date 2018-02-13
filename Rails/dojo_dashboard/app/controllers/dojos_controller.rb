class DojosController < ApplicationController
  def index
    @dojos = Dojo.all
  end

  def new
  end

  def create
    dojo = Dojo.create( dojo_params )
    unless dojo.valid?
      flash[:errors] = dojo.errors.full_messages
      return redirect_to new_dojo_path
    end
    flash[:success] = 'New Dojo successfully created'

    return redirect_to root_path
  end

  private

  def dojo_params
    params.require(:dojo).permit(:branch, :street, :city, :state)
  end
end
