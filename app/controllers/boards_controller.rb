class BoardsController < ApplicationController
    def index
        @boards = Board.all
    end

    def new
        @board = Board.new
    end

    def create
        @board = Board.new(board_params)

        if @board.save
            redirect_to "/", notice: '成功新增看板'
        else 
            render :new
        end
    end

    def show
    end

    def edit
    end

    def destroy
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
