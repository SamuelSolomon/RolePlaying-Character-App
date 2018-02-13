//
//  SavedCharacter.swift
//  Cloak
//
//  Created by Student on 2/1/18.
//  Copyright © 2018 Solomon. All rights reserved.
//

import UIKit

struct SavedCharacter{
    static var prototypeChar:Character = Character()
    
    init() {
        SavedCharacter.prototypeChar.characterDescription = "This is a Prototype Character, you can change the description, name, powers, and stat."
       SavedCharacter.prototypeChar.characterImage = UIImage(named: "download")
       SavedCharacter.prototypeChar.characterName = "Protoman"
        
        SavedCharacter.prototypeChar.powersAndSkills = "This Characters Power is to be a ProtoType, he does a great job at it, he's very powerful, can't you tell?"
    }
}
