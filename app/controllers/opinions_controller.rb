class OpinionsController < ApplicationController
  
  def index
    
    @opinions = Opinion.all.order("opinions.created_at desc")
  
  end

  def new

    @opinion = Opinion.new
  
  end

  def create
    
    @opinion = Opinion.new(opinion_params)
    
    respond_to do |format|
      
      if @opinion.save
    
        format.html {redirect_to @opinion, notice: "Thanks for your opinion!"}
        
        format.json {render :show, status: :created, location: @opinion}
      
      else
        
        format.html { render :new }
        
        format.json { render json: @opinion.errors, status: :unprocessable_entity }
      
      end
    
    end
  
  end

  def destroy
  
  end

  def edit
    @opinion =  Opinion.new
    
  end

  def update

    respond_to do |format|

      if @opinion.edit

        format.html  {redirect_to @opinion, notice: "Opinion was sucsessfully edit!"}
        
        format.json {render :show, status: :created, location: @opinion}

      else

        format.html { render :edit }
        
        format.json { render json: @opinion.errors, status: :unprocessable_entity }

      end 

    end

  end

  def show 
    
    @opinion = Opinion.find(params[:id])
  
  end 

  private

    def opinion_params
      
      params.require(:opinion).permit(:content)
    
    end 

end
