# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def after_sign_out_path_for resource_or_scope
    return new_administrator_administrator_session_path if resource_or_scope == :administrator_administrator

    super
  end

  def after_sign_in_path_for resource_or_scope
    return administrator_root_path if resource_or_scope.is_a?(Administrator)

    super
  end
end
