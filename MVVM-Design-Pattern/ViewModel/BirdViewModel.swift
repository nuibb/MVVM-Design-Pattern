// MARK: - Bird View Model
import UIKit

public class BirdViewModel {
    
    private let bird: Bird
    
    public init(bird: Bird) {
        self.bird = bird
    }
    
    public var name: String {
        return bird.name
    }
    
    public var image: UIImage {
        return bird.image
    }
    
    public var purchaseFeeText: String {
        switch bird.rarity {
        case .common:
            return "$40"
        case .uncommon:
            return "$65"
        case .rare:
            return "$100"
        case .veryRare:
            return "$300"
        }
    }
}
