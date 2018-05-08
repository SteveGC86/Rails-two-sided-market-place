json.extract! item, :id, :shopping_list_id, :name, :created_at, :updated_at
json.url item_url(item, format: :json)
