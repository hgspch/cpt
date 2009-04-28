# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def number_to_currency_loc(number)
    # le format IBN est:
    # &euro; 123
    # le format ISO est:
    # 123 EUR       
    number_to_currency(number, {:unit => "&euro; ", :separator => ",",
    :delimiter => " "})

  end
end
