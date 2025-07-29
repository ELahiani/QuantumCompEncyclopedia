# Quantum Computing Definitions Encyclopedia

A simple SQL database of key words in quantum computing, designed for educational purposes. Each term includes a category, definition, and source reference.

## Structure

- **Table:** `definitions`
  - `term` — The name of the concept
  - `category` — (e.g., Gates, Linear Algebra, Algorithms)
  - `definition` — A concise explanation
  - `source` — Reference or link for more info

## Sample Query

```sql
SELECT * FROM definitions WHERE category = 'Quantum Gates';
