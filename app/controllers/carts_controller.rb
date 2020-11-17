class CartsController < ApplicationController
  # If the Cart isn't found, then we will rescue the error with our own invalid_cart method below
  rescue_from ActiveRecord::RecordNotFound, with: :invalid_cart

  before_action :set_cart, only: [:show, :edit, :update, :destroy]

  # GET /carts
  # GET /carts.json
  def index
    @carts = Cart.all
  end

  # GET /carts/1
  # GET /carts/1.json
  def show
  end

  # GET /carts/new
  def new
    @cart = Cart.new
  end

  # GET /carts/1/edit
  def edit
  end

  # POST /carts
  # POST /carts.json
  def create
    @cart = Cart.new(cart_params)

    respond_to do |format|
      if @cart.save
        format.html { redirect_to @cart, notice: 'Cart was successfully created.' }
        format.json { render :show, status: :created, location: @cart }
      else
        format.html { render :new }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carts/1
  # PATCH/PUT /carts/1.json
  def update
    respond_to do |format|
      if @cart.update(cart_params)
        format.html { redirect_to @cart, notice: 'Cart was successfully updated.' }
        format.json { render :show, status: :ok, location: @cart }
      else
        format.html { render :edit }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carts/1
  # DELETE /carts/1.json
  def destroy
    # For validation, the user's session must be the same as the cart ID and then the cart will be destroyed
    @cart.destroy if @cart.id == session[:cart_id]
    session[:card_id] = nil
    
    respond_to do |format|  
        format.html { redirect_to stickers_path, notice: 'Cart was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

  private
    # Finds the cart using the ID passed via the params and assigns this to the cart variable so it can be used elsewhere
    def set_cart
      @cart = Cart.find(params[:id])
    end

    # Whitelist which allows the below list of trusted parameters through.
    def cart_params
      params.fetch(:cart, {})
    end

    # Custom rescue method in the event the Cart cannot be found
    def invalid_cart
      logger.error "Cart cannot be accessed - #{params[:id]}"
      redirect_to root_path, notice:  "Cart cannot be accessed. Please try again."
    end
end
