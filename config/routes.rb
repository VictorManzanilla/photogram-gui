Rails.application.routes.draw do
#  home route
get("/", { :controller => "users", :action => "index"})
##################Users routes########################################
get("/users", {:controller => "users", :action => "index"})

get("/users/:input_username", {:controller => "users", :action => "show"})

post("/add_user", {:controller => "users", :action => "create"})


post("/update_user/:update_username", {:controller => "users", :action => "update"})


#######################Photo routes#################################
get("/photos", {:controller => "photos", :action => "index"})

get("/photos/:an_id", {:controller => "photos", :action => "show"})

get("/delete_photo/:an_id", {:controller => "photos", :action => "destroy"})


post("/insert_photo_record", {:controller => "photos", :action => "create"})



end
