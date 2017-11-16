class GuildsController < ApplicationController
  before_action :authenticate_officer!  
  before_action :set_guild, only: [:show, :edit, :update, :destroy]
  
  # GET /guilds
  def index
    @guilds = Guild.all
  end

  # GET /guilds/1
  def show
  end

  # GET /guilds/new
  def new
    @guild = Guild.new
  end

  # GET /guilds/1/edit
  def edit
  end

  # POST /guilds
  def create
    @guild = Guild.new(guild_params)

    if @guild.save
      redirect_to @guild, notice: 'Guild was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /guilds/1
  def update
    if @guild.update(guild_params)
      redirect_to @guild, notice: 'Guild was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /guilds/1
  def destroy
    @guild.destroy
    redirect_to guilds_url, notice: 'Guild was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guild
      @guild = Guild.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def guild_params
      params.fetch(:guild, {})
    end
end
