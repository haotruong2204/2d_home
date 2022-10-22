# frozen_string_literal: true

module ApplicationHelper
  FLASH_TYPE = {
    success: "success", error: "error", failed: "failed",
    alert: "error", notice: "success", danger: "danger"
  }.freeze

  def flash_class flash_type
    FLASH_TYPE[flash_type] || flash_type.to_s
  end

  def active_sidebar path, controller
    "active" if current_page?(path) || controller_name == controller
  end

  def format_date date
    date.strftime(Settings.time.formats)
  end

  def name_tag ids
    Tag.where(id: ids).pluck(:name, :color)
  end
end
