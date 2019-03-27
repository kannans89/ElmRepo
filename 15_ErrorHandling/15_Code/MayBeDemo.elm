
module MayBeDemo exposing(..)
import Maybe 

userName : Maybe String 
userName = Just "Mohtashim"

userAge :Maybe Int
userAge = Just 20

userSalary:Maybe Float
userSalary = Nothing


type Country = India | China | SriLanka 

getCountryFromString : String -> Maybe Country
getCountryFromString p =
  case p of
    "India"
      -> Just India
    "China"
      -> Just China
    "SriLanka"
      -> Just SriLanka
    _
      ->  Nothing
