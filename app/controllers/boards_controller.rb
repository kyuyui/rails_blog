class BoardsController < ApplicationController
    def index
        @boards = Board.all
    end

    def new
        @board = Board.new
    end

    def create
        #p params["board"]
        #board_params=params["board"]->{ "title" => '欄位名稱' }
        @board = Board.new(board_params)

        if @board.save
            redirect_to "/", notice: '成功新增看板'
        else 
            render :new
        end
    end

    def show
        begin
        @board = Board.find_by(id: params[:id])
        rescue
        redirect_to root_path, notice: 'no found'
        end
    end

    def edit
        @board = Board.find_by(id: params[:id])
        # 使用find_by方法，把id是params[:id]的資料抓出來，並把找到的結果存成實體變數
    end

    def update
        @board = Board.find_by(id: params[:id])
        if @board.update(board_params)
            redirect_to root_path, notice: '更新成功'
        else
            render :edit
        end
    end

    def destroy
        @board = Board.find_by(id: params[:id])
        @board.destroy if @board
        redirect_to root_path, notice: '刪除成功'
    end

    private
    def board_params
        # puts "=================1"
        # puts "params: #{params}"
        # puts "=================2"

        # puts "params.require(:board): #{params.require(:board)}"
        # puts "params[:board]: #{params[:board]}"
        params.require(:board).permit(:title)
    end
end
