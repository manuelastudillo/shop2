require 'test_helper'

class ItemsControllerTest < ActionController::TestCase
  setup do
    @item = items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item" do
    assert_difference('Item.count') do
      post :create, item: { brand_id: @item.brand_id, category_id: @item.category_id, codigo: @item.codigo, comision: @item.comision, descripcion: @item.descripcion, descuento: @item.descuento, foto: @item.foto, min_stock: @item.min_stock, nombre: @item.nombre, precio: @item.precio, precio_compra: @item.precio_compra, precio_venta: @item.precio_venta, proveedor_id: @item.proveedor_id, proveedor_id: @item.proveedor_id, stock: @item.stock, unit_id: @item.unit_id }
    end

    assert_redirected_to item_path(assigns(:item))
  end

  test "should show item" do
    get :show, id: @item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item
    assert_response :success
  end

  test "should update item" do
    patch :update, id: @item, item: { brand_id: @item.brand_id, category_id: @item.category_id, codigo: @item.codigo, comision: @item.comision, descripcion: @item.descripcion, descuento: @item.descuento, foto: @item.foto, min_stock: @item.min_stock, nombre: @item.nombre, precio: @item.precio, precio_compra: @item.precio_compra, precio_venta: @item.precio_venta, proveedor_id: @item.proveedor_id, proveedor_id: @item.proveedor_id, stock: @item.stock, unit_id: @item.unit_id }
    assert_redirected_to item_path(assigns(:item))
  end

  test "should destroy item" do
    assert_difference('Item.count', -1) do
      delete :destroy, id: @item
    end

    assert_redirected_to items_path
  end
end
