class TelnetClient
  require 'net/telnet'

  def self.new_connection(data_hash)
    Net::Telnet::new("Host" => data_hash["host"], 
                     "Port" => data_hash["port"],
                     "Timeout" => data_hash["timeout"],
                     "Prompt" => /[$%#>] \z/n)
  end
end
