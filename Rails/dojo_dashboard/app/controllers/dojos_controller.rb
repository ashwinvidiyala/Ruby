class DojosController < ApplicationController
  def index
    @dojos = Dojo.all
  end

  def new
  end

  def edit
    @dojo = Dojo.find(params[:id])
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

  def update
    dojo = Dojo.find(params[:id])
    dojo.update( dojo_params )
    unless dojo.valid?
      flash[:errors] = dojo.errors.full_messages
      return redirect_to edit_dojo_path
    end
    flash[:success] = "#{dojo.branch} has been successfully updated"

    return redirect_to root_path
  end

  def show
    @dojo = Dojo.find(params[:id])
    @students = @dojo.students
    return render 'show.html.erb'
  end

  def destroy
    dojo = Dojo.find(params[:id])
    flash[:success] = "#{dojo.branch} has been successfully destroyed"
    dojo.destroy

    redirect_to root_path
  end

  private

  def dojo_params
    params.require(:dojo).permit(:branch, :street, :city, :state)
  end
end
