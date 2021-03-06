class OpinionsController < ApplicationController 
  skip_before_action :authenticate_user!, only: [:index, :show], raise: false
  def index 
    @opinions = Opinion.all.order("opinions.created_at desc")
  end

  def new
    @opinion = Opinion.new
  end

  def create   
    @opinion = Opinion.new(opinion_params)
    @opinion.user = current_user
    
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
    if current_user
      @opinion.destroy
      respond_to do |format|
        format.html { redirect_to opinions_url, notice: 'Opinion was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  end
  
  def edit
    @opinion = Opinion.find(params[:id])
  end

  def update
    @opinion = Opinion.find(params[:id])
    respond_to do |format|
      if current_user
        if @opinion.update(opinion_params)
          format.html { redirect_to @opinion, notice: "Opinion was successfully edit!" }
        else
          format.html { render :edit }
        end 
      else
        format.html { render file: "#{Rails.root}/public/422.html", status: 422, layout: false }
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