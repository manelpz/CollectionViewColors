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
    
    //number of items
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 500
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellColor", for: indexPath)
        
        //addign colors
        
        let red = CGFloat(Int(arc4random_uniform(155))+100)
        let blue = CGFloat(Int(arc4random_uniform(155))+100)
        let green = CGFloat(Int(arc4random_uniform(155))+100)
        
        cell.backgroundColor = UIColor(displayP3Red: red/255, green: green/255, blue: blue/255, alpha: 1.0)
        
        return cell
    }
}

