class HomeController < ApplicationController
  def index
    
   
    
  end
  
  
  def write
    @board = Board.new
    @board.number = params[:number]
    @board.title = params[:title]
    @board.content = params[:content]
    @board.save
    
    
    redirect_to "/list"
  end
  
  def list
    @list = Board.all.reverse
  end
  
  def destroy
      @destroy = Board.find(params[:board_id])
      @destroy.destroy
      
      redirect_to "/list"
  end
  
  def update_view
    @update_view = Board.find(params[:board_id])
    
    
    
  
  end
  
  def update
    @board = Board.find(params[:board_id])
    @board.number = params[:number]
    @board.title = params[:title]
    @board.content = params[:content]
    @board.save
    
    
    redirect_to "/list"
  
  
  end
  
  def reply
    reply = Reply.new
    reply.content = params[:content]
    reply.board_id = params[:b_id]
    reply.save
    
    redirect_to "/list"
  
  end
  
  
end
