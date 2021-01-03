class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

def full_name
    "#{self.first_name} #{self.last_name}"
end

def list_roles
    characters.collect do |character|
        "#{character.name} - #{character.show.name}"
    end
end
  
end

# Associate the `Actor` model with the `Character` and `Show` model. An actor
#   should have many characters and many shows through characters.

# - Write a method in the `Actor` class, `#full_name`, that returns the first and
#   last name of an actor.

# - Write a method in the `Actor` class, `#list_roles`, that lists all of the
#   characters that actor has alongside the show that the character is in. So, for
#   instance, if we had an actor, Peter Dinklage, a character, Tyrion Lannister,
#   and a show, Game of Thrones, we with