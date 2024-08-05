require 'thread'

class Configuration
  @instance = nil
  @mutex = Mutex.new

  private_class_method :new

  def self.instance
    return @instance if @instance

    # Ensure only one thread can enter this block at a time
    @mutex.synchronize do
      @instance ||= new
    end

    @instance
  end

  def initialize
    @settings = {}
  end

  def set_setting(key, value)
    @settings[key] = value
  end

  def get_setting(key)
    @settings[key]
  end
end

# Use the Singleton instance
config = Configuration.instance
config.set_setting('theme', 'dark')
puts config.get_setting('theme') # Output: dark

# Trying to create another instance will return the same instance
config2 = Configuration.instance
puts config2.get_setting('theme') # Output: dark

puts config.object_id == config2.object_id # Output: true
