class PostnoticesController < ApplicationController
  # GET /postnotices
  # GET /postnotices.json

  layout "dashboard"
  def index
    @postnotices = Postnotice.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @postnotices }
    end
  end

  # GET /postnotices/1
  # GET /postnotices/1.json
  def show
    @postnotice = Postnotice.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @postnotice }
    end
  end

  # GET /postnotices/new
  # GET /postnotices/new.json
  def new
    @postnotice = Postnotice.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @postnotice }
    end
  end

  # GET /postnotices/1/edit
  def edit
    @postnotice = Postnotice.find(params[:id])
  end

  # POST /postnotices
  # POST /postnotices.json
  def create
    @postnotice = Postnotice.new(params[:postnotice])

    respond_to do |format|
      if @postnotice.save
        format.html { redirect_to @postnotice, notice: 'Postnotice was successfully created.' }
        format.json { render json: @postnotice, status: :created, location: @postnotice }
      else
        format.html { render action: "new" }
        format.json { render json: @postnotice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /postnotices/1
  # PUT /postnotices/1.json
  def update
    @postnotice = Postnotice.find(params[:id])

    respond_to do |format|
      if @postnotice.update_attributes(params[:postnotice])
        format.html { redirect_to @postnotice, notice: 'Postnotice was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @postnotice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postnotices/1
  # DELETE /postnotices/1.json
  def destroy
    @postnotice = Postnotice.find(params[:id])
    @postnotice.destroy

    respond_to do |format|
      format.html { redirect_to postnotices_url }
      format.json { head :no_content }
    end
  end
end
