//
//  Subjects.swift
//  Noti_Teacher
//
//  Created by 황윤경 on 2022/01/12.
//

import UIKit

//MARK: 임시 과목별 숙제 정보 구조체
struct Subjects {
    var subjectName:String
    var homework:Array<String>
    
    init(_ subjectName:String, _ homework:Array<String>) {
        self.subjectName = subjectName
        self.homework = homework
    }
}
