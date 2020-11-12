class StickersController < ApplicationController
  before_action :set_sticker, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /stickers
  # GET /stickers.json
  #Stickers will be shown on the index page in the order from the newest created to the oldest
  def index
    @stickers = Sticker.all.order("created_at desc")
  end

  # GET /stickers/1
  # GET /stickers/1.json
  def show
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
    @sticker.destroy
    respond_to do |format|
      format.html { redirect_to stickers_url, notice: 'Sticker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sticker
      @sticker = Sticker.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sticker_params
      params.require(:sticker).permit(:title, :description, :finish, :material, :price, :image)
    end
end