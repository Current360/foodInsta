class LocationMaker
    def initialize(locations)
        @thelocations = locations
    end

    def build
        @thelocations["data"].map do | location |
            id = location["id"]

            # If ID not a bad_id continue
            build = filter(id)

            if build == true
                name = location["name"]
                pics = get_pics(id)
                @single = Location.new(id, name, pics)
            end
            # Rails.logger.debug("\n\n\n\nSINGLE: #{@single}")
        end
    end

    #
    def filter(id)
        bad_ids = [ 371159295,438752,28146660,7388539,2963839,275346151,10249452,2686850,285066347,82043890,114048201,285235144,26643458,69345168,296719676,36787516,8840209,458471929,490659763,300167359,23513706,54277850,9853031,11848590,146945595,165562630,3370547,624030991,331755616,41490335,97737268,287164977,584564952,196534857,289310169,9428036,489127121,18973449,13531535,14421998,695915262,61937364,93252433,129230700,563081438,71184161,231002121,480074268,12296529,283133380,59959987,37576641,49413047,457271071,125288694,83033867,555052605,2872990,19110659,98189756,12019171,22294732,6045747,33221798,162781238,10670491,483470056,52954960,429591429,263624256,25997297,13158239,1339775,11060300,299109225,14333418,45497782,6715814,15686883,30088069,47242469,271115984,5076382,60021530,110908392,92190898,17478537,405486666,294153389,66970011,687392593,547065896,48226147,18603435,413435199,93139045 ]

        # Iterate over all bad IDs
        bad_ids.each do |bad|
            # If any id is bad return false
            if bad == id
                return false
            end
        end

        # No bad ids were found so proceed with the build
        return true

    end

    def get_pics(id)
        pics = HTTParty.get("https://api.instagram.com/v1/locations/#{id}/media/recent?access_token=562295018.6c8ffb4.d4afb8cfc7544409becd312cacf9ce0d")

        return pics
    end
end