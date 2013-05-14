class Test123sController < ApplicationController
  # GET /test123s
  # GET /test123s.json
  def index
    @test123s = Test123.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @test123s }
    end
  end

  # GET /test123s/1
  # GET /test123s/1.json
  def show
    @test123 = Test123.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @test123 }
    end
  end

  # GET /test123s/new
  # GET /test123s/new.json
  def new
    @test123 = Test123.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @test123 }
    end
  end

  # GET /test123s/1/edit
  def edit
    @test123 = Test123.find(params[:id])
  end

  # POST /test123s
  # POST /test123s.json
  def create
    @test123 = Test123.new(params[:test123])

    respond_to do |format|
      if @test123.save
        format.html { redirect_to @test123, notice: 'Test123 was successfully created.' }
        format.json { render json: @test123, status: :created, location: @test123 }
      else
        format.html { render action: "new" }
        format.json { render json: @test123.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /test123s/1
  # PUT /test123s/1.json
  def update
    @test123 = Test123.find(params[:id])

    respond_to do |format|
      if @test123.update_attributes(params[:test123])
        format.html { redirect_to @test123, notice: 'Test123 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @test123.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test123s/1
  # DELETE /test123s/1.json
  def destroy
    @test123 = Test123.find(params[:id])
    @test123.destroy

    respond_to do |format|
      format.html { redirect_to test123s_url }
      format.json { head :no_content }
    end
  end
end
