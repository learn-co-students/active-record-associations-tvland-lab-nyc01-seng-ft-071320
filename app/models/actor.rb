require "pry"

class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
      "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    role = characters.collect { |character| character.name if character.actor == self }.uniq
    show = characters.collect { |character| character.show.name if character.actor == self }
    role.concat(show).join(" - ")
    # binding.pry
  end


end