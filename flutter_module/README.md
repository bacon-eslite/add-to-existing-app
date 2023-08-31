# flutter_module

A flutter module example. Add flutter module to your existing Native Android & iOS project.

Official tutorial: https://docs.flutter.dev/add-to-app

---

# Code Architecture

```
lib
├── common
│   ├── config
│   ├── extension
│   └── util
│       ├── json_converter
├── feature
│   ├── feature1
│   │   ├── provider
│   │   ├── model
│   │   ├── page
│   │   ├── service
│   │   ├── util
│   │   └── widget
│   ├── feature2
|   ...
├── service
│   ├── service1
│   │   ├── model
│   │   ├── service
│   │   └── service1.dart
│   ├── service2
│   ...
└── main.dart
api
├── {auto generate}_api
│   └── lib
|       ├── src
│       ├── api
│       ├── auth
│       ├── model
│       ├── api.dart
│       ├── api_client.dart
│       ├── api_exception.dart
│       └── api_helper.dart
├── {manual}_api
│   └── lib
│       ├── src
│       │   ├── api
│       │   ├── auth
│       │   ├── model
│       │   ├── util
|       |   ├── api_client.dart
|       |   ├── api_exception.dart
|       |   ├── api_helper.dart
│       │   └── {manual}_api.dart
│       └── {manual}_api.dart
...      
```

---

- `lib`：main project package
    - `common`：共用程式碼
        - `config`：設定
        - `extension`：擴充
        - `util`：工具
            - `json_converter`：json 轉換器
            - `logger`：日誌
            - `view`：View functions
    - `feature`：功能模組
        - `provider`：狀態管理
        - `model`：資料模型
        - `page`：頁面
        - `service`：服務
        - `util`：工具
        - `widget`：元件
    - `service`: 服務模組
        - `model`：資料模型
        - `service`：服務
        - `service.dart`：服務模組入口

---

- `api`：API packages
    - `auth`：驗證
    - `model`：DTO
    - `api_client`：API 客戶端
    - `api_exception`：API 例外
    - `api`：API 函式庫
- `main.dart`：程式進入點

> package 內的同名檔案整理該 package 要 export 給 package 外部使用的成員，
> 如：`lib/api/api.dart`。
>
> 也可以設定 `export` 的 `show` 或 `hide`，
> 如：`export 'api.dart' show Api;`，
> 以避免外部使用者使用到不該使用的成員。

https://dart.dev/effective-dart/usage

---

# Libraries

## State management

### 1. [riverpod](https://pub.dev/packages/flutter_riverpod)

Provider 改良版，不需要 `context` 即可使用。

### 2. [bloc](https://pub.dev/packages/flutter_bloc)

Event based state management，包含 `bloc`、`cubit`，將商業邏輯抽出，使 `UI` 與 `State` 解耦。

### 3. [provider](https://pub.dev/packages/provider)

Flutter 官方推薦的狀態管理函式庫，搭配 `ChangeNotifier` 使用，簡化 `InheritedWidget` 的使用。

---

## Network

### 1. [dio](https://pub.dev/packages/dio)

Github 星星數最多的 `http` 函式庫，支援 `RESTful API`、`WebSocket`、`HttpClient` 等。

### 2. [http](https://pub.dev/packages/http)

Flutter 官方提供的 `http` 函式庫，支援 `RESTful API`。

---

## Code Auto Generate

能夠自動生成程式碼，何必手動寫呢？

### 1. [build_runner](https://pub.dev/packages/build_runner)

自動生成程式碼的工具，需要搭配其他函式庫使用，如：`json_serializable`、`riverpod_generator`、`openapi_generator` 等。

### 2. [json_serializable](https://pub.dev/packages/json_serializable)

自動生成 `json` 序列化程式碼，搭配 `json_annotation` 使用。

### 3. [riverpod_generator](https://pub.dev/packages/riverpod_generator)

自動生成 `riverpod` 程式碼，搭配 `flutter_riverpod`、`riverpod_annotation` 使用。

### 4. [openapi_generator](https://pub.dev/packages/openapi_generator)

自動生成 `openapi` 函式庫，搭配 `openapi_generator_annotations`。

---

## Local library

`$ flutter create --template=package local_library`

In pubspec.yaml

``` 
...
dependencies:
  ...
  local_library:
    path: ../path/to/library
  ...
```