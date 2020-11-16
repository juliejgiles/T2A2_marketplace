module ApplicationHelper
    # Cart displays in the navbar to show how many items are in the cart
    def cart_count_over_one 
        if @cart.cart_items.count>0
            return "<span class='tag is-light has-text-black'>#{@cart.cart_items.count}</span>".html_safe
        end
    end

    def cart_has_items
        return @cart.cart_items.count >= 0
    end
end
