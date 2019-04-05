baby-steps-ubuntu-env_on_docker
====

「Pythonで学ぶ強化学習」のスクリプト実行用環境のDockerfileです
OS : Ubuntu 18.04

## Description

構成

- Dockerfile : Dockerfile
- into_container/ : コンテナ内にコピーするファイルを入れるディレクトリ
- build.sh : DockerfileをDockerimageにbuildするスクリプト
- run.sh : Dockerimageからコンテナを起動するスクリプト

各種バージョン
- python==3.5
- tensorflow==1.12.0
- 他の詳細は into_container/requirements.txtを参照

## Version
latest : baby-steps-env:1.0

1.0 &emsp; 2019/03/29 新規作成  

## Install

### dockerのインストールと設定

### リポジトリをクローン
```git
http://egrd2gr05vl.eg.jp.honda.com:3000/kazushi/baby-steps-env_on_docker.git
```

## Usage

### 設定
1. Dockerfileの'PROXY_ID'と'PROXY_PASS'の「ooo」を自分のプロキシIDとパスワードに変更
1. run.shの「'self-dir'」を自分のリポジトリを置いているディレクトリに変更

### コンテナ内のユーザー
- user : developer
- password : P@ssw0rd

### ビルド
```sh
sh build.sh
```

### コンテナ起動
```sh
sh run.sh
```

### コンテナ内bashで初期設定スクリプトを実行
```sh
sh startup.sh
```

## Contribution

## Licence

## Author

