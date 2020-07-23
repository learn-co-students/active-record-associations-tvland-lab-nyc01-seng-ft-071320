require "pry"

class Show < ActiveRecord::Base
    belongs_to :network
    has_many :characters
    has_many :actors, through: :characters

    def actors_list
        characters.collect { |character| character.actor.full_name if character.show == self }
    end
end