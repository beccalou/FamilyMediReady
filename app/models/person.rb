class Person < ActiveRecord::Base
  belongs_to :user
  has_many :parents, :class_name => 'Family', :foreign_key => 'id'
  has_many :children, :class_name => 'Family', :foreign_key => 'id'
end