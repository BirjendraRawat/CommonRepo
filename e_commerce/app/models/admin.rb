class Admin < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  SUPER_ADMIN = 'super_admin'.freeze
  ADMIN = 'admin'.freeze
  MANAGER = 'manager'.freeze

  ROLES = {
    "Super Admin (Will have full access of all features)" => SUPER_ADMIN,
    "Admin" => ADMIN,
    "Manager" => MANAGER
  }

  def super_admin?
    role == SUPER_ADMIN
  end

  def admin?
    role == ADMIN
  end

  def manager?
    role == MANAGER
  end

end
