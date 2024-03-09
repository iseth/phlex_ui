require "phlex/testing/view_helper"

class TestButton < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_button_output_includes_name
    output = render PhlexUI::Button.new { "Button" }
    button = <<~EOS
      <button type="button" class="whitespace-nowrap inline-flex items-center justify-center rounded-md font-medium transition-colors focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-ring disabled:pointer-events-none disabled:opacity-50 bg-primary text-primary-foreground shadow hover:bg-primary/90 px-4 py-2 h-9 text-sm">Button</button>
    EOS
    assert_equal button, output
    # assert_equal "<h1>Hello Joel</h1>", output
  end
end
