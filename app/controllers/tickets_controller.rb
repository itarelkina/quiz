class TicketsController < ApplicationController
    def index
        @ticket = Ticket.find(:all, [])
        
        # Ticket.all.sample
    end

    def new
        @ticket = Ticket.new
      end

    def create

        @ticket = Ticket.create(ticket_params)
        if @ticket.invalid?
          flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
        end    
    redirect_to root_path
    end

    def show
        @ticket = Ticket.find params[:id]
    end

    def ticket_params
    params.require(:ticket).permit(:Ticket_details, :owner)
    end
end