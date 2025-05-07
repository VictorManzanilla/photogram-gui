class UsersController < ApplicationController

  def index
    @all_users = User.all

    render({:template => "user_templates/index"})
  end

  def show
    the_id = params.fetch("an_id")
    match_record = User.where({:id => the_id})
    @the_user = match_record.at(0)

    render({:template => "user_templates/show"})
  end
end
