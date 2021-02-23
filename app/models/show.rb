class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        self.actors.collect do |x|
            first = x.first_name
            last = x.last_name
            first + " " + last
        end
    end

    

    
end