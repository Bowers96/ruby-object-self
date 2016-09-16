# Define a Person class
class Person
  attr_reader :status

  def initialize
    @status = nil
  end

  # attr_writer :status
  # def status=(val)
  #  @status = val
  # end

  def status=(new_status)
    @status = new_status

    # Side Effect of changing a Person's status is to say it
    %x{ say "Status changed to #{status}" }
  end

  def log_in
    self.status = 'online' # come back to me (must use self!)
  end

  def log_out
    # Problem:
    # Will not call the setter method, nor say, that the status has changed!
    # @status = 'offline'
    self.status = 'offline'
  end
end
