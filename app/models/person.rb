class Person < ActiveRecord::Base
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  # attr_accessible :first_name, :last_name
  belongs_to :user
  has_many :parents, :class_name => 'Family', :foreign_key => 'parent_id'
  has_many :children, :class_name => 'Family', :foreign_key => 'child_id'
  has_one :medical_history

  def full_name
    self.first_name + " " + self.last_name
  end

end