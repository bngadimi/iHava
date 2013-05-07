class StaticPagesController < ApplicationController
  
  def splash
  	if signed_in?
      @itemgroup  = current_user.itemgroups.build
    end
  end
  
end
