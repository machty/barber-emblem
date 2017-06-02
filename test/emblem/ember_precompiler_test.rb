require 'test_helper'

class EmblemEmberPrecompilerTest < Minitest::Test
  def test_calls_the_ember_handlebars_precompiler
    result = compile "p Hello"
    assert result
    assert_match (/Handlebars/), result
  end

  def test_is_a_precompiler
    assert Barber::Emblem::EmberPrecompiler < Barber::Ember::Precompiler, 
      "Emblem's Ember precompile should inherit from Barber::Embler::Precompiler"
  end

  def compile(template)
    Barber::Emblem::EmberPrecompiler.compile template
  end
end
