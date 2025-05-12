class UsersController < ApplicationController

  def index
    @all_users = User.all

    render({:template => "user_templates/index"})
  end

  def show
    the_username = params.fetch("input_username")
    match_record = User.where({:username => the_username})
    @the_user = match_record.at(0)

    render({:template => "user_templates/show"})
  end

  def create
    @the_user = User.new

    @the_user.username = params.fetch("input_username")

    @the_user.save

    redirect_to("/users/#{@the_user.username}")
  end

  def update
    the_username = params.fetch("update_username")
    match_record = User.where({:username => the_username})
    @the_user = match_record.at(0)


    @the_user.username = params.fetch("input_username")

    @the_user.save

    redirect_to("/users/#{@the_user.username}")
  end
end
