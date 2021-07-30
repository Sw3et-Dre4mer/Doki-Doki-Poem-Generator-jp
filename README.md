# Doki-Doki-Poem-Generator-jp

**Will you generate the way into her heart?**

![](https://github.com/Sw3et-Dre4mer/Doki-Doki-Poem-Generator-jp/blob/main/screenshot/screenshot_1.png)

## 概要

文芸部のみんなに詩を生成するスクリプトです。以下の機能を有します。

- モード選択  
  誰に書くかはもちろん、ランダムに生成することもできます。
  
- ポイント計算  
  各キャラクターごとにポイントを計算し、結果を出力します。

> 本スクリプトで使用している `poemwords.json` は、[*Doki Doki Literature Club Plus!*](//ddlc.plus/) の内容に準拠して作成しています。


## 使用方法

1. PowerShell を開き、スクリプトを実行します。  
 ```pwsh
 > .\Write-Poem.ps1
 ```
 >同じディレクトリに`poemwords.json`が存在しないとエラーが発生します。
2. プロンプトが表示されるので、`0~4` までの数字を入力し、モードを選択します。
```
Welcome to the Literature Club!
Who will you write a poem for?
[0] Random
[1] Sayori
[2] Natsuki
[3] Yuri
[4] ???
: 0
```
3. 結果が表示されます。ツイートするなり、友達に送り付けるなりしてください。
```
ぴょんぴょん 不幸 口紅 歌う 雲 幸福 毛布 砂糖 ふわふわ 旅行 アニメ 陽気 めまい 花 雨粒 苦痛 切望 知的 執拗な 軽蔑

S Point:                40
N Point:                38
Y Point:                38
```


## 実行ポリシーについて
Windows の場合、デフォルトでは、スクリプトの実行ができないようポリシーが設定されています。
```pwsh
> Get-ExecutionPolicy
Restricted  #すべてのスクリプトが実行不可
```
したがって、`Set-ExecutionPolicy` コマンドレットを用いて実行ポリシーを変更する必要があります。



## 関連リンク

### Doki Doki Literature Club Plus!
- [Doki Doki Literature Club Plus! 公式サイト](//ddlc.plus/)

### Microsoft
- [PowerShell 公式ドキュメント](//docs.microsoft.com/ja-jp/powershell/)
- [PowerShell 実行ポリシーについて](//docs.microsoft.com/ja-jp/powershell/module/microsoft.powershell.core/about/about_execution_policies?view=powershell-7.1#short-description)
