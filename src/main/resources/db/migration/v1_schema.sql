CREATE TABLE person (
                        id              SERIAL PRIMARY KEY,
                        personal_code   NUMERIC(13,0) NOT NULL UNIQUE
                            CHECK (personal_code >= 1000000000000 AND personal_code <= 9999999999999),
                        first_name      VARCHAR(50)  NOT NULL,
                        last_name       VARCHAR(50)  NOT NULL,
                        age             INT          NOT NULL
                            CHECK (age >= 0 AND age <= 130),
                        email           VARCHAR(255)
                            CHECK (email IS NULL OR position('@' IN email) > 1),
                        phone           VARCHAR(20)
                            CHECK (phone IS NULL OR phone ~ '^[0-9+\\- ]{7,20}$')
    );

CREATE TABLE vehicle (
                         id              SERIAL PRIMARY KEY,
                         vin             CHAR(17) NOT NULL UNIQUE
                             CHECK (vin ~ '^[A-HJ-NPR-Z0-9]{17}$'),
    type            VARCHAR(20) NOT NULL
        CHECK (type IN ('car', 'motorcycle')),
    make            VARCHAR(50) NOT NULL,
    model           VARCHAR(50) NOT NULL,
    year            INT NOT NULL
        CHECK (year BETWEEN 1900 AND (EXTRACT(YEAR FROM NOW())::INT + 1)),
    color           VARCHAR(30),
    engine_type     VARCHAR(20) NOT NULL
        CHECK (engine_type IN ('petrol','diesel','hybrid','electric','lpg','other')),
    engine_capacity INT
        CHECK (engine_capacity IS NULL OR engine_capacity > 0),
    transmission    VARCHAR(20) NOT NULL
        CHECK (transmission IN ('manual','automatic','cvt','other'))
);
