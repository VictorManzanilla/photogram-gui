Rails.application.routes.draw do
#  home route
get("/", { :controller => "users", :action => "index"})
##################Users routes########################################
get("/users", {:controller => "users", :action => "index"})


#######################Photo routes#################################

end
