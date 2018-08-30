//
//  CardsCollectionViewController.swift
//  ListCards
//
//  Created by Lilia Dassine Belaid on 2018-08-31.
//  Copyright © 2018 Lilia Dassine BELAID. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class CardsCollectionViewController: UICollectionViewController {
    
    let productPrices = ["$ 17.99", "$ 20.00", "$ 9.99", "$ 5.99", "$ 2.50", "$ 4.20"]
    let productImages = [UIImage(named: "manuka"), UIImage(named: "WHITTAKER’S"), UIImage(named: "L&P"), UIImage(named: "WATTIE’S"), UIImage(named: "V ENERGY DRINK"), UIImage(named: "tip top")]
    let productDescriptions = ["Mānuka honey is a monofloral honey produced from the nectar of the mānuka tree. The honey is commonly sold as an alternative medicine.", "J.H. Whittaker & Sons, Ltd is a confectionery manufacturer specialising in chocolate and based in Porirua, New Zealand. ", "Lemon & Paeroa, also known as L&P, is a sweet soft drink manufactured in New Zealand.", "Wattie's or Heinz Wattie's Limited is an American-owned food producer of frozen and packaged fruit, vegetables, sauces, baby food, cooking sauces, dressings and pet foods in the New Zealand market.", "V is an energy drink brand produced by Frucor, a New Zealand-based beverage manufacturer. It was launched in Methven, New Zealand in August 1997 and in Australia in 1999.", "In 1936, Tip Top was a mere ice cream parlour in Wellington. This sort of escalated into New Zealand’s much-loved ice cream brand. Try the Hokey Pokey flavour which is the true taste of Kiwiana!"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Set estimatedItemSize of the cell flowLayout
        if let flowLayout = collectionViewLayout as? UICollectionViewFlowLayout,
            let collectionView = collectionView {
            let width = collectionView.frame.width - 20
            flowLayout.estimatedItemSize = CGSize(width: width, height: 180)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return productDescriptions.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CardCollectionViewCell
        
        cell.productImage.image = productImages[indexPath.row]
        cell.productPrice.text = productPrices[indexPath.row]
        cell.productDescription.text = productDescriptions[indexPath.row]
        
        return cell
    }

}
