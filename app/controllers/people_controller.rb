class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
    @people = Person.find(params[:id])
  end

  def new
    @people = Person.new
  end

  def edit
    @people = Person.find(params[:id])
  end

  def destroy
    Person.find(params[:id]).destroy
    redirect_to people_path
  end

  def create
    @people = Person.new(people_params)
 
    if @people.save
      redirect_to people_path
    else
      render :new
    end
  end

  def update
    @people = Person.find(params[:id])
  
    if @people.update(people_params)
      redirect_to person_path
    else
      render :edit
    end
  end
 
  private
 
    def people_params
      params.require(:person).permit(:name, :eye_color, :hair_color, :age, :gender, :alive)
    end
end
