  
  
[WIP]ボウリングゲーム
---
  
## 基本仕様
  
+ 1投目で10ピンすべて倒したら、ストライク
+ スペアは、2投目で10ピンすべて倒したということ
+ 1投目が0点で2投目で10ピン倒してもスペア
+ ガターは、1投目に横のガターに落ちて1ピンも倒せないこと
+ ボウリングでの最高得点は300点で、パーフェクトと言う
  
## ユースケース
  

![](assets/37c8d83bd9cfbb9ac2fc730253ccbeaa0.png?0.9747319873096061)  
  
### ユースケース１：ストライク
  
```ruby
require 'test/unit'
class Game
  def initialize
    @score = 0
    @current_throw = 0
    @throws = Array.new(21,0)
  end
  def add(pin)
    @throws[@current_throw] = pin    
    @current_throw += 1
  end
  def score
    first_throw = @throws[0]
    second_throw = @throws[1]
    third_throw = @throws[2]
    if first_throw == 10
      first_frame_score = second_throw + third_throw      
      second_frame_score = second_throw + third_throw
      @score = 10 + first_frame_score + second_frame_score
    end
  end
end
class TestGame < Test::Unit::TestCase
  def test_strike
    g = Game.new
    g.add(10)
    g.add(3)
    g.add(6)
    assert_equal 28, g.score    
  end
end
```
<pre class="language-text">Loaded suite /Users/k2works/Projects/k2works/etude_for_ruby/docs/dev/9xwq5kuk7_code_chunk
Started
.

Finished in 0.000543 seconds.
------
1 tests, 1 assertions, 0 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications
100% passed
------
1841.62 tests/s, 1841.62 assertions/s
</pre>
  
### ユースケース２：スペア
  
```ruby
require 'test/unit'
class Game
  def initialize
    @score = 0
    @current_throw = 0
    @throws = Array.new(21,0)
  end
  def add(pin)
    @throws[@current_throw] = pin    
    @current_throw += 1
  end  
  def score        
    first_throw = @throws[0]
    second_throw = @throws[1]
    third_throw = @throws[2]
    score = first_throw + second_throw
    if score == 10
      @score = score + third_throw
    else
      @score = score
    end
  end
end
class TestGame < Test::Unit::TestCase
  def test_spare
    g = Game.new
    g.add(7)
    g.add(3)
    g.add(3)
    assert_equal 13, g.score
  end
end
```
<pre class="language-text">Loaded suite /Users/k2works/Projects/k2works/etude_for_ruby/docs/dev/t0qq12v83_code_chunk
Started
.

Finished in 0.000565 seconds.
------
1 tests, 1 assertions, 0 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications
100% passed
------
1769.91 tests/s, 1769.91 assertions/s
</pre>
  
### ユースケース３：ガター
  
  
### ユースケース４：パーフェクト
  
  
### ユースケース５：サンプルゲーム
  
![](./images/score.png )
  
## コアモデル
  

![](assets/37c8d83bd9cfbb9ac2fc730253ccbeaa1.png?0.6671396392459266)  
  
## 参照
  
+ [ボウリング](https://ja.wikipedia.org/wiki/%E3%83%9C%E3%82%A6%E3%83%AA%E3%83%B3%E3%82%B0 )
  