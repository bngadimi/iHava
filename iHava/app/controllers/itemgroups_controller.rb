class ItemgroupsController < ApplicationController
   before_filter :signed_in_user

  def create
    @itemgroup = current_user.itemgroups.build(params[:itemgroup])
    if @itemgroup.save
      flash[:success] = "Collection created!"
      redirect_to root_url
    else
      render 'static_pages/splash'
    end
  end

  def destroy
    @itemgroup.destroy
    redirect_to root_url
  end
end