//
//  MemoCVC.swift
//  Noti_Teacher
//
//  Created by 황윤경 on 2022/01/12.
//

import UIKit

class MemoCVC: UICollectionViewCell {
    @IBOutlet weak var memoTV: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setMemoCell()
    }
}
//MARK: Custom Function
extension MemoCVC {
    func setMemoCell() {
        memoTV.addPadding()
        memoTV.text = ""
        memoTV.font = UIFont(name: "AppleSDGothicNeoR00", size: 17)
        memoTV.backgroundColor = .systemGray6
        memoTV.layer.cornerRadius = 10
        memoTV.isScrollEnabled = false
        memoTV.heightAnchor.constraint(equalToConstant: 130).isActive = true
    }
}
