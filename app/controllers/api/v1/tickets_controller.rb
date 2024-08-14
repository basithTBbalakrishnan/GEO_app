
module Api
	module V1
		class TicketsController < ApplicationController
          skip_before_action :verify_authenticity_token

          def create
          	begin
	          @data = params
	        
	          find_ticket_attributes
	          find_excavator_attributes
	          ticket = Ticket.create(@ticket_attributes)
		      Excavator.create(@excavator_attributes.merge(ticket_id: ticket.id))

		      render json: { success: true }, status: :created
		   
          	rescue StandardError => e
          	  render json: { error: e.message }, status: :unprocessable_entity
          	end
          	
          end

          def find_ticket_attributes
          	@ticket_attributes = {
			  "request_number" => @data["RequestNumber"],
			  "sequence_number" => @data["SequenceNumber"],
			  "request_type" => @data["RequestType"],
			  "request_action" => @data["RequestAction"],
			  "response_due_date_time" => @data["DateTimes"]["ResponseDueDateTime"],
			  "sacode" => @data["ServiceArea"]["PrimaryServiceAreaCode"]["SACode"],
			  "additional_sacodes" => @data["ServiceArea"]["AdditionalServiceAreaCodes"]["SACode"],
			  "well_known_text" => @data["ExcavationInfo"]["DigsiteInfo"]["WellKnownText"]
			}
          end

          def find_excavator_attributes
			excavator = @data["Excavator"]
			@excavator_attributes = {
			  "company_name" => excavator["CompanyName"],
			  "address" => "#{excavator['Address']}, #{excavator['City']}, #{excavator['State']}, #{excavator['Zip']}",
			  "crew_on_site" => excavator["CrewOnsite"]
			}
		  end
		end
		
	end
end
