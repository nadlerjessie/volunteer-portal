# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  email           :string
#  password_digest :string
#  bio             :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class UsersController < ApplicationController

  def new
    @user = User.new
    @volunteer = @user.build_volunteer
    @organization = @user.build_organization
  end

  def create
    @user = User.new(user_params)
    if @user.save
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :bio)
    end

end
