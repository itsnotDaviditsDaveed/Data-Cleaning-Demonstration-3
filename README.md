# Data Cleaning in SQL #3: E-commerce Orders

**Tools:** SQL (MySQL)

Cleaning a messy e-commerce orders table in SQL. This time I kept the original table separate from the cleaned one, and exported the result so you can compare before and after.

## Before → After

| Column | Before | After |
|---|---|---|
| `Country` | `usa`, `U.S.A`, `US`, `USA` | `USA` |
| `Gender` | `M`, `male`, `MALE`, `F` | `Male`, `Female` |
| `Status` | `delivered`, `Shipped`, `SHUPPED`, `cancelled` | `DELIVERED`, `SHIPPED`, `CANCELLED`, `PENDING` |
| `Product` | `headphones`, `HeadPhones`, `Smart watch` | `Headphones`, `Smart Watch` |
| `Age` | `thirty` | `30` |
| `Order Date` | `2024-1-5`, `2024/01/07`, `7-1-2024` | standardized |

## Approach

1. Created `data_cleaning_NEW` as a copy of the raw table
2. Fixed each column with targeted `UPDATE ... WHERE ... IN (...)` statements
3. Exported the cleaned table (`data_clean_NEW.csv`)

## What I'd Do Next

- Convert every date to a real `DATE` type with `STR_TO_DATE` (the invalid `2024-13-01` should become `NULL`)
- Remove duplicate orders (e.g. `John Doe` and `Kevin White` appear twice)
- Flag invalid values: age `-1`, the incomplete email `sarahlee@gmail`, quantity `two`, price `$45.50`
- Use `UPPER()` / `TRIM()` instead of listing every variant by hand

## Files

- `Data_Cleaning_Feb_4_26 - Sheet1.csv`: raw data
- `data_clean_demonstratin 3.sql`: cleaning queries
- `data_clean_NEW.csv`: cleaned output
