//
//  SearchViewController.swift
//  NetflixProject
//
//  Created by 전준영 on 5/16/24.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet var searchTextField: UITextField!
    
    //plain < ios15+ >>>
    //default < legacy
    //즉, default 스타일을 다루는 버튼 코드와
    //plain 스타일을 다루는 버튼 코드가 다름.
    //Image Rendering Mode: template vs original
    @IBOutlet var releasedButton: UIButton!
    @IBOutlet var favoredButton: UIButton!
    @IBOutlet var topButton: UIButton!
    @IBOutlet var searchResultLabel: UILabel!
    @IBOutlet var explainLabel: UILabel!
    @IBOutlet var searchView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().tintColor = .white
        
        searchView.backgroundColor = .darkGray
        searchView.layer.cornerRadius = 5
        searchTextField.attributedPlaceholder = NSAttributedString(string: "게임, 시리즈, 영화를 검색하세요...", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        searchTextField.tintColor = .white
        searchTextField.backgroundColor = .darkGray
        
        releasedButton.layer.cornerRadius = 15
        // default 버튼을 다루는 코드
        releasedButton.titleLabel?.font = .boldSystemFont(ofSize: 30)
//        let image =  UIImage(named: "blue")?.withRenderingMode(.alwaysOriginal)
        let image = UIImage(systemName: "star")
//        ?.withTintColor(.black)
        
        releasedButton.setImage(image, for: .normal)
        
        
        
        favoredButton.layer.cornerRadius = 15
        
        topButton.layer.cornerRadius = 15
        
        
        settingLabel(label: searchResultLabel, resultLabel: "이런! 찾으시는 작품이 없습니다.", labelColor: .white, font: .boldSystemFont(ofSize: 20))
        settingLabel(label: explainLabel, resultLabel: "다른 영화, 시리즈, 배우, 감독 또는 장르를 검색해 보세요.", labelColor: .gray, font: .systemFont(ofSize: 13))
        
        
    }
    
    func settingLabel(label: UILabel, resultLabel: String, labelColor: UIColor, font: UIFont){
        
        label.text = resultLabel
        label.textColor = labelColor
        label.textAlignment = .center
        label.font = font
        
    }
    

    
    @IBAction func releasedButtonTapped(_ sender: UIButton) {
        
        if sender.tag == 0{
            releasedButton.backgroundColor = .white
            releasedButton.configuration?.baseForegroundColor = .black
            favoredButton.backgroundColor = .clear
            favoredButton.configuration?.baseForegroundColor = .white
            topButton.backgroundColor = .clear
            topButton.configuration?.baseForegroundColor = .white
            searchResultLabel.text = "공개예정인 작품이 없습니다!"
            explainLabel.text = "다른 장르를 클릭하거나 검색해 주세요."
        } else if sender.tag == 1{
            releasedButton.backgroundColor = .clear
            releasedButton.configuration?.baseForegroundColor = .white
            favoredButton.backgroundColor = .white
            favoredButton.configuration?.baseForegroundColor = .black
            topButton.backgroundColor = .clear
            topButton.configuration?.baseForegroundColor = .white
            searchResultLabel.text = "인기 콘텐츠 작품이 없습니다!"
            explainLabel.text = "다르게 찾아주세요."
        } else {
            
            releasedButton.backgroundColor = .clear
            releasedButton.configuration?.baseForegroundColor = .white
            favoredButton.backgroundColor = .clear
            favoredButton.configuration?.baseForegroundColor = .white
            topButton.backgroundColor = .white
            topButton.configuration?.baseForegroundColor = .black
            searchResultLabel.text = "TOP 10 시리즈 작품이 없습니다!"
            explainLabel.text = "네이버 혹은 구글로 찾아주세요."
            
        }
        
        
        
    }
    

    
}
