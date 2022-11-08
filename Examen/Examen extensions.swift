//
//  Examen extensions.swift
//  Examen
//
//  Created by LUIS GONZALEZ on 07/11/22.
//

import UIKit



extension UITableViewCell {
    ///Identifier nos ayudará a poder saber la identidad de nuestra celda, y usarla en cualquiera que herede de UITableViewCell
    class var identifier: String { return String(describing: self) }
}
