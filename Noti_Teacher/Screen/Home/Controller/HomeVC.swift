//
//  HomeVC.swift
//  Noti_Teacher
//
//  Created by 황윤경 on 2022/01/09.
//

import UIKit

class HomeVC: UIViewController {
    @IBOutlet weak var customNaviBar: CustomNB!
    @IBOutlet weak var backgroundView: UIView!
    
    override func viewDidLoad() {
        setNaviBar()
        setCalendarBackground()
    }
}
//MARK: Custom Function
extension HomeVC {
    func setNaviBar() {
        customNaviBar.title = "TODAY'S HOMEWORK"
        
        customNaviBar.firstBtn.setImage(UIImage(named: "Alarm"), for: .normal)
        customNaviBar.firstBtn.addTarget(self, action: #selector(showAlarm), for: .touchUpInside)
        
        customNaviBar.secondBtn.setImage(UIImage(named: "ETC"), for: .normal)
        customNaviBar.secondBtn.addTarget(self, action: #selector(openSideMenu(_:)), for: .touchUpInside)
    }
    // alarm Btn
    @objc func showAlarm() {
        
    }
    // menu Btn
    @objc func openSideMenu(_ sender: Any) {
        
    }
    
    func setCalendarBackground() {
        backgroundView.backgroundColor = .systemGray6
        backgroundView.layer.cornerRadius = 40
        backgroundView.layer.borderWidth = 1
        backgroundView.layer.borderColor = UIColor.systemGray3.cgColor
    }
}
