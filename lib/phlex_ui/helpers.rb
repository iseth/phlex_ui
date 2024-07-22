require "tailwind_merge"

module PhlexUI
  module Helpers
    def cv(classes)
      ::TailwindMerge::Merger.new.merge(classes)
    end
  end
end
