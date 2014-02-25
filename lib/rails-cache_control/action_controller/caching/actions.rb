module ActionController
  module Caching
    module Actions
      class ActionCacheFilter
        def around_with_expires_in(controller, &block)
          expires_in = @store_options[:expires_in]
          controller.expires_in(expires_in, @store_options) if expires_in
          around_without_expires_in(controller, &block)
        end
        alias_method_chain :around, :expires_in
      end
    end
  end
end
