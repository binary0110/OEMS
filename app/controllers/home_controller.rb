class HomeController < ApplicationController
  def index
  end
  def about
  end
  def news
    @newsitems = Newsitem.all
  end
  def events
    @eventitems = Eventitem.all
  end
  def committee
    @committees = Committee.all
  end
  def contact
  end
  def members
  end
end
