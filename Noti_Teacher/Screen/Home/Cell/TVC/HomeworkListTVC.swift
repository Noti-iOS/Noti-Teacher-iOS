//
//  HomeworkListTVC.swift
//  Noti_Teacher
//
//  Created by 황윤경 on 2022/01/12.
//

import UIKit

class HomeworkListTVC : UITableViewCell {
    @IBOutlet weak var homeworkContents: UILabel!
    
}
//MARK: Custom Function
extension HomeworkListTVC {
    func setHomeworkListCell() {
        self.backgroundColor = .systemGray6
    }
}
