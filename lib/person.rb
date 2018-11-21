require 'pry'

class Person

@@people = []

attr_reader :name, :happiness, :hygiene
attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
    @@people << self
  end

  def happiness=(happiness)
    @happiness = happiness
    @happiness = 10 if happiness > 10
    @happiness = 0 if happiness < 0
  end

  def hygiene=(hygiene)
    @hygiene = hygiene
    @hygiene = 10 if hygiene > 10
    @hygiene = 0 if hygiene < 0
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene=(@hygiene+4)
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene=(@hygiene-3)
    self.happiness=(@happiness+2)
    return "♪ another one bites the dust ♫"
  end

  def call_friend(receiver)
    self.happiness=(self.happiness+3)
    receiver.happiness=(receiver.happiness+3)
    return "Hi #{receiver.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness=(self.happiness-2)
      person.happiness=(person.happiness-2)
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness=(self.happiness+1)
      person.happiness=(person.happiness+1)
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end

  end

end
