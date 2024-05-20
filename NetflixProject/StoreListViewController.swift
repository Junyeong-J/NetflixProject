//
//  StoreListViewController.swift
//  NetflixProject
//
//  Created by 전준영 on 5/16/24.
//

import UIKit

class StoreListViewController: UIViewController {

    @IBOutlet var storeListLabel: UILabel!
    @IBOutlet var explainLabel: UILabel!
    @IBOutlet var dummyImageView: UIImageView!
    @IBOutlet var setButton: UIButton!
    @IBOutlet var checkButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().tintColor = .white
        
        storeListLabel.text = "'나만의 자동 저장' 기능"
        storeListLabel.textColor = .white
        storeListLabel.textAlignment = .center
        storeListLabel.font = .boldSystemFont(ofSize: 20)
        
        explainLabel.text = "취향에 맞는 영화와 시리즈를 자동으로 저장해 드립니다.\n디바이스에 언제나 시청할 콘텐츠가 준비되니 지루할 틈이 없어요."
        explainLabel.numberOfLines = 0
        explainLabel.textAlignment = .center
        explainLabel.font = .systemFont(ofSize: 12)
        explainLabel.textColor = .gray
        
        dummyImageView.image = UIImage(named: "dummy")
        dummyImageView.backgroundColor = .brown
        dummyImageView.contentMode = .scaleAspectFill
        
        setButton.layer.cornerRadius = 5
        setButton.setTitle("설정하기", for: .normal)
        setButton.setTitleColor(.white, for: .normal)
        setButton.backgroundColor = .blue
        
        checkButton.layer.cornerRadius = 5
        checkButton.setTitle("저장 가능한 콘텐츠 살펴보기", for: .normal)
        checkButton.setTitleColor(.black, for: .normal)
        checkButton.backgroundColor = .white
    }
    

}
