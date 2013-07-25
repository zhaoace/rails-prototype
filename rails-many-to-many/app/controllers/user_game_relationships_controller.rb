class UserGameRelationshipsController < ApplicationController
  # GET /user_game_relationships
  # GET /user_game_relationships.json
  def index
    @user_game_relationships = UserGameRelationship.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_game_relationships }
    end
  end

  # GET /user_game_relationships/1
  # GET /user_game_relationships/1.json
  def show
    @user_game_relationship = UserGameRelationship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_game_relationship }
    end
  end

  # GET /user_game_relationships/new
  # GET /user_game_relationships/new.json
  def new
    @user_game_relationship = UserGameRelationship.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_game_relationship }
    end
  end

  # GET /user_game_relationships/1/edit
  def edit
    @user_game_relationship = UserGameRelationship.find(params[:id])
  end

  # POST /user_game_relationships
  # POST /user_game_relationships.json
  def create
    @user_game_relationship = UserGameRelationship.new(params[:user_game_relationship])

    respond_to do |format|
      if @user_game_relationship.save
        format.html { redirect_to @user_game_relationship, notice: 'User game relationship was successfully created.' }
        format.json { render json: @user_game_relationship, status: :created, location: @user_game_relationship }
      else
        format.html { render action: "new" }
        format.json { render json: @user_game_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_game_relationships/1
  # PUT /user_game_relationships/1.json
  def update
    @user_game_relationship = UserGameRelationship.find(params[:id])

    respond_to do |format|
      if @user_game_relationship.update_attributes(params[:user_game_relationship])
        format.html { redirect_to @user_game_relationship, notice: 'User game relationship was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_game_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_game_relationships/1
  # DELETE /user_game_relationships/1.json
  def destroy
    @user_game_relationship = UserGameRelationship.find(params[:id])
    @user_game_relationship.destroy

    respond_to do |format|
      format.html { redirect_to user_game_relationships_url }
      format.json { head :no_content }
    end
  end
end
