# PostgreSQL with Docker Labwork

## Start PostgreSQL

```
docker run --name my-postgres -e POSTGRES_PASSWORD=yourpassword -p 5432:5432 -v pgdata:/var/lib/postgresql -d postgres:18
```

## DBeaver connection settings

- Host: localhost
- Port: 5432
- Database: school
- User: postgres
- Password: your password

## Files

- `school.sql`: creates the tables, inserts data, and runs queries
- `students_....csv`: exported data from the students table