class ListsController < ApplicationController
  def new
    #Viewへ渡すためのインスタンス変数(@list)に空のModelオブジェクト(List.new)を生成する
    @list = List.new 
  end
  
  def create
    list = List.new(list_params) #@が無いlist、つまりローカル変数
    #formから送られてくるデータはparamsの中に入っています。
    list.save #データベースに保存する
    redirect_to '/top'
  end

  def index
    @lists = List.all #テーブルに保存されたデータを全取得する
  end

  def show
  end

  def edit
  end
  
  private
  # ストロングパラメーター
  def list_params
    params.require(:list).permit(:title, :body)
    # 送られてきたデータの中からモデル名(ここでは:list)を指定し、データを絞り込みます。
    # requireで絞り込んだデータの中から、保存を許可するカラムを指定します。
  end
end
