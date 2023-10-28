#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "魔方陣の線形代数",
  authors: (
    "32842327"
  ),
)

// We generated the example code below so you can see how
// your document will look. Go ahead and replace it with
// your own content!


通常, 魔方陣とは $n times n$ のマス目に $1$ から $n^2$ までの整数を1つずつ過不足なく配置し, 縦・横・斜めのいずれの列についても, その列の数字の合計が同じものを指します. しかしここではもう少し広く, 実数を使用したものも考えることにします. 同じ数字を複数使ってもかまいません.

問題を通して, 魔方陣の線形代数的な特徴を見ていきましょう！

#definition[魔方陣][
  実正方行列であって, 各行, 各列, 対角, 反対角成分の和が等しいものを *魔方陣* と呼ぶ. ここで$n$次正方行列 $A = (a_(i j))$ の反対角成分とは $(a_(n 1), a_((n-1) 2), dots, a_(1n))$ である. 魔方陣 $A$ の各行, 各列成分の和を $sigma(A)$ で表す.
]

#exercise("やさしい")[
(1) あなたにとって, 魔方陣であることが自明だと思える行列の例を1つ考えよ

(2) $1$ から $9$ までの整数を1つずつ過不足なく使用して $3 times 3$ の魔方陣を作成せよ
] <exer1>

#definition[$n$次魔方陣, $"MS"(n)$][
魔方陣 $A$ が $n$ 次正方行列のとき $A$ を *$n$ 次魔方陣* と呼ぶ. また, 
$ "MS"(n) = {A in "Mat"_bb(R)(n) | A "は魔方陣"} $
と定める. ここで $"Mat"_bb(R)(n)$ は $n$ 次実正方行列全体である.
]

#exercise("やさしい")[
正整数 $n$ に対し $"MS"(n)$ は $"Mat"_bb(R)(n)$ の $bb(R)$-線形部分空間であることを示せ
] <exer2>

#exercise("まあまあ")[
正整数 $n$ に対し $"MS"(n)$ の $bb(R)$-線形空間としての次元 $dim "MS"(n)$ を求めよ
] <exer3>

#exercise("やさしい")[
魔方陣 $A$ に対し $sigma(A)$ は $A$ の固有値であることを示せ
] <exer4>

#exercise("やばい")[
魔方陣 $A$ の全ての成分が非負の場合, $A$ の固有値で最大のものは $sigma(A)$ と等しいことを示せ
] <exer5>


= 備考
== その1
各問題は独立しているので, 例えば問題3が解けなくても問題4, 問題5は解くことが出来ます.

== その2
問題5の背景には私の専門でたびたび使う思い入れのある定理が隠れています (ヒント参照).

== その3
3次以下の魔方陣は対角化可能です (WolframAlpha 調べ). 4次以上の魔方陣では対角化不可能なものが存在します. 例えば

$ mat(
  space.en 1, -1, space.en 1, -1;
  -1, space.en 1, -1, space.en 1;
  -1, space.en 1, -1, space.en 1;
  space.en 1, -1, space.en 1, -1
) $

の Jordan 標準形 は

$ mat(
  0, 0, 0, 0;
  0, 0, 0, 0;
  0, 0, 0, 1;
  0, 0, 0, 0;
) $

であり, 対角化不可能なことが分かります.

次のページから *ヒント* です.

#pagebreak()
= ヒント
== 問題1
(1) 小さい魔方陣について考えるといいかもしれません

(2) 中央には $5$ が入ります

== 問題2
部分空間であることを示すには, 零元を含み, 和とスカラー倍で閉じていることを示せば十分です

== 問題3
魔方陣において, 数字がいくつ埋まれば残りに入れるべき数字が自動的に決まるかを考えてみましょう

== 問題4
数 $lambda$ が正方行列 $A$ の固有値であるとは, ある $0$ でないベクトル $x$ が存在して $A x = lambda x$ を満たすことを指します

== 問題5
*1つ目:* ベクトル $v = (v_1, dots, v_n)^top$ に対し $norm(v) = display(max_(1 lt.eq i lt.eq n)) abs(v_i)$ と置きます. このとき任意の実ベクトル $v$ に対し $norm(A v) lt.eq sigma(A) norm(v)$ を示しましょう

*2つ目:* Perron-Frobenius の定理について調べてみましょう

*3つ目:* #link("https://math.uchicago.edu/~may/VIGRE/VIGRE2007/REUPapers/FINALAPP/Khim.pdf")[これ]を読みましょう