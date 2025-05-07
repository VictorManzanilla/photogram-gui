class UsersController < ApplicationController

  def index

    @all_users = User.all

    render({:template => "user_templates/index"})

  end

end
