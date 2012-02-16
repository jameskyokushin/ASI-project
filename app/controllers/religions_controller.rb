class ReligionsController < ApplicationController
  # GET /religions
  # GET /religions.json
  def index
    @religions = Religion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @religions }
    end
  end

  # GET /religions/1
  # GET /religions/1.json
  def show
    @religion = Religion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @religion }
    end
  end

  # GET /religions/new
  # GET /religions/new.json
  def new
    @religion = Religion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @religion }
    end
  end

  # GET /religions/1/edit
  def edit
    @religion = Religion.find(params[:id])
  end

  # POST /religions
  # POST /religions.json
  def create
    @religion = Religion.new(params[:religion])

    respond_to do |format|
      if @religion.save
        format.html { redirect_to @religion, notice: 'Religion was successfully created.' }
        format.json { render json: @religion, status: :created, location: @religion }
      else
        format.html { render action: "new" }
        format.json { render json: @religion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /religions/1
  # PUT /religions/1.json
  def update
    @religion = Religion.find(params[:id])

    respond_to do |format|
      if @religion.update_attributes(params[:religion])
        format.html { redirect_to @religion, notice: 'Religion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @religion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /religions/1
  # DELETE /religions/1.json
  def destroy
    @religion = Religion.find(params[:id])
    @religion.destroy

    respond_to do |format|
      format.html { redirect_to religions_url }
      format.json { head :no_content }
    end
  end
end
