class ListitemsController < ApplicationController

    def create
        @list = List.find(params[:list_id])
        @listitem = @list.listitems.build(listitem_params)
        @listitem.list_id = @list.id
        @listitem.save
        redirect_to @list

    end


    private

        def listitem_params
            params.require(:listitem).permit(:item_text, :item_count, list_attributes: [:id])
        end
end
