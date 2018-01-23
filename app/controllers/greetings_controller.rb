class GreetingsController < ApplicationController

  def index
    @users =[
      ["Matteo", "3", "wird immer übersehen, weil er sich nicht aufdrängt, schmust aber eigentlich gerne"],
      ["John", "1", "musste wieder Laufen lernen"],
      ["Katze1", "?", "text"],
      ["Katze2", "?", "text"],
      ["Katze3", "?", "text"]
    ]
  end

end
