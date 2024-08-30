---
title: "SDKMAN 사용방법"
slug: sdkman-usage
date: 2024-08-30T16:58:55+09:00
draft: true
description: "SDKMAN 공식문서에 기록된 사용방법(한글번역)"
noindex: false
featured: false
pinned: false
# comments: false
series:
#  - 
categories:
  - JAVA
tags:
  - SDKMAN
images:
  - https://sdkman.io/assets/img/sdk-man-small-pattern.svg
# menu:
#   main:
#     weight: 100
#     params:
#       icon:
#         vendor: bs
#         name: book
#         color: '#e24d0e'
---

## SDK 설치

### 최신 버전 설치

가장 최신 버전의 SDK(예를 들어, Java JDK)를 설치하려면 아래와 같은 명령을 실행합니다:

```shell
sdk install java
```

설치가 정상적으로 시작되면 아래와 같이 출력됩니다:
```shell
Downloading: java 21.0.4-tem

In progress...

######################################################################## 100.0%

Installing: java 21.0.4-tem
Done installing!
```

설치가 완료되면 아래와 같이 해당 버전을 **default**로 지정할 것인지 묻는 화면이 나옵니다.
```shell
Do you want java 21.0.4-tem to be set as default? (Y/n):
```

`Y`(혹은 그냥 enter)를 입력하면 이후 열리는 모든 shell에서 해당 버전을 default로 사용하게 됩니다.
```shell
Setting java 21.0.4-tem as default.
```

<h2> 관련글 </h2>

- [여러 버전의 JDK를 설치하고 관리하는 방법]({{< ref "/blog/2024/0830-managing-jdk" >}} "S여러 버전의 JDK를 설치하고 관리하는 방법")

