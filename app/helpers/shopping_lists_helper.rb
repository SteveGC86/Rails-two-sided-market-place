module ShoppingListsHelper
   
  def count_items(id)
    items = Item.where(shopping_list_id: id)
    return items.count
  end
  
end
