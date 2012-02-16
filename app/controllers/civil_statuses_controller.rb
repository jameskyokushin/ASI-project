class CivilStatusesController < ApplicationController
  # GET /civil_statuses
  # GET /civil_statuses.json
  def index
    @civil_statuses = CivilStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @civil_statuses }
    end
  end

  # GET /civil_statuses/1
  # GET /civil_statuses/1.json
  def show
    @civil_status = CivilStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @civil_status }
    end
  end

  # GET /civil_statuses/new
  # GET /civil_statuses/new.json
  def new
    @civil_status = CivilStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @civil_status }
    end
  end

  # GET /civil_statuses/1/edit
  def edit
    @civil_status = CivilStatus.find(params[:id])
  end

  # POST /civil_statuses
  # POST /civil_statuses.json
  def create
    @civil_status = CivilStatus.new(params[:civil_status])

    respond_to do |format|
      if @civil_status.save
        format.html { redirect_to @civil_status, notice: 'Civil status was successfully created.' }
        format.json { render json: @civil_status, status: :created, location: @civil_status }
      else
        format.html { render action: "new" }
        format.json { render json: @civil_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /civil_statuses/1
  # PUT /civil_statuses/1.json
  def update
    @civil_status = CivilStatus.find(params[:id])

    respond_to do |format|
      if @civil_status.update_attributes(params[:civil_status])
        format.html { redirect_to @civil_status, notice: 'Civil status was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @civil_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /civil_statuses/1
  # DELETE /civil_statuses/1.json
  def destroy
    @civil_status = CivilStatus.find(params[:id])
    @civil_status.destroy

    respond_to do |format|
      format.html { redirect_to civil_statuses_url }
      format.json { head :no_content }
    end
  end
end
