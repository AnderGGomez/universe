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
-- Name: aux; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.aux (
    aux_id integer NOT NULL,
    name character varying(50),
    star_id integer NOT NULL
);


ALTER TABLE public.aux OWNER TO freecodecamp;

--
-- Name: aux_aux_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.aux_aux_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.aux_aux_id_seq OWNER TO freecodecamp;

--
-- Name: aux_aux_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.aux_aux_id_seq OWNED BY public.aux.aux_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer,
    number_of_star_billions integer,
    radio_light_years numeric(4,2),
    description text,
    has_life boolean
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_planet integer,
    radio_km numeric(4,2),
    description text,
    is_spherical boolean,
    planet_id integer
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
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_sun integer,
    radio_km numeric(4,2),
    description text,
    has_life boolean,
    star_id integer
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
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer,
    temperature integer,
    radio_km numeric(4,2),
    description text,
    is_spherical boolean,
    galaxy_id integer NOT NULL
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
-- Name: aux aux_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aux ALTER COLUMN aux_id SET DEFAULT nextval('public.aux_aux_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


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
-- Data for Name: aux; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.aux VALUES (1, 'test1', 1);
INSERT INTO public.aux VALUES (2, 'test2', 2);
INSERT INTO public.aux VALUES (3, 'test3', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Via Lactea', 350, 241, 10.10, 'Es la vida lactea', true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 240, 120, 8.10, 'Es la galaxia andromeda', false);
INSERT INTO public.galaxy VALUES (3, 'Lumenes', 80, 10, 7.20, 'Es la galaxia nueva', false);
INSERT INTO public.galaxy VALUES (4, 'galaxi1', 120, 34, 9.10, 'random galaxy', true);
INSERT INTO public.galaxy VALUES (5, 'galaxi2', 120, 34, 9.10, 'random galaxy', false);
INSERT INTO public.galaxy VALUES (6, 'galaxi3', 120, 34, 9.10, 'random galaxy', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'La luna', 15, 20, 8.40, 'Luna del planeta azul', false, 1);
INSERT INTO public.moon VALUES (2, 'Diopo', 25, 30, 7.40, 'Luna del planeta rojo', true, 2);
INSERT INTO public.moon VALUES (3, 'Mimbre', 5, 0, 2.00, 'Luna del planeta helado', false, 3);
INSERT INTO public.moon VALUES (4, 'ak3', 5, 0, 2.00, 'Luna del planeta helado', false, 3);
INSERT INTO public.moon VALUES (5, 'ak4', 5, 0, 2.00, 'Luna del planeta helado', false, 3);
INSERT INTO public.moon VALUES (6, 'ak5', 5, 0, 2.00, 'Luna del planeta helado', false, 3);
INSERT INTO public.moon VALUES (7, 'ak6', 5, 0, 2.00, 'Luna del planeta helado', false, 3);
INSERT INTO public.moon VALUES (8, 'ak7', 5, 0, 2.00, 'Luna del planeta helado', false, 3);
INSERT INTO public.moon VALUES (9, 'ak8', 5, 0, 2.00, 'Luna del planeta helado', false, 3);
INSERT INTO public.moon VALUES (10, 'ak9', 5, 0, 2.00, 'Luna del planeta helado', false, 3);
INSERT INTO public.moon VALUES (11, 'a109', 5, 0, 2.00, 'Luna del planeta helado', false, 3);
INSERT INTO public.moon VALUES (12, 'ak11', 5, 0, 2.00, 'Luna del planeta helado', false, 3);
INSERT INTO public.moon VALUES (13, 'ak12', 5, 0, 2.00, 'Luna del planeta helado', false, 3);
INSERT INTO public.moon VALUES (14, 'ak13', 5, 0, 2.00, 'Luna del planeta helado', false, 3);
INSERT INTO public.moon VALUES (15, 'ak14', 5, 0, 2.00, 'Luna del planeta helado', false, 3);
INSERT INTO public.moon VALUES (16, 'ak15', 5, 0, 2.00, 'Luna del planeta helado', false, 3);
INSERT INTO public.moon VALUES (17, 'ak16', 5, 0, 2.00, 'Luna del planeta helado', false, 3);
INSERT INTO public.moon VALUES (18, 'ak17', 5, 0, 2.00, 'Luna del planeta helado', false, 3);
INSERT INTO public.moon VALUES (19, 'ak18', 5, 0, 2.00, 'Luna del planeta helado', false, 3);
INSERT INTO public.moon VALUES (20, 'ak19', 5, 0, 2.00, 'Luna del planeta helado', false, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'tierra', 350, 150, 24.40, 'Planeta azul', true, 2);
INSERT INTO public.planet VALUES (3, 'pluton', 33, 15, 8.40, 'Planeta helado', false, 3);
INSERT INTO public.planet VALUES (2, 'marte', 330, 120, 20.40, 'Planeta rojo', false, 1);
INSERT INTO public.planet VALUES (4, 'saturno', 350, 150, 24.40, 'Planeta azul', true, 2);
INSERT INTO public.planet VALUES (5, 'neptuno', 350, 150, 24.40, 'Planeta azul', true, 2);
INSERT INTO public.planet VALUES (6, 'urano', 350, 150, 24.40, 'Planeta azul', true, 2);
INSERT INTO public.planet VALUES (7, 'mercurio', 350, 150, 24.40, 'Planeta azul', true, 2);
INSERT INTO public.planet VALUES (8, 'venus', 350, 150, 24.40, 'Planeta azul', true, 2);
INSERT INTO public.planet VALUES (9, 'phobos', 350, 150, 24.40, 'Planeta azul', true, 2);
INSERT INTO public.planet VALUES (10, 'arano', 350, 150, 24.40, 'Planeta azul', true, 2);
INSERT INTO public.planet VALUES (11, 'butano', 350, 150, 24.40, 'Planeta azul', true, 2);
INSERT INTO public.planet VALUES (12, 'metano', 350, 150, 24.40, 'Planeta azul', true, 2);
INSERT INTO public.planet VALUES (13, 'propano', 350, 150, 24.40, 'Planeta azul', true, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sol', 4700, 3700, 60.20, 'El sol de la tierra', true, 3);
INSERT INTO public.star VALUES (2, 'arturo', 8000, 6700, 62.20, 'El sol de la pitireto', true, 2);
INSERT INTO public.star VALUES (3, 'Polix', 850, 500, 75.20, 'El sol de algun planeta', true, 1);
INSERT INTO public.star VALUES (4, 'albedo', 4700, 3700, 60.20, 'El sol de la tierra', true, 3);
INSERT INTO public.star VALUES (5, 'ains', 4700, 3700, 60.20, 'El sol de la tierra', true, 3);
INSERT INTO public.star VALUES (6, 'gold', 4700, 3700, 60.20, 'El sol de la tierra', true, 3);


--
-- Name: aux_aux_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.aux_aux_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: aux aux_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aux
    ADD CONSTRAINT aux_name_key UNIQUE (name);


--
-- Name: aux aux_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aux
    ADD CONSTRAINT aux_pkey PRIMARY KEY (aux_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


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
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: aux aux_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aux
    ADD CONSTRAINT aux_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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

