class StudentsController < ApplicationController
    def new #method called new, enables us to display a form to the user where they can enter student information
    @student = Student.new   #create a new student object and assign it to a instance variable called student
    end 

# After a user enters student information in the form we need to be able to save that information, thats where create method comes.

def create # method called create
    @student = Student.new(student_params) #take student parameters from form that has been submitted
    if @student.save #Save it to the database in new instance variable called @student 
        redirect_to new_student_path #if it saves we redirect to the new controller method
    end
end

private 
  def student_params
    params.require(:student).permit(:firstname, :lastname)
end
end