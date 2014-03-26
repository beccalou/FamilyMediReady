class User < ActiveRecord::Base
  has_many :people
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def this_person
    self.people.order(:created_at).first
  end
end
