module Scruby
  module Equatable
    def ==(other)
      other.is_a?(Equatable) && other.equatable_state == equatable_state
    end

    def eql?(other)
      self.class == other.class && self == other
    end

    protected

    def equatable_state
      instance_variables.map { |name| instance_variable_get(name) }
    end
  end
end
