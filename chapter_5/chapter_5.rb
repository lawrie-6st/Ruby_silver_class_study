# ruby chapter_5/chapter_5.rb
# 組み込みモジュール

# オブジェクトID
a = 1
puts a.object_id

# オブジェクトクラス
puts a.class
# オブジェクト比較
b = 2
puts a.eql?(b)

#オブジェクトメソッド一覧
puts a.methods

c = a.to_s.dup

puts a.object_id
puts c.object_id

#　オブジェクトのフリーズ  これを使うと、変数を変更できなくなる。
a.freeze

#　オブジェクト汚染　tainted?
puts a.tainted?

class Foo
  def initialize
    @hoge = 1
  end
end
f = Foo.new
puts f.instance_variable_get(:@hoge)
puts f.instance_variable_set(:@hoge,2)
puts f.instance_variables


# 数値クラス ~p192
# 文字クラス　p192~
words = 'abcd,f'

puts words.split(',')
puts words.slice(1..2)
puts words.slice(/bc/)
# スプリットは特定も文字で分割したい際につかう。
# スライスは文字列を数えて、指定した番号の文字を取得する。


# p219_配列に要素を追加する。
a = [1,2,3]
a = a.push(4)
a << 5
a.insert(3,9)
#unshiftは対象の文字を先頭に配置することができる。
a.unshift(9)


#配列のようそを変更する。
a[1] = 100
a.fill("s", 1..2)
a.replace([1, 2, 3, 45])
# リプレースはごっそり入れ替えるアンド、オブジェクトIDは変更しない。

#配列の要素を参照する。
a = [1]
a.values_at(1)
#　フェッチの場合は、エラーを履く、でも、values_atはnilで変える。
#a.fetch(1)

a = [1,2,3]
puts a.first.to_s
puts a.last.to_s
puts a.first(3).to_s





# p231_配列の長さ

a = [1,1,2,3,4,5,5,5]
puts a.uniq!.to_s
#ユニークは重複を取り除く。

puts "以下は配列の勉強内容。" + a.to_s

