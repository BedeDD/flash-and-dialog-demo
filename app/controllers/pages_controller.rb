# frozen_string_literal: true

class PagesController < ApplicationController
  def index
  end

  def show_error
    flash[:error] = 'This is an error message'
  end

  def show_info
    flash[:notice] = 'This is an info message'
  end

  def show_success
    flash[:success] = 'This is a success message'
  end

  def show_dialog
    @no_close = params.fetch('no_close', '0')
  end
end
