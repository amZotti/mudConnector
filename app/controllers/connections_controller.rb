class ConnectionsController < ApplicationController

  def new

  end

  def create
    $localhost = TelnetClient.new_connection(connection_params)
  end

  def interactive_shell
    $localhost.cmd(params[:string])
  end

  private

  def connection_params
    params.require(:connection).permit(:host, :timeout, :port)
  end
end
