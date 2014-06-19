class WelcomeController < ApplicationController
  def index
    @schools_attended = SchoolsAttended.all
    @life_events = LifeEvent.all
    @people = Person.all
  end
end
