class TimingsController < WebsocketRails::BaseController
  def initialize_session
    puts "Successfully initialized timings session"
    controller_store[:message_count] = 0
  end

  def create
    controller_store[:message_count] += message
    puts controller_store[:message_count].inspect
  end
end
