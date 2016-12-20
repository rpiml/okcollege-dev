DO $do$
BEGIN


    IF EXISTS (SELECT 1 FROM pg_database WHERE datname = 'okcollege_dev') THEN
        RAISE NOTICE 'Database okcollege_dev already exists';
    ELSE
        PERFORM dblink_exec('dbname=' || current_database()  -- current db
            , 'CREATE DATABASE okcollege_dev');
    END IF;

    IF EXISTS (SELECT 1 FROM pg_database WHERE datname = 'okcollege') THEN
        RAISE NOTICE 'Database okcollege already exists';
    ELSE
        PERFORM dblink_exec('dbname=' || current_database()  -- current db
            , 'CREATE DATABASE okcollege');
    END IF;
END
$do$;

