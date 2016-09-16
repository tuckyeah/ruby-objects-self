# Define a Person class
class Person
  attr_reader :status

  def initialize
    @status = nil
  end

  def status=(new_status)
    @status = new_status

    # Side Effect of changing a Person's status is to say it (outloud)
    # it runs this command in the terminal
    %x{ say `Status changed to #{status}` }
  end

  def log_in
    self.status = 'online' # this is calling the 'status=' method from ln 14
  end

  def log_out
    # Problem:
    # Will not call the setter method, nor say, that the status
    # has changed! >> Because of the instance variable! Line 18 will not execute
    # @status = 'offline' << get rid of this
    self.status = 'offline' # right answer
  end
end
