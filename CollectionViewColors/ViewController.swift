//
//  ViewController.swift
//  CollectionViewColors
//
//  Created by Emmanuel Lopez Guerrero on 21/06/21.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpCollectionView(collection: CollectionViewExample)
    }

    //variables
    
    //IBOutlet
    @IBOutlet var CollectionViewExample: UICollectionView!
    
    //IBActions
    
    //Functions
    
    func setUpCollectionView(collection:UICollectionView) {
        collection.delegate = self
        collection.dataSource = self
    }
    
    //System Functions
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 50
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "", for: indexPath)
        
        return cell
    }
}

