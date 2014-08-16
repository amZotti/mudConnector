class Message
  def self.broadcast(message)
    WebsocketRails[:message].trigger(:combat, message)
  end
end
