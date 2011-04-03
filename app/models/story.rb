class Story < ActiveRecord::Base
  belongs_to :sprint

  validates :title, :presence => true
end
