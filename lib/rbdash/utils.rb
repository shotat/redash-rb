module Rbdash
  module Utils
    class << self
      def find_local_ids
        Dir.glob('queries/*').map do |f|
          f.match(/\d+/)[0]
        end
      end

      def find_local_file(id)
        Dir.glob("queries/query-#{id}.json").first
      end

      def config_exist?
        !Dir.glob('.rbdash.yml').empty?
      end
    end
  end
end
