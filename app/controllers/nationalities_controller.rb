class NationalitiesController < ApplicationController
  # GET /nationalities
  # GET /nationalities.json
  def index
    @nationalities = Nationality.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @nationalities }
    end
  end

  # GET /nationalities/1
  # GET /nationalities/1.json
  def show
    @nationality = Nationality.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @nationality }
    end
  end

  # GET /nationalities/new
  # GET /nationalities/new.json
  def new
    @nationality = Nationality.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @nationality }
    end
  end

  # GET /nationalities/1/edit
  def edit
    @nationality = Nationality.find(params[:id])
  end

  # POST /nationalities
  # POST /nationalities.json
  def create
    @nationality = Nationality.new(params[:nationality])

    respond_to do |format|
      if @nationality.save
        format.html { redirect_to @nationality, notice: 'Nationality was successfully created.' }
        format.json { render json: @nationality, status: :created, location: @nationality }
      else
        format.html { render action: "new" }
        format.json { render json: @nationality.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /nationalities/1
  # PUT /nationalities/1.json
  def update
    @nationality = Nationality.find(params[:id])

    respond_to do |format|
      if @nationality.update_attributes(params[:nationality])
        format.html { redirect_to @nationality, notice: 'Nationality was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @nationality.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nationalities/1
  # DELETE /nationalities/1.json
  def destroy
    @nationality = Nationality.find(params[:id])
    @nationality.destroy

    respond_to do |format|
      format.html { redirect_to nationalities_url }
      format.json { head :no_content }
    end
  end
end
