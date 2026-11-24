--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    name character varying(20) NOT NULL,
    age_millins_year numeric(10,2),
    galaxy_description text,
    black_holes integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    moon_size integer NOT NULL,
    is_unique boolean,
    distance_of_planet integer NOT NULL,
    name character varying(20)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info (
    name character varying(20) NOT NULL,
    hm_moons integer NOT NULL,
    have_water boolean,
    more_info_id integer NOT NULL
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    have_life boolean,
    name character varying(20),
    is_spherical boolean,
    age integer,
    cod_planet integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(20),
    age_million_year integer NOT NULL,
    star_size integer NOT NULL,
    star_type character varying(20),
    star_id integer NOT NULL,
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

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Bialactea', 13600.00, 'Esta galaxia ha vivido durante mucho mucho tiempo al igual que las demas', 1);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10000.00, 'esta galaxia de verdad que es vieja tas claro', 1);
INSERT INTO public.galaxy VALUES (3, 'GN-z11', 400.00, 'esta galaxia no es tan antigua pero AUN ASI ES VIEJA', 1);
INSERT INTO public.galaxy VALUES (4, 'GLASS-z13', 300.00, 'esta para q estes claro fue el papa de los papas', 0);
INSERT INTO public.galaxy VALUES (5, 'JADE-JS-z14-0', 290.00, 'mrk esta bicha de verdad q le decia cuando dormir a los papas de las otras galaxias', 0);
INSERT INTO public.galaxy VALUES (6, 'no_encontrada', 0.00, 'para estar claros nisquiera se que poner aca', 0);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 3474, true, 384400, 'Luna');
INSERT INTO public.moon VALUES (2, 2, 1200, false, 150000, 'Alter_Luna_1');
INSERT INTO public.moon VALUES (3, 3, 850, false, 95000, 'Mid_Luna_1');
INSERT INTO public.moon VALUES (4, 4, 22, false, 9377, 'Fobos');
INSERT INTO public.moon VALUES (5, 4, 12, false, 23460, 'Deimos');
INSERT INTO public.moon VALUES (6, 5, 1500, false, 210000, 'Venus_Sub_1');
INSERT INTO public.moon VALUES (7, 6, 980, false, 180000, 'Marte_Sub_1');
INSERT INTO public.moon VALUES (8, 7, 3643, false, 421700, 'Io');
INSERT INTO public.moon VALUES (9, 7, 3121, false, 670900, 'Europa');
INSERT INTO public.moon VALUES (10, 7, 5268, false, 1070400, 'Ganimedes');
INSERT INTO public.moon VALUES (11, 7, 4820, false, 1882700, 'Calisto');
INSERT INTO public.moon VALUES (12, 8, 5149, false, 1221870, 'Titan');
INSERT INTO public.moon VALUES (13, 8, 504, false, 237948, 'Encelado');
INSERT INTO public.moon VALUES (14, 8, 1527, false, 3560820, 'Japeto');
INSERT INTO public.moon VALUES (15, 9, 1577, false, 435910, 'Titania');
INSERT INTO public.moon VALUES (16, 9, 1522, false, 583520, 'Oberon');
INSERT INTO public.moon VALUES (17, 10, 2706, false, 354759, 'Triton');
INSERT INTO public.moon VALUES (18, 10, 340, false, 117647, 'Nereida');
INSERT INTO public.moon VALUES (19, 11, 1800, false, 310000, 'Kepler_Moon_1');
INSERT INTO public.moon VALUES (20, 12, 2100, false, 420000, 'Proxima_Moon_1');


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info VALUES ('Tierra', 1, true, 1);
INSERT INTO public.more_info VALUES ('Marte', 2, true, 2);
INSERT INTO public.more_info VALUES ('Jupiter', 95, false, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, true, 'tierra', true, 64, 1);
INSERT INTO public.planet VALUES (2, 2, false, 'alter_earth', true, 10000, 374);
INSERT INTO public.planet VALUES (3, 3, true, 'mid_earth', false, 30000, 2245);
INSERT INTO public.planet VALUES (4, 1, false, 'mercurio', true, 4500, 101);
INSERT INTO public.planet VALUES (5, 1, false, 'venus', true, 4500, 102);
INSERT INTO public.planet VALUES (6, 1, false, 'marte', true, 4600, 103);
INSERT INTO public.planet VALUES (7, 2, false, 'jupiter', true, 4600, 104);
INSERT INTO public.planet VALUES (8, 2, false, 'saturno', true, 4500, 105);
INSERT INTO public.planet VALUES (9, 3, false, 'urano', true, 4500, 106);
INSERT INTO public.planet VALUES (10, 3, false, 'neptuno', true, 4500, 107);
INSERT INTO public.planet VALUES (11, 4, true, 'kepler_22b', true, 6000, 108);
INSERT INTO public.planet VALUES (12, 5, false, 'proxima_b', true, 4850, 109);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 1000, 49, 'enana amarilla', 1, 1);
INSERT INTO public.star VALUES ('kingSun', 13000, 23, 'enana blanca', 2, 2);
INSERT INTO public.star VALUES ('senosamas_planet', 54000, 1, 'planet central', 3, 3);
INSERT INTO public.star VALUES ('Gargantua', 19000, 34000, 'BIGDRAGON', 4, 4);
INSERT INTO public.star VALUES ('Shohei', 12000, 10000, 'KING', 5, 5);
INSERT INTO public.star VALUES ('QLQ ESTE PANA VL', 10090, 45, 'una vaina arrcha', 6, 6);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: more_info more_info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_name_key UNIQUE (name);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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

