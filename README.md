Haskellの学習用

## Docker環境の構築

このリポジトリには、Haskellの学習用にDocker環境が含まれています。以下の手順に従って、Dockerコンテナをビルドおよび実行してください。

### 前提条件

- Dockerがインストールされていること
- Docker Composeがインストールされていること

### 手順

1. リポジトリをクローンします。

   ```sh
   git clone https://github.com/koyo221/learn-haskell.git
   cd learn-haskell
   ```

2. Dockerコンテナをビルドします。

   ```sh
   docker-compose build
   ```

3. Dockerコンテナを実行します。

   ```sh
   docker-compose up
   ```

4. 別のターミナルで、コンテナにアクセスします。

   ```sh
   docker-compose exec haskell bash
   ```

   これで、Haskellの開発環境が整いました。コンテナ内でHaskellのコードを実行したり、開発を進めたりすることができます。

## Docker環境の使用方法

Docker環境を使用してHaskellの開発を行うための基本的な手順を以下に示します。

### Haskellのコードを実行する

コンテナ内でHaskellのコードを実行するには、以下のコマンドを使用します。

```sh
runhaskell ファイル名.hs
```

### Haskellのプロジェクトを作成する

新しいHaskellのプロジェクトを作成するには、以下のコマンドを使用します。

```sh
stack new プロジェクト名
cd プロジェクト名
stack setup
stack build
```

### Haskellのプロジェクトをビルドする

既存のHaskellのプロジェクトをビルドするには、以下のコマンドを使用します。

```sh
stack build
```

### Haskellのプロジェクトを実行する

ビルドしたHaskellのプロジェクトを実行するには、以下のコマンドを使用します。

```sh
stack exec プロジェクト名-exe
```
