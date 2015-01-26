class Location
    attr_accessor :id, :locname, :pics

    def initialize(id, locname, pics)
        @id = id
        @locname = locname
        @pics = pics
        Rails.logger.debug("ID: #{@id} \n NAME: #{@locname} \n PICS: #{@pics}")
    end
end