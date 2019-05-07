// MARK: - View
import UIKit

public class BirdView: UIView {
    
    public let imageView: UIImageView
    public let nameLabel: UILabel
    public let purchaseFeeLabel: UILabel
    
    public override init(frame: CGRect) {
        let imageViewFrame = CGRect(x: 0, y: 50, width: frame.width, height: frame.width/2)
        imageView = UIImageView(frame: imageViewFrame)
        imageView.contentMode = .scaleAspectFit
        
        let nameLabelTop = imageViewFrame.origin.y + imageViewFrame.height + 25
        let nameLabelFrame = CGRect(x: 0, y: nameLabelTop, width: imageViewFrame.width, height: 30)
        nameLabel = UILabel(frame: nameLabelFrame)
        nameLabel.textAlignment = .center
        
        let purchaseFeeLabelFrame = CGRect(x: 0, y: nameLabelTop + nameLabelFrame.height + 10, width: imageViewFrame.width, height: 30)
        purchaseFeeLabel = UILabel(frame: purchaseFeeLabelFrame)
        purchaseFeeLabel.textAlignment = .center
        
        super.init(frame: frame)
        
        backgroundColor = .white
        addSubview(imageView)
        addSubview(nameLabel)
        addSubview(purchaseFeeLabel)        
    }
    
    @available(*, unavailable)
    public required init?(coder: NSCoder) {
        fatalError("init?(coder:) is not supported")
    }
}
