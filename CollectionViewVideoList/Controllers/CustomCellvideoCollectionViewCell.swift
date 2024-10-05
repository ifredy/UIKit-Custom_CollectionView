//
//  CustomCellvideoCollectionViewCell.swift
//  CollectionViewVideoList
//
//  Created by Fredy asencios M1 on 5/10/24.
//

import UIKit

class CustomCellvideoCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var cardView: CardView!
    
    func configureCell(dataCell:Place){
//        guard let imagePlace = UIImage(named: dataCell.image) else { return }
            
            // Configurar el avatar directamente sin recrear el cardView
//            cardView.backgroundImageView.image = imagePlace
      
        cardView.configure(backgroundImageName: dataCell.image, avatarImageName: dataCell.userImage,location:dataCell.location)

//        cardView.avatarImage = dataCell.userImage
            cardView.setNeedsLayout()
            cardView.layoutIfNeeded()
    }
}
