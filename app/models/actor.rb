class Actor < ActiveRecord::Base
  # An actor should have many characters and many shows through characters.
  has_many :characters
    has_many :shows, through: :characters

    def full_name
        first = self.first_name
        last = self.last_name
        first + " " + last
    end

    def list_roles
      name = self.characters.collect do |x|
        x.name
      end
      show = self.shows.collect do |x|
        x.name
      end
         "#{name[0]} - #{show[0]}"
    end
end