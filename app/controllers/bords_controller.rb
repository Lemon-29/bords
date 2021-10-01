class BordsController < ActionController::Base
  def index
  end

  def new
    @bord = Bord.new
  end
end