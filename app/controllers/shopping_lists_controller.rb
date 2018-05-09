class ShoppingListsController < ApplicationController
  before_action :set_shopping_list, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:show, :index]

  # GET /shopping_lists
  # GET /shopping_lists.json
  def index
    @shopping_lists = ShoppingList.all
  end

  # GET /shopping_lists/1
  # GET /shopping_lists/1.json
  def show
    @shopping_list_id = params[:id]
    @shopping_list = ShoppingList.find(params[:id])
    
    @items = Item.where(shopping_list_id: @shopping_list_id)
    @item = Item.new
  end

  def add_to_list

  end


  # GET /shopping_lists/new
  def new
    @shopping_list = ShoppingList.new
  end

  # GET /shopping_lists/1/edit
  def edit
  end

  # POST /shopping_lists
  # POST /shopping_lists.json
  def create
    @shopping_list = ShoppingList.new(shopping_list_params)
    @shopping_list.user = current_user
    user = current_user
    user.shopping_list = @shopping_list

    respond_to do |format|
      if @shopping_list.save
        format.html { redirect_to @shopping_list, notice: 'Shopping list was successfully created.' }
        format.json { render :show, status: :created, location: @shopping_list }
      else
        format.html { render :new }
        format.json { render json: @shopping_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shopping_lists/1
  # PATCH/PUT /shopping_lists/1.json
  def update
    respond_to do |format|
      if @shopping_list.update(shopping_list_params)
        format.html { redirect_to @shopping_list, notice: 'Shopping list was successfully updated.' }
        format.json { render :show, status: :ok, location: @shopping_list }
      else
        format.html { render :edit }
        format.json { render json: @shopping_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shopping_lists/1
  # DELETE /shopping_lists/1.json
  def destroy
    @shopping_list.destroy
    respond_to do |format|
      format.html { redirect_to shopping_lists_url, notice: 'Shopping list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shopping_list
      @shopping_list = ShoppingList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shopping_list_params
      params.permit(:user_id, :item_limit, :delivered, :delivered_at)
    end
end
