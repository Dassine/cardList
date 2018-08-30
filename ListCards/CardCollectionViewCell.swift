//
//  CardCollectionViewCell.swift
//  ListCards
//
//  Created by Lilia Dassine Belaid on 2018-08-31.
//  Copyright © 2018 Lilia Dassine BELAID. All rights reserved.
//

import UIKit

class CardCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var productDescription: UILabel!
    @IBOutlet var productPrice: UILabel!
    @IBOutlet weak var productImage: UIImageView!
    
    override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
        
        setNeedsLayout()
        layoutIfNeeded()
        
        //Recalculat the cell frame
        let size = contentView.systemLayoutSizeFitting(layoutAttributes.size)
        var frame = layoutAttributes.frame
        frame.size.height = ceil(size.height)
        layoutAttributes.frame = frame
        
        return layoutAttributes
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        //Set card shadow
        self.layer.cornerRadius = 2.0
        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        self.layer.shadowRadius = 2.0
        self.layer.shadowOpacity = 0.5
        self.layer.masksToBounds = false
        
        //Set 2 different font size for ProductPrice label
        let priceText = NSMutableAttributedString.init(string: self.productPrice.text!)
        priceText.setAttributes([kCTFontAttributeName as NSAttributedStringKey:  UIFont.systemFont(ofSize: 0.75*UIFont.labelFontSize), kCTForegroundColorAttributeName as NSAttributedStringKey: UIColor.gray], range: NSMakeRange(0, 1))
        self.productPrice.attributedText = priceText
        
    }
}
