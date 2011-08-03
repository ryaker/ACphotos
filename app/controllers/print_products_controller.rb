class PrintProductsController < ApplicationController
  # GET /print_products
  # GET /print_products.xml
  def index
    @print_products = PrintProduct.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @print_products }
    end
  end

  # GET /print_products/1
  # GET /print_products/1.xml
  def show
    @print_product = PrintProduct.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @print_product }
    end
  end

  # GET /print_products/new
  # GET /print_products/new.xml
  def new
    @print_product = PrintProduct.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @print_product }
    end
  end

  # GET /print_products/1/edit
  def edit
    @print_product = PrintProduct.find(params[:id])
  end

  # POST /print_products
  # POST /print_products.xml
  def create
    @print_product = PrintProduct.new(params[:print_product])

    respond_to do |format|
      if @print_product.save
        format.html { redirect_to(@print_product, :notice => 'Print product was successfully created.') }
        format.xml  { render :xml => @print_product, :status => :created, :location => @print_product }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @print_product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /print_products/1
  # PUT /print_products/1.xml
  def update
    @print_product = PrintProduct.find(params[:id])

    respond_to do |format|
      if @print_product.update_attributes(params[:print_product])
        format.html { redirect_to(@print_product, :notice => 'Print product was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @print_product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /print_products/1
  # DELETE /print_products/1.xml
  def destroy
    @print_product = PrintProduct.find(params[:id])
    @print_product.destroy

    respond_to do |format|
      format.html { redirect_to(print_products_url) }
      format.xml  { head :ok }
    end
  end
end
