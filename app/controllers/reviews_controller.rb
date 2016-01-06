class ReviewsController < InheritedResources::Base

  before_filter :authenticate_user!, only: [:create]

	before_filter :set_review, only: [:show, :edit, :update, :destroy]
  before_filter :set_departement, only: [:create, :edit, :destroy]

  def index
    @reviews = Review.all
    respond_with(@reviews)
  end

  def show
    respond_with(@review)
  end

  def new
    @review = Review.new
    respond_with(@review)
  end

  def edit
  end

  def create
    @review = @departement.reviews.new(params[:review])
    # @review = current_user.reviews.new(params[:review])
    @review.user_id = current_user.id

    
    if @review.save
      respond_to do |format|
        format.html { redirect_to @review.departement  }
        # format.json { render json: comment }
        format.js
      end
    end
  end

  def update
    @review.update_attributes(params[:review])
    redirect_to @review.departement
  end

  def destroy
    @review.destroy
    redirect_to @review.departement
  end

  private
    def set_review
      @review = Review.find(params[:id])
    end

    def set_departement
      @departement = Departement.find(params[:departement_id])
    end
end

