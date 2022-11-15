# Query Practice 1

## Generate models

```
rails generate model performer name:string
```

```
rails generate model venue name:string city:string zip:string
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
