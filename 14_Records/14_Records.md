# Records

At times, there might be a need to represent data as key-value pairs. The record data structure in Elm can be used to achieve this. A record can be used to organize related data to enable easy access and updation of data. Elm records are similar to objects  in Javascript. Data elements in a record are known as fields.  

## Defining a record 
Use the following syntax to define a record- 

### Syntax
```elm
record_name= {fieldname1=value1, fieldname2=value2....fieldnameN=valueN}
```

A record can store data of multiple types. The field names in a record must conform to the general rules for naming an Elm identifier.

## Accessing record values 
Use the following syntax to access individual fields in a record.
### Syntax
```elm
record_name.fieldname
```
OR

```elm
.fieldname record_name
```

### Illustration
Try the following in the Elm REPL- 

```javascript
> company = {name="TutorialsPoint",rating=4.5}
{ name = "TutorialsPoint", rating = 4.5 } : { name : String, rating : Float }
> company.name
"TutorialsPoint" : String
> .rating company
4.5 : Float
>
```

## Using Record with List
A record can be stored inside a list. All field values of the record should be of the same type.

### Syntax  
```elm
list_name =[ {field_name1=value1},{field_name1=value2}]

OR

list_name=[record_name1, record_name2, record_name3....record_nameN]

```
### Illustration
Try the following in Elm REPL- 

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

Records are immutable in Elm. When a record is updated, a new record with updated values is returned. The field can hold value of a different type when updating a record. 

### Syntax
```elm
{record_name | field_name1= new_value1, field_name2= new_value2,field_name3= new_value3....field_nameN= new_valueN}
```
### Illustration
Try the following in Elm REPL- 

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

### Illustration
The following example updates multiple fields of a record.Try the following in Elm REPL- 

```javascript

> record3 = {a=1,b=2,c=3,d=4,e=5}
{ a = 1, b = 2, c = 3, d = 4, e = 5 }
    : { a : number, b : number1, c : number2, d : number3, e : number4 }
> record4 = {record3 | d=400 ,e=500}
{ a = 1, b = 2, c = 3, d = 400, e = 500 }
    : { a : number2, b : number3, c : number4, d : number, e : number1 }
>

```

## Type alias

Type alias defines a schema for a record. In other words, a type alias defines which fields can the record store and the type of value these fields can store. So programmer will not make mistake of missing any specific attribute while assigning values for example if developer2 have only name by mistake if location is not assigned ,compiler will not give error.

```javascript
> developer1 = {name="bhagavati",location="hyderabad"}
{ name = "bhagavati", location = "hyderabad" }
    : { location : String, name : String }
> developer2 = {name="kannan"}
{ name = "kannan" } : { name : String }

```
### Syntax
```elm
type alias alias_name={field_name1:data_type,field_name2:data_type,....field_nameN:data_type}

```
### Illustration
Try the following in Elm REPL- 

```javascript
> type alias Developer = { name:String,location:String,age:Int}
> dev1 = Developer "kannan" "Mumbai" 20
{ name = "kannan", location = "Mumbai", age = 20 } : Repl.Developer
> dev2 = Developer "mohtashim" "hyderabad" 20
{ name = "mohtashim", location = "hyderabad", age = 20 } : Repl.Developer

```

Now if you forget to type location and age , the statement returns a function which has input parameters for location and age fields. 

```javascript
> dev3 = Developer "Bhagavati"
<function> : String -> Int -> Repl.Developer

```

We we can invoke the function as shown below and pass to it the values for location and age fields.

```javascript
 > dev3 "Pune" 25
{ name = "Bhagavati", location = "Pune", age = 25 } : Repl.Developer

```

