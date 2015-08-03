class ActorsController < ApplicationController
  def index
    @list_of_actors = Actor.all
  end

  def show
    @actor = Actor.find(params["id"])
  end

  def new_form

  end

  def create_row
    p = Actor.new
    p.name = params["name"]
    p.bio = params["bio"]
    p.dob = params["dob"]
    p.image_url = params["image_url"]
    p.save

    redirect_to("http://localhost:3000/actors")

  end

  def destroy
    @actor = Actor.find(params["id"])

    @actor.destroy

    redirect_to("http://localhost:3000/actors")
  end


   def edit_form
    @actor = Actor.find(params["id"])
  end

   def update_row
    p = Actor.find(params["id"])
    p.name = params["name"]
    p.bio = params["bio"]
    p.dob = params["dob"]
    p.image_url = params["image_url"]
    p.save

    redirect_to("http://localhost:3000/actors")
  end


end
