module TurboStreamActionsHelper
  module CustomTurboStreamActions
    # Add your own custom Turbo StreamAction helpers
    # These will automatically be made available on the `turbo_stream` helper
    # Add the matching StreamAction in `app/javascripts/src/turbo_streams.js`

    # turbo_stream.remove_later("my-id", after: "2000")
    def remove_later(target, after: "2000")
      turbo_stream_action_tag :remove_later, target: target, after: after
    end
  end

  Turbo::Streams::TagBuilder.prepend(CustomTurboStreamActions)
end
