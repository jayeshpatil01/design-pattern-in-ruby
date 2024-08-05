# Define the abastract factory interface
class AbastractNotificationFactory
  def create_notification
    raise NotImplementedError, "You must implement the create_notification method"
  end
end

# Define concrete factories
class BasicNotificationFactory < AbastractNotificationFactory
  def create_notification(type)
    case type
    when :email
      BasicEmailNotification.new
    when :sms
      BasicSMSNotification.new
    else
      raise 'Unknown notification type'
    end
  end
end

class PremiumNotificationFactory < AbastractNotificationFactory
  def create_notification(type)
    case type
    when :email
      PremiumEmailNotification.new
    when :sms
      PremiumSMSNotification.new
    else
      raise 'Unknown notification type'
    end
  end
end

# Define concrete notification class
class Notification
  def send_message
    raise NotImplementedError, "You must implement the create_notification method"
  end
end

class BasicEmailNotification < Notification
  def send_message
    puts 'Sending basic email notification'
  end
end

class BasicSMSNotification < Notification
  def send_message
    puts 'Sending basic sms notification'
  end
end

class PremiumEmailNotification < Notification
  def send_message
    puts 'Sending premium email notification'
  end
end

class PremiumSMSNotification < Notification
  def send_message
    puts 'Sending premium sms notification'
  end
end

# Use the factories
basic_factory = BasicNotificationFactory.new
notification = basic_factory.create_notification(:email)
notification.send_message # Output: Sending basic email notification

premium_factory = PremiumNotificationFactory.new
notification = premium_factory.create_notification(:sms)
notification.send_message 