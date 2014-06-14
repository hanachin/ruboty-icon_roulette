module Ruboty
  module Handlers
    class IconRoulette < Base
      on /icon roulette!/, name: 'icon_roulette!', description: 'Change my icon at random'

      def icon_roulette!(message)
        Ruboty::Actions::IconRoulette.new(message).call
      end
    end
  end
end
