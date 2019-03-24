class TicketsController < ApplicationController
    def index
        @ticket = Ticket.first
        @ticket = Ticket.order("RANDOM()").first
    end

end