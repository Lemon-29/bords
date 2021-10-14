class BordsController < ActionController::Base
  def index
    @bords = Bord.all
  end

  def new
    @bord = Bord.new
  end

  def create
    bord = Bord.create(bord_params)
    redirect_to bord
  end

  def show
    @bord = Bord.find(params[:id])
  end

  def edit
    @bord = Bord.find(params[:id])
  end

  def update
    bord = Bord.find(params[:id])
    bord.update(bord_params)
    redirect_to bord
  end

   def destroy
    bord = Bord.find(params[:id])
    bord.delete
    redirect_to bord_path
   end
   
   
  private

  def bord_params
     params.require(:bord).permit(:name, :titile, :body)
  end
end