require 'tilt'

class Tilt::MultimarkdownTemplate < Tilt::Template
  def self.engine_initialized?
    defined? ::MultiMarkdown
  end

  def initialize_engine
    require_template_library 'multimarkdown'
  end

  def prepare
      @engine = MultiMarkdown.new(data)
      @output = nil
    end

    def evaluate(scope, locals, &block)
      @output ||= @engine.to_html
    end

  def allows_script?
    false
  end
end
