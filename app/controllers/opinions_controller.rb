class OpinionsController < ApplicationController
  
  def index
    
    @opinions = Opinion.all.order("opinions.created_at desc")
  
  end

  def new
    # new method returns a new object
    @opinion = Opinion.new
  
  end

  def create
                # Object.new ?? 
    @opinion = current_customer.opinions.new(opinion_params)
    
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
  
  end

  def show 
    
    @opinion = Opinion.find(params[:id])
  
  end 

end


  private

    #require(key) If key exist and its associated value either exist, then returns said value.
    # permit returns a copy of the parameters object
    def opinion_params
      
      params.require(:opinion).permit(:content)
    
    end 

