class LocationMaker
    def initialize(locations)
        @thelocations = locations
    end

    def build
        @thelocations["data"].map do | location |
            id = location["id"]
            name = location["name"]
            pics = get_pics(id)

            @single = Location.new(id, name, pics)
            # Rails.logger.debug("\n\n\n\nSINGLE: #{@single}")
        end
    end

    def get_pics(id)
        pics = HTTParty.get("https://api.instagram.com/v1/locations/#{id}/media/recent?access_token=562295018.6c8ffb4.d4afb8cfc7544409becd312cacf9ce0d")

        return pics
    end
end