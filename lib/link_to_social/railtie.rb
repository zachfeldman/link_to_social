require "link_to_social/view_helper"
module LinkToSocial
  class Railtie < Rails::Railtie
    initializer "link_to_social.view_helper" do
      ActionView::Base.send :include, ViewHelper
    end
  end
end