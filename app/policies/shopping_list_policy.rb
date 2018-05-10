class ShoppingListPolicy < ApplicationPolicy
  def create?
    true if @user == record.user
  end

  def show?
  end

  def edit?
    @user == record.user
  end

  def destroy?
    @user == record.user
  end

  def update?
    true if @user == record.user
  end

  def new?
  end


end