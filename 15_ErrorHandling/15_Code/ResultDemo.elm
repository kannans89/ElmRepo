
module ResultDemo exposing(..)

--import Html exposing (text)

-- create main method
--main =
-- invoke text function 
 --text <|toString  (isReasonableAge "abc")
import Result

userId : Result String Int
userId = Ok 10 

emailId : Result String Int
emailId = Err "Not valid emailId" 

isReasonableAge : String -> Result String Int
isReasonableAge input =
  case String.toInt input of
    Err r ->
      Err "That is not a age!"

    Ok age ->
      if age < 0 then
        Err "Please try again ,age can't be negative"

      else if age > 135 then
        Err "Please try agian,age can't be this big.."

      else
        Ok age