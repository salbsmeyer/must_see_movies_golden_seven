class DirectorsController < ApplicationController
  def index
    @list_of_directors = Directors.all
  end

  def show
    @director = Directors.find(params["id"])
  end

  def new_form

  end

    def create_row

    p = Directors.new
    p.name = params["name"]
    p.bio = params["bio"]
    p.dob = params["dob"]
    p.image = params["image"]
    p.save

    redirect_to("http://localhost:3000/directors")

  end

  def destroy
    @director = Directors.find(params["id"])

    @director.destroy

    redirect_to("http://localhost:3000/directors")
  end


   def edit_form
    @director = Directors.find(params["id"])
  end

   def update_row
    p = Directors.find(params["id"])
    p.name = params["name"]
    p.bio = params["bio"]
    p.dob = params["dob"]
    p.image = params["image"]
    p.save

    redirect_to("http://localhost:3000/directors")
  end


end
