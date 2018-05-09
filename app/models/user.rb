class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # protect_from_forgery prepend:true
  # before_action :authenticate_user!
  has_one :profile
  has_one :shopping_list

  def create_profile
    Profile.create!({
      user_id: self.id
    })
  end
end
