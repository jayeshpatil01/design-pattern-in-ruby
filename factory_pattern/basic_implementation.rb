# Step 1: Define a base class
class Notification
  def send_message
    raise NotImplementedError, "You must implement the send_message method."
  end
end


# Step 2: Define subclasses for specific types of notification
class EmailNotification < Notification
  def send_message
    puts "Sending Email Notification"
  end
end

class SMSNotification < Notification
  def send_message
    puts "Sending SMS Notification"
  end
end

# Step 3: Define a Factory class to create objects
class NotificationFactory
  def self.create_notification(type)
    case type
    when :email
      EmailNotification.new
    when :sms
      SMSNotification.new
    else
      rails "Unknown notification type"
    end
  end
end

# Step 4: Use the factory to create objects
notification = NotificationFactory.create_notification(:email)
notification.send_message # Output: Sending Email Notification

notification = NotificationFactory.create_notification(:sms)
notification.send_message # Output: Sending SMS Notification
