//
//  PhotoCC.swift
//  CollectionViewTapMovePra
//
//  Created by ling toby on 9/9/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class PhotoCC: UICollectionViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.installsStandardGestureForInteractiveMovement = false
        self.collectionView!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
    }
    
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }

    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath)
        cell.backgroundColor = UIColor.grayColor()
        return cell
    }
    
    override func collectionView(collectionView: UICollectionView, moveItemAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath) {
        print(sourceIndexPath)
        
    }
    


    @IBAction func startMove(sender: AnyObject) {
        if self.navigationItem.rightBarButtonItem?.title == "Edit"{
            
            //MARK: - set it to be true to make CC movable ready
            self.installsStandardGestureForInteractiveMovement = true
            self.navigationItem.rightBarButtonItem?.title = "Done"
        }else{
            self.installsStandardGestureForInteractiveMovement = false
            self.navigationItem.rightBarButtonItem?.title = "Edit"
        }
    }

}
