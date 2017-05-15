module ProductsHelper
  def print_price(price)
    number_to_currency price
  end

  def print_stock(stock, requested=1)
    if stock == 0
      content_tag(:span, "Out of stock", class: "out_stock")
    elsif requested>stock 
      content_tag(:span, "Insufficient stock (#{stock})", class: "low_stock")
    else
      content_tag(:span, "In stock (#{stock})", class: "in_stock")
    end
  end

end
