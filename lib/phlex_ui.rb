require "ruby-next"

require "ruby-next/language/setup"
RubyNext::Language.setup_gem_load_path(transpile: true)

require "phlex"
require "zeitwerk"
require "tailwind_merge"

loader = Zeitwerk::Loader.for_gem
loader.inflector.inflect(
  "phlex_ui" => "PhlexUI"
)
loader.setup # ready!

# autoload everything in the lib directory
loader.push_dir File.join(__dir__)
loader.tag = "phlex_ui"
loader.setup

module PhlexUI
end

loader.eager_load
