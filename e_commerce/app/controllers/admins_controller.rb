class AdminsController < ApplicationController
  before_action :access_permission, only: [:edit, :update, :destroy, :new, :create, :show]
  before_action :set_admin, only: [:edit, :update, :destroy]

  def index
    @admins = Admin.paginate(page: params[:page])
  end

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)
      if @admin.save
        flash[:success] = "Welcome to the Admin Page."
        redirect_to admin_path(@admin)
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
    @admin = Admin.find(params[:id])
  end

  def destroy
    if @admin.destroy
      flash[:danger] = "Admin was successfully destroyed."
      redirect_to admins_path
    else
      render 'show'
    end
  end

  private

  def admin_params
     params.require(:admin).permit(:name, :contact, :email, :password, :roles, :address, :address2, :state, :city, :zip)
  end

  def set_admin
     @admin = Admin.find(params[:id])
  end

  def access_permission
    unless current_admin.super_admin?
      redirect_to admins_path, alert: 'You are not authorize to access this page'
    end
  end


end
