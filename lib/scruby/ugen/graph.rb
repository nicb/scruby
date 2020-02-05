module Scruby
  module Ugen
    class Graph
      include Encode

      attr_reader :name, :root, :nodes, :controls, :constants

      def initialize(root, name: nil, controls: {})
        @name = name
        @controls = controls
        @nodes = []
        @constants = []
        @root = Node.new(root, self)
      end

      def add(node)
        @nodes.push node
      end

      def add_constant(const)
        @constants.push const
      end

      def encode
        [ "SCgf",
          encode_int32(2), # file version
          encode_int16(1), # number of defs
          encode_string(name),
          encode_constants,
          encode_controls,
          encode_control_names,
          encode_nodes,
          encode_variants
        ].join
      end

      private

      def encode_controls
        encode_int32(0)
      end

      def encode_control_names
        encode_int32(0)
      end

      def encode_variants
        encode_int16(0)
      end

      def encode_constants
        encode_floats_array(constants.map(&:value))
      end

      def encode_nodes
        encode_int32(nodes.size) + nodes.map(&:encode).join
      end
    end
  end
end
