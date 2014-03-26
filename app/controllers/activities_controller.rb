class ActivitiesController < ApplicationController
  
  def index
	@activities = PublicActivity::Activity.order("created_at desc")
  end

def show
@activities = PublicActivity::Activity.order("created_at desc").where(current_user.follows?(followable_id))
	if condition
	
	end
end

end
