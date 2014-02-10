#!/usr/bin/env ruby

require 'rubygems'
require 'test/unit'
require 'mocha/setup'

class TestFoo < Test::Unit::TestCase
  def hoge(arg)
    piyo(arg)
  end
  def test_mock
    # piyo(test)と呼び出される事を期待し、*test*を返すモック
    # モックでは、引数や呼び出し回数までチェックされる。デフォルトは、1回のみ
    #以下の例では、２回呼び出しているので、times(2)にしている
    self.expects(:piyo).with("test").returns("*test*").times(2)
    # モックは、引数や回数の検証が入っているため、assertを付けなくても検証される（振る舞いベースのテスト）
    hoge("test")
    # piyoがtestで呼び出された事までテストされている
    # 一応、戻り値を確認（状態ベースのテスト）
    assert_equal("*test*", hoge("test"))
  end
end
