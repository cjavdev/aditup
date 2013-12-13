class A::ClientsController < ApplicationController
  before_filter :authenticate_account_manager!
  def index
    @clients = current_account_manager.clients
  end

  def show
    @client = current_account_manager.clients.find(params[:id])
  end

  def new
    @client = current_account_manager.clients.new
  end

  def create
    @client = current_account_manager.clients.new(params[:client])
    if @client.save
      flash[:notice] = "Client saved successfully!"
      redirect_to @client
    else
      flash[:errors] = @client.errors.full_messages
      render :new
    end
  end

  def edit
    @client = current_account_manager.clients.find(params[:id])
  end

  def update
    @client = current_account_manager.clients.find(params[:id])
    if @client.update_attributes(params[:client])
      flash[:notice] = "Client updated successfully!"
      redirect_to @client
    else
      flash[:errors] = @client.errors.full_messages
      render :edit
    end
  end

  def destroy
    current_account_manager.clients.find(params[:id]).destroy
    head :ok
  end
end
