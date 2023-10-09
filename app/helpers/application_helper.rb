# frozen_string_literal: true

module ApplicationHelper

  # bootstrap classes are not perfectly matching to the rails flash classes
  # thus we need to map them for a more readable code
  FLASH_TO_BOOTSTRAP = { success: 'alert-success', error: 'alert-danger', warning: 'alert-warning',
                         alert: 'alert-warning', notice: 'alert-info' }

  # maps flash classes to bootstrap classes
  def bootstrap_class_for(flash_type)
    FLASH_TO_BOOTSTRAP[flash_type.to_sym] || flash_type.to_s
  end

  def bootstrap_icon_for(flash_type)
    icon = case flash_type
           when 'success'
             '<svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Success:"><use xlink:href="#check-circle-fill"/></svg>'
           when 'danger', 'alert', 'error'
             '<svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Danger:"><use xlink:href="#exclamation-triangle-fill"/></svg>'
           when 'warning'
             '<svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Warning:"><use xlink:href="#exclamation-triangle-fill"/></svg>'
           else
             # info
             '<svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Info:"><use xlink:href="#info-fill"/></svg>'
           end

    icon.html_safe
  end
end
