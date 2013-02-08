require 'test_helper'

class EmblemPrecompilersTest < MiniTest::Unit::TestCase
  def template ; "hello" ; end
  def compiled_template ; "function()" ; end

  def test_precompiles_template_files
    Barber::Emblem::Precompiler.expects(:compile).with(template).returns(compiled_template)

    result = Barber::Emblem::FilePrecompiler.call(template)
    assert_equal "Handlebars.template(#{compiled_template});", result
  end
end
