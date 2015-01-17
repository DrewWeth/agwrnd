class Task < ActiveRecord::Base
  validates :content, :presence => true

end
