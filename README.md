# Query Practice 1

## Generate models

```
rails generate model genre name:string
```

```
rails generate model performer name:string genre_id:integer
```

```
rails generate model city name:string
```

```
rails generate model venue name:string city_id:integer
```

```
rails generate model event venue_id:integer performer_id:integer title:string starts_at:datetime ends_at:datetime
```


```
rails generate model listing quantity:integer event_id:integer price:integer
```

## Create sample data

```
rails sample_data
```

## Queries to practice

You can practice in `rails console`, or you can embed Ruby in the four view templates that I created for you to experiment within.

Remember to visit `/rails/db` to visualize the data.

- How many listings are there?
- How many listings have a price of less than 20?
- How many listings have a price of more than 50?
- How many perfomers' name start with "The"?
- What is the name of the first city (ordered alphabetically)?
- How many venues are in that city?
- What is the name of the first performer (ordered alphabetically)?
- How many events does that performer have?
- How many events for that performer are coming up within the next one week?
