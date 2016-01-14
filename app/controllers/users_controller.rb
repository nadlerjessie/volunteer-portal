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
    @volunteer.skills.build
    @organization = @user.build_organization
  end

  def create
    binding.pry
    @user = User.new(user_params)
    if @user.save
      set_session(@user)
      redirect_to @user
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :bio, :organization_attributes => [:website], :volunteer_attributes => [:birthday, :skills => [:name]])
    end

    def set_session(user)
      session[:user_id] = user.id
    end

end
