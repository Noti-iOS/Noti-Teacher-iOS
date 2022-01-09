//
//  MainTBC.swift
//  Noti_Teacher
//
//  Created by 황윤경 on 2022/01/09.
//

import UIKit

class MainTBC: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBar()
    }
    
    //MARK: - Custom Method
    /// makeTabVC - 탭별 아이템 생성하는 함수
    func makeTabVC(vcType: TypeOfViewController, tabBarTitle: String, tabBarImage: String, tabBarSelectedImage: String) -> UIViewController {
        
        let tab = ViewControllerFactory.viewController(for: vcType)
        tab.tabBarItem = UITabBarItem(title: tabBarTitle, image: UIImage(named: tabBarImage), selectedImage: UIImage(named: tabBarSelectedImage))
        tab.tabBarItem.imageInsets = UIEdgeInsets(top: -0.5, left: -0.5, bottom: -0.5, right: -0.5)
        return tab
    }
    
    /// setTabBar - 탭바 Setting
    func setTabBar() {
        
        let homeTab = makeTabVC(vcType: .home, tabBarTitle: "Home", tabBarImage: "Home", tabBarSelectedImage: "Home")
        let chattingTab = makeTabVC(vcType: .chatting, tabBarTitle: "Chat", tabBarImage: "Chat", tabBarSelectedImage: "Chat")
        let mypageTab = makeTabVC(vcType: .students, tabBarTitle: "Student", tabBarImage: "Student", tabBarSelectedImage: "Student")
        
        // 탭바 스타일 설정
        tabBar.frame.size.height = 84
        tabBar.tintColor = .label
        tabBar.unselectedItemTintColor = .lightGray
        
        tabBar.layer.borderWidth = 0.3
        tabBar.layer.borderColor = UIColor.lightGray.cgColor
        tabBar.clipsToBounds = true
        
        tabBar.backgroundColor = UIColor(named: "TabBarColor")
        tabBar.isTranslucent = false
        
        // 탭 구성
        let tabs =  [homeTab, chattingTab, mypageTab]
        
        // VC에 루트로 설정
        self.setViewControllers(tabs, animated: false)
    }
}
