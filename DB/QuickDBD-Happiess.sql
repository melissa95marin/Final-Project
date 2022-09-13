-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/LIsubP
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "year" (
    "year" INTEGER   NOT NULL,
    CONSTRAINT "pk_year" PRIMARY KEY (
        "year"
     )
);

CREATE TABLE "country" (
    "country_code" VARCHAR   NOT NULL,
    "country_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_country" PRIMARY KEY (
        "country_code"
     )
);

CREATE TABLE "population" (
    "country_code" VARCHAR   NOT NULL,
    "country_name" VARCHAR   NOT NULL,
    "year" INTEGER   NOT NULL,
    "population" BIGINT   NOT NULL
);

CREATE TABLE "world_mortality" (
    "country_code" VARCHAR   NOT NULL,
    "country_name" VARCHAR   NOT NULL,
    "year" INTEGER   NOT NULL,
    "all_cause_death_count" INTEGER   NOT NULL
);

CREATE TABLE "world_happiness" (
    "country_code" VARCHAR   NOT NULL,
    "country_name" VARCHAR   NOT NULL,
    "year" INTEGER   NOT NULL,
    "happiness_ranking" DECIMAL   NOT NULL,
    "log_GDP_per_capita" DECIMAL   NOT NULL,
    "social_support" DECIMAL   NOT NULL,
    "healthy_life_expectancy_birth" DECIMAL   NOT NULL,
    "freedom_to_make_life_choices" DECIMAL   NOT NULL,
    "generosity" DECIMAL   NOT NULL,
    "perception_of_corruption" DECIMAL   NOT NULL,
    "positive_affect" DECIMAL   NOT NULL,
    "negative_affect" DECIMAL   NOT NULL,
    "confidence_in_national_government" DECIMAL   NOT NULL
);

CREATE TABLE "world_mortality_by_covid" (
    "country_code" VARCHAR   NOT NULL,
    "country_name" VARCHAR   NOT NULL,
    "year" INTEGER   NOT NULL,
    "total_cases" BIGINT   NOT NULL,
    "number_deaths" BIGINT   NOT NULL
);

ALTER TABLE "population" ADD CONSTRAINT "fk_population_country_code" FOREIGN KEY("country_code")
REFERENCES "country" ("country_code");

ALTER TABLE "population" ADD CONSTRAINT "fk_population_year" FOREIGN KEY("year")
REFERENCES "year" ("year");

ALTER TABLE "world_mortality" ADD CONSTRAINT "fk_world_mortality_country_code" FOREIGN KEY("country_code")
REFERENCES "country" ("country_code");

ALTER TABLE "world_mortality" ADD CONSTRAINT "fk_world_mortality_year" FOREIGN KEY("year")
REFERENCES "year" ("year");

ALTER TABLE "world_happiness" ADD CONSTRAINT "fk_world_happiness_country_code" FOREIGN KEY("country_code")
REFERENCES "country" ("country_code");

ALTER TABLE "world_happiness" ADD CONSTRAINT "fk_world_happiness_year" FOREIGN KEY("year")
REFERENCES "year" ("year");

ALTER TABLE "world_mortality_by_covid" ADD CONSTRAINT "fk_world_mortality_by_covid_country_code" FOREIGN KEY("country_code")
REFERENCES "country" ("country_code");

ALTER TABLE "world_mortality_by_covid" ADD CONSTRAINT "fk_world_mortality_by_covid_year" FOREIGN KEY("year")
REFERENCES "year" ("year");

