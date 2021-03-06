class UsersController < ApplicationController
  before_action :set_user, only: [:show, :setup, :edit, :update, :destroy]
  # validate_presence_of :email, :format { regex }

  respond_to :json, :html

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  def grab
    @resp = User.all
    respond_with @resp
  end

  def user_search
    @resp = User.where("fb_id = '#{params[:fb_id]}'").first
    respond_with @resp
  end



  def yelp_search
    @yelp = Yelp.client.search(params[:location], { term: params[:business] }).businesses
    respond_with @yelp
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @users = User.find(params[:id])
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/setup
  def setup
  end

  # GET /users/1/edit
  def edit
<<<<<<< HEAD
  
end
=======
    @user = User.find_lat_long_for_zipcode
  end

>>>>>>> 25d10278b8286e2981efc3ed806f5832efd411d8
  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render json: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        # format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, avatar: @user }
        #format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
      
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
<<<<<<< HEAD
      params.require(:user).permit(:name, :email, :age, :avatar, :gender, :rel_type, :location, :radius, :fb_id, :orientation)
    end 
=======
      params.require(:user).permit(:name, :email, :age, :gender, :rel_type, :location, :radius, :fb_id, :orientation,
        user_places_attributes: [])
    end
>>>>>>> 25d10278b8286e2981efc3ed806f5832efd411d8
end
