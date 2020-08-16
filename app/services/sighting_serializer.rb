class SightingSerializer
    def initialize(sighting_object)
        @sighting = sighting_object
    end
    #when initializeing a new instance of sightingserializer it will be stored as @sighting
    def to_serialized_json
        # @sighting.to_json(:include => {
        #   :bird => {:only => [:name, :species]},
        #   :location => {:only => [:latitude, :longitude]}
        # }, :except => [:updated_at])

        #NEW WAY
        options = {
    include: {
      bird: {
        only: [:name, :species]
      },
      location: {
        only: [:latitude, :longitude]
      }
    },
    except: [:updated_at],
  }
  @sighting.to_json(options) #the variable options is being passed with is a hash
      end
end