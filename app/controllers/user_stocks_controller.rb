class UserStocksController < ApplicationController

  # GET /user_stocks
  # GET /user_stocks.json
  def index
    @user = User.find(params[:user_id])
    @stocks = @user.stocks
    @stocks.each do |stock|
      stock.save
    end
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_stocks }
    end
  end

  # GET /user_stocks/1
  # GET /user_stocks/1.json
  def show
    @user_stock = UserStock.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_stock }
    end
  end

  # GET /user_stocks/new
  # GET /user_stocks/new.json
  def new
    @user = User.find(params[:user_id])
    @user_stock = UserStock.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_stock }
    end
  end

  # GET /user_stocks/1/edit
  def edit
    @user_stock = UserStock.find(params[:id])
  end

  # POST /user_stocks
  # POST /user_stocks.json
  def create
    @user = User.find(params[:user_id])
    @stock = Stock.where(symbol: params[:user_stock][:symbol]).first_or_create
    params[:user_stock].merge!(stock_id: @stock.id)
    @user_stock = UserStock.new(params[:user_stock])

    respond_to do |format|
      if @user_stock.save
        format.html { redirect_to user_user_stocks_path(@user), notice: 'User stock was successfully created.' }
        format.json { render json: @user_stock, status: :created, location: @user_stock }
      else
        format.html { render action: "new" }
        format.json { render json: @user_stock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_stocks/1
  # PUT /user_stocks/1.json
  def update
    @user_stock = UserStock.find(params[:id])

    respond_to do |format|
      if @user_stock.update_attributes(params[:user_stock])
        format.html { redirect_to @user_stock, notice: 'User stock was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_stock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_stocks/1
  # DELETE /user_stocks/1.json
  def destroy
    @user_stock = UserStock.find_by_symbol(params[:id])
    @user_stock.destroy

    respond_to do |format|
      format.html { redirect_to user_stocks_url }
      format.json { head :no_content }
    end
  end
end
