// FAQTableViewCell.swift

import UIKit

class FAQTableViewCell: UITableViewCell {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var toggleButton: UIButton!
    
    // Configure the cell with data
    func configure(with faqItem: FAQItem) {
        questionLabel.text = faqItem.question
        answerLabel.text = faqItem.answer
        answerLabel.isHidden = !faqItem.isOpened
        
        let buttonImage = faqItem.isOpened ? UIImage(systemName: "chevron.up") : UIImage(systemName: "chevron.down")
        toggleButton.setImage(buttonImage, for: .normal)
        
        let borderColor : CGColor = faqItem.isOpened ? UIColor.red.cgColor :
        UIColor.white.cgColor
        self.layer.borderColor = borderColor
        self.layer.borderWidth = 2.0
        self.layer.cornerRadius = 10.0

        toggleButton.layer.cornerRadius = 10.0
        
    }
}
