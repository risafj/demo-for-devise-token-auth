# frozen_string_literal: true

class User < ActiveRecord::Base
  extend Devise::Models

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  # NOTE: Deleted :trackable (for tracking the last signed-in ip address, date/time etc.) since it was dropped from the Devise default.
  # Refer to the links below for details:
  # https://stackoverflow.com/questions/55735895/nomethoderror-undefined-method-current-sign-in-at-for-user0x000055ce01dcf0a
  # https://www.bountysource.com/issues/75245078-cant-log-in-nomethoderror-undefined-method-current_sign_in_at-for-user-0x000055e053c79c58
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User
end
