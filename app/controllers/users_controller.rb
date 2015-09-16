class UsersController < ApplicationController

  def index
    time = Time.now
    user = User.first

    if user.nil?
      render text: "No first user found.  Status 404", status: 404
    else
      render text: """This is all the users in my database #{user.all_name}""", status: 200
    end
  end

  def show
    user = User.find(params[:id])
    render text: user.full_name, status: 200
  rescue ActiveRecord::RecordNotFound
    render text: "No user at that ID.   Status 404", status: 404

  end
end
