module Dydx
  module Algebra
    module Set
      class Num < Base
        attr_accessor :n

        def initialize(n)
          @n = n
        end

        def differentiate(sym=:x)
          _(0)
        end
        alias_method :d, :differentiate

        def to_s
          @n.to_s
        end

        def ==(x)
          x.is_a?(Num) && n == x.n
        end
      end
    end
  end
end