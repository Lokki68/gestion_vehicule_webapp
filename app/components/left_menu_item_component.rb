# frozen_string_literal: true

class LeftMenuItemComponent < ViewComponent::Base
  def initialize(path:, icon:, title:, active:, opened: false)
    @path = path
    @icon = icon
    @title = title
    @active = active
    @opened = opened
    super
  end
end
