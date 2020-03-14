class ListsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create]

    def index
        @lists = List.all
    end

    def new
        @list = List.new
    end

    def create
        @list = List.new(list_params)
        @list.user_id = current_user.id
        @list.save
        flash[:notice] = "List was saved."
        redirect_to @list
    end

    def show
        @list = List.find(params[:id])
        @listitem = Listitem.new()
    end

    def mylists
        @lists = List.where(user_id = current_user.id)
    end

    
    private

    def require_login
        unless user_signed_in?
        flash[:error] = "You must be logged in to access this section"
        redirect_to new_user_session_url # halts request cycle
        end
    end

    def list_params
        params.require(:list).permit(:name, :country, :town, :postcode)
    end


end
