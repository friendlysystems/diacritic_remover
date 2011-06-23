require 'test_helper'

class DiacriticRemoverTest < Test::Unit::TestCase
  # Replace this with your real tests.
  def test_removes_diacritics_from_string
    dirty_string = "ěščřžýáíé"
    assert dirty_string.remove_diacritics == "escrzyaie"
  end

  def test_does_not_remove_spaces
    dirty_string = 'áj hev spejsís'
    assert dirty_string.remove_diacritics == 'aj hev spejsis'
  end
end
