# 汎用Shellスクリプト
各プロジェクトで共通して使用するシェルスクリプトを纏めたリポジトリ

### サブモジュールとして追加して利用する。
```shell
$ git submodule add https://github.com/mocaberos/shell-scripts.git ./vendor/shell-scripts
$ export PATH=$PATH:$(pwd)/vendor/shell-scripts
```

- common-functions.sh
  - 共通関数
