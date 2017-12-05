Ruby開発環境
---

### 01 - rbenv, Bundler, and gemfile
#### rbenv

> アプリケーションのRubyバージョンを固定するのにrbenvを使い開発環境と本番環境の一致を保証する。苦痛の無いRubyのアップグレードと安全なデプロイのためにBundlerとともに使う。

```bash
$ brew install rbenv
$ rbenv init
$ curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash
$ rbenv-doctor
$ rbenv install -l
$ rbenv install 2.x.x
$ rbenv version
$ rbenv local 2.x.x
```

+ https://github.com/rbenv/rbenv#installing-ruby-versions

#### Bundler
> BundlerはRubyプロジェクトのに必要なgemとバージョンのインストールとトラッキングの安定した環境を提供する。

```bash
$ gem install bundler
$ gem env home
```

#### gemfile
> Rubyプログラムのgem依存の記述フォーマット

+ http://bundler.io/

### 02 - rubocop, Rspec and pre-commit
#### rubocop
> RuboCopはRubyの静的コードアナライザ。[Ruby Style Guide](https://github.com/bbatsov/ruby-style-guide)コミュニティによるアウトラインで強化されている。

```bash
gem install rubocop
```
`Gemfile`
````text
gem 'rubocop', require: false
````

```bash
$ rubocop -h
$ rubocop --auto-gen-config
$ rubocop -a
```
 
+ https://github.com/bbatsov/rubocop
+ [静的解析ツールRuboCopを利用して紳士・淑女Rubyistになろう](https://codeiq.jp/magazine/2014/06/11433/)

#### Rspec
> Rubyのための振る舞い駆動開発。TDDを生産的に楽しく。

```bash
gem install rspec
```

+ https://relishapp.com/rspec/

#### pre-commit
> gitのためのより良いpre-commitフック

```bash
$ gem install pre-commit
```

`Bundler`
```text
group :development do
  gem "pre-commit", require: false
  gem "rubocop", require: false
end
```

```bash
$ git config pre-commit.ruby "bundle exec ruby"
```

```bash
bundle exec pre-commit enable yaml checks rubocop
bundle exec pre-commit list
bundle exec pre-commit run
bundle exec pre-commit install
```

+ https://github.com/jish/pre-commit
