class UsersController < ApplicationController
 def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
 end


  def show
  end

private 

# Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit({post_ids: []},  :name)
    end

end
