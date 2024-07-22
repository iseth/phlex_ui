require "test_helper"

class PhlexUI::TableTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_tailwind_merge
    output = phlex_context do
      Button(class: cv("px-2 py-1 bg-red hover:bg-dark-red p-3 bg-[#B91C1C]")) { "Click me" }
    end
    require "pry"
    binding.pry
    assert_match(/<button  class="text-right">Role<\/th>/, output)
  end
end
