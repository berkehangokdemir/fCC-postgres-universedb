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
    galaxy_id integer NOT NULL,
    movement_speed integer,
    description text,
    name character varying(250) NOT NULL,
    color character varying(100)
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
    name character varying(250) NOT NULL,
    lunar_eclipse character varying(100),
    life_indicator boolean NOT NULL,
    planet_id integer NOT NULL
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
    name character varying(250) NOT NULL,
    population numeric,
    extinction boolean DEFAULT false NOT NULL,
    star_id integer NOT NULL
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
-- Name: satellite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satellite (
    satellite_id integer NOT NULL,
    active boolean NOT NULL,
    country character varying(250) NOT NULL,
    country_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(250) NOT NULL
);


ALTER TABLE public.satellite OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satellite_satellite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satellite_satellite_id_seq OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satellite_satellite_id_seq OWNED BY public.satellite.satellite_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    radius integer NOT NULL,
    color character varying(255),
    name character varying(200) NOT NULL,
    galaxy_id integer
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: satellite satellite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite ALTER COLUMN satellite_id SET DEFAULT nextval('public.satellite_satellite_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 249, 'Gets its name from the area of the sky', 'Andromeda', NULL);
INSERT INTO public.galaxy VALUES (2, 541, 'Appearance is similar to an insects antennae', 'Antennae', NULL);
INSERT INTO public.galaxy VALUES (3, 88, 'It appears to rotate backwards', 'Backward', NULL);
INSERT INTO public.galaxy VALUES (4, 395, 'It has a spectacular dark band of absorbing', 'Black Eye', NULL);
INSERT INTO public.galaxy VALUES (5, 595, 'Named for Johann Elert Bode', 'Bode', NULL);
INSERT INTO public.galaxy VALUES (6, 480, 'Looks are similar to a butterfly', 'Butterfly', NULL);
INSERT INTO public.galaxy VALUES (7, 363, 'Visual appearance similar to spoked cartwheel', 'Cartwheel', NULL);
INSERT INTO public.galaxy VALUES (8, 415, 'Appears similar in shape to a cigar', 'Cigar', NULL);
INSERT INTO public.galaxy VALUES (9, 482, 'Named after the constellation', 'Circinus', NULL);
INSERT INTO public.galaxy VALUES (10, 731, 'Named after its unusual appearance', 'Comet', NULL);
INSERT INTO public.galaxy VALUES (11, 243, 'Named after a condor', 'Condor', NULL);
INSERT INTO public.galaxy VALUES (12, 123, 'Resemblance of Eye of Sauron in LOTR', 'Eyee of Sauron', NULL);
INSERT INTO public.galaxy VALUES (13, 233, 'Bright and spotty appearance', 'Fireworks', NULL);
INSERT INTO public.galaxy VALUES (14, 243, 'Hockey stick resemblance', 'Hockey Stick', NULL);
INSERT INTO public.galaxy VALUES (15, 653, 'Named after Art Hoag', 'Hoags Object', NULL);
INSERT INTO public.galaxy VALUES (16, 623, 'Discovered by David Malin', 'Malin 1', NULL);
INSERT INTO public.galaxy VALUES (17, 253, 'Appearance is similar to a mouse', 'Mice', NULL);
INSERT INTO public.galaxy VALUES (18, 867, 'A band of light', 'Milky Way', NULL);
INSERT INTO public.galaxy VALUES (19, 767, 'Named due to its slender appearance', 'Needle', NULL);
INSERT INTO public.galaxy VALUES (20, 567, 'Similar in appearance to a pinwheel', 'Pinwheel', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon 1', 'Once', true, 1);
INSERT INTO public.moon VALUES (2, 'moon 2', 'Twice', false, 2);
INSERT INTO public.moon VALUES (3, 'moon 3', 'Never', false, 3);
INSERT INTO public.moon VALUES (4, 'moon 4', 'Five', false, 4);
INSERT INTO public.moon VALUES (5, 'moon 5', 'Four', false, 5);
INSERT INTO public.moon VALUES (6, 'moon 6', 'Ninety', false, 6);
INSERT INTO public.moon VALUES (7, 'moon 7', 'Eight', false, 7);
INSERT INTO public.moon VALUES (8, 'moon 8', 'Nine', false, 8);
INSERT INTO public.moon VALUES (9, 'moon 9', 'Ten', false, 9);
INSERT INTO public.moon VALUES (10, 'moon 10', 'Seventy', false, 10);
INSERT INTO public.moon VALUES (11, 'moon 11', 'aaaa', false, 11);
INSERT INTO public.moon VALUES (12, 'moon 12', 'abaa', false, 12);
INSERT INTO public.moon VALUES (13, 'moon 13', 'acaa', false, 13);
INSERT INTO public.moon VALUES (14, 'moon 14', 'adaa', false, 14);
INSERT INTO public.moon VALUES (15, 'moon 15', 'aaba', false, 15);
INSERT INTO public.moon VALUES (16, 'moon 16', 'aaca', false, 16);
INSERT INTO public.moon VALUES (17, 'moon 17', 'aada', false, 17);
INSERT INTO public.moon VALUES (18, 'moon 18', 'aaab', false, 18);
INSERT INTO public.moon VALUES (19, 'moon 19', 'aaac', false, 19);
INSERT INTO public.moon VALUES (20, 'moon 20', 'aaad', false, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', 9876543, false, 1);
INSERT INTO public.planet VALUES (2, 'planet2', 98742543, false, 2);
INSERT INTO public.planet VALUES (3, 'planet3', 87242543, false, 3);
INSERT INTO public.planet VALUES (4, 'planet4', 24532543, false, 4);
INSERT INTO public.planet VALUES (5, 'planet5', 32345543, false, 5);
INSERT INTO public.planet VALUES (6, 'planet6', 21345543, false, 6);
INSERT INTO public.planet VALUES (7, 'planet7', 19345543, false, 7);
INSERT INTO public.planet VALUES (8, 'planet8', 91345543, false, 8);
INSERT INTO public.planet VALUES (9, 'planet9', 12345543, false, 9);
INSERT INTO public.planet VALUES (10, 'planet10', 24345543, false, 10);
INSERT INTO public.planet VALUES (11, 'planet11', 3463463, false, 11);
INSERT INTO public.planet VALUES (12, 'planet12', 3463443, false, 12);
INSERT INTO public.planet VALUES (13, 'planet13', 3663443, false, 13);
INSERT INTO public.planet VALUES (14, 'planet14', 6663443, false, 14);
INSERT INTO public.planet VALUES (15, 'planet15', 6663442, false, 15);
INSERT INTO public.planet VALUES (16, 'planet16', 6663842, false, 16);
INSERT INTO public.planet VALUES (17, 'planet17', 8663842, false, 17);
INSERT INTO public.planet VALUES (18, 'planet18', 9663842, false, 18);
INSERT INTO public.planet VALUES (19, 'planet19', 1663842, false, 19);
INSERT INTO public.planet VALUES (20, 'planet20', 8663842, false, 20);


--
-- Data for Name: satellite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satellite VALUES (1, true, 'Turkey', 1, 1, 'Aselsan');
INSERT INTO public.satellite VALUES (2, true, 'USA', 2, 2, 'Nasa');
INSERT INTO public.satellite VALUES (3, true, 'Russia', 3, 3, 'Sputnik');
INSERT INTO public.satellite VALUES (4, true, 'France', 4, 4, 'Croissant');
INSERT INTO public.satellite VALUES (5, true, 'Switzerland', 5, 5, 'Chocolate');
INSERT INTO public.satellite VALUES (6, true, 'Belgium', 6, 6, 'Waffle');
INSERT INTO public.satellite VALUES (7, true, 'Japan', 7, 7, 'Kobe');
INSERT INTO public.satellite VALUES (8, true, 'Germany', 8, 8, 'Bagel');
INSERT INTO public.satellite VALUES (9, true, 'Italy', 9, 9, 'Pizza');
INSERT INTO public.satellite VALUES (10, true, 'Mexico', 10, 10, 'Taco');
INSERT INTO public.satellite VALUES (11, true, 'China', 11, 11, 'Sushi');
INSERT INTO public.satellite VALUES (12, true, 'Venezuela', 12, 12, 'Lat');
INSERT INTO public.satellite VALUES (13, true, 'Colombia', 13, 13, 'a1');
INSERT INTO public.satellite VALUES (14, true, 'Brazil', 14, 14, 'Rio');
INSERT INTO public.satellite VALUES (15, true, 'Argentina', 15, 15, 'Maradona');
INSERT INTO public.satellite VALUES (16, true, 'Chile', 16, 16, 'Sanchez');
INSERT INTO public.satellite VALUES (17, true, 'Portugal', 17, 17, 'CR7');
INSERT INTO public.satellite VALUES (18, true, 'Spain', 18, 18, 'Matador');
INSERT INTO public.satellite VALUES (19, true, 'Iran', 19, 19, 'Persian');
INSERT INTO public.satellite VALUES (20, true, 'England', 20, 20, 'Lion');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 745, 'blue', 'Andro', 1);
INSERT INTO public.star VALUES (2, 581, 'green', 'Anten', 2);
INSERT INTO public.star VALUES (3, 58, 'yellow', 'Back', 3);
INSERT INTO public.star VALUES (4, 436, 'black', 'Black', 4);
INSERT INTO public.star VALUES (5, 366, 'white', 'Bo', 5);
INSERT INTO public.star VALUES (6, 982, 'gray', 'Butter', 6);
INSERT INTO public.star VALUES (7, 152, 'red', 'Cart', 7);
INSERT INTO public.star VALUES (8, 434, 'lightgrey', 'Cigar', 8);
INSERT INTO public.star VALUES (9, 587, 'purple', 'Circinus', 9);
INSERT INTO public.star VALUES (10, 342, 'orange', 'Comt', 10);
INSERT INTO public.star VALUES (11, 345, 'blue', 'star11', 11);
INSERT INTO public.star VALUES (12, 315, 'green', 'star12', 12);
INSERT INTO public.star VALUES (13, 313, 'yellow', 'star13', 13);
INSERT INTO public.star VALUES (14, 312, 'black', 'star14', 14);
INSERT INTO public.star VALUES (15, 311, 'white', 'star15', 15);
INSERT INTO public.star VALUES (16, 310, 'gray', 'star16', 16);
INSERT INTO public.star VALUES (17, 309, 'lightgray', 'star17', 17);
INSERT INTO public.star VALUES (18, 308, 'red', 'star18', 18);
INSERT INTO public.star VALUES (19, 307, 'purple', 'star19', 19);
INSERT INTO public.star VALUES (20, 306, 'orange', 'star20', 20);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satellite_satellite_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_key UNIQUE (description);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_lunar_eclipse_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_lunar_eclipse_key UNIQUE (lunar_eclipse);


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
-- Name: satellite satellite_country_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_country_key UNIQUE (country);


--
-- Name: satellite satellite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_pkey PRIMARY KEY (satellite_id);


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
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: satellite fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

