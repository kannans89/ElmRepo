# Records

Record is a way of creating key value pair, it is similar to an object  in javascript.

## Example

```javascript
> company = {name="TutorialsPoint",rating=4.5}
{ name = "TutorialsPoint", rating = 4.5 } : { name : String, rating : Float }

```

Accessing values from a record is shown below

```javascript
> company.name
"TutorialsPoint" : String
> company.rating
4.5 : Float
>
```

Another way to access key value is as shown .

```javascript
> .rating company
4.5 : Float
> .name company
"TutorialsPoint" : String

```

In the example the key `.rating` is searched in record `company`.

## Record with list

```javascript
> [{name="Mohtashim"},{name="kannan"}]
[{ name = "Mohtashim" },{ name = "kannan" }] : List { name : String }
> record1={name="FirstRecord"}
{ name = "FirstRecord" } : { name : String }
> record2={name="SecondRecord"}
{ name = "SecondRecord" } : { name : String }
> recordList=[record1,record2]
[{ name = "FirstRecord" },{ name = "SecondRecord" }] : List { name : String }
```

## Update a record

Since records are immutable , when we update a record , we will get  a new record with updated values.

```javascript
> record1={name="FirstRecord"}
{ name = "FirstRecord" } : { name : String }
> record1_updated = {record1 | name="FirstRecordUpdate"}
{ name = "FirstRecordUpdate" } : { name : String }
> record1
{ name = "FirstRecord" } : { name : String }
> record1 == record1_updated
False : Bool
```

below example we are updating multiple fields of a record

```javascript

> record3 = {a=1,b=2,c=3,d=4,e=5}
{ a = 1, b = 2, c = 3, d = 4, e = 5 }
    : { a : number, b : number1, c : number2, d : number3, e : number4 }
> record4 = {record3 | d=400 ,e=500}
{ a = 1, b = 2, c = 3, d = 400, e = 500 }
    : { a : number2, b : number3, c : number4, d : number, e : number1 }
>

```

### Types alias

Type alias is defining a schema for a record. This means what are the attributes allowed in a record. So programmer will not make mistake of missing any specific attribute while assigning values for example if developer2 have only name by mistake if location is not assigned ,compiler will not give error.

```javascript
> developer1 = {name="bhagavati",location="hyderabad"}
{ name = "bhagavati", location = "hyderabad" }
    : { location : String, name : String }
> developer2 = {name="kannan"}
{ name = "kannan" } : { name : String }

```

So  let us see how to use type alias

```javascript
> type alias Developer = { name:String,location:String,age:Int}
> dev1 = Developer "kannan" "Mumbai" 20
{ name = "kannan", location = "Mumbai", age = 20 } : Repl.Developer
> dev2 = Developer "mohtashim" "hyderabad" 20
{ name = "mohtashim", location = "hyderabad", age = 20 } : Repl.Developer

```

Now if you forget to type location and age , the staement returns a function as shown

```javascript
> dev3 = Developer "Bhagavati"
<function> : String -> Int -> Repl.Developer

```

since it returns a function which have two remaining parameters String for location and Int for age. Now we can invoke function as shown passing in location `Pune` and age `25`

```javascript
 > dev3 "Pune" 25
{ name = "Bhagavati", location = "Pune", age = 25 } : Repl.Developer

```

