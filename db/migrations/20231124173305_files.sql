-- migrate:up

-- Create the sequence
CREATE SEQUENCE seq_files_id START WITH 1;

-- Create the table
CREATE TABLE files
(
    id         integer                  NOT NULL DEFAULT nextval('seq_files_id'),
    name       varchar(255)             NOT NULL UNIQUE,
    location   varchar(255)             NOT NULL DEFAULT 'local',
    processed  boolean                  NOT NULL DEFAULT false,
    output     varchar(255)             NOT NULL DEFAULT NULL,
    created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(),
    updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(),
    PRIMARY KEY (id)
);

-- migrate:down

-- Drop de the users table
DROP TABLE if exists files

-- Drop the sequence
DROP SEQUENCE seq_files_id;
