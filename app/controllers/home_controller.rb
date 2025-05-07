class HomeController < ApplicationController

  def home
  render({ :template => "home_templates/home"})
  end
  
end
