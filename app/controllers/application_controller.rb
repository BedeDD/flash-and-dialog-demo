# frozen_string_literal: true

class ApplicationController < ActionController::Base
  # allow `redirect url, success: 'success message'` in controllers to display a success message as flash
  # default is only notice and alert
  add_flash_types :success
end
