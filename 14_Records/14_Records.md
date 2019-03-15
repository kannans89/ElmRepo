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
