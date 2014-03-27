class ActivitiesController < ApplicationController
  
  def index
	@activities = PublicActivity::Activity.order("created_at desc")
  end

def show
@activities = PublicActivity::Activity.order("created_at desc").where(owner_id: current_user.follower_id)
	# if condition
	
	# end
end

end
