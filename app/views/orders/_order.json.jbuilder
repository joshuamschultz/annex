json.extract! order, :id, :part_id, :quantity, :supplier_id, :po_number, :created_at, :updated_at
json.url order_url(order, format: :json)
