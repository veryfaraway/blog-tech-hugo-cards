---
title: "Java Record 클래스: 간결하고 효율적인 데이터 모델링"
slug: java-class-record
date: 2023-10-08T10:45:24+09:00
draft: false
description: "Java Record 클래스의 특징과 활용 방법에 대해 설명합니다."
noindex: false
featured: false
pinned: false
# comments: false
series:
#  - 
categories:
  - JAVA
tags:
  - JAVA17
images:
  - https://images.unsplash.com/photo-1542728143-d9b537db6433?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3
# menu:
#   main:
#     weight: 100
#     params:
#       icon:
#         vendor: bs
#         name: book
#         color: '#e24d0e'
---

Java 14에서 preview 기능으로 도입되고 Java 16에서 정식 기능으로 승격된 Record 클래스는 Java 개발자들에게 데이터 중심의 클래스를 더욱 간결하고 효율적으로 작성할 수 있는 방법을 제공합니다. 이 글에서는 Record 클래스의 특징과 활용 방법에 대해 알아보겠습니다.

## Record 클래스란?

Record 클래스는 불변(immutable) 데이터 객체를 표현하기 위한 특별한 종류의 클래스입니다. 주요 특징은 다음과 같습니다:

1. 간결한 문법으로 데이터 클래스를 정의할 수 있습니다.
2. 자동으로 getter, equals(), hashCode(), toString() 메서드를 생성합니다.
3. 모든 필드가 final이며, 불변성을 보장합니다.
4. 상속을 허용하지 않습니다.

## Record 클래스 사용 예제

다음은 Person 정보를 나타내는 Record 클래스의 예제입니다:

```java
public record Person(String name, int age, String email) {}
```

이 간단한 선언만으로 다음과 같은 기능을 자동으로 제공받습니다:

1. 생성자
2. getter 메서드 (name(), age(), email())
3. equals() 및 hashCode() 메서드
4. toString() 메서드

## Record 클래스 활용 예제

Record 클래스를 활용한 간단한 프로그램을 살펴보겠습니다:

```java
import java.util.List;
import java.util.stream.Collectors;

public class RecordExample {
    public static void main(String[] args) {
        // Record 인스턴스 생성
        Person person1 = new Person("Alice", 30, "alice@example.com");
        Person person2 = new Person("Bob", 25, "bob@example.com");
        Person person3 = new Person("Charlie", 35, "charlie@example.com");

        // 리스트에 Person 객체 추가
        List<Person> people = List.of(person1, person2, person3);

        // 스트림을 사용하여 30세 이상인 사람들의 이름 출력
        List<String> namesOver30 = people.stream()
                .filter(p -> p.age() >= 30)
                .map(Person::name)
                .collect(Collectors.toList());

        System.out.println("30세 이상인 사람들: " + namesOver30);

        // toString() 메서드 사용
        System.out.println("Person 정보: " + person1);

        // equals() 메서드 사용
        Person person4 = new Person("Alice", 30, "alice@example.com");
        System.out.println("person1과 person4는 동일한가? " + person1.equals(person4));
    }
}
```

이 예제에서는 Record 클래스의 다양한 특징을 활용하고 있습니다:

1. 간단한 생성자를 통한 객체 생성
2. 자동 생성된 getter 메서드 사용 (age())
3. toString() 메서드를 통한 객체 정보 출력
4. equals() 메서드를 통한 객체 비교

## Record 클래스의 장점

1. **간결성**: 보일러플레이트 코드를 크게 줄일 수 있습니다.
2. **불변성**: 데이터의 안정성을 보장합니다.
3. **가독성**: 클래스의 목적이 데이터 보유임을 명확히 합니다.
4. **사용 편의성**: 자동 생성된 메서드들로 인해 즉시 사용 가능합니다.

## 주의사항

1. Record 클래스는 상속할 수 없습니다.
2. 모든 필드가 final이므로 값을 변경할 수 없습니다.
3. 추가적인 인스턴스 필드를 선언할 수 없습니다.

## 마무리

Java Record 클래스는 데이터 중심의 애플리케이션 개발에 있어 큰 편의성을 제공합니다. 특히 DTO(Data Transfer Object), 값 객체(Value Object) 등을 구현할 때 매우 유용하게 사용될 수 있습니다. Record 클래스를 적절히 활용하면 코드의 간결성과 가독성을 크게 향상시킬 수 있으며, 동시에 불변성을 통해 더 안전한 프로그래밍을 할 수 있습니다.
