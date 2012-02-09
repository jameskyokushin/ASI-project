class IndustriesController < ApplicationController
  # GET /industries
  # GET /industries.json
  def index
    @industries = Industry.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @industries }
    end
  end

  # GET /industries/1
  # GET /industries/1.json
  def show
    @industry = Industry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @industry }
    end
  end

  # GET /industries/new
  # GET /industries/new.json
  def new
    @industry = Industry.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @industry }
    end
  end

  # GET /industries/1/edit
  def edit
    @industry = Industry.find(params[:id])
  end

  # POST /industries
  # POST /industries.json
  def create
    @industry = Industry.new(params[:industry])

    respond_to do |format|
      if @industry.save
        format.html { redirect_to @industry, notice: 'Industry was successfully created.' }
        format.json { render json: @industry, status: :created, location: @industry }
      else
        format.html { render action: "new" }
        format.json { render json: @industry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /industries/1
  # PUT /industries/1.json
  def update
    @industry = Industry.find(params[:id])

    respond_to do |format|
      if @industry.update_attributes(params[:industry])
        format.html { redirect_to @industry, notice: 'Industry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @industry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /industries/1
  # DELETE /industries/1.json
  def destroy
    @industry = Industry.find(params[:id])
    @industry.destroy

    respond_to do |format|
      format.html { redirect_to industries_url }
      format.json { head :no_content }
    end
  end
end
