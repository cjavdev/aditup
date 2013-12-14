module SpotsHelper
  def current_client
    @current_client ||= current_account_manager.clients.find(params[:client_id])
  end

  def require_current_client!
    redirect_to clients_url unless !!current_client
  end
end
