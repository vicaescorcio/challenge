class SolicitationsController < ApplicationController

	 before_action :logged_in_user, only: [:create, :destroy]


	 def create

	 	@solicitation = current_user.solicitations.build
    if @solicitation.save
      flash[:success] = "Solicitação criada!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
	 	end

	 def destroy
	 	
	 end
end
