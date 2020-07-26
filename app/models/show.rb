class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    Character.all.map{|char| char.actor.full_name if char.show_id == self.id}
  end

end