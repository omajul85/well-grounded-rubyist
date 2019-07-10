module FattyRBP
  class Formatter
    def self.formats
      @formats ||= {}
    end

    def self.format(name, opts = {}, &block)
      formats[name] = Class.new(FattyRBP::Format, &block)
    end

    def self.render(format, opts = {})
      formats[format].new(opts).render
    end
  end

  class Format
    def initialize(opts = {})
    end

    def render
      raise NotImplementedError
    end
  end
end

class Hello < FattyRBP::Formatter
  format :text do
    def render
      'Hello World!'
    end
  end

  format :html do
    def render
      '<h1>Hello World!</h1>'
    end
  end

  format :json
end

puts Hello.render(:text)
puts Hello.render(:html)
puts Hello.render(:json)

# So the moral of the story here is that class-level state should be stored in
# class instance variables if you want to allow subclassing. Reserve class variables
# for data that needs to be shared across an entire class hierarchy.
