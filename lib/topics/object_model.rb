# frozen_string_literal: true

# exercise object model
module ObjectModel
  # Linux
  module LinuxFriendly
    def fork_process
      super
    end
  end

  # Desktop
  class Desktop
    def fork_process
      'Parent: allocate memory'
    end

    def mine_bitcoins
      inspect
    end
  end

  # Laptop
  class Laptop < Desktop
    prepend LinuxFriendly
  end
end
