--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.1
-- Dumped by pg_dump version 9.6.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: users; Type: TABLE; Schema: public; Owner: jaredthomas
--

CREATE TABLE users (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    weight json,
    current numeric
);


ALTER TABLE users OWNER TO jaredthomas;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: jaredthomas
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_id_seq OWNER TO jaredthomas;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jaredthomas
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: jaredthomas
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: jaredthomas
--

COPY users (id, name, weight, current) FROM stdin;
5	Jarhead	{"start": 198.2, "weekOne": "tbd", "weekTwo": "tbd", "weekTwo": "tbd", "weekThree": "tbd", "pct": ""}	198.2
1	Subaru Steve	{"start": 220, "weekOne": "tbd", "weekTwo": "tbd", "weekTwo": "tbd", "weekThree": "tbd", "pct": ""}	220
2	Darc Marc	{"start": 236.4, "weekOne": "tbd", "weekTwo": "tbd", "weekTwo": "tbd", "weekThree": "tbd", "pct": ""}	236.4
3	Muscle Mike	{"start": "tbd", "weekOne": "tbd", "weekTwo": "tbd", "weekTwo": "tbd", "weekThree": "tbd", "pct": ""}	NaN
6	Fatty Casalee	{"start": 233.4, "weekOne": "tbd", "weekTwo": "tbd", "weekTwo": "tbd", "weekThree": "tbd", "pct": ""}	233.4
4	Damp Socks Steve	{"start": 253.6, "weekOne": "tbd", "weekTwo": "tbd", "weekTwo": "tbd", "weekThree": "tbd", "pct": ""}	253.6
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jaredthomas
--

SELECT pg_catalog.setval('users_id_seq', 6, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: jaredthomas
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

