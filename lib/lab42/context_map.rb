require 'forwarder'

module Lab42

  class ContextMap
    extend Forwarder
    forward_all :fetch, to: :hash

    attr_reader :hash

    private
    def initialize hash
      @hash = hash
    end
    
  end # class ContextMap
end # module Lab42
