class StudentsController < ApplicationController
  def index
  end

  def edit
    @dojo = Dojo.find(params[:dojo_id])
    @student = Student.find(params[:id])
    @dojos = Dojo.all
  end

  def new
    @dojo = Dojo.find(params[:dojo_id])
    @dojos = Dojo.all
  end

  def show
    @dojo = Dojo.find(params[:dojo_id])
    # @users = User.all.where("id != ?", current_user.id)
    @student = Student.find(params[:id])
    @students = @dojo.students
  end

  def update
    student = Student.find(params[:id])
    dojo = Dojo.find(params[:dojo_id])
    student.update( student_params )

    unless student.valid?
      flash[:errors] = student.errors.full_messages
      redirect_to edit_dojo_student_path
    end

    flash[:success] = "#{student.first_name} #{student.last_name} has been successfully updated."
    redirect_to dojo_path dojo
  end

  def create
    student = Student.create( student_params )
    dojo = Dojo.find(params[:dojo_id])

    unless student.valid?
      flash[:errors] = student.errors.full_messages
      return redirect_to new_dojo_student_path dojo, student.dojo
    end

    flash[:success] = "New student #{student.first_name} #{student.last_name} has been successfully createed
                      in  #{dojo.branch}"
    return redirect_to dojo_path dojo
  end

  def destroy
    student = Student.find(params[:id])
    dojo = Dojo.find(params[:dojo_id])
    flash[:success] = "The user #{student.first_name} #{student.last_name} has been successfully destroyed"
    student.destroy

    redirect_to dojo_path dojo
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name, :email, :dojo_id)
  end
end
