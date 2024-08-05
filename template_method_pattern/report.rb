require 'date'

class Report
  class << self
    def call(data)
      @data = data
      format
    end

    private

    def format = raise(NoMethodError, 'implement in the subclass!')
  
    def year = Date.today.to_s
  end
end
