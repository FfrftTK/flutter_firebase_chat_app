# chat_app

A new Flutter application.


## Getting Started
### freezed関連ファイルの生成
プロジェクトのルートで以下を叩く．
```bash
flutter pub pub run build_runner build
```

### Firebase関連ファイルの追加
`google-services.json` と `GoogleService-Info.plist`をFirebaseプロジェクトからダウンロード．
これらを適切な場所に置く．([詳しくはここ](https://firebase.google.com/docs/flutter/setup?hl=en#add_flutterfire_plugins))

### CloudFunctionsのデプロイ
`functions`以下の関数をCloudFunctionsにデプロイする．([参考](https://firebase.google.com/docs/functions/get-started?hl=ja))
node10以降は無料プランだと使えないっぽい(2020/09/28)．


---

## Getting Started
### Generate freezed files
Run the following command in your project root.
```bash
flutter pub pub run build_runner build
```

### Add Firebase config files
Get `google-services.json` and `GoogleService-Info.plist`from your Firebase project.
Then add these files to proper directory. ([check here](https://firebase.google.com/docs/flutter/setup?hl=en#add_flutterfire_plugins))
