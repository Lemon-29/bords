class BordsController < ActionController::Base
  before_action :set_target_bord, only: %i[show edit update destroy]

  def index
    @bords = Bord.page(params[:page])
  end

  def new
    @bord = Bord.new
  end

  def create
    bord = Bord.new(bord_params)
    if bord.save
      flash[:notice]= '「#{bord.title}」の掲示板を作成しました。'
      redirect_to bord
    else
      redirect_to new_bord_path, flash: { bord: bord, error_message: bord.errors.full_messages }
      #bordにすることで入力されたままのフォームで返す
    end
  end

  def show
    @comment = Comment.new(bord_id: @bord.id)
    # @comment = @bord.comments.new
  end

  def edit
  end

  def update
    bord.update(bord_params)
    redirect_to bord
  end

   def destroy
    @bord.delete
    redirect_to bord_path, flash: { notice: '「#{@bord.title}」の掲示板が削除されました。'}
   end
   
   
  private

  def bord_params
     params.require(:bord).permit(:name, :titile, :body, tag_ids)
  end

  def set_target_bord
    @bord = Bord.find(params[:id])
  end
end