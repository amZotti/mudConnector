class TimingsController < WebsocketRails::BaseController
  def initialize_session
    puts "Successfully initialized timings session"
    controller_store[:seconds] = 0
  end

  def self.time_elapsed
    puts controller_store[:seconds]
  end

  def create
    controller_store[:seconds] += attack_time
  end

  private

  def attack_time
    message
  end
end
