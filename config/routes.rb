Rails.application.routes.draw do

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

end
