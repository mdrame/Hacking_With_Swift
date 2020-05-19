//
//  DetailViewController.swift
//  apiCall
//
//  Created by Mohammed Drame on 1/13/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import UIKit

class HomeViewController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(true, animated: false)
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        addSubViewsToView()
    }
    
    func addSubViewsToView() {
        view.addSubview(appNameLabel)
        appNameLabelConstrain()
        view.addSubview(applogo)
        applogoConstrain()
        view.addSubview(bigStackView)
        view.addSubview(easybutton_and_scorelabel_stackView)
        easybutton_and_scorelabel_stackView_constrain()
        easybutton_and_scorelabel_stackView.addArrangedSubview(easyButton)
        easyButtonConstrain()
        easybutton_and_scorelabel_stackView.addArrangedSubview(easyButtonScoreLabel)
        easyButtonScoreLabelConstrain()
        view.addSubview(mediumbutton_and_scorelabel_stackView)
        mediumbutton_and_scorelabel_stackView_constrain()
        mediumbutton_and_scorelabel_stackView.addArrangedSubview(mediumButton)
        mediumButtonConstrain()
        mediumbutton_and_scorelabel_stackView.addArrangedSubview(mediumButtonScoreLabel)
        mediumButtonScoreLabelConstrain()
        view.addSubview(hardbutton_and_scorelabel_stackView)
        hardbutton_and_scorelabel_stackView_constrain()
        hardbutton_and_scorelabel_stackView.addArrangedSubview(hardButton)
        hardButtonConstrain()
        hardbutton_and_scorelabel_stackView.addArrangedSubview(hardButtonScoreLabel)
        hardButtonScoreLabelConstrain()
    }
    
    // App  Title
    let appNameLabel: UILabel = {
        let appNameLabel = AppNameLabel(title: "Ultimate Brain Trainer")
        appNameLabel.translatesAutoresizingMaskIntoConstraints = false
        return appNameLabel
    }()
    
    func appNameLabelConstrain() {
        NSLayoutConstraint.activate([
            appNameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            appNameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            appNameLabel.heightAnchor.constraint(equalToConstant: 60),
            appNameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -0)
        ])
    }
    
    // App Logo
    let applogo: UIImageView = {
        let applogo = LogoCustomClass(logoimage: #imageLiteral(resourceName: "mbr-1014x792.png"))
        applogo.translatesAutoresizingMaskIntoConstraints = false
        return applogo
    }()
    
    func applogoConstrain() {
        NSLayoutConstraint.activate([
            applogo.topAnchor.constraint(equalTo: appNameLabel.bottomAnchor, constant: 5),
            applogo.leadingAnchor.constraint(equalTo: appNameLabel.leadingAnchor),
            applogo.heightAnchor.constraint(equalToConstant: 150),
            applogo.trailingAnchor.constraint(equalTo: appNameLabel.trailingAnchor)
        ])
    }
    
    
    
    
    let easybutton_and_scorelabel_stackView: UIStackView = {
        let button_and_label_stackView = UIStackView(frame: .zero)
        button_and_label_stackView.distribution = .fillProportionally
        button_and_label_stackView.spacing = 1
        button_and_label_stackView.axis = .vertical
        button_and_label_stackView.translatesAutoresizingMaskIntoConstraints = false
        return button_and_label_stackView
    }()
    
    func easybutton_and_scorelabel_stackView_constrain() {
        NSLayoutConstraint.activate([
            easybutton_and_scorelabel_stackView.topAnchor.constraint(equalTo: applogo.bottomAnchor, constant: 30),
            easybutton_and_scorelabel_stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            easybutton_and_scorelabel_stackView.heightAnchor.constraint(equalToConstant: view.frame.size.height / 6 ),
            easybutton_and_scorelabel_stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
    }
    
    
    let easyButton: UIButton = {
        let easyButton = DifficultyLevelsCustomButton(title: "E A S Y", bgColor: .green)
        easyButton.translatesAutoresizingMaskIntoConstraints = false
        easyButton.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
        return easyButton
    }()
    
    func easyButtonConstrain() {
        NSLayoutConstraint.activate([
            easyButton.topAnchor.constraint(equalTo: easybutton_and_scorelabel_stackView.topAnchor),
            easyButton.leadingAnchor.constraint(equalTo: easybutton_and_scorelabel_stackView.leadingAnchor),
            easyButton.bottomAnchor.constraint(equalTo: easybutton_and_scorelabel_stackView.bottomAnchor, constant: -40),
            easyButton.trailingAnchor.constraint(equalTo: easybutton_and_scorelabel_stackView.trailingAnchor)
        ])
    }
    
    let easyButtonScoreLabel: UILabel = {
        let easyButtonScoreLabel = DashBoardScoreLabel(title: "Score: ")
        easyButtonScoreLabel.translatesAutoresizingMaskIntoConstraints = false
        return easyButtonScoreLabel
    }()
    
    func easyButtonScoreLabelConstrain() {
        NSLayoutConstraint.activate([
            easyButtonScoreLabel.topAnchor.constraint(equalTo: easyButton.bottomAnchor),
            easyButtonScoreLabel.leadingAnchor.constraint(equalTo: easybutton_and_scorelabel_stackView.leadingAnchor),
            easyButtonScoreLabel.bottomAnchor.constraint(equalTo: easybutton_and_scorelabel_stackView.bottomAnchor),
            easyButtonScoreLabel.trailingAnchor.constraint(equalTo: easybutton_and_scorelabel_stackView.trailingAnchor)
        ])
    }
    
    
    
    let mediumbutton_and_scorelabel_stackView: UIStackView = {
        let mediumbutton_and_scorelabel_stackView = UIStackView(frame: .zero)
        mediumbutton_and_scorelabel_stackView.distribution = .fillProportionally
        mediumbutton_and_scorelabel_stackView.spacing = 1
        mediumbutton_and_scorelabel_stackView.axis = .vertical
        mediumbutton_and_scorelabel_stackView.translatesAutoresizingMaskIntoConstraints = false
        return mediumbutton_and_scorelabel_stackView
    }()
    
    func mediumbutton_and_scorelabel_stackView_constrain() {
        NSLayoutConstraint.activate([
            mediumbutton_and_scorelabel_stackView.topAnchor.constraint(equalTo: easybutton_and_scorelabel_stackView.bottomAnchor, constant: 10),
            mediumbutton_and_scorelabel_stackView.leadingAnchor.constraint(equalTo: easybutton_and_scorelabel_stackView.leadingAnchor),
            mediumbutton_and_scorelabel_stackView.heightAnchor.constraint(equalToConstant: view.frame.size.height / 6 ),
            mediumbutton_and_scorelabel_stackView.trailingAnchor.constraint(equalTo: easybutton_and_scorelabel_stackView.trailingAnchor)
        ])
    }
    
    
    let mediumButton: UIButton = {
        let mediumButton = DifficultyLevelsCustomButton(title: "M E D I U M", bgColor: .yellow)
        mediumButton.translatesAutoresizingMaskIntoConstraints = false
        mediumButton.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
        return mediumButton
    }()
    
    func mediumButtonConstrain() {
        NSLayoutConstraint.activate([
            mediumButton.topAnchor.constraint(equalTo: mediumbutton_and_scorelabel_stackView.topAnchor),
            mediumButton.leadingAnchor.constraint(equalTo: mediumbutton_and_scorelabel_stackView.leadingAnchor),
            mediumButton.bottomAnchor.constraint(equalTo: mediumbutton_and_scorelabel_stackView.bottomAnchor, constant: -40),
            mediumButton.trailingAnchor.constraint(equalTo: mediumbutton_and_scorelabel_stackView.trailingAnchor)
        ])
    }
    
    let mediumButtonScoreLabel: UILabel = {
        let mediumButtonScoreLabel = DashBoardScoreLabel(title: "Score: ")
        mediumButtonScoreLabel.translatesAutoresizingMaskIntoConstraints = false
        return mediumButtonScoreLabel
    }()
    
    func mediumButtonScoreLabelConstrain() {
        NSLayoutConstraint.activate([
            mediumButtonScoreLabel.topAnchor.constraint(equalTo: mediumButton.bottomAnchor),
            mediumButtonScoreLabel.leadingAnchor.constraint(equalTo: mediumbutton_and_scorelabel_stackView.leadingAnchor),
            mediumButtonScoreLabel.bottomAnchor.constraint(equalTo: mediumbutton_and_scorelabel_stackView.bottomAnchor),
            mediumButtonScoreLabel.trailingAnchor.constraint(equalTo: mediumbutton_and_scorelabel_stackView.trailingAnchor)
        ])
    }
    
    
    
    
    let hardbutton_and_scorelabel_stackView: UIStackView = {
        let hardbutton_and_scorelabel_stackView = UIStackView(frame: .zero)
        hardbutton_and_scorelabel_stackView.distribution = .fillProportionally
        hardbutton_and_scorelabel_stackView.spacing = 1
        hardbutton_and_scorelabel_stackView.axis = .vertical
        hardbutton_and_scorelabel_stackView.translatesAutoresizingMaskIntoConstraints = false
        return hardbutton_and_scorelabel_stackView
    }()
    
    func hardbutton_and_scorelabel_stackView_constrain() {
        NSLayoutConstraint.activate([
            hardbutton_and_scorelabel_stackView.topAnchor.constraint(equalTo: mediumbutton_and_scorelabel_stackView.bottomAnchor, constant: 10),
            hardbutton_and_scorelabel_stackView.leadingAnchor.constraint(equalTo: mediumbutton_and_scorelabel_stackView.leadingAnchor),
            hardbutton_and_scorelabel_stackView.heightAnchor.constraint(equalToConstant: view.frame.size.height / 6 ),
            hardbutton_and_scorelabel_stackView.trailingAnchor.constraint(equalTo: mediumbutton_and_scorelabel_stackView.trailingAnchor)
        ])
    }
    
    
    let hardButton: UIButton = {
        let hardButton = DifficultyLevelsCustomButton(title: "H A R D", bgColor: .red)
        hardButton.translatesAutoresizingMaskIntoConstraints = false
        hardButton.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        return hardButton
    }()
    
    func hardButtonConstrain() {
        NSLayoutConstraint.activate([
            hardButton.topAnchor.constraint(equalTo: hardbutton_and_scorelabel_stackView.topAnchor),
            hardButton.leadingAnchor.constraint(equalTo: hardbutton_and_scorelabel_stackView.leadingAnchor),
            hardButton.bottomAnchor.constraint(equalTo: hardbutton_and_scorelabel_stackView.bottomAnchor, constant: -40),
            hardButton.trailingAnchor.constraint(equalTo: hardbutton_and_scorelabel_stackView.trailingAnchor)
        ])
    }
    
    let hardButtonScoreLabel: UILabel = {
        let hardButtonScoreLabel = DashBoardScoreLabel(title: "Score: ")
        hardButtonScoreLabel.translatesAutoresizingMaskIntoConstraints = false
        return hardButtonScoreLabel
    }()
    
    func hardButtonScoreLabelConstrain() {
        NSLayoutConstraint.activate([
            hardButtonScoreLabel.topAnchor.constraint(equalTo: hardButton.bottomAnchor),
            hardButtonScoreLabel.leadingAnchor.constraint(equalTo: hardbutton_and_scorelabel_stackView.leadingAnchor),
            hardButtonScoreLabel.bottomAnchor.constraint(equalTo: hardbutton_and_scorelabel_stackView.bottomAnchor),
            hardButtonScoreLabel.trailingAnchor.constraint(equalTo: hardbutton_and_scorelabel_stackView.trailingAnchor)
        ])
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
