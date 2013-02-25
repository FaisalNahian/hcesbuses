class MobilePhonesController < ApplicationController
  # GET /mobile_phones
  # GET /mobile_phones.json
  def index
    @mobile_phones = MobilePhone.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mobile_phones }
    end
  end

  # GET /mobile_phones/1
  # GET /mobile_phones/1.json
  def show
    @mobile_phone = MobilePhone.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mobile_phone }
    end
  end

  # GET /mobile_phones/new
  # GET /mobile_phones/new.json
  def new
    @mobile_phone = MobilePhone.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mobile_phone }
    end
  end

  # GET /mobile_phones/1/edit
  def edit
    @mobile_phone = MobilePhone.find(params[:id])
  end

  # POST /mobile_phones
  # POST /mobile_phones.json
  def create
    @mobile_phone = MobilePhone.new(params[:mobile_phone])

    respond_to do |format|
      if @mobile_phone.save
        format.html { redirect_to @mobile_phone, notice: 'Mobile phone was successfully created.' }
        format.json { render json: @mobile_phone, status: :created, location: @mobile_phone }
      else
        format.html { render action: "new" }
        format.json { render json: @mobile_phone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mobile_phones/1
  # PUT /mobile_phones/1.json
  def update
    @mobile_phone = MobilePhone.find(params[:id])

    respond_to do |format|
      if @mobile_phone.update_attributes(params[:mobile_phone])
        format.html { redirect_to @mobile_phone, notice: 'Mobile phone was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mobile_phone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mobile_phones/1
  # DELETE /mobile_phones/1.json
  def destroy
    @mobile_phone = MobilePhone.find(params[:id])
    @mobile_phone.destroy

    respond_to do |format|
      format.html { redirect_to mobile_phones_url }
      format.json { head :no_content }
    end
  end
end
