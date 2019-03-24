# Decision Making

Decision-making structures require that the programmer specifies one or more conditions to be evaluated or tested by the program, along with a statement or statements to be executed if the condition is determined to be true, and optionally, other statements to be executed if the condition is determined to be false.

Shown below is the general form of a typical decision-making structure found in most of the programming languages −

![decision_making](https://user-images.githubusercontent.com/9062443/46945104-95641680-d091-11e8-81ca-8d4ab406442e.jpg)

| S.No | Statement | Description |
|:-----|:----------|:-------------|
| 1 | *if...then...else* statement|  An *if* statement consists of a Boolean expression followed by *then* for true case and *else* for false case
|2| nested *if* statement|You can use one *if...then...else*  inside another *if*. |

## If Statement

The *if…then* construct evaluates a condition before a block of code is executed.Unlike other  programming languages, in Elm we must provide the else branch. Otherwise Elm will throw an error

### Syntax

```elm
 if boolean_expression then statement1_ifTrue else statement2_ifFalse
```

If boolean expression evaluates to true , then first statement will get executed otherwise the second statement will be executed as shown in elm repl.

```elm
> if 10>5 then "10 is bigger" else "10 is small"
"10 is bigger" : String

```

## Nested If

The **else…if** ladder is useful to test multiple conditions. Its syntax is given below

```elm
 if boolean_expression1 then statement1_ifTrue else if boolean_expression2 then statement2_ifTrue else statement3_ifFalse

```

### Illustration

```elm
 > score=80
80 : number
> if score>=80 then "Outstanding" else if score >= 70 then "good" else "average"
"Outstanding" : String

```

## Case statement

using case statement we can simplify the `if then else` as shown. Note the value return in each case has to be of the same type.

```elm
> n = 10
10 : number
> case n of \
|   0 -> "n is Zero" \
|   _ -> "n is not Zero"
"n is not Zero" : String

```