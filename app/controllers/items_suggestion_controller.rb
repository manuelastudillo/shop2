class ItemsSuggestionController < ApplicationController
	def index
		if params[:query].present?
			query = params[:query]
			condition1 = "unaccent(lower(items.description)) LIKE '%#{I18n.transliterate(query.downcase)}%'"
			condition2 = condition1 + " OR unaccent(lower(brands.nombre)) LIKE '%#{I18n.transliterate(query.downcase)}%'"
			@items = Item.joins(:brand).where(condition2)
			@items.each do |item|
				item.descripcion = item.item_descripcion
			end
		end
		@items ||= Item.none

		render json: @items
	end
end