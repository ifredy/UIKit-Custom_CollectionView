//
//  CardView.swift
//  CollectionViewVideoList
//
//  Created by Fredy asencios M1 on 4/10/24.
//

import Foundation

import UIKit

class CardView: UIView {
    
    // Imagen de fondo y avatar
      private var backgroundImageView = UIImageView()
      private var avatarImageView = UIImageView()
      private var location:String = ""
      
      // Método para configurar la vista pasando solo los nombres de las imágenes
    func configure(backgroundImageName: String?, avatarImageName: String,location:String) {
          setupCard(backgroundImageName: backgroundImageName, avatarImageName: avatarImageName, location:location)
      }
      
    private func setupCard(backgroundImageName: String?, avatarImageName: String,location:String) {
          // Configuración del contenedor principal
          self.layer.cornerRadius = 20
          self.clipsToBounds = true
          self.layer.borderWidth = 3
          self.layer.borderColor = UIColor.lightGray.cgColor
          
          // Configurar la imagen de fondo si se proporciona el nombre de la imagen
          if let imageName = backgroundImageName {
              backgroundImageView.image = UIImage(named: imageName)
          }
//          backgroundImageView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
          backgroundImageView.contentMode = .scaleAspectFill
          backgroundImageView.translatesAutoresizingMaskIntoConstraints = true
          
          // Configurar el avatar
          avatarImageView.image = UIImage(named: avatarImageName)
          avatarImageView.layer.cornerRadius = 30
          avatarImageView.layer.borderWidth = 3
          avatarImageView.layer.borderColor = UIColor.white.cgColor
          avatarImageView.clipsToBounds = true
          avatarImageView.translatesAutoresizingMaskIntoConstraints = false
          
          // Texto (nombre del lugar) y pin de ubicación
          let locationLabel = UILabel()
          locationLabel.text = location
          locationLabel.font = UIFont.systemFont(ofSize: 16, weight: .medium)
          locationLabel.textColor = .white
          locationLabel.translatesAutoresizingMaskIntoConstraints = false
          
          let locationIcon = UIImageView()
//          locationIcon.image = UIImage(systemName: "mappin.and.ellipse.circle.fill")
            locationIcon.image = UIImage(systemName: "mappin.and.ellipse")
          locationIcon.tintColor = .white
          locationIcon.translatesAutoresizingMaskIntoConstraints = false
          
          // Añadir subviews
          self.addSubview(backgroundImageView)
          self.addSubview(avatarImageView)
          self.addSubview(locationLabel)
          self.addSubview(locationIcon)
          
          // Constraints para backgroundImageView (rellena la card)
          NSLayoutConstraint.activate([
              backgroundImageView.topAnchor.constraint(equalTo: self.topAnchor),
              backgroundImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
              backgroundImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
              backgroundImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor)
          ])
          
          // Constraints para avatarImageView (posicionado arriba a la izquierda)
          NSLayoutConstraint.activate([
              avatarImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
              avatarImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
              avatarImageView.widthAnchor.constraint(equalToConstant: 60),
              avatarImageView.heightAnchor.constraint(equalToConstant: 60)
          ])
          
          // Constraints para el icono de ubicación
          NSLayoutConstraint.activate([
              locationIcon.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
              locationIcon.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
              locationIcon.widthAnchor.constraint(equalToConstant: 30),
              locationIcon.heightAnchor.constraint(equalToConstant: 30)
          ])
          
          // Constraints para el label de la ubicación (al lado del icono)
          NSLayoutConstraint.activate([
              locationLabel.centerYAnchor.constraint(equalTo: locationIcon.centerYAnchor),
              locationLabel.leadingAnchor.constraint(equalTo: locationIcon.trailingAnchor, constant: 5),
              locationLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 5)

          ])
      }
      
      // Asegúrate de ajustar el layout correctamente
      override func layoutSubviews() {
          super.layoutSubviews()
          backgroundImageView.frame = self.bounds // Ajustar siempre el tamaño del fondo al del CardView
      }
}
