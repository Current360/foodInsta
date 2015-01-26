class PhotosController < ApplicationController
    def index
        highlands = HTTParty.get("https://api.instagram.com/v1/locations/search?lat=38.231812&lng=-85.710161&distance=5000&access_token=562295018.6c8ffb4.d4afb8cfc7544409becd312cacf9ce0d")

        downtown = HTTParty.get("https://api.instagram.com/v1/locations/search?lat=38.250809&lng=-85.758006&distance=5000&access_token=562295018.6c8ffb4.d4afb8cfc7544409becd312cacf9ce0d")

        market = HTTParty.get("https://api.instagram.com/v1/locations/search?lat=38.253378&lng=-85.737459&distance=5000&access_token=562295018.6c8ffb4.d4afb8cfc7544409becd312cacf9ce0d")

        swan = HTTParty.get("https://api.instagram.com/v1/locations/search?lat=38.238546&lng=-85.736530&distance=5000&access_token=562295018.6c8ffb4.d4afb8cfc7544409becd312cacf9ce0d")

        frankfort = HTTParty.get("https://api.instagram.com/v1/locations/search?lat=38.253645&lng=-85.703992&distance=5000&access_token=562295018.6c8ffb4.d4afb8cfc7544409becd312cacf9ce0d")

        bardstown = HTTParty.get("https://api.instagram.com/v1/locations/search?lat=38.222941&lng=-85.683200&distance=5000&access_token=562295018.6c8ffb4.d4afb8cfc7544409becd312cacf9ce0d")

        oxmoor = HTTParty.get("https://api.instagram.com/v1/locations/search?lat=38.248501&lng=-85.617163&distance=5000&access_token=562295018.6c8ffb4.d4afb8cfc7544409becd312cacf9ce0d")

        bauer = HTTParty.get("https://api.instagram.com/v1/locations/search?lat=38.252880&lng=-85.662251&distance=5000&access_token=562295018.6c8ffb4.d4afb8cfc7544409becd312cacf9ce0d")

        taylorsville = HTTParty.get("https://api.instagram.com/v1/locations/search?lat=38.212091&lng=-85.588324&distance=5000&access_token=562295018.6c8ffb4.d4afb8cfc7544409becd312cacf9ce0d")

        herr = HTTParty.get("https://api.instagram.com/v1/locations/search?lat=38.269258&lng=-85.613242&distance=5000&access_token=562295018.6c8ffb4.d4afb8cfc7544409becd312cacf9ce0d")

        dixie = HTTParty.get("https://api.instagram.com/v1/locations/search?lat=38.140173&lng=-85.840699&distance=5000&access_token=562295018.6c8ffb4.d4afb8cfc7544409becd312cacf9ce0d")

        newcut = HTTParty.get("https://api.instagram.com/v1/locations/search?lat=38.148589&lng=-85.775549&distance=5000&access_token=562295018.6c8ffb4.d4afb8cfc7544409becd312cacf9ce0d")


        @locations = LocationMaker.new(highlands).build +
                     LocationMaker.new(downtown).build +
                     LocationMaker.new(market).build +
                     LocationMaker.new(swan).build +
                     LocationMaker.new(frankfort).build +
                     LocationMaker.new(bardstown).build +
                     LocationMaker.new(oxmoor).build +
                     LocationMaker.new(bauer).build +
                     LocationMaker.new(taylorsville).build +
                     LocationMaker.new(herr).build +
                     LocationMaker.new(dixie).build +
                     LocationMaker.new(newcut).build
    end
end
