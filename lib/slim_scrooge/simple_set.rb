module SlimScrooge
  class SimpleSet < Hash
    class << self
      # Creates a new set containing the given objects
      def [](*ary)
        new(ary)
      end
    end
 
    # Create a new SimpleSet containing the unique members of _arr_
    def initialize(arr = [])
      Array(arr).each {|x| self[x] = true}
    end
 
    # Add a value to the set, and return it
    def <<(value)
      self[value] = true
      self
    end
 
    # Merge _arr_ with receiver, producing the union of receiver & _arr_
    def merge(arr)
      super(arr.inject({}) {|s,x| s[x] = true; s })
    end

    alias_method :|, :merge
 
    # Invokes block once for each item in the set. Creates an array
    # containing the values returned by the block.
    def collect(&block)
      keys.collect(&block)
    end

    alias_method :map, :collect
 
    # Get a human readable version of the set.
    def inspect
      "#<SimpleSet: {#{keys.map {|x| x.inspect}.join(", ")}}>"
    end
 
    alias_method :to_a, :keys

    # Returns set after elements in other have been removed
    def -(other)
      SimpleSet.new(collect {|k| other[k] ? nil : k}.compact)
    end
  end
end
