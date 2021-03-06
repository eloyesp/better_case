module BetterCase

  VERSION = "0.0.3"

  refine Symbol do
    def === object
      object.respond_to? self
    end
  end

  refine Array do
    alias :=== :include?
  end

end
