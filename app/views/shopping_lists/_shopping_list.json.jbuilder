json.extract! shopping_list, :id, :user_id, :item_limit, :delivered, :delivered_at, :created_at, :updated_at
json.url shopping_list_url(shopping_list, format: :json)
