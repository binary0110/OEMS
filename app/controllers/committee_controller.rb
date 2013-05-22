class CommitteeController < ApplicationController
  def index
    @committees = Committee.all
  end
end
