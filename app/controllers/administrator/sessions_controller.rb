# frozen_string_literal: true

class Administrator::SessionsController < Devise::SessionsController
  layout "administrator/unauthenticate_layout"

  def destroy
    flash[:success] = I18n.t("devise.sessions.signed_out") if sign_out current_administrator_administrator
    redirect_to new_administrator_administrator_session_path
  end
end
