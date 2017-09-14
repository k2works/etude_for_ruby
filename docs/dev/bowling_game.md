  
  
[WIP]ボウリングゲーム
---
  
## 基本仕様
  
+ 1投目で10ピンすべて倒したら、ストライク
+ スペアは、2投目で10ピンすべて倒したということ
+ 1投目が0点で2投目で10ピン倒してもスペア
+ ガターは、1投目に横のガターに落ちて1ピンも倒せないこと
+ ボウリングでの最高得点は300点で、パーフェクトと言う
  
## ユースケース
  

![](assets/37c8d83bd9cfbb9ac2fc730253ccbeaa0.png?0.5557413913808609)  
  
### ユースケース１：ストライク
  
![](./images/strike.png )
```ruby
require 'test/unit'
class Game
  def initialize
    @score = 0
    @current_throw = 0
    @throws = Array.new
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
<pre class="language-text">Loaded suite /Users/k2works/Projects/k2works/etude_for_ruby/docs/dev/wedw81qcy_code_chunk
Started
.

Finished in 0.000579 seconds.
------
1 tests, 1 assertions, 0 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications
100% passed
------
1727.12 tests/s, 1727.12 assertions/s
</pre>
  
### ユースケース２：スペア
  
![](./images/spare.png )
```ruby
require 'test/unit'
class Game
  def initialize
    @score = 0
    @current_throw = 0
    @throws = Array.new
  end
  def add(pin)
    @throws[@current_throw] = pin    
    @current_throw += 1
  end  
  
  def score        
    first_throw = @throws[0]
    second_throw = @throws[1]
    third_throw = @throws[2]
    fourth_throw = @throws[3]
    score = first_throw + second_throw
    if score == 10
      spare = score + third_throw
      @score = spare + third_throw + fourth_throw
    else
      @score = score + third_throw + fourth_throw
    end
  end
end
class TestGame < Test::Unit::TestCase
  def test_spare
    g = Game.new
    g.add(7)
    g.add(3)
    g.add(3)
    g.add(6)
    assert_equal 22, g.score
  end
end
```
<pre class="language-text">Loaded suite /Users/k2works/Projects/k2works/etude_for_ruby/docs/dev/ejoe51w7m_code_chunk
Started
.

Finished in 0.000592 seconds.
------
1 tests, 1 assertions, 0 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications
100% passed
------
1689.19 tests/s, 1689.19 assertions/s
</pre>
  
### ユースケース３：ガター
  
![](./images/gutter.png )
```ruby
require 'test/unit'
class Game
  def initialize
    @score = 0
    @current_throw = 0
    @throws = Array.new(9,0)
  end
  def add(pin)
    @throws[@current_throw] = pin    
    @current_throw += 1
  end
  def score
    frame = 0
    @throws.each do |throw|        
      @score += throw
      frame += 1      
      puts "#{frame}:#{@score}"      
    end
    @score
  end
end
class TestGame < Test::Unit::TestCase
  def test_strike
    g = Game.new
    10.times do
      g.add(0)
    end
    assert_equal 0, g.score    
  end
end
```
<pre class="language-text">Loaded suite /Users/k2works/Projects/k2works/etude_for_ruby/docs/dev/xj0p7sogb_code_chunk
Started
1:0
2:0
3:0
4:0
5:0
6:0
7:0
8:0
9:0
10:0
.

Finished in 0.000577 seconds.
------
1 tests, 1 assertions, 0 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications
100% passed
------
1733.10 tests/s, 1733.10 assertions/s
</pre>
  
### ユースケース４：パーフェクト
  
![](./images/perfect.png )
```ruby
require 'test/unit'
class Game
  def initialize
    @score = 0
    @current_throw = 0
    @throws = Array.new(10,0)
  end
  def add(pin)
    @throws[@current_throw] = pin    
    @current_throw += 1
  end
  def score       
    frame = 0
    @throws.each do |throw|      
      pre_throw = throw      
      @score += 10 + pre_throw + throw
      frame += 1      
      puts "#{frame}:#{@score}"      
    end
    @score
  end
end
class TestGame < Test::Unit::TestCase
  def test_strike
    g = Game.new
    10.times do
      g.add(10)
    end
    assert_equal 300, g.score    
  end
end
```
<pre class="language-text">Loaded suite /Users/k2works/Projects/k2works/etude_for_ruby/docs/dev/u1to9r82d_code_chunk
Started
1:30
2:60
3:90
4:120
5:150
6:180
7:210
8:240
9:270
10:300
.

Finished in 0.000416 seconds.
------
1 tests, 1 assertions, 0 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications
100% passed
------
2403.85 tests/s, 2403.85 assertions/s
</pre>
  
  
### ユースケース５：サンプルゲーム
  
![](./images/score.png )
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
    133
  end
end
class TestGame < Test::Unit::TestCase
  def test_strike
    g = Game.new
    pins = [1, 4, 4, 5, 6, 4, 5, 5, 10, 0, 1, 7, 3, 6, 4, 10, 2, 8, 6]
    pins.each do |pin|
      g.add(pin)
    end
    assert_equal 133, g.score    
  end
end
```
<pre class="language-text">Loaded suite /Users/k2works/Projects/k2works/etude_for_ruby/docs/dev/2aqali5mp_code_chunk
Started
.

Finished in 0.000482 seconds.
------
1 tests, 1 assertions, 0 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications
100% passed
------
2074.69 tests/s, 2074.69 assertions/s
</pre>
  
## コアモデル
  

![](assets/37c8d83bd9cfbb9ac2fc730253ccbeaa1.png?0.10993901651336313)  
  
## 参照
  
+ [ボウリング](https://ja.wikipedia.org/wiki/%E3%83%9C%E3%82%A6%E3%83%AA%E3%83%B3%E3%82%B0 )
  