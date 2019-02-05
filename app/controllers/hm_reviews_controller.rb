class HmReviewsController < ApplicationController

  # GET /hm_reviews
  # GET /hm_reviews.json
  def index
    @hm_reviews = HmReview.all
  end

  # GET /hm_reviews/1
  # GET /hm_reviews/1.json
  def show
    @hm_review = HmReview.find(params[:id]);
  end

  # GET /hm_reviews/new
  def new
    @hm_review = HmReview.new
  end

  # GET /hm_reviews/1/edit
  def edit
  end

  # POST /hm_reviews
  # POST /hm_reviews.json
  def create
    @hm_review = HmReview.new(hm_review_params)

    respond_to do |format|
      if @hm_review.save
        format.html { redirect_to @hm_review, notice: 'Hm review was successfully created.' }
        format.json { render :show, status: :created, location: @hm_review }
      else
        format.html { render :new }
        format.json { render json: @hm_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hm_reviews/1
  # PATCH/PUT /hm_reviews/1.json
  def update
    respond_to do |format|
      if @hm_review.update(hm_review_params)
        format.html { redirect_to @hm_review, notice: 'Hm review was successfully updated.' }
        format.json { render :show, status: :ok, location: @hm_review }
      else
        format.html { render :edit }
        format.json { render json: @hm_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hm_reviews/1
  # DELETE /hm_reviews/1.json
  def destroy
    @hm_review.destroy
    respond_to do |format|
      format.html { redirect_to hm_reviews_url, notice: 'Hm review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def hm_review_params
      params.require(:hm_review).permit(:artwork_name, :artwork_creator, :artwork_review, :artwork_point, :created_at, :updated_at)
    end
end
