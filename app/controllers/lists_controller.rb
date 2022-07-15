class ListsController < ApplicationController
  
  def new
    @list = List.new
  end
  
  def create
    list = List.new(list_params)
    list .save
    redirect_to "/top"
  end

  def index
  end

  def show
  end

  def edit
  end
  
  private #privateはControllerファイルの一番下のendのすぐ上に書く
  #ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
