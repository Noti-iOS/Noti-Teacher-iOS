//
//  TypeOfViewController.swift
//  Noti_Teacher
//
//  Created by 황윤경 on 2022/01/09.
//

import Foundation
enum TypeOfViewController {
    case tabBar
    case home
    case chatting
    case students
    case login
    case signup
}

extension TypeOfViewController {
    func storyboardRepresentation() -> StoryboardRepresentation {
        switch self {
        case .tabBar:
            return StoryboardRepresentation(bundle: nil, storyboardName: Identifiers.tabBarSB, storyboardId: Identifiers.MainTBC)
        case .home:
            return StoryboardRepresentation(bundle: nil, storyboardName: Identifiers.homeSB, storyboardId: Identifiers.homeVC)
        case .chatting:
            return StoryboardRepresentation(bundle: nil, storyboardName: Identifiers.chattingSB, storyboardId: Identifiers.chattingVC)
        case .students:
            return StoryboardRepresentation(bundle: nil, storyboardName: Identifiers.studentsSB, storyboardId: Identifiers.studentsVC)
        case .login:
            return StoryboardRepresentation(bundle: nil, storyboardName: Identifiers.loginSB, storyboardId: Identifiers.loginVC)
        case .signup:
            return StoryboardRepresentation(bundle: nil, storyboardName: Identifiers.signupSB, storyboardId: Identifiers.signupVC)
        }
    }
}
