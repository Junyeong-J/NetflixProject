//
//  MovieViewController.swift
//  NetflixProject
//
//  Created by 전준영 on 5/16/24.
//

import UIKit

class MovieViewController: UIViewController {

    @IBOutlet var movieImageView: UIImageView!
    @IBOutlet var previewLabel: UILabel!
    @IBOutlet var firstImageView: UIImageView!
    @IBOutlet var secondImageView: UIImageView!
    @IBOutlet var thirdImageView: UIImageView!
    @IBOutlet var firstTopTenImageView: UIImageView!
    @IBOutlet var secondTopTenImageView: UIImageView!
    @IBOutlet var thirdTopTenImageView: UIImageView!
    @IBOutlet var playButton: UIButton!
    
    let movieLists = ["노량", "더퍼스트슬램덩크", "밀수", "범죄도시3", "서울의봄", "스즈메의문단속", "아바타물의길", "오펜하이머", "육사오", "콘크리트유토피아"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().tintColor = .white
        
        movieImageView.image = UIImage(named: "명량")
        movieImageView.backgroundColor = .brown
        movieImageView.contentMode = .scaleAspectFill
        movieImageView.layer.cornerRadius = 10
        
        previewLabel.text = "지금 뜨는 콘텐츠"
        previewLabel.textColor = .white
        previewLabel.font = .systemFont(ofSize: 15)
        
        imageSetting(imageView: firstImageView, topTenimageView: firstTopTenImageView, imageName: "도둑들")
        imageSetting(imageView: secondImageView, topTenimageView: secondTopTenImageView, imageName: "부산행")
        imageSetting(imageView: thirdImageView, topTenimageView: thirdTopTenImageView, imageName: "육사오")
    }
    
    func imageSetting(imageView: UIImageView, topTenimageView: UIImageView, imageName: String) {
        
        imageView.image = UIImage(named: imageName)
        imageView.backgroundColor = .brown
        imageView.layer.cornerRadius = 10
        imageView.contentMode = .scaleAspectFill
        
        topTenimageView.layer.maskedCorners = [.layerMaxXMinYCorner]
        topTenimageView.layer.cornerRadius = 10
        topTenimageView.contentMode = .scaleAspectFill
        
    }
    

    @IBAction func playButtonTapped(_ sender: UIButton) {
        
        let titleNum = Int.random(in: 0...9)
        let subOneNum = Int.random(in: 0...9)
        let subTwoNum = Int.random(in: 0...9)
        let subThreeNum = Int.random(in: 0...9)
        
        let firstBoolRandom = Bool.random()
        let secondBoolRandom = Bool.random()
        let thirdBoolRandom = Bool.random()
        
        movieImageView.image = UIImage(named: movieLists[titleNum])
        firstImageView.image = UIImage(named: movieLists[subOneNum])
        secondImageView.image = UIImage(named: movieLists[subTwoNum])
        thirdImageView.image = UIImage(named: movieLists[subThreeNum])
        
        firstTopTenImageView.isHidden = firstBoolRandom
        secondTopTenImageView.isHidden = secondBoolRandom
        thirdTopTenImageView.isHidden = thirdBoolRandom
        
    }
    
    

}
