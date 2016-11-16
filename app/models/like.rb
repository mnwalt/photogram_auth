class Like < ActiveRecord::Base

validates :user_id, :presence => true, :uniqueness => { :scope => :photo}

validates :photo_id, :presence => true

belongs_to :photo
end
