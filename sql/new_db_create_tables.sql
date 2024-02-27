--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3 (Debian 15.3-1.pgdg120+1)
-- Dumped by pg_dump version 15.3 (Homebrew)

-- Started on 2023-06-24 22:13:01 CEST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3352 (class 1262 OID 16384)
-- Name: new_database; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE new_database WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE new_database OWNER TO postgres;

\connect new_database

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 6 (class 2615 OID 16385)
-- Name: new_schema; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA new_schema;


ALTER SCHEMA new_schema OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 216 (class 1259 OID 16391)
-- Name: fans; Type: TABLE; Schema: new_schema; Owner: postgres
--

CREATE TABLE new_schema.fans (
    id integer NOT NULL,
    email character varying(100)
);


ALTER TABLE new_schema.fans OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16390)
-- Name: fans_id_seq; Type: SEQUENCE; Schema: new_schema; Owner: postgres
--

CREATE SEQUENCE new_schema.fans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE new_schema.fans_id_seq OWNER TO postgres;

--
-- TOC entry 3353 (class 0 OID 0)
-- Dependencies: 215
-- Name: fans_id_seq; Type: SEQUENCE OWNED BY; Schema: new_schema; Owner: postgres
--

ALTER SEQUENCE new_schema.fans_id_seq OWNED BY new_schema.fans.id;


--
-- TOC entry 3200 (class 2604 OID 16394)
-- Name: fans id; Type: DEFAULT; Schema: new_schema; Owner: postgres
--

ALTER TABLE ONLY new_schema.fans ALTER COLUMN id SET DEFAULT nextval('new_schema.fans_id_seq'::regclass);


--
-- TOC entry 3346 (class 0 OID 16391)
-- Dependencies: 216
-- Data for Name: fans; Type: TABLE DATA; Schema: new_schema; Owner: postgres
--

INSERT INTO new_schema.fans VALUES (1, 'malinicz@gmail.com');


--
-- TOC entry 3354 (class 0 OID 0)
-- Dependencies: 215
-- Name: fans_id_seq; Type: SEQUENCE SET; Schema: new_schema; Owner: postgres
--

SELECT pg_catalog.setval('new_schema.fans_id_seq', 1, true);


--
-- TOC entry 3202 (class 2606 OID 16396)
-- Name: fans fans_pkey; Type: CONSTRAINT; Schema: new_schema; Owner: postgres
--

ALTER TABLE ONLY new_schema.fans
    ADD CONSTRAINT fans_pkey PRIMARY KEY (id);


-- Completed on 2023-06-24 22:13:01 CEST

--
-- PostgreSQL database dump complete
--

