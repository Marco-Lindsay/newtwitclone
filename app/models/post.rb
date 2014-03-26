class Post < ActiveRecord::Base
include PublicActivity::Model
tracked owner: ->(controller, model) { controller && controller.current_user}

	belongs_to :user
	validates :content, presence: true, length: { maximum: 140 }
	default_scope order: 'posts.created_at DESC'
	#validates :user_id, presence: true
end
