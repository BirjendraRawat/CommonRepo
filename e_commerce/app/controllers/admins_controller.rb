class AdminsController < ApplicationController
before_action :set_admin, only: [:edit, :update, :destroy]

  def index
    @admins = Admin.all
  end

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)
      if @admin.save
        flash[:success] = "Welcome to the Admin Page."
        redirect_to admins_url
      else
        render 'new'
      end
  end

  def edit
  end

  def update
    if @admin.update(admin_params)
      flash[:success] = "Your account was updated successfully"
      redirect_to admins_path
    else
      render 'edit'
    end
  end

  def show
  end

  def destroy
     @admin.destroy
     flash[:danger] = "Admin and all products created by admin have been deleted"
     redirect_to admins_path
  end

  private

  def admin_params
     params.require(:admin).permit(:name, :email, :password_digest, :address, :address2)
  end

  def set_admin
     @admin = Admin.find(params[:id])
  end


end
