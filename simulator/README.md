# TEST EXAMPLE

    $ make
    ...
    $ ./sim -elf os/bbl -step
    ...
    $ ./sim -elf os/bbl -breakpoint=0x80000000
    ..
    $ ./zerofill file1.bin file2.bin (file3.bin ...)
    ..

## ステップ実行において

ステップ実行において、数字を入力した場合（16進数の場合0xをつけること）、該当するメモリのデータを出力する

また、csrの名前(mhartidなど)を入れた場合、該当するcsrのデータを出力する

何も入力せず、エンターキー、で次のステップに進む

## シミュレータ仕様

いつかまとめる
