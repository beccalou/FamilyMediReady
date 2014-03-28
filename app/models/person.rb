class Person < ActiveRecord::Base
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  # attr_accessible :first_name, :last_name
  belongs_to :user
  # has_many :parents, :class_name => 'Family', :foreign_key => 'parent_id'
  # Find all the rows in the Family table where the child_id
  # equals self.id
  has_many :parents, :class_name => 'Family', :foreign_key => 'child_id'
  has_one :medical_history

  def full_name
    self.first_name + " " + self.last_name
  end

  def father
    # parents.where(parent_role: 'father').first.parent
    father_array = parents.where(parent_role: 'father')
    father_array.first.parent if !father_array.empty?
  end

  def mother
    mother_array = parents.where(parent_role: 'mother')
    mother_array.first.parent if !mother_array.empty?
  end
end