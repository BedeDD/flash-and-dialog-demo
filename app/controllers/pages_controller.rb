# frozen_string_literal: true

class PagesController < ApplicationController
  def index
  end

  def show_error
    @persistent_message = params.fetch('persistent', nil)
    flash.now[:error] = 'This is an error message'
    # for the sake of simplicity I only render the same view
    # the content of this view can be templated and used in every other
    # turbo_stream response of the real app
    render 'pages/show_flash'
  end

  def show_info
    @persistent_message = params.fetch('persistent', nil)
    flash.now[:notice] = 'This is an info message'
    # for the sake of simplicity I only render the same view
    # the content of this view can be templated and used in every other
    # turbo_stream response of the real app
    render 'pages/show_flash'
  end

  def show_success
    @persistent_message = params.fetch('persistent', nil)
    flash.now[:success] = 'This is a success message'
    # for the sake of simplicity I only render the same view
    # the content of this view can be templated and used in every other
    # turbo_stream response of the real app
    render 'pages/show_flash'
  end

  def show_warning
    @persistent_message = params.fetch('persistent', nil)
    flash.now[:warning] = 'This is a success message'
    # for the sake of simplicity I only render the same view
    # the content of this view can be templated and used in every other
    # turbo_stream response of the real app
    render 'pages/show_flash'
  end

  def show_dialog
    @no_close = params.fetch('no_close', false)
  end
end
