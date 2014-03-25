class Family < ActiveRecord::Base
  belongs_to :parent, :class_name => 'Person'
  belongs_to :child, :class_name => 'Person'
end
