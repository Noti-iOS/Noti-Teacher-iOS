//
//  HomeworkListTVC.swift
//  Noti_Teacher
//
//  Created by 황윤경 on 2022/01/12.
//

import UIKit

class HomeworkListTVC: UITableViewCell {
    
    @IBOutlet weak var homeworkContents: UITextField!
    @IBOutlet weak var homeworkEditBtn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setHomeworkListCell()
        setMenu()
    }
}
//MARK: Custom Function
extension HomeworkListTVC {
    func setHomeworkListCell() {
        self.backgroundColor = .systemGray6
        self.homeworkContents.isUserInteractionEnabled = false
    }
    func setMenu() {
        var menuItems: [UIAction] {
            return [
                UIAction(title: "수정", image: UIImage(systemName: "pencil"), handler: {[self] _ in list(edit: "edit")}),
                UIAction(title: "삭제", image: UIImage(systemName: "trash"), attributes: .destructive, handler: {[self] _ in list(edit: "remove")})
            ]
        }
        var menu: UIMenu {
            return UIMenu(title: "", image: UIImage(systemName: "MoreBtn"), identifier: nil, options: [], children: menuItems)
        }
        homeworkEditBtn.menu = menu
        homeworkEditBtn.showsMenuAsPrimaryAction = true
    }
    func list(edit:String) {
        if edit == "edit" {
            print("수정")
            NotificationCenter.default.post(name: .whenHomeworkEdit, object: nil)
            homeworkContents.isUserInteractionEnabled = true
            homeworkContents.becomeFirstResponder()
        } else {
            print("삭제")
            NotificationCenter.default.post(name: .whenHomeworkDeleted, object: nil)
//            indexpath
        }
    }
}
