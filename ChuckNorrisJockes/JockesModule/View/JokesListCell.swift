
import UIKit
import SnapKit

class JokesListCell: UITableViewCell {
    private var mainTextLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    static let reuseId = "JokesListCell"
    
    override func prepareForReuse() {
        mainTextLabel.text = ""
    }
    
    func fillCellWithData(data: String) {
        
        contentView.backgroundColor = .clear
        backgroundColor = .clear
        
        let myContentView = UIView()
        myContentView.backgroundColor = .clear
        myContentView.layer.cornerRadius = 8
        contentView.addSubview(myContentView)
        
        myContentView.snp.makeConstraints { (make) in
            make.top.equalTo(contentView.snp.top)
            make.leading.equalTo(contentView.snp.leading)
            make.trailing.equalTo(contentView.snp.trailing)
            make.bottom.equalTo(contentView.snp.bottom)
        }
        
        mainTextLabel.textColor = .black
        if #available(iOS 12.0, *) {
            if traitCollection.userInterfaceStyle == .dark {
                mainTextLabel.textColor = .white
            }
        } 
        mainTextLabel.font =  UIFont.systemFont(ofSize: 20)
        mainTextLabel.textAlignment = .left
        mainTextLabel.lineBreakMode = .byWordWrapping
        mainTextLabel.preferredMaxLayoutWidth = UIScreen.main.bounds.width - 50
        mainTextLabel.numberOfLines = 0 
        mainTextLabel.text = data
        mainTextLabel.adjustsFontSizeToFitWidth = true 
        
        myContentView.addSubview(mainTextLabel)
        mainTextLabel.snp.makeConstraints { (make) in
            make.top.equalTo(myContentView.snp.top).offset(14)
            make.leading.equalTo(myContentView.snp.leading).offset(20)
            make.trailing.equalTo(myContentView.snp.trailing)
            make.bottom.equalTo(myContentView.snp.bottom).offset(-14)
        }
        
        contentView.snp.makeConstraints { (make) in
            make.height.equalTo(myContentView.snp.height)
        }
        
    }
}
