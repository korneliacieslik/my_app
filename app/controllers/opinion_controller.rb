class OpinionController < ApplicationController
  def index
    @opinions = Opinion.all.order("opinions.created_at desc")
  end

  def new
    @opinion = Opinion.new
  end

  def create
    @opinion = current_customer.opinion.new(opinion_params)
    
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

    def opinion_params
      params 
      .require(:opinion)
      .permit(:content)
    end 

