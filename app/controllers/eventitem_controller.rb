class EventitemController < ApplicationController
  def index
    @eventitems = Eventitem.includes(:eventitemimgs)
  end
end
