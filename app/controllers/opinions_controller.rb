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

    @opinion = Opinion.find(params[:id])

    @opinion.destroy

    respond_to do |format|

      format.html { redirect_to opinions_url, notice: 'Opinion was successfully destroyed.' }
      
      format.json { head :no_content }

    end
  
  end

  def edit

    @opinion = Opinion.find(params[:id])
    
  end

  def update

    @opinion = Opinion.find(params[:id])

    respond_to do |format|

      if @opinion.update(opinion_params)

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

    def set_opinion

      @opinion = Opinion.find(params[:id])

    end 

    def opinion_params
      
      params.require(:opinion).permit(:content)
    
    end 

end
