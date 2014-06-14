module Ruboty
  module Actions
    class IconRoulette < Base
      include Env::Validatable

      env :ICON_PATHS, "Icon image file path to be used in icon roulette (e.g. icons/*)"

      class << self
        attr_accessor :bots
      end

      def initialize(message)
        super
        validate
      end

      def call
        case message.robot.adapter.class.name
        when 'Ruboty::Adapters::Idobata'
          client.update_bot_icon(id: bot['id'], file_path: icon_paths.sample)
          message.reply('lol')
        else
          message.reply("aahhhhhh, can't change icon!!!")
        end
      end

      private

      def icon_paths
        Dir[ENV['ICON_PATHS']].select do |path|
          File.file?(path)
        end
      end

      def idobata_api_token
        message.robot.adapter.idobata_api_token
      end

      def client
        @client ||= Atabodi::Client.new(api_token: idobata_api_token)
      end

      def bot
        client.list_bots.body.bots.detect {|b| b['api_token'] == idobata_api_token }
      end
    end
  end
end
