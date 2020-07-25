class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

    def say_that_thing_you_say
       pharse = self.catchphrase
       name = self.name
       "#{name} always says: #{pharse}"
    end


end