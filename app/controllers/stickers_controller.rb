class StickersController < ApplicationController
  before_action :set_sticker, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index]

  # GET /stickers
  # GET /stickers.json
  #Stickers will be shown on the index page in the order from the newest created to the oldest
 
  def index
    # Query method ".includes" used to minimise database calls by allowing us to access the stickers that are associated with the User model
    @stickers = Sticker.all.order("title asc").includes(:user)
    #The newest created stickers are found using the 'created_at' timestamp and stored in the below variable, which is called and displayed in the index view
    @newstickers = Sticker.all.limit(4).order("created_at desc").includes(:user)
   
 
    #search function below works by comparing the :search param against the Sticker's attribute data. Guard statement to ensure search term is made downcase and white spaces removed
      if params[:search] && params[:search] != ""
        search_term = params[:search].downcase.gsub(/\s+/, "")
        @stickers = Sticker.all.select { |sticker|
          sticker.title.include?(search_term) || 
          sticker.description.include?(search_term) || 
          sticker.material.include?(search_term) || 
          sticker.finish.include?(search_term) }
      end
  end


  # GET /stickers/1
  # GET /stickers/1.json
  def show
    @recommendedstickers = Sticker.find(Sticker.pluck(:id).sample)
  end

  # GET /stickers/new
  def new
    @sticker = current_user.stickers.build
  end

  # GET /stickers/1/edit
  def edit
  end

  # POST /stickers
  # POST /stickers.json
  def create
    @sticker = current_user.stickers.build(sticker_params)
    @sticker.user.name = current_user.name

    respond_to do |format|
      if @sticker.save
        format.html { redirect_to @sticker, notice: 'Sticker was successfully created.' }
        format.json { render :show, status: :created, location: @sticker }
      else
        format.html { render :new }
        format.json { render json: @sticker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stickers/1
  # PATCH/PUT /stickers/1.json
  def update
    respond_to do |format|
      if @sticker.update(sticker_params)
        format.html { redirect_to @sticker, notice: 'Sticker was successfully updated.' }
        format.json { render :show, status: :ok, location: @sticker }
      else
        format.html { render :edit }
        format.json { render json: @sticker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stickers/1
  # DELETE /stickers/1.json
  def destroy
    # @sticker = Sticker.find(params[:id])
    @sticker.destroy
    
    respond_to do |format|
      if  @sticker.destroy
        format.html { redirect_to stickers_path, notice: 'Sticker was successfully destroyed.' }
        format.json { head :no_content }
      else 
        format.html { redirect_to stickers_url, notice: 'An error occured - please try again.' }
        format.json { head :no_content }
      end
    end
  end

  private
    # Assigns the current sticker being passed through the params to a variable @sticker so that it can be accessed elsewhere
    def set_sticker
      @sticker = Sticker.find(params[:id])
    end

    # Whitelist of trusted parameters that will be let through.
    def sticker_params
      params.require(:sticker).permit(:title, :description, :finish, :material, :price, :image, :search)
    end
end
