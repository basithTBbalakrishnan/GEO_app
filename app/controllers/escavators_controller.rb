class EscavatorsController < ApplicationController
  def show
    @ticket = Ticket.find_by_id(id: params[:id])
    @escavator = @ticket.escavator
  end
end
