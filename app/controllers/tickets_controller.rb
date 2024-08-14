class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
  end

  def show
    puts"===params==="+params.inspect
    @ticket = Ticket.find(params[:id])
    puts"===@ticket==="+@ticket.inspect
  end
end
