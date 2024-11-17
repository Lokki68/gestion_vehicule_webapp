# frozen_string_literal: true

class SignoutButtonComponent < ViewComponent::Base
  def initialize(path:)
    @path = path
    super
  end
end
