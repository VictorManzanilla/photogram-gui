Rails.application.routes.draw do
#  home route
get("/", { :controller => "users", :action => "index"})
##################Users routes########################################
get("/users", {:controller => "users", :action => "index"})

get("/users/:an_id", {:controller => "users", :action => "show"})

post("/update_user/:an_id", {:controller => "users", :action => "update"})


#######################Photo routes#################################

end
