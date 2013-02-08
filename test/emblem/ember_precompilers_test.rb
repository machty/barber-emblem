require 'test_helper'

class EmblemEmberPrecompilersTest < MiniTest::Unit::TestCase
  def template ; "hello" ; end
  def compiled_template ; "function()" ; end

  def test_precompiles_template_files
    Barber::Emblem::EmberPrecompiler.expects(:compile).with(template).returns(compiled_template)

    result = Barber::Emblem::EmberFilePrecompiler.call(template)
    assert_equal "Ember.Handlebars.template(#{compiled_template});", result
  end
end

