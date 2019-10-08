class BoardsController < ApplicationController
 def index
   @boards = Board.all
 end

 def show
   @board = Board.find(params[:id])
 end

 def new
   @board = Board.new
 end

 def create
   Board.create(board_params)
 end

 def updated
   board = Board.find(params[:id])
   board.update(board_params)
   redirect_to board
 end

 private

 def board_params
   params.require(:board).permit(:name, :title, :body)
 end
end
