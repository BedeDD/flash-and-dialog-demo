# frozen_string_literal: true

class PagesController < ApplicationController
  def index
  end

  # GET /pages/static_flash
  def static_flash
    @persistent_message = params.fetch('persistent', nil)
    flash[:notice] = 'This is a static flash message'
  end

  # POST /pages/show_error
  def show_error
    @persistent_message = params.fetch('persistent', nil)
    flash.now[:error] = 'This is an error message'
    # for the sake of simplicity I only render the same view
    # the content of this view can be templated and used in every other
    # turbo_stream response of the real app
    render 'pages/show_flash'
  end

  # POST /pages/show_info
  def show_info
    @persistent_message = params.fetch('persistent', nil)
    flash.now[:notice] = 'This is an info message'
    # for the sake of simplicity I only render the same view
    # the content of this view can be templated and used in every other
    # turbo_stream response of the real app
    render 'pages/show_flash'
  end

  # POST /pages/show_success
  def show_success
    @persistent_message = params.fetch('persistent', nil)
    flash.now[:success] = 'This is a success message'
    # for the sake of simplicity I only render the same view
    # the content of this view can be templated and used in every other
    # turbo_stream response of the real app
    render 'pages/show_flash'
  end

  # POST /pages/show_warning
  def show_warning
    @persistent_message = params.fetch('persistent', nil)
    flash.now[:warning] = 'This is a warning message'
    # for the sake of simplicity I only render the same view
    # the content of this view can be templated and used in every other
    # turbo_stream response of the real app
    render 'pages/show_flash'
  end

  # POST /pages/show_dialog
  def show_dialog
    @no_close = params.fetch('no_close', false)
  end
end
