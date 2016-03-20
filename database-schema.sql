DO
$do$
BEGIN
  DROP TABLE IF EXISTS "todo";
  CREATE TABLE "todo"(
    name text,
    id SERIAL PRIMARY KEY,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone
  );
END
$do$;
