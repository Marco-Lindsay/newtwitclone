class Post < ActiveRecord::Base

	belongs_to :user
	validates :content, presence: true, length: { maximum: 140 }
	default_scope order: 'posts.created_at DESC'
	#validates :user_id, presence: true
end
