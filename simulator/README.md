# TEST EXAMPLE

    $ make
    ...
    $ ./sim -elf os/bbl -step
    ...
    $ ./sim -elf os/bbl -breakpoint=0x80000000

## ステップ実行において

ステップ実行において、数字を入力した場合（16進数の場合0xをつけること）、該当するメモリのデータを出力する

また、csrの名前(mhartidなど)を入れた場合、該当するcsrのデータを出力する

何も入力せず、エンターキー、で次のステップに進む

## シミュレータ仕様

wfiやfenceはnop扱い

elfの中身を該当するメモリアドレスに格納している(例えば M[80000000]: 1F00006F)

csrの初期値は現在、

param->csr[param->csr_rtable["mip"]] = 0x8;

param->csr[param->csr_rtable["misa"]] =

  (1 << 30) |

  (1 << ('I' - 'A')) |

  (1 << ('A' - 'A'));

param->csr[param->csr_rtable["mhartid"]] = 0;
