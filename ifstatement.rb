# define the method
def can_buy_apple_with?(money)
  if money > 5
    "have an apple"
  end
end

# call the method, passing in a 7
can_buy_apple_with?(7)
#=> "have an apple"

# call the method, passing in a 5
can_buy_apple_with?(5)
#=> nil