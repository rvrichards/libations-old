class VisitorsController < ApplicationController

  def index
    @count =Libation.count
    @rnd =  rand(1)+@count
  end
end
