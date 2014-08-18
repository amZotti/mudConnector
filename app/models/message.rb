class Message
  def self.broadcast(message)
    WebsocketRails[:message].trigger(:combat, message)
  end

  def self.display_map(message)
    WebsocketRails[:message].trigger(:movement, message)
  end
end
