//
//  AdCarouselCell.swift
//  nemo
//
//  Created by Andyy Hope on 1/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

class AdCarouselCell: UICollectionViewCell, NibLoadable {

    @IBOutlet weak var captionLabel: UILabel! {
        didSet {
            captionLabel.textColor = .white
            captionLabel.font = .boldSystemFont(ofSize: 16)
        }
    }
    
    @IBOutlet weak var imageView: UIImageView! { didSet {
        imageView.contentMode = .scaleAspectFill
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        updateCornerRadii()
    }
}

extension AdCarouselCell: SizeDefaultable {
    
    static var defaultSize: CGSize {
        return .init(width: 200, height: CarouselCell.defaultHeight)
    }
}
