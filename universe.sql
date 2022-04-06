--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(20) NOT NULL,
    galaxy_id integer NOT NULL,
    more_info text,
    some_more_info integer,
    even_more_info integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    name character varying(20) DEFAULT (NOT NULL::boolean) NOT NULL,
    galaxy_types_id integer NOT NULL,
    more_info text,
    some_more_info integer,
    even_more_info integer
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_galaxy_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_galaxy_types_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_galaxy_types_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(20) NOT NULL,
    moon_id integer NOT NULL,
    is_spherical boolean,
    planet_id integer,
    even_more_info integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(20) NOT NULL,
    planet_id integer NOT NULL,
    age_in_millions_of_years integer,
    star_id integer,
    even_more_info integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(20) NOT NULL,
    hydrogen_in_precent numeric(5,2),
    distance_from_earth integer,
    description text,
    has_life boolean,
    galaxy_id integer,
    star_id integer NOT NULL,
    some_more_info integer,
    even_more_info integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_galaxy_types_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 1, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('It Way', 2, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('React Way', 3, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('.NET Way', 4, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('SQL Way', 5, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('HTML Way', 6, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('CSS Way', 7, NULL, NULL, NULL);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES ('Andro', 1, NULL, NULL, NULL);
INSERT INTO public.galaxy_types VALUES ('Mendro', 2, NULL, NULL, NULL);
INSERT INTO public.galaxy_types VALUES ('Dendro', 3, NULL, NULL, NULL);
INSERT INTO public.galaxy_types VALUES ('Loremdendrium', 4, NULL, NULL, NULL);
INSERT INTO public.galaxy_types VALUES ('Doro Loremdendrium', 5, NULL, NULL, NULL);
INSERT INTO public.galaxy_types VALUES ('Lerum Loremdendrium', 6, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moonraker', 1, true, 1, NULL);
INSERT INTO public.moon VALUES ('Doomraker', 3, false, 1, NULL);
INSERT INTO public.moon VALUES ('Foomraker', 4, true, 1, NULL);
INSERT INTO public.moon VALUES ('Goomraker', 6, true, 1, NULL);
INSERT INTO public.moon VALUES ('Hoomraker', 7, true, 1, NULL);
INSERT INTO public.moon VALUES ('Ioomraker', 8, true, 1, NULL);
INSERT INTO public.moon VALUES ('Joomraker', 9, true, 1, NULL);
INSERT INTO public.moon VALUES ('Koomraker', 10, true, 1, NULL);
INSERT INTO public.moon VALUES ('Loomraker', 11, true, 1, NULL);
INSERT INTO public.moon VALUES ('Moomraker', 12, true, 1, NULL);
INSERT INTO public.moon VALUES ('Noomraker', 13, true, 1, NULL);
INSERT INTO public.moon VALUES ('oomraker', 14, true, 1, NULL);
INSERT INTO public.moon VALUES ('Poomraker', 15, true, 1, NULL);
INSERT INTO public.moon VALUES ('Qoomraker', 16, true, 1, NULL);
INSERT INTO public.moon VALUES ('Roomraker', 17, true, 1, NULL);
INSERT INTO public.moon VALUES ('Soomraker', 18, true, 1, NULL);
INSERT INTO public.moon VALUES ('Toomraker', 19, true, 1, NULL);
INSERT INTO public.moon VALUES ('Uoomraker', 20, true, 1, NULL);
INSERT INTO public.moon VALUES ('Voomraker', 21, true, 1, NULL);
INSERT INTO public.moon VALUES ('Woomraker', 22, true, 1, NULL);
INSERT INTO public.moon VALUES ('Xoomraker', 23, true, 1, NULL);
INSERT INTO public.moon VALUES ('Yoomraker', 24, true, 1, NULL);
INSERT INTO public.moon VALUES ('Zoomraker', 25, true, 1, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth', 1, 150, 1, NULL);
INSERT INTO public.planet VALUES ('Lorem ipsum', 3, 170, 1, NULL);
INSERT INTO public.planet VALUES ('Plenium ipsum', 4, 120, 1, NULL);
INSERT INTO public.planet VALUES ('dipsium', 5, 220, 2, NULL);
INSERT INTO public.planet VALUES ('eipsium', 6, 320, 3, NULL);
INSERT INTO public.planet VALUES ('fipsium', 7, 420, 4, NULL);
INSERT INTO public.planet VALUES ('gipsium', 8, 520, 5, NULL);
INSERT INTO public.planet VALUES ('hipsium', 9, 620, 6, NULL);
INSERT INTO public.planet VALUES ('ipsium', 11, 720, 1, NULL);
INSERT INTO public.planet VALUES ('jpsium', 12, 820, 2, NULL);
INSERT INTO public.planet VALUES ('kpsium', 13, 920, 3, NULL);
INSERT INTO public.planet VALUES ('lpsium', 14, 1020, 4, NULL);
INSERT INTO public.planet VALUES ('mpsium', 15, 1120, 5, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 75.40, 43345, 'The sun is a beautiful place', true, 1, 1, NULL, NULL);
INSERT INTO public.star VALUES ('Derp', 100.00, 3455, 'yolo', false, 2, 2, NULL, NULL);
INSERT INTO public.star VALUES ('tja', 120.00, 1233455, 'yolo med andre', true, 3, 3, NULL, NULL);
INSERT INTO public.star VALUES ('enda en rad', 520.00, 455, 'enda en beskrivelse', false, 4, 4, NULL, NULL);
INSERT INTO public.star VALUES ('FinnepåGitt', 432.00, 412355, 'tja hva skal man finne på', false, 5, 5, NULL, NULL);
INSERT INTO public.star VALUES ('LoremDempu', 777.00, 4555, 'finne på', false, 6, 6, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_galaxy_types_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 25, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_types galaxy_types_galaxy_types_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_galaxy_types_id_key UNIQUE (galaxy_types_id);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


--
-- Name: galaxy galaxy_unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique_name UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique_name UNIQUE (name);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique_name UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique_name UNIQUE (name);


--
-- Name: galaxy_types unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

