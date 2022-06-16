module Api
    module V1
        class AirlinesController < ApplicationController

            def index
                airlines = Airline.all
                render json: AirlineSerializer.new(airlines).serialized_json
            end

            def show
                airline = Airline.find_by(slug: params[:slug])
                render json: AirlineSerializer.new(airline).serialized_json

            end

        end
    end
end