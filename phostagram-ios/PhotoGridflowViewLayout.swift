//
//  PhotoGridflowViewLayout.swift
//  phostagram-ios
//
//  Created by SKIXY-MACBOOK on 03/07/17.
//  Copyright © 2017 shubhamrathi. All rights reserved.
//

import UIKit

class PhotoGridflowViewLayout: UICollectionViewFlowLayout{
	let itemHeight: CGFloat = 120
	let phoneHeight = UIScreen.main.bounds.height
	
	override init() {
		super.init()
		setupLayout()
	}
	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		setupLayout()
	}
	
	/**
	Sets up the layout for the collectionView. 0 distance between each cell, and vertical layout
	*/
	func setupLayout() {
		minimumInteritemSpacing = 0
		minimumLineSpacing = 0
		scrollDirection = .vertical
	}
	
	func itemWidth() -> CGFloat {
		return (collectionView!.frame.width/2)
	}
	func height() -> CGFloat{
		if (phoneHeight < 667) {
			return 100
		} else if (phoneHeight < 736) {
			return 120
		} else {
			return 130
		}
	}
	override var itemSize: CGSize {
		set {
			self.itemSize = CGSize(width: itemWidth(), height: height())
		}
		get {
			return CGSize(width: itemWidth(), height: height())
		}
	}
	
	override func targetContentOffset(forProposedContentOffset proposedContentOffset: CGPoint) -> CGPoint {
		return collectionView!.contentOffset
	}
}
