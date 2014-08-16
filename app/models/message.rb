class Message
  def self.broadcast(message)
    WebsocketRails[:message].trigger(:combat, message)
  end

  def self.display_map(message)
    WebsocketRails[:message].trigger(:movement, message)
  end

  def self.display_square_information(all_characters)
    WebsocketRails[:message].trigger(:square_information, all_characters)
  end
end
