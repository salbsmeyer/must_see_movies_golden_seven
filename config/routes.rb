Rails.application.routes.draw do

##Default home page
get("/", { :controller => "directors", :action => "index" })

#Directors
  get("/directors", { :controller => "directors", :action => "index" })

    #CREATE new form
  get("/directors/new", { :controller => "directors", :action => "new_form" })
  get("directors/create_director", { :controller => "directors", :action => "create_row" })

  get("/directors",           { :controller => "directors", :action => "index" })
  get("/directors/:id",       { :controller => "directors", :action => "show" })

#DELETE
get("/delete_director/:id", { :controller => "directors", :action => "destroy" })

#UPDATE
get("/directors/:id/edit", { :controller => "directors", :action => "edit_form" })
get("/update_director/:id", { :controller => "directors", :action => "update_row" })


#Actors
get("/actors", { :controller => "actors", :action => "index" })

    #CREATE new form
  get("/actors/new", { :controller => "actors", :action => "new_form" })
  get("actors/create_actor", { :controller => "actors", :action => "create_row" })

  get("/actors",           { :controller => "actors", :action => "index" })
  get("/actors/:id",       { :controller => "actors", :action => "show" })

#DELETE
get("/delete_actor/:id", { :controller => "actors", :action => "destroy" })

#UPDATE
get("/actors/:id/edit", { :controller => "actors", :action => "edit_form" })
get("/update_actor/:id", { :controller => "actors", :action => "update_row" })


#Movies
get("/movies", { :controller => "movies", :action => "index" })

    #CREATE new form
  get("/movies/new", { :controller => "movies", :action => "new_form" })
  get("movies/create_movie", { :controller => "movies", :action => "create_row" })

  get("/movies",           { :controller => "movies", :action => "index" })
  get("/movies/:id",       { :controller => "movies", :action => "show" })

#DELETE
get("/delete_movies/:id", { :controller => "movies", :action => "destroy" })

#UPDATE
get("/movies/:id/edit", { :controller => "movies", :action => "edit_form" })
get("/update_movies/:id", { :controller => "movies", :action => "update_row" })

end
