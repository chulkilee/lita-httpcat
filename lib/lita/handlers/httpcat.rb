module Lita
  module Handlers
    class Httpcat < Handler
      DEFAULT_PREFIX = 'https://http.cat/'
      DEFAULT_SUFFIX = '.jpg'

      config :prefix, type: String
      config :suffix, type: String

      route(/^httpcat\s+(?<code>\d{3})/,
            :httpcat,
            help: { 'httpcat STATUS_CODE' => 'Shows httpcat for the status code' })

      def httpcat(response)
        response.reply(build_url(response.match_data['code']))
      end

      private

      def build_url(str)
        (config.prefix || DEFAULT_PREFIX) + str + (config.suffix || DEFAULT_SUFFIX)
      end

      Lita.register_handler(self)
    end
  end
end
