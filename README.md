<div align="center">

# 😴 明日から本気出す 💤

</div>

## なにこれ

「MM/DDから本気出す」(ただし「MM/DD」は明日の日付)を出力するプログラムをいろいろなプログラミング言語で実装したものです。
*したがって永遠にやる気を出す日は来ません。*

日付の扱い方は各プログラミング言語により異なるため、学習と備忘録の意味を兼ねて作成しています。

## 実行方法

各言語の名前のフォルダにcdした後、記載してあるコマンドを実行します。

### C / C++

GCCとGNU Makeが必要です。使用しているバージョンは `gcc v14.2.1 20240805`, `make v4.4.1` です。
次のコマンドを実行します。

```
make all
make run
```

### Bash

実行権限が付与されていることを確認して `AshitakaraHonkidasu.sh` を実行します。

```sh
./AshitakaraHonkidasu.sh
```

### C# / F#


.NET (Core) SDK v8.0が必要です。

> [.NET SDK 8.0 Download](https://dotnet.microsoft.com/en-us/download/dotnet/8.0)

次のコマンドを実行します。

```sh
dotnet run
```

### Go

Go v1.22.6を使用しています。次のコマンドを実行します。

```sh
go run main.go
```

### Java

OpenJDK v17を使用しています。
次のコマンドを実行します。


```sh
javac Main.java
java Main
```

### Python

Python v3.12.3を使用しています。次のコマンドを実行します。

```
python main.py
```

### PowerShell

PowerShell Core v7.4.4 / Windows PowerShell 5.1.2 を使用しています。

Linux, macOSの場合は `run.sh` を、Windowsの場合は `run.cmd` を実行します。

### Ruby

次のコマンドを実行します。

```sh
ruby main.rb
```

## Rust

rustup v1.27.1, cargo v1.80.0, ructc v1.80.0を使用しています。

次のコマンドを実行します。

```sh
cargo run
```

### TypeScript (Deno)

[Deno](https://docs.deno.com/runtime/manual/getting_started/installation/)が必要です。下記のバージョンを使用しています。

```sh
$ deno --version 
deno 1.45.5 (release, x86_64-unknown-linux-gnu)
v8 12.7.224.13
typescript 5.5.2
```

次のコマンドを実行します。

```sh
deno task run
```

## Dockerを使って実行する

Dockerfileの存在するディレクトリにcdして、`docker build -t <タグ名>` でコンテナをビルドします。
タグ名は任意の名前を付けます。(例: `java-ashitakarahonkidasu`)

次に、`docker run --rm -it <タグ名>`を実行するとコンテナが起動し、プログラムが実行されます。

不要になったイメージは `docker image rm <タグ名>` を実行して削除します。

## コントリビュートする

ソースを追加する場合は、プログラミング言語名のディレクトリ配下にソースを配置し、
READMEに実行方法を記載してください。
可能であればDockerfile等も追加してもらえると嬉しいです。

