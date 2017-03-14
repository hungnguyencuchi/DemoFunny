//
//  DatabaseHelper.swift
//  FunnyStory
//
//  Created by admin on 3/14/17.
//  Copyright © 2017 Duan Nguyen. All rights reserved.
//

import GRDB

class DatabaseHelper {
    var dbQueue : DatabaseQueue = {
        var db: DatabaseQueue = DatabaseQueue()
        do {
            db = try DatabaseQueue(path: Bundle.main.path(forResource: "truyencuoihay", ofType: "db")!)
        }
        catch {
            print("Connection db fail!")
        }
        return db
    }()
    
    func getAllChude() -> [CategoryModel] {
        var listChude = [CategoryModel]()
        
        dbQueue.inDatabase { db in
            do {
                for row in try Row.fetchAll(db, "SELECT * FROM chude") {
                    let newChude = CategoryModel()
                    newChude.idCategory = row.value(named: "id") as Int
                    newChude.nameCategory = row.value(named: "name") as String
                    
                    listChude.append(newChude)
                }
            }
            catch {
                print("Get all chude Fail!")
            }
        }
        return listChude
    }
    
    func getAllTruyencuoi() -> [StoryModel] {
        var listTruyencuoi = [StoryModel]()
        
        dbQueue.inDatabase { db in
            do {
                for row in try Row.fetchAll(db, "SELECT * FROM truyencuoi") {
                    let newTruyencuoi = StoryModel()
                    newTruyencuoi.id = row.value(named: "id") as Int
                    newTruyencuoi.title = row.value(named: "title") as String
                    newTruyencuoi.content = row.value(named: "content") as String
                    
                    listTruyencuoi.append(newTruyencuoi)
                }
            }
            catch {
                print("Get all truyencuoi Fail!")
            }
        }
        return listTruyencuoi
    }
    
    func getAllTruyencuoi(idCategory: Int) -> [StoryModel] {
        var listTruyencuoi = [StoryModel]()
        
        dbQueue.inDatabase { db in
            do {
                for row in try Row.fetchAll(db, "SELECT * FROM truyencuoitheochude WHERE category_id = \(idCategory)") {
                    let newTruyencuoi = StoryModel()
                    newTruyencuoi.id = row.value(named: "id") as Int
                    newTruyencuoi.title = row.value(named: "title") as String
                    newTruyencuoi.content = row.value(named: "content") as String
                    
                    listTruyencuoi.append(newTruyencuoi)
                }
            }
            catch {
                print("Get all truyencuoi Fail!")
            }
        }
        return listTruyencuoi
    }
}
