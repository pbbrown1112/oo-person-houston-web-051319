# your code goes here
require 'pry'

class Person

    @@all = []

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
        @@all << self
    end

# Getter

    def name
        @name
    end

    def bank_account
        @bank_account
    end

    def happiness
        @happiness
    end

    def hygiene
        @hygiene
    end
# end Getter

# Setter
    
    def bank_account=(amount)
        @bank_account = amount
    end

    def happiness=(happy_amount)
        @happiness = happy_amount
        happiness
    end

    def hygiene=(hygiene_amount)
        @hygiene = hygiene_amount
        hygiene
    end

# end Setter
# Methods
    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end

    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    def happiness
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        else 
            @happiness
        end
    end

    def hygiene
        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        else 
            @hygiene
        end
    end

    def get_paid(payment)
        @bank_account += payment
        return "all about the benjamins"
    end

    def take_bath
        @hygiene += 4
        hygiene
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        @hygiene -= 3
        @happiness += 2
        
        hygiene
        happiness
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3

        happiness
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            happiness
            return "blah blah partisan blah lobbyist"
        elsif
            topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            happiness
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end

    end

    # def self.happiness
    #     @@all.each do | person |
    #         if person.happiness > 10
    #             person.happiness = 10
    #         elsif person.happiness < 0
    #             person.happiness = 0
    #         else 
    #             person.happiness
    #         end
    #     end
    # end

    # def self.hygiene
    #     @@all.each do | person |
    #         if person.hygiene > 10
    #             person.hygiene = 10
    #         elsif person.hygiene < 0
    #             person.hygiene = 0
    #         else 
    #             person.hygiene
    #         end
    #     end
    # end

    def self.bank_account
    end


end

stef = Person.new("Stefan")
pat = Person.new("Brendan")

# binding.pry