class BordsController < ActionController::Base
  def index
    @bords = Bord.all
  end

  def new
    @bord = Bord.new
  end

  def create
    Bord.create(bord_params)
  end

  def show
    @bord = Bord.find(params[:id])
  end

  private

  def bord_params
     params.require(:bord).permit(:name, :titile, :body)
  end
end