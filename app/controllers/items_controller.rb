class ItemsController < ApplicationController
 before_action :set_item, only: [:show, :edit, :update, :destroy]
 before_action :set_combo_values, only: [:new, :edit]
 PAGE_SIZE = 10

 # GET /items
 # GET /items.json
 def index
  @page = (params[:page] || 0).to_i
  @keywords = params[:keywords]

  search = Search.new(@page, PAGE_SIZE, @keywords)
  @items, @number_of_pages = search.items_by_descripcion
 end

 # GET /items/1
 # GET /items/1.json
 def show
 end

 # GET /items/new
 def new
  @item = Item.new
 end

 # GET /items/1/edit
 def edit
 end

 # POST /items
 # POST /items.json
 def create
  @item = Item.new(item_params)

  respond_to do |format|
   if @item.save
    format.html { redirect_to items_url, notice: 'Artículo creado.' }
    format.json { render :show, status: :created, location: @item }
   else
    format.html { render :new }
    format.json { render json: @item.errors, status: :unprocessable_entity }
   end
  end
 end

 # PATCH/PUT /items/1
 # PATCH/PUT /items/1.json
 def update
  respond_to do |format|
   if @item.update(item_params)
    format.html { redirect_to items_url, notice: 'Artículo Actualizado.' }
    format.json { render :show, status: :ok, location: @item }
   else
    format.html { render :edit }
    format.json { render json: @item.errors, status: :unprocessable_entity }
   end
  end
 end

 # DELETE /items/1
 # DELETE /items/1.json
 def destroy
  @item.destroy
  respond_to do |format|
   format.html { redirect_to items_url, notice: 'Artículo Eliminado.' }
   format.json { head :no_content }
  end
 end

 private
  # Use callbacks to share common setup or constraints between actions.
  def set_item
   @item = Item.find(params[:id])
  end

  def set_combo_values
   @units = Unit.all.order(:nombre)
   @categories = Category.all.order(:nombre)
  end
    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:nombre, :codigo, :comision, :descuento, :precio_venta, :precio_compra, :foto, :proveedor_id, :descripcion, :brand_id, :unit_id, :category_id, :stock, :min_stock, :precio)
    end
end
