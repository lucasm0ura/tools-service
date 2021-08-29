# frozen_string_literal: true

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User

  belongs_to :role

  validates_presence_of :email
  validates_presence_of :uid
  validates_presence_of :name
  validates_presence_of :role_id
end
