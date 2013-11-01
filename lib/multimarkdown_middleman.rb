require_relative './multimarkdown_template'

module MultimarkdownMiddleman
  class << self
    def registered(app)
      ::Tilt.register ::Tilt::MultimarkdownTemplate, 'mmd'
      app.after_configuration do
        template_extensions :mmd => :html
        sitemap.rebuild_resource_list!
      end
    end
    alias :included :registered
  end
end

Middleman::Extensions.register :multimarkdown_middleman, MultimarkdownMiddleman