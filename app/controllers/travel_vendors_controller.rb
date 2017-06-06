class TravelVendorsController < ApplicationController
  before_action :set_travel_vendor, only: [:show, :edit, :update, :destroy]

  # GET /travel_vendors
  # GET /travel_vendors.json
  def user_travels_list
    @u = User.includes(:travel_vendors)
  end

  def index
    @travel_vendors = TravelVendor.paginate(:page => params[:page], :per_page => 2)
  end

  # GET /travel_vendors/1
  # GET /travel_vendors/1.json
  def show
  end

  # GET /travel_vendors/new
  def new
    @travel_vendor = TravelVendor.new
  end

  # GET /travel_vendors/1/edit
  def edit
  end

  # POST /travel_vendors
  # POST /travel_vendors.json
  def create
    @travel_vendor = TravelVendor.new(travel_vendor_params)

    respond_to do |format|
      if @travel_vendor.save
        UserMailer.sample_email(@travel_vendor,current_user).deliver
        format.html { redirect_to @travel_vendor, notice: 'Travel vendor was successfully created.' }
        format.json { render :show, status: :created, location: @travel_vendor }
        format.xml { render :show, status: :created, location: @travel_vendor }
      else
        format.html { render :new }
        format.json { render json: @travel_vendor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /travel_vendors/1
  # PATCH/PUT /travel_vendors/1.json
  def update
    respond_to do |format|
      if @travel_vendor.update(travel_vendor_params)
        format.html { redirect_to @travel_vendor, notice: 'Travel vendor was successfully updated.' }
        format.json { render :show, status: :ok, location: @travel_vendor }
      else
        format.html { render :edit }
        format.json { render json: @travel_vendor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /travel_vendors/1
  # DELETE /travel_vendors/1.json
  def destroy
    @travel_vendor.destroy
    respond_to do |format|
      format.html { redirect_to travel_vendors_url, notice: 'Travel vendor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_travel_vendor
      @travel_vendor = TravelVendor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def travel_vendor_params
      params.require(:travel_vendor).permit(:name, :ph_no, :email, :url,:avatar)
    end
end
