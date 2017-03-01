json.extract! item, :id, :nombre, :codigo, :comision, :descuento, :precio_venta, :precio_compra, :foto, :proveedor_id, :descripcion, :brand_id, :unit_id, :category_id, :proveedor_id, :stock, :min_stock, :precio, :created_at, :updated_at
json.url item_url(item, format: :json)
