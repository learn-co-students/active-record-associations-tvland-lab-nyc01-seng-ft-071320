class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    def list_roles
        char = self.characters.map{|character|character.name}
        show = self.shows.map{|shows|shows.name}
        "#{char[0]} - #{show[0]}"
    end
end