class UsersController < ApplicationController
  def show
    @user = User.includes(:prototypes).find(params[:id])
    @prototypes = @user.prototypes
  end
end
