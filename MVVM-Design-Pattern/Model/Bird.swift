
import UIKit

public class Bird {
    public enum Rarity {
        case common
        case uncommon
        case rare
        case veryRare
    }
    
    public let name: String
    public let rarity: Rarity
    public let image: UIImage
    
    public init(name: String, rarity: Rarity, image: UIImage) {
        self.name = name
        self.rarity = rarity
        self.image = image
    }
}
