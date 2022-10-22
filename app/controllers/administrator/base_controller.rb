# frozen_string_literal: true

class Administrator::BaseController < ApplicationController
  before_action :authenticate_administrator_administrator!
end
