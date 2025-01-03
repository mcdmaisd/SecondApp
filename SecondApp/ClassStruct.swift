//
//  ClassStruct.swift
//  SecondApp
//
//  Created by ilim on 2025-01-02.
//

import Foundation
//1. 가지고 있는 프로퍼티를 모두 선언과 동시에 초기화
//2. 옵셔널 변수로 선언
class Monster {
    //let clothes = "red"
    //var clothes: String? // 이건 괜찮음 상수는 안됨 optioanl 은 할당이 안되어도 기본적으로 nil이 있기 때문에 값이 있는것으로 간주됨
    // let clothes: String? 이게 안되는 이유는? init 제외하고 더이상 할당의 기회가 없기때문인가?
    // ㄴ그럼 struct도 안되야 하는데 그건 아니라서 이건 아닌것 같음
    var clothes: String
    let speed: Int?
    let power: Int
    let experience: Int
    
    init(clothes: String, speed: Int?, power: Int, experience: Int) {
        self.clothes = clothes
        self.speed = speed
        self.power = power
        self.experience = experience
    }
    
}

struct MonsterStruct {
    let clothes: String
    let speed: Int
    let power: Int
    let experience: Int
    //init 없어도 에러발생 안되는 이유: init안만들어도 인스턴스 생성시 기본제공 -> memberwise initializer
    //class는 왜 안해줌? -> 클래스는 상속이 되고 구조체는 안되니까?
}

class Bossmonster: Monster {
    
}

class Supermonster: Bossmonster {
    
}
