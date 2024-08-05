# Define the abstract base class
class Order
  def process_order
    validate_order
    process_payment
    ship_order
    send_confirmation
  end

  def validate_order
    raise NotImplementedError, 'You must implement the validate_order method'
  end

  def process_payment
    raise NotImplementedError, 'You must implement the process_payment method'
  end

  def ship_order
    raise NotImplementedError, 'You must implement the ship_order method'
  end

  def send_confirmation
    puts 'Sending order confirmation email'
  end
end

# Define a subclass for online orders
class OnlineOrder < Order
  def validate_order
    puts 'Validating online order'
  end

  def process_payment
    puts 'Processing online payment'
  end

  def ship_order
    puts 'Shipping online order'
  end
end

# Define a subclass for in-store orders
class InStoreOrder < Order
  def validate_order
    puts 'Validating in-store order'
  end

  def process_payment
    puts 'Processing in-store payment'
  end

  def ship_order
    puts 'Preparing in-store pickup'
  end
end

# Use the template method to process orders
online_order = OnlineOrder.new
online_order.process_order
# Output:
# Validating online order
# Processing online payment
# Shipping online order
# Sending order confirmation email

in_store_order = InStoreOrder.new
in_store_order.process_order
# Output:
# Validating in-store order
# Processing in-store payment
# Preparing in-store pickup
# Sending order confirmation email
