//import Foundation
//
//func solution(_ skill:String, _ skill_trees:[String]) -> Int {
//    var arrs = [String]()
//    var result : Int = 0
//    for skill_tree in skill_trees {
//        var a = ""
//        for skills in skill_tree {
//            if skill.contains(skills) {
//                a.append(skills)
//            }
//        }
//        arrs.append(a)
//    }
//    
//    for arr in arrs {
//        if arr == skill.prefix(arr.count) {
//            result += 1
//        }
//    }
//    
//    return result
//}
//
//solution("CBD", ["BACDE", "CBADF", "AECB", "BDA"])



import Foundation

func solution(_ s:String) -> Int {
    var result: Int = 0
    
    var first: String = ""
    var cnt: Int = 0
    
    for str in s {
        if first.isEmpty {
            first.append(str)
            cnt += 1
        } else {
            if first == String(str) {
                cnt += 1
            } else {
                cnt -= 1
            }
        }
        if cnt == 0 {
            result += 1
            first = ""
        }
    }
    if !first.isEmpty {
        result += 1
    }
    return result
}
