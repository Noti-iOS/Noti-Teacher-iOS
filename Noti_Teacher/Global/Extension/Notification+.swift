//
//  Notification+.swift
//  Noti_Teacher
//
//  Created by 황윤경 on 2022/01/12.
//

import Foundation

// MARK: 로그인 상태 변경 noti 확인을 위해 이름 추가
extension Notification.Name {
    static let authStateDidChange = NSNotification.Name("authStateDidChange")
    static let whenHomeworkEdit = Notification.Name("whenHomeworkEdit")
}
