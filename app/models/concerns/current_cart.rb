module CurrentCart
    #creates a session in the app for the shopping cart
    #The cart if found using the session cart_id
    # if the Cart cannot be found, a new cart is created where the id of the session is the cart id
  
    def set_cart
        @cart = Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
        @cart = Cart.create
        session[:cart_id] = @cart.id
    end
  end