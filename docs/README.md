Etude for Ruby
===================

# 目的 #
Rubyプログラミング練習

# 前提 #
| ソフトウェア   | バージョン   | 備考        |
|:---------------|:-------------|:------------|
| ruby           |2.4.0     |             |
| vagrant        |1.8.7     |             |
| docker         |17.03.0   |             |
| docker-compose |1.8.0   |             |

# 構成 #
1. [構築](#構築)
1. [配置](#配置)
1. [開発](#開発)
1. [運用](#運用)

## 構築
### [開発用仮想マシン構築](./ops/build_vagrant.md)
### [開発用コンテナ構築](./ops/build_docker.md)

**[⬆ back to top](#構成)**

## 配置
### [CircleCI配置](./ops/ship_circleci.md)
### [Jenkins配置](./ops/ship_jenkins.md)
### [RubyGemパッケージの配置](./ops/ship_ruby_gem.md)

**[⬆ back to top](#構成)**

## 開発
### [FizzBuzz](./dev/fizz_buzz.md)
### [BowlingGame](./dev/bowling_game.md)
### [Shape](./dev/objects_and_data_structures.md)

**[⬆ back to top](#構成)**

## 運用
### [ドキュメント運用](./ops/ship_document.md)

**[⬆ back to top](#運用)**

# 参照 #
+ [Project: RSpec Expectations 3.5](https://www.relishapp.com/rspec/rspec-expectations/v/3-5/docs/built-in-matchers)
