require 'test_helper'

class EmblemPrecompilerTest < MiniTest::Unit::TestCase
  def test_calls_the_ember_handlebars_precompiler
    result = compile "p Hello"
    assert result
    assert_match /Handlebars/, result
    refute_match /Ember/, result
  end

  def test_is_a_precompiler
    assert Barber::Emblem::Precompiler < Barber::Precompiler, 
      "Emblem precompile should inherit from Barber::Precompiler"
  end

  def compile(template)
    Barber::Emblem::Precompiler.compile template
  end
end
