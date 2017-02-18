class PhysicalGoodsController < ApplicationController
  before_action :set_physical_good, only: [:show, :edit, :update, :destroy]

  # GET /physical_goods
  # GET /physical_goods.json
  def index
    @physical_goods = PhysicalGood.all
  end

  # GET /physical_goods/1
  # GET /physical_goods/1.json
  def show
  end

  # GET /physical_goods/new
  def new
    @physical_good = PhysicalGood.new
  end

  # GET /physical_goods/1/edit
  def edit
  end

  # POST /physical_goods
  # POST /physical_goods.json
  def create
    @physical_good = PhysicalGood.new(physical_good_params)

    respond_to do |format|
      if @physical_good.save
        format.html { redirect_to @physical_good, notice: 'Physical good was successfully created.' }
        format.json { render :show, status: :created, location: @physical_good }
      else
        format.html { render :new }
        format.json { render json: @physical_good.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /physical_goods/1
  # PATCH/PUT /physical_goods/1.json
  def update
    respond_to do |format|
      if @physical_good.update(physical_good_params)
        format.html { redirect_to @physical_good, notice: 'Physical good was successfully updated.' }
        format.json { render :show, status: :ok, location: @physical_good }
      else
        format.html { render :edit }
        format.json { render json: @physical_good.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /physical_goods/1
  # DELETE /physical_goods/1.json
  def destroy
    @physical_good.destroy
    respond_to do |format|
      format.html { redirect_to physical_goods_url, notice: 'Physical good was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_physical_good
      @physical_good = PhysicalGood.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def physical_good_params
      params.require(:physical_good).permit(:tshirt_count, :tshirt_cost, :tshirts_distributed, :stickers_cost, :other_goods, :other_goods_cost)
    end
end
