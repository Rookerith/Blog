class TestHamlsController < ApplicationController
  # GET /test_hamls
  # GET /test_hamls.json
  def index
    @test_hamls = TestHaml.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @test_hamls }
    end
  end

  # GET /test_hamls/1
  # GET /test_hamls/1.json
  def show
    @test_haml = TestHaml.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @test_haml }
    end
  end

  # GET /test_hamls/new
  # GET /test_hamls/new.json
  def new
    @test_haml = TestHaml.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @test_haml }
    end
  end

  # GET /test_hamls/1/edit
  def edit
    @test_haml = TestHaml.find(params[:id])
  end

  # POST /test_hamls
  # POST /test_hamls.json
  def create
    @test_haml = TestHaml.new(params[:test_haml])

    respond_to do |format|
      if @test_haml.save
        format.html { redirect_to @test_haml, notice: 'Test haml was successfully created.' }
        format.json { render json: @test_haml, status: :created, location: @test_haml }
      else
        format.html { render action: "new" }
        format.json { render json: @test_haml.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /test_hamls/1
  # PUT /test_hamls/1.json
  def update
    @test_haml = TestHaml.find(params[:id])

    respond_to do |format|
      if @test_haml.update_attributes(params[:test_haml])
        format.html { redirect_to @test_haml, notice: 'Test haml was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @test_haml.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_hamls/1
  # DELETE /test_hamls/1.json
  def destroy
    @test_haml = TestHaml.find(params[:id])
    @test_haml.destroy

    respond_to do |format|
      format.html { redirect_to test_hamls_url }
      format.json { head :no_content }
    end
  end
end
