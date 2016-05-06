class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  belongs_to :department
  has_many :approvals
  has_many :requests
  has_one :user_type

  # devise :database_authenticatable, :registerable,
  # :recoverable, :rememberable, :trackable, :validatable
  devise :cas_authenticatable

  # Handle CAS extra attributes and save to DB
  def cas_extra_attributes=(extra_attributes)
    extra_attributes.each do |name, value|
      case name.to_sym
      when :fullname
        self.display_name = value
      when :email
        self.email = value
      end
    end
  end
end
