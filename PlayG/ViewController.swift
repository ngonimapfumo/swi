//
//  ViewController.swift
//  PlayG
//
//  Created by Ngoni Mapfumo on 2025/02/11.
//

import UIKit

class ViewController: UIViewController {
    
    weak var collectionView:UICollectionView!
    
    override func loadView() {
        super.loadView()
        
        let cv = UICollectionView(frame: .zero
                                  , collectionViewLayout: UICollectionViewFlowLayout())
        cv.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(cv)
        NSLayoutConstraint.activate([
            cv.topAnchor.constraint(equalTo: view.topAnchor),
            cv.leftAnchor.constraint(equalTo: view.leftAnchor),
            cv.rightAnchor.constraint(equalTo: view.rightAnchor),
            cv.bottomAnchor.constraint(equalTo: view.bottomAnchor),])
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.backgroundColor = .blue
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(MyCell.self, forCellWithReuseIdentifier: "MyCell")
        
    }
    
    
    
    class MyCell:UICollectionView{
        weak var textLabel:UILabel!
    }
    
}

