module CarsHelper
  def format_deprecated_price price
    return "" if price.nil?
    number_to_currency(price)
  end
end
