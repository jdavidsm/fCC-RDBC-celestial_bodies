--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: celestial_body; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.celestial_body (
    celestial_body_id integer NOT NULL,
    celestial_body_type_id integer,
    star_id integer,
    name character varying(20) NOT NULL,
    average_temperature_in_k integer,
    discovered integer,
    description text,
    last_update date NOT NULL
);


ALTER TABLE public.celestial_body OWNER TO freecodecamp;

--
-- Name: celestial_body_celestial_body_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.celestial_body_celestial_body_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.celestial_body_celestial_body_id_seq OWNER TO freecodecamp;

--
-- Name: celestial_body_celestial_body_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.celestial_body_celestial_body_id_seq OWNED BY public.celestial_body.celestial_body_id;


--
-- Name: celestial_body_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.celestial_body_type (
    celestial_body_type_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    last_update date NOT NULL
);


ALTER TABLE public.celestial_body_type OWNER TO freecodecamp;

--
-- Name: celestial_body_type_celestial_body_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.celestial_body_type_celestial_body_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.celestial_body_type_celestial_body_type_id_seq OWNER TO freecodecamp;

--
-- Name: celestial_body_type_celestial_body_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.celestial_body_type_celestial_body_type_id_seq OWNED BY public.celestial_body_type.celestial_body_type_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    galaxy_classification_id integer,
    name character varying(50) NOT NULL,
    average_diameter_in_ly integer,
    distance_from_earth numeric(15,0),
    distance_from_earth_unit character varying(15),
    discovered integer,
    description text,
    last_update date NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_classification; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_classification (
    galaxy_classification_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    last_update date NOT NULL
);


ALTER TABLE public.galaxy_classification OWNER TO freecodecamp;

--
-- Name: galaxy_classification_galaxy_classification_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_classification_galaxy_classification_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_classification_galaxy_classification_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_classification_galaxy_classification_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_classification_galaxy_classification_id_seq OWNED BY public.galaxy_classification.galaxy_classification_id;


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
    planet_id integer,
    name character varying(20) NOT NULL,
    average_temperature_in_k integer,
    is_spherical boolean,
    discovered integer,
    description text,
    last_update date NOT NULL
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
-- Name: nebula; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.nebula (
    nebula_id integer NOT NULL,
    nebula_type_id integer,
    galaxy_id integer,
    name character varying(50) NOT NULL,
    average_temperature_in_k integer,
    distance_from_earth numeric(15,0),
    distance_from_earth_unit character varying(15),
    discovered integer,
    description text,
    last_update date NOT NULL
);


ALTER TABLE public.nebula OWNER TO freecodecamp;

--
-- Name: nebula_nebula_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.nebula_nebula_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nebula_nebula_id_seq OWNER TO freecodecamp;

--
-- Name: nebula_nebula_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.nebula_nebula_id_seq OWNED BY public.nebula.nebula_id;


--
-- Name: nebula_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.nebula_type (
    nebula_type_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    last_update date NOT NULL
);


ALTER TABLE public.nebula_type OWNER TO freecodecamp;

--
-- Name: nebula_type_nebula_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.nebula_type_nebula_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nebula_type_nebula_type_id_seq OWNER TO freecodecamp;

--
-- Name: nebula_type_nebula_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.nebula_type_nebula_type_id_seq OWNED BY public.nebula_type.nebula_type_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    star_id integer,
    name character varying(50) NOT NULL,
    number_of_moons integer,
    average_temperature_in_k integer,
    has_rings boolean,
    distance_from_earth numeric(15,0),
    distance_from_earth_unit character varying(15),
    discovered integer,
    description text,
    last_update date NOT NULL
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
    star_class_id integer,
    galaxy_id integer,
    name character varying(20) NOT NULL,
    average_temperature_in_k integer,
    distance_from_earth numeric(15,0),
    distance_from_earth_unit character varying(15),
    discovered integer,
    description text,
    last_update date NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_class; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star_class (
    star_class_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    last_update date NOT NULL
);


ALTER TABLE public.star_class OWNER TO freecodecamp;

--
-- Name: star_class_star_class_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_class_star_class_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_class_star_class_id_seq OWNER TO freecodecamp;

--
-- Name: star_class_star_class_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_class_star_class_id_seq OWNED BY public.star_class.star_class_id;


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
-- Name: celestial_body celestial_body_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_body ALTER COLUMN celestial_body_id SET DEFAULT nextval('public.celestial_body_celestial_body_id_seq'::regclass);


--
-- Name: celestial_body_type celestial_body_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_body_type ALTER COLUMN celestial_body_type_id SET DEFAULT nextval('public.celestial_body_type_celestial_body_type_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_classification galaxy_classification_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_classification ALTER COLUMN galaxy_classification_id SET DEFAULT nextval('public.galaxy_classification_galaxy_classification_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: nebula nebula_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula ALTER COLUMN nebula_id SET DEFAULT nextval('public.nebula_nebula_id_seq'::regclass);


--
-- Name: nebula_type nebula_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula_type ALTER COLUMN nebula_type_id SET DEFAULT nextval('public.nebula_type_nebula_type_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star_class star_class_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_class ALTER COLUMN star_class_id SET DEFAULT nextval('public.star_class_star_class_id_seq'::regclass);


--
-- Data for Name: celestial_body; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.celestial_body VALUES (1, 1, 1, 'Pluto', 23, 1930, 'It orbits the Sun from a distance of about 39.5 AU and takes about 248 Earth years to complete one orbit. Pluto has five moons: Charon, Hydra, Nix, Styx, and Kerberos', '2024-02-18');
INSERT INTO public.celestial_body VALUES (2, 1, 1, 'Ceres', NULL, 1801, 'Ceres is about 20 times smaller than Pluto and about a thousand kilometers in diameter. It orbits the Sun from a distance of about 2.77 AU and takes about 4.6 years to complete one orbit.', '2024-02-18');
INSERT INTO public.celestial_body VALUES (3, 1, 1, 'Eris', 102, 2003, 'Eris is about the same size as Pluto but is three times farther from the Sun. It orbits the Sun from a distance of about 97 AU and takes about 557 Earth years to complete one orbit.', '2024-02-18');
INSERT INTO public.celestial_body VALUES (4, 1, 1, 'Makemake', 30, 2005, 'It orbits the Sun from a distance of about 46 astronomical units (AU) and takes about 305 Earth years to complete one orbit. Makemake is smaller than Eris and Pluto, with a radius of about 400 km. Makemake has no known moons.', '2024-02-18');
INSERT INTO public.celestial_body VALUES (5, 1, 1, 'Haumea', 110, 2003, 'Haumea is smaller than Eris and Pluto, with a radius of about 1,400 km. It orbits the Sun from a distance of about 43 AU and takes about 283 Earth years to complete one orbit. Haumea has two moons, Hi`aka and Namaka.', '2024-02-18');
INSERT INTO public.celestial_body VALUES (6, 3, 1, 'Halley`s Comet', NULL, -240, 'The comet was discovered in 240 BC and has been observed throughout history, with its most recent appearance in 1986. Halley`s Comet is a short-period comet that orbits the Sun every 2.37 million years. It has been observed throughout history and was named after Edmond Halley, who first predicted its return in 1705. Halley`s Comet is known for its bright and spectacular appearance when it approaches the Sun.', '2024-02-18');
INSERT INTO public.celestial_body VALUES (7, 3, 1, 'CometHale-Bopp', NULL, 1995, 'Hale-Bopp is a long-period comet with an orbital period of about 2,533 years. It was visible to the naked eye for a record-breaking 18 months and is named after the astronomers Alan Hale and Thomas Bopp, who discovered it. Hale-Bopp is not expected to return to the inner Solar System until the year 4385.', '2024-02-18');
INSERT INTO public.celestial_body VALUES (8, 2, 1, '253 Mathilde', 174, 1885, '253 Mathilde is an asteroid in the intermediate asteroid belt, approximately 50 kilometers in diameter. It is a primitive C-type asteroid, which means the surface has a high proportion of carbon, giving it a dark surface that reflects only 4% of the light that falls on it. Mathilde was visited by the NEAR Shoemaker spacecraft during June 1997, on its way to asteroid 433 Eros. During the flyby, the spacecraft imaged a hemisphere of the asteroid, revealing many large craters that had gouged out depressions in the surface. It was the first carbonaceous asteroid to be explored and, until 21 Lutetia was visited in 2010, it was the largest asteroid to be visited by a spacecraft.', '2024-02-18');
INSERT INTO public.celestial_body VALUES (9, 2, 1, '21 Lutetia', 245, 1852, '21 Lutetia is a large main-belt asteroid. Lutetia is classified among the enigmatic M-type asteroids, most of which were historically believed to be nearly purely metallic. The surface temperature reaches a maximum value of 245 kelvin and correlates well with topographic features. The thermal inertia is in the range. Lutetia was visited by the Rosetta spacecraft in 2010, providing detailed information about its surface composition and temperature.', '2024-02-18');
INSERT INTO public.celestial_body VALUES (10, 2, 1, '433 Eros', NULL, 1898, '433 Eros is an S-type asteroid and is one of the largest near-Earth asteroids. It was the first asteroid to be orbited by an Earth spacecraft. The NEAR Shoemaker spacecraft orbited Eros in 2000 and provided extensive data about its surface and composition. Eros is a highly elongated and complexly shaped asteroid, with a mean diameter of approximately 16.8 kilometers.', '2024-02-18');


--
-- Data for Name: celestial_body_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.celestial_body_type VALUES (1, 'Dwarf planet', 'Celestial bodies that orbit the Sun and are spherical in shape but have not cleared their orbits of other debris. Examples of dwarf planets include Pluto, Ceres, Eris, Makemake, and Haumea.', '2024-02-14');
INSERT INTO public.celestial_body_type VALUES (2, 'Asteroid', 'Small, rocky objects that orbit the Sun, primarily located in the asteroid belt between Mars and Jupiter. They are composed of rock and metal and range in size from a few meters to several hundred kilometers in diameter.', '2024-02-14');
INSERT INTO public.celestial_body_type VALUES (3, 'Comet', 'Small, icy bodies that orbit the Sun and develop a coma (a fuzzy atmosphere) and a tail when they approach the Sun. They are believed to be remnants from the early Solar System and are composed of ice, dust, and rock. Comets can have highly elliptical orbits that take them far from the Sun and then back again. Examples of comets include Halley`s Comet and Comet Hale-Bopp', '2024-02-14');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 3, 'Milky Way', 100000, NULL, NULL, 1610, 'The Milky Way is a large barred spiral galaxy, with a relatively small bar compared to most galaxies of a similar size. It is about 13.6 billion years old and is one of the two largest galaxies in the Local Group. The Milky Way is home to about 200 billion stars and is located roughly halfway to the edge of the Milky Way, at a distance of about 26,000 light years from the center. The Milky Way is currently hurtling towards the Andromeda Galaxy at 250,000mph (400,000 km/h). The Milky Way is thought to contain over 300 million habitable exoplanets. The Milky Way has several satellite galaxies and is part of the Local Group of galaxies.', '2024-02-18');
INSERT INTO public.galaxy VALUES (2, 4, 'Large Magellanic Cloud (LMC)', 14000, 163000, 'light-years', NULL, 'The Large Magellanic Cloud is a satellite galaxy of the Milky Way and one of its closest neighbors. It is irregular in shape and contains regions of active star formation, as well as numerous star clusters, nebulae, and supernova remnants. The LMC is easily visible to the naked eye from the southern hemisphere and is an important target for astronomers studying stellar evolution and galaxy dynamics.', '2024-02-18');
INSERT INTO public.galaxy VALUES (3, 3, 'Triangulum Galaxy (M33)', 60000, 2700000, 'light-years', NULL, 'The Triangulum Galaxy is a spiral galaxy located in the constellation Triangulum and is a member of the Local Group of galaxies, which also includes the Milky Way and the Andromeda Galaxy (M31). M33 is the third-largest galaxy in the Local Group after the Milky Way and Andromeda. It contains a relatively low number of stars compared to larger galaxies but is rich in nebulae and star-forming regions. M33 is often considered a "sibling" galaxy to the Milky Way and Andromeda and provides valuable insights into the dynamics and evolution of spiral galaxies.', '2024-02-18');
INSERT INTO public.galaxy VALUES (4, 4, 'GN-z11', NULL, 13400000000, 'light-years', 2016, 'GN-z11 is currently the most distant known galaxy, located approximately 13.4 billion light-years away from Earth. It was discovered using data from the Hubble Space Telescope. GN-z11 provides valuable insights into the early universe, as it formed only about 400 million years after the Big Bang. Its extreme distance and ancient age make it a crucial target for studying the conditions and processes of galaxy formation in the early universe.', '2024-02-18');
INSERT INTO public.galaxy VALUES (5, 4, 'MACS0647-JD', NULL, 13300000000, 'light-years', 2012, 'MACS0647-JD is one of the most distant galaxies known, located approximately 13.3 billion light-years away from Earth in the constellation Serpens. It was discovered using data from the Hubble Space Telescope. Like GN-z11, MACS0647-JD provides valuable insights into the early universe and the processes of galaxy formation. Its extreme distance places it among the earliest galaxies to form in the universe.', '2024-02-18');
INSERT INTO public.galaxy VALUES (6, 1, 'M87', 120000, 54, 'light-years', NULL, 'M87 is one of the largest and most massive galaxies in the nearby universe. It is located in the Virgo Cluster and is notable for its prominent jet of relativistic plasma extending from the vicinity of its central supermassive black hole. This galaxy`s enormous mass and its active galactic nucleus make it a fascinating subject for astrophysical research.', '2024-02-18');
INSERT INTO public.galaxy VALUES (7, 2, 'M85', 125000, 60000000, 'light-years', 1781, 'M85 is a lenticular galaxy located in the constellation Coma Berenices. It is part of the Virgo Cluster of galaxies. While it lacks the prominent spiral arms seen in spiral galaxies, it does have a discernible bulge at its center, akin to elliptical galaxies. M85 is relatively isolated within the cluster and has a complex structure, likely due to interactions with other galaxies in the cluster.', '2024-02-18');


--
-- Data for Name: galaxy_classification; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_classification VALUES (1, 'Elliptical', 'Smooth, featureless light distributions with elliptical shapes.', '2024-02-14');
INSERT INTO public.galaxy_classification VALUES (2, 'Lenticular', 'Lens-shaped galaxies with a bright central bulge surrounded by an extended disk-like structure. Some lenticular galaxies have a bar, similar to spiral galaxies.', '2024-02-14');
INSERT INTO public.galaxy_classification VALUES (3, 'Spiral', 'Galaxies with a flattened disk containing stars that form a spiral structure, usually with two arms. Spiral galaxies can be further classified as barred (SB) or unbarred (S).', '2024-02-14');
INSERT INTO public.galaxy_classification VALUES (4, 'Irregular', 'Galaxies with no regular structure, often distorted due to gravitational attraction from neighboring galaxies.', '2024-02-14');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 3, 'Moon', NULL, true, NULL, 'Earth`s Moon is the only natural satellite of Earth and is the fifth largest moon in the Solar System. It is known for its prominent impact craters, dark maria (plains formed by ancient volcanic activity), and bright highlands. The Moon plays a significant role in Earth`s tides and has been visited by astronauts during the Apollo missions.', '2024-02-18');
INSERT INTO public.moon VALUES (2, 4, 'Phobos', NULL, false, 1877, 'Phobos, meaning "fear" in Greek, is the larger and more irregular of the two, with a diameter of about 22 kilometers. It orbits Mars at a very close distance, which is causing it to be drawn closer to the planet, potentially leading to its eventual disruption or breakup.', '2024-02-18');
INSERT INTO public.moon VALUES (3, 4, 'Deimos', NULL, false, 1877, 'Deimos, meaning "terror" in Greek, is the smaller and more spherical moon, with a diameter of about 12 kilometers. It orbits Mars at a greater distance and is not expected to be affected by tidal forces in the same way as Phobos.', '2024-02-18');
INSERT INTO public.moon VALUES (4, 5, 'Io', NULL, true, 1610, 'Known for its intense volcanic activity, Io is the most volcanically active body in the Solar System, with hundreds of active volcanoes.', '2024-02-18');
INSERT INTO public.moon VALUES (5, 5, 'Europa', NULL, true, 1610, 'Europa has a smooth surface covered in a layer of ice, beneath which lies a subsurface ocean of liquid water, making it a prime target in the search for extraterrestrial life.', '2024-02-18');
INSERT INTO public.moon VALUES (6, 5, 'Ganymede', NULL, true, 1610, 'The largest moon in the Solar System, Ganymede has its own magnetic field and is the only moon known to have its own internally generated magnetic field.', '2024-02-18');
INSERT INTO public.moon VALUES (7, 5, 'Callisto', NULL, true, 1610, 'Callisto is heavily cratered and is the most heavily cratered object in the Solar System. It has a relatively thin atmosphere composed of carbon dioxide.', '2024-02-18');
INSERT INTO public.moon VALUES (8, 6, 'Titan', 94, true, 1655, 'Titan is the largest moon of Saturn and is the only moon in the Solar System with a dense atmosphere. It has lakes and rivers of liquid methane and ethane, making it one of the most Earth-like bodies in the Solar System and a target for astrobiological studies.', '2024-02-18');
INSERT INTO public.moon VALUES (9, 7, 'Titania', 70, true, 1787, 'Titania, Uranus` largest moon and the eighth largest in the Solar System, was discovered by William Herschel in 1787 and is named after the queen of the fairies in Shakespeare`s "A Midsummer Night`s Dream." Composed primarily of water ice with rocky material, Titania`s surface bears witness to a tumultuous history marked by heavy cratering and evidence of tectonic activity such as valleys and scarps. Likely shaped by tidal forces from Uranus, Titania showcases a dynamic geological past, possibly featuring episodes of internal heating and cryovolcanism. Its diverse surface features provide valuable insights into the complex processes at work in the outer reaches of our Solar System.', '2024-02-18');
INSERT INTO public.moon VALUES (10, 7, 'Oberon', 70, true, 1787, 'Oberon, the second largest moon of Uranus and discovered along with Titania by William Herschel in 1787, is named after the "King of the Fairies" in Shakespeare`s "A Midsummer Night`s Dream." This moon, primarily composed of water ice and rocky material, exhibits a heavily cratered surface, indicative of a long history of impacts. While lacking significant tectonic features compared to Titania, Oberon`s terrain suggests past geological activity and resurfacing events. It likely experienced tidal forces from Uranus, contributing to its geological evolution. As one of Uranus` five major moons, Oberon provides valuable insights into the dynamic processes shaping the moons of gas giants in the outer Solar System.', '2024-02-18');
INSERT INTO public.moon VALUES (11, 8, 'Triton', 38, true, 1846, 'Triton is the largest moon of Neptune and is the only large moon in the Solar System with a retrograde orbit, meaning it orbits in the opposite direction to its planet`s rotation. Triton has a thin atmosphere primarily of nitrogen and is geologically active, with features such as cryovolcanoes and icy plains.', '2024-02-18');
INSERT INTO public.moon VALUES (12, 6, 'Mimas', 64, true, 1789, 'Mimas is one of the innermost moons of Saturn and is known for its large impact crater, Herschel, which gives it a resemblance to the Death Star from Star Wars.', '2024-02-18');
INSERT INTO public.moon VALUES (13, 6, 'Enceladus', 75, true, 1789, 'Enceladus is a small, icy moon with a global subsurface ocean beneath its icy crust. It is known for its geysers of water vapor and icy particles erupting from its south polar region, indicating active cryovolcanism.', '2024-02-18');
INSERT INTO public.moon VALUES (14, 6, 'Tethys', 86, true, 1684, 'Tethys is a mid-sized moon of Saturn with a heavily cratered surface. It features a large impact basin called Odysseus and a massive canyon system known as Ithaca Chasma.', '2024-02-18');
INSERT INTO public.moon VALUES (15, 6, 'Dione', 87, true, 1684, 'Dione is a moon of Saturn with a heavily cratered surface and extensive networks of fractures. It is thought to have a subsurface ocean beneath its icy crust, similar to Enceladus.', '2024-02-18');
INSERT INTO public.moon VALUES (16, 6, 'Rhea', 73, true, 1672, 'Rhea is Saturn`s second-largest moon and has a heavily cratered surface with several bright, wispy streaks believed to be caused by material ejected from impacts on other moons.', '2024-02-18');
INSERT INTO public.moon VALUES (17, 6, 'Hyperion', 84, false, 1848, 'Hyperion is a highly irregularly shaped moon with a porous, sponge-like appearance. It is known for its chaotic rotation and unpredictable orientation in space.', '2024-02-18');
INSERT INTO public.moon VALUES (18, 6, 'Iapetus', 130, true, 1671, 'Iapetus has a two-toned appearance, with one hemisphere significantly darker than the other. It features a large equatorial ridge, which gives it a walnut-like shape.', '2024-02-18');
INSERT INTO public.moon VALUES (19, 6, 'Phoebe', 75, false, 1899, 'Phoebe is a retrograde irregular moon of Saturn, meaning it orbits in the opposite direction of the planet`s rotation. It is thought to be a captured object from the Kuiper Belt and is heavily cratered.', '2024-02-18');
INSERT INTO public.moon VALUES (20, 6, 'Janus', 78, true, 1966, 'Janus is one of Saturn`s smaller inner moons and is part of a co-orbital pair with the moon Epimetheus. They periodically exchange orbits, coming within a few thousand kilometers of each other.', '2024-02-18');
INSERT INTO public.moon VALUES (21, 7, 'Ariel', 60, true, 1851, 'Ariel is one of the five major moons of Uranus and is characterized by its relatively young surface, featuring extensive networks of valleys, ridges, and scarps. It is thought to have experienced geological activity in the past.', '2024-02-18');
INSERT INTO public.moon VALUES (22, 7, 'Umbriel', 60, true, 1851, 'Umbriel is the third-largest moon of Uranus and has a heavily cratered surface, indicating little geological activity. It features a prominent crater named Wunda, as well as dark patches of material known as "Umbriel`s dark spots."', '2024-02-18');
INSERT INTO public.moon VALUES (23, 8, 'Nereid', 50, false, 1949, 'Nereid is one of the largest irregular moons of Neptune and is thought to be a captured object from the Kuiper Belt. It has a highly eccentric orbit around Neptune and exhibits significant variations in brightness over time.', '2024-02-18');
INSERT INTO public.moon VALUES (24, 8, 'Proteus', 51, true, 1989, 'Proteus is the second-largest moon of Neptune and is known for its irregular shape and heavily cratered surface. It is thought to be in a state of equilibrium between gravitational collapse and tidal disruption, giving it its elongated shape.', '2024-02-18');


--
-- Data for Name: nebula; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.nebula VALUES (1, 1, 1, 'Orion Nebula (M42/M43)', 10000, 1344, 'light-years', 1610, 'The Orion Nebula is a diffuse nebula situated in the Orion constellation`s sword. It is one of the brightest and most easily visible nebulae in the night sky, appearing as a hazy patch of light to the naked eye. It is a region of active star formation, containing a young open star cluster known as the Trapezium Cluster at its center.', '2024-02-18');
INSERT INTO public.nebula VALUES (2, 1, 1, 'Lagoon Nebula (M8)', 10000, 4100, 'light-years', 1747, 'The Lagoon Nebula is an emission nebula located in the constellation Sagittarius. It is a vast cloud of interstellar gas and dust where new stars are actively forming. The nebula is illuminated by the radiation of nearby hot stars and contains several dark lanes of dust, giving it a lagoon-like appearance.', '2024-02-18');
INSERT INTO public.nebula VALUES (3, 2, 1, 'Pleiades (M45)', 5500, 444, 'light-years', 1769, 'The Pleiades, also known as the Seven Sisters, is an open star cluster located in the constellation Taurus. It is one of the nearest star clusters to Earth and is easily visible to the naked eye. The cluster contains hundreds of stars, surrounded by a faint blue reflection nebula produced by the scattering of starlight by interstellar dust.', '2024-02-18');
INSERT INTO public.nebula VALUES (4, 2, 1, 'NGC 7023 (Iris Nebula)', NULL, 1300, 'light-years', 1794, 'The Iris Nebula is a reflection nebula located in the constellation Cepheus. It surrounds a young hot star and is illuminated by its light, causing the surrounding dust to scatter and reflect starlight. The nebula is named for its striking resemblance to the iris of an eye.', '2024-02-18');
INSERT INTO public.nebula VALUES (5, 3, 1, 'Ring Nebula (M57)', 12000, 2000, 'light-years', 1779, 'The Ring Nebula is a planetary nebula located in the constellation Lyra. It is the glowing remains of a sun-like star that has shed its outer layers at the end of its life. The central star, now a white dwarf, illuminates the surrounding expelled gas, creating a ring-shaped structure.', '2024-02-18');
INSERT INTO public.nebula VALUES (6, 3, 1, 'Helix Nebula (NGC 7293)', 10000, 655, 'light-years', 1824, 'The Helix Nebula is a planetary nebula located in the constellation Aquarius. It is one of the closest planetary nebulae to Earth and is often referred to as the "Eye of God" due to its striking appearance resembling a giant eye. The nebula is formed by the outer layers of a dying star expelled into space.', '2024-02-18');
INSERT INTO public.nebula VALUES (7, 4, 1, 'Crab Nebula (M1)', 10000, 6500, 'light-years', 1054, 'The Crab Nebula is a supernova remnant located in the constellation Taurus. It is the result of a supernova explosion observed by Chinese astronomers in 1054 AD. The nebula contains a pulsar, the rapidly spinning remnant of the collapsed core of the massive star that exploded, which emits beams of radiation and energizes the surrounding gas, producing the nebula`s glow.', '2024-02-18');
INSERT INTO public.nebula VALUES (8, 4, 1, 'Veil Nebula (Cygnus Loop)', NULL, 1470, 'light-years', 1784, 'The Veil Nebula is a supernova remnant located in the constellation Cygnus. It is the result of a supernova explosion that occurred between 5,000 to 8,000 years ago. The nebula is composed of several filaments of glowing gas and dust, which have been expanding outward from the site of the explosion.', '2024-02-18');
INSERT INTO public.nebula VALUES (9, 5, 1, 'Horsehead Nebula (Barnard 33)', NULL, 1500, 'light-years', 1888, 'The Horsehead Nebula is a dark nebula located in the constellation Orion. It is a dense cloud of gas and dust that obscures the light from the background emission nebula IC 434, creating the distinctive silhouette of a horse`s head against the bright nebula.', '2024-02-18');
INSERT INTO public.nebula VALUES (10, 5, 1, 'Coalsack Nebula (C99)', NULL, 600, 'light-years', 1751, 'The Coalsack Nebula is a dark nebula located in the constellation Crux (the Southern Cross). It is one of the most prominent dark nebulae in the southern hemisphere night sky, appearing as a large, dark patch against the backdrop of the Milky Way. It is primarily composed of dense interstellar dust.', '2024-02-18');
INSERT INTO public.nebula VALUES (11, 1, 2, 'Eta Carinae Nebula (NGC 3372)', NULL, 7500, 'light-years', 1751, 'The Eta Carinae Nebula, also known as the Carina Nebula, is a large emission nebula located in the constellation Carina. It is a region of intense star formation and is home to several massive stars, including the enigmatic Eta Carinae, which is one of the most massive and luminous stars known.', '2024-02-18');
INSERT INTO public.nebula VALUES (12, 1, 3, 'NGC 604', NULL, 2700000, 'light-years', 1784, 'NGC 604 is a giant emission nebula located in the Triangulum Galaxy (M33), a member of the Local Group of galaxies. It is one of the largest known H II regions and is home to numerous massive stars. The nebula glows brightly due to the ionization of hydrogen gas by the intense ultraviolet radiation emitted by these stars.', '2024-02-18');
INSERT INTO public.nebula VALUES (13, 1, 2, 'NGC 2070 (Tarantula Nebula)', NULL, 160000, 'light-years', 1751, 'NGC 2070 is the central region of the Tarantula Nebula, located in the Large Magellanic Cloud (LMC). It is one of the largest and most active regions of star formation known, containing thousands of young, hot stars. NGC 2070 is home to the massive star cluster R136, which contains some of the most massive stars known in the universe.', '2024-02-18');


--
-- Data for Name: nebula_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.nebula_type VALUES (1, 'Emission Nebula', 'These nebulae are often called "stellar nurseries" because they are regions where stars are formed. They are visible due to fluorescence caused by embedded hot stars. Examples include the Rosette Nebula and the Omega Nebula.', '2024-02-16');
INSERT INTO public.nebula_type VALUES (2, 'Reflection Nebula', 'These nebulae reflect the light of nearby stars. They are visible primarily due to the light they reflect and often have a bluish glow. Examples include NGC 1999 and the Iris Nebula.', '2024-02-16');
INSERT INTO public.nebula_type VALUES (3, 'Planetary Nebula', 'These nebulae are ejected from stars that are dying but are not massive enough to become supernovae. They are named for their fuzzy, cloudy shapes that resemble planets, but they have nothing to do with planets. Examples include the Cat´s Eye Nebula and the Dumbbell Nebula.', '2024-02-16');
INSERT INTO public.nebula_type VALUES (4, 'Supernova Remnant', 'These nebulae are created by the debris left over from a supernova explosion. They are expanding nebulae and are often very bright. Examples include the Crab Nebula and the Veil Nebula.', '2024-02-16');
INSERT INTO public.nebula_type VALUES (5, 'Dark nebula', 'These nebulae are very dense and cold molecular clouds that appear as irregularly shaped black patches in the sky and blot out the light of the stars that lie beyond them. An example of a dark nebula is the Horsehead Nebula.', '2024-02-16');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'Mercury', 0, 440, false, NULL, NULL, NULL, 'Mercury is the closest planet to the Sun and the smallest planet in the solar system. It has a barren, rocky surface with extreme temperature variations between its day and night sides.', '2024-02-18');
INSERT INTO public.planet VALUES (2, 1, 'Venus', 0, 735, false, 41000000, 'kilometers', NULL, 'Venus is often called Earth`s "sister planet" due to its similar size and composition, but it has a thick, toxic atmosphere primarily of carbon dioxide. Its surface is hot enough to melt lead, and it experiences a runaway greenhouse effect.', '2024-02-18');
INSERT INTO public.planet VALUES (3, 1, 'Earth', 1, 288, false, NULL, NULL, NULL, 'Earth is the third planet from the Sun, and it is the only known celestial body to support life. It has a diverse range of ecosystems, including oceans, continents, and atmosphere conducive to life.', '2024-02-18');
INSERT INTO public.planet VALUES (4, 1, 'Mars', 2, 210, false, NULL, NULL, NULL, 'Mars is often called the "Red Planet" due to its reddish appearance caused by iron oxide on its surface. It has a thin atmosphere primarily of carbon dioxide and evidence of ancient liquid water flows on its surface, suggesting it may have once harbored life.', '2024-02-18');
INSERT INTO public.planet VALUES (5, 1, 'Jupiter', 95, 165, true, 588000000, 'kilometers', NULL, 'Jupiter is the largest planet in the solar system and is composed primarily of hydrogen and helium. It has a strong magnetic field and is known for its many moons and the Great Red Spot, a persistent anticyclonic storm.', '2024-02-18');
INSERT INTO public.planet VALUES (6, 1, 'Saturn', 146, 134, true, 1200000000, 'kilometers', NULL, 'Saturn is famous for its prominent ring system, which is composed of ice particles, dust, and rock. It is a gas giant similar in composition to Jupiter and also has a diverse array of moons.', '2024-02-18');
INSERT INTO public.planet VALUES (7, 1, 'Uranus', 27, 76, true, 2600000000, 'kilometers', 1781, 'Uranus is an ice giant with a unique feature of rotating on its side, likely due to a collision early in its history. It has a pale blue-green color due to the presence of methane in its atmosphere.', '2024-02-18');
INSERT INTO public.planet VALUES (8, 1, 'Neptune', 14, 72, true, 4300000000, 'kilometers', 1846, 'Neptune is also an ice giant and is similar in composition to Uranus. It has a deep blue color due to the presence of methane in its atmosphere and is known for its strong winds and large storms, such as the Great Dark Spot.', '2024-02-18');
INSERT INTO public.planet VALUES (9, 2, 'Kepler-22b', NULL, 210, NULL, 620, 'light-years', 2011, 'Kepler-22b is a super-Earth exoplanet located within the habitable zone of its host star, Kepler-22. It orbits a star similar to the Sun and has a radius about 2.4 times that of Earth. Its discovery raised interest due to its potential to have a temperate climate suitable for liquid water, although its composition and atmosphere are still unknown.', '2024-02-18');
INSERT INTO public.planet VALUES (10, 3, 'HD 209458 b (Osiris)', NULL, 1100, false, 153, 'light-years', 1999, 'HD 209458 b, also known as Osiris, is a hot Jupiter exoplanet orbiting very close to its parent star, HD 209458. It was one of the first exoplanets to be discovered via the transit method. The planet`s atmosphere was the first to be directly detected and is known to contain water vapor, making it an important target for atmospheric studies.', '2024-02-18');
INSERT INTO public.planet VALUES (11, 4, 'Proxima Centauri b', NULL, 234, false, 4, 'light-years', 2016, 'Proxima Centauri b is an exoplanet orbiting within the habitable zone of its host star, Proxima Centauri, the closest known star to the Sun. It is a rocky planet with a mass similar to Earth`s and is located in the Alpha Centauri star system. Proxima Centauri b is a prime target in the search for potentially habitable exoplanets.', '2024-02-18');
INSERT INTO public.planet VALUES (12, 5, 'TRAPPIST-1 System (TRAPPIST-1 b to h)', NULL, NULL, false, 39, 'light-years', 2017, 'The TRAPPIST-1 system gained attention due to the discovery of seven Earth-sized exoplanets orbiting an ultra-cool dwarf star, TRAPPIST-1. Some of these planets are located within the star`s habitable zone, making them potential candidates for hosting liquid water and possibly life. The system is one of the best-studied exoplanetary systems to date.', '2024-02-18');
INSERT INTO public.planet VALUES (13, 6, 'WASP-121b', NULL, 2500, false, 900, 'light-years', 2015, 'WASP-121b is a hot Jupiter exoplanet known for its extreme temperature and unique atmospheric characteristics. It orbits very close to its parent star, WASP-121, which causes its atmosphere to be highly heated and extended. The planet`s atmosphere has been observed to contain water vapor and other molecules.', '2024-02-18');
INSERT INTO public.planet VALUES (14, 7, '51 Pegasi b (Bellerophon)', NULL, 1200, false, 50, 'light-years', 1995, '51 Pegasi b, also known as Bellerophon, was the first exoplanet discovered orbiting a main-sequence star similar to the Sun. It is a hot Jupiter exoplanet located very close to its parent star, 51 Pegasi. The discovery of 51 Pegasi b challenged existing theories of planetary formation and revolutionized our understanding of exoplanetary systems.', '2024-02-18');
INSERT INTO public.planet VALUES (15, 8, 'OGLE-2005-BLG-390Lb', NULL, NULL, false, 21500, 'light-years', NULL, 'OGLE-2005-BLG-390Lb is an exoplanet discovered via gravitational microlensing. It is located in the bulge of the Milky Way galaxy and orbits a distant red dwarf star. The planet`s discovery provided valuable insights into the population of exoplanets in the galaxy and the techniques used to detect them.', '2024-02-18');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 43, 1, 'Sun', 5778, 149600000, 'kilometers', -450, 'The age of the Sun is estimated to be about 4.6 billion years. The Sun is a G2V star, and its core reaches a temperature of about 15 million degrees Celsius (100 million Kelvin). The Sun`s core is where nuclear fusion occurs, releasing energy in the form of photons and neutrinos.', '2024-02-18');
INSERT INTO public.star VALUES (2, 46, 1, 'Kepler-22', 5070, 620, 'light-years', 2011, 'Kepler-22 is a star similar to our Sun, and it is notable for hosting the first transiting planet in the habitable zone detected by the Kepler mission, Kepler-22b. It`s of particular interest in the search for habitable exoplanets.', '2024-02-18');
INSERT INTO public.star VALUES (3, 41, 1, 'HD 209458', 6190, 153, 'light-years', 1999, 'HD 209458 is a Sun-like star known for having the first exoplanet discovered through the transit method, HD 209458 b. It`s located in the constellation Pegasus and has been the subject of intense study due to its relatively close proximity and the presence of its known exoplanet.', '2024-02-18');
INSERT INTO public.star VALUES (4, 66, 1, 'Proxima Centauri', 3042, 4, 'light-years', 1915, 'Proxima Centauri is a red dwarf star in the Alpha Centauri star system. It gained significant attention due to its proximity to Earth and the potential for hosting exoplanets within its habitable zone. In 2016, an Earth-sized exoplanet, Proxima Centauri b, was discovered in orbit around it.', '2024-02-18');
INSERT INTO public.star VALUES (5, 69, 1, 'TRAPPIST-1', 2550, 39, 'light-years', 1999, 'TRAPPIST-1 is an ultra-cool dwarf star known for its system of seven Earth-sized exoplanets orbiting it. Three of these planets are located within the star`s habitable zone, making it a significant target for studies related to the search for potentially habitable worlds beyond our solar system.', '2024-02-18');
INSERT INTO public.star VALUES (6, 37, 1, 'WASP-121', 6860, 880, 'light-years', 2015, 'WASP-121 is a yellow dwarf star with a relatively high surface temperature. It`s notable for hosting a hot Jupiter exoplanet named WASP-121b, which is a gas giant located extremely close to its host star, resulting in intense heating and unique atmospheric conditions.', '2024-02-18');
INSERT INTO public.star VALUES (7, 45, 1, '51 Pegasi', 5520, 50, 'light-years', 1995, '51 Pegasi is a G-type main-sequence star similar to our Sun. It`s notable for being the first Sun-like star discovered to have an exoplanet orbiting it. The discovery of 51 Pegasi b revolutionized our understanding of planetary systems beyond our own and kicked off the modern era of exoplanet research.', '2024-02-18');
INSERT INTO public.star VALUES (8, 61, 1, 'OGLE-2005-BLG-390L', 3000, 20000, 'light-years', 2005, 'OGLE-2005-BLG-390L is a red dwarf star located in the constellation Scorpius. It was discovered through gravitational microlensing. The star itself is relatively dim and cool, making it difficult to observe directly, but it`s notable for its role in the discovery of exoplanets through microlensing events.', '2024-02-18');


--
-- Data for Name: star_class; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star_class VALUES (1, 'O0', 'These are the most massive and hottest stars, with temperatures ranging from 30,000 to 50,000 Kelvin (K). They emit blue light.', '2024-02-14');
INSERT INTO public.star_class VALUES (2, 'O1', 'These are the most massive and hottest stars, with temperatures ranging from 30,000 to 50,000 Kelvin (K). They emit blue light. Cooler than O0', '2024-02-14');
INSERT INTO public.star_class VALUES (3, 'O2', 'These are the most massive and hottest stars, with temperatures ranging from 30,000 to 50,000 Kelvin (K). They emit blue light. Cooler than O1', '2024-02-14');
INSERT INTO public.star_class VALUES (4, 'O3', 'These are the most massive and hottest stars, with temperatures ranging from 30,000 to 50,000 Kelvin (K). They emit blue light. Cooler than O2', '2024-02-14');
INSERT INTO public.star_class VALUES (5, 'O4', 'These are the most massive and hottest stars, with temperatures ranging from 30,000 to 50,000 Kelvin (K). They emit blue light. Cooler than O3', '2024-02-14');
INSERT INTO public.star_class VALUES (6, 'O5', 'These are the most massive and hottest stars, with temperatures ranging from 30,000 to 50,000 Kelvin (K). They emit blue light. Cooler than O4', '2024-02-14');
INSERT INTO public.star_class VALUES (7, 'O6', 'These are the most massive and hottest stars, with temperatures ranging from 30,000 to 50,000 Kelvin (K). They emit blue light. Cooler than O5', '2024-02-14');
INSERT INTO public.star_class VALUES (8, 'O7', 'These are the most massive and hottest stars, with temperatures ranging from 30,000 to 50,000 Kelvin (K). They emit blue light. Cooler than O6', '2024-02-14');
INSERT INTO public.star_class VALUES (9, 'O8', 'These are the most massive and hottest stars, with temperatures ranging from 30,000 to 50,000 Kelvin (K). They emit blue light. Cooler than O7', '2024-02-14');
INSERT INTO public.star_class VALUES (10, 'O9', 'These are the most massive and hottest stars, with temperatures ranging from 30,000 to 50,000 Kelvin (K). They emit blue light. Cooler than O8', '2024-02-14');
INSERT INTO public.star_class VALUES (11, 'B0', 'These stars are less massive and cooler than O-class stars, with temperatures ranging from 10,000 to 30,000 K. They emit blue-white light.', '2024-02-14');
INSERT INTO public.star_class VALUES (12, 'B1', 'These stars are less massive and cooler than O-class stars, with temperatures ranging from 10,000 to 30,000 K. They emit blue-white light. Cooler than B0', '2024-02-14');
INSERT INTO public.star_class VALUES (13, 'B2', 'These stars are less massive and cooler than O-class stars, with temperatures ranging from 10,000 to 30,000 K. They emit blue-white light. Cooler than B1', '2024-02-14');
INSERT INTO public.star_class VALUES (14, 'B3', 'These stars are less massive and cooler than O-class stars, with temperatures ranging from 10,000 to 30,000 K. They emit blue-white light. Cooler than B2', '2024-02-14');
INSERT INTO public.star_class VALUES (15, 'B4', 'These stars are less massive and cooler than O-class stars, with temperatures ranging from 10,000 to 30,000 K. They emit blue-white light. Cooler than B3', '2024-02-14');
INSERT INTO public.star_class VALUES (16, 'B5', 'These stars are less massive and cooler than O-class stars, with temperatures ranging from 10,000 to 30,000 K. They emit blue-white light. Cooler than B4', '2024-02-14');
INSERT INTO public.star_class VALUES (17, 'B6', 'These stars are less massive and cooler than O-class stars, with temperatures ranging from 10,000 to 30,000 K. They emit blue-white light. Cooler than B5', '2024-02-14');
INSERT INTO public.star_class VALUES (18, 'B7', 'These stars are less massive and cooler than O-class stars, with temperatures ranging from 10,000 to 30,000 K. They emit blue-white light. Cooler than B6', '2024-02-14');
INSERT INTO public.star_class VALUES (19, 'B8', 'These stars are less massive and cooler than O-class stars, with temperatures ranging from 10,000 to 30,000 K. They emit blue-white light. Cooler than B7', '2024-02-14');
INSERT INTO public.star_class VALUES (20, 'B9', 'These stars are less massive and cooler than O-class stars, with temperatures ranging from 10,000 to 30,000 K. They emit blue-white light. Cooler than B8', '2024-02-14');
INSERT INTO public.star_class VALUES (21, 'A0', 'These stars are less massive and cooler than B-class stars, with temperatures ranging from 7,500 to 10,000 K. They emit white light.', '2024-02-14');
INSERT INTO public.star_class VALUES (22, 'A1', 'These stars are less massive and cooler than B-class stars, with temperatures ranging from 7,500 to 10,000 K. They emit white light. Cooler than A0', '2024-02-14');
INSERT INTO public.star_class VALUES (23, 'A2', 'These stars are less massive and cooler than B-class stars, with temperatures ranging from 7,500 to 10,000 K. They emit white light. Cooler than A1', '2024-02-14');
INSERT INTO public.star_class VALUES (24, 'A3', 'These stars are less massive and cooler than B-class stars, with temperatures ranging from 7,500 to 10,000 K. They emit white light. Cooler than A2', '2024-02-14');
INSERT INTO public.star_class VALUES (25, 'A4', 'These stars are less massive and cooler than B-class stars, with temperatures ranging from 7,500 to 10,000 K. They emit white light. Cooler than A3', '2024-02-14');
INSERT INTO public.star_class VALUES (26, 'A5', 'These stars are less massive and cooler than B-class stars, with temperatures ranging from 7,500 to 10,000 K. They emit white light. Cooler than A4', '2024-02-14');
INSERT INTO public.star_class VALUES (27, 'A6', 'These stars are less massive and cooler than B-class stars, with temperatures ranging from 7,500 to 10,000 K. They emit white light. Cooler than A5', '2024-02-14');
INSERT INTO public.star_class VALUES (28, 'A7', 'These stars are less massive and cooler than B-class stars, with temperatures ranging from 7,500 to 10,000 K. They emit white light. Cooler than A6', '2024-02-14');
INSERT INTO public.star_class VALUES (29, 'A8', 'These stars are less massive and cooler than B-class stars, with temperatures ranging from 7,500 to 10,000 K. They emit white light. Cooler than A7', '2024-02-14');
INSERT INTO public.star_class VALUES (30, 'A9', 'These stars are less massive and cooler than B-class stars, with temperatures ranging from 7,500 to 10,000 K. They emit white light. Cooler than A8', '2024-02-14');
INSERT INTO public.star_class VALUES (31, 'F0', 'These stars are less massive and cooler than A-class stars, with temperatures ranging from 6,000 to 7,500 K. They emit yellow-white light.', '2024-02-14');
INSERT INTO public.star_class VALUES (32, 'F1', 'These stars are less massive and cooler than A-class stars, with temperatures ranging from 6,000 to 7,500 K. They emit yellow-white light. Cooler than F0', '2024-02-14');
INSERT INTO public.star_class VALUES (33, 'F2', 'These stars are less massive and cooler than A-class stars, with temperatures ranging from 6,000 to 7,500 K. They emit yellow-white light. Cooler than F1', '2024-02-14');
INSERT INTO public.star_class VALUES (34, 'F3', 'These stars are less massive and cooler than A-class stars, with temperatures ranging from 6,000 to 7,500 K. They emit yellow-white light. Cooler than F2', '2024-02-14');
INSERT INTO public.star_class VALUES (35, 'F4', 'These stars are less massive and cooler than A-class stars, with temperatures ranging from 6,000 to 7,500 K. They emit yellow-white light. Cooler than F3', '2024-02-14');
INSERT INTO public.star_class VALUES (36, 'F5', 'These stars are less massive and cooler than A-class stars, with temperatures ranging from 6,000 to 7,500 K. They emit yellow-white light. Cooler than F4', '2024-02-14');
INSERT INTO public.star_class VALUES (37, 'F6', 'These stars are less massive and cooler than A-class stars, with temperatures ranging from 6,000 to 7,500 K. They emit yellow-white light. Cooler than F5', '2024-02-14');
INSERT INTO public.star_class VALUES (38, 'F7', 'These stars are less massive and cooler than A-class stars, with temperatures ranging from 6,000 to 7,500 K. They emit yellow-white light. Cooler than F6', '2024-02-14');
INSERT INTO public.star_class VALUES (39, 'F8', 'These stars are less massive and cooler than A-class stars, with temperatures ranging from 6,000 to 7,500 K. They emit yellow-white light. Cooler than F7', '2024-02-14');
INSERT INTO public.star_class VALUES (40, 'F9', 'These stars are less massive and cooler than A-class stars, with temperatures ranging from 6,000 to 7,500 K. They emit yellow-white light. Cooler than F8', '2024-02-14');
INSERT INTO public.star_class VALUES (41, 'G0', 'These stars are less massive and cooler than F-class stars, with temperatures ranging from 5,200 to 6,000 K. The Sun is an example of a G-class star, and it emits yellow light.', '2024-02-14');
INSERT INTO public.star_class VALUES (42, 'G1', 'These stars are less massive and cooler than F-class stars, with temperatures ranging from 5,200 to 6,000 K. The Sun is an example of a G-class star, and it emits yellow light. Cooler than G0', '2024-02-14');
INSERT INTO public.star_class VALUES (43, 'G2', 'These stars are less massive and cooler than F-class stars, with temperatures ranging from 5,200 to 6,000 K. The Sun is an example of a G-class star, and it emits yellow light. Cooler than G1', '2024-02-14');
INSERT INTO public.star_class VALUES (44, 'G3', 'These stars are less massive and cooler than F-class stars, with temperatures ranging from 5,200 to 6,000 K. The Sun is an example of a G-class star, and it emits yellow light. Cooler than G2', '2024-02-14');
INSERT INTO public.star_class VALUES (45, 'G4', 'These stars are less massive and cooler than F-class stars, with temperatures ranging from 5,200 to 6,000 K. The Sun is an example of a G-class star, and it emits yellow light. Cooler than G3', '2024-02-14');
INSERT INTO public.star_class VALUES (46, 'G5', 'These stars are less massive and cooler than F-class stars, with temperatures ranging from 5,200 to 6,000 K. The Sun is an example of a G-class star, and it emits yellow light. Cooler than G4', '2024-02-14');
INSERT INTO public.star_class VALUES (47, 'G6', 'These stars are less massive and cooler than F-class stars, with temperatures ranging from 5,200 to 6,000 K. The Sun is an example of a G-class star, and it emits yellow light. Cooler than G5', '2024-02-14');
INSERT INTO public.star_class VALUES (48, 'G7', 'These stars are less massive and cooler than F-class stars, with temperatures ranging from 5,200 to 6,000 K. The Sun is an example of a G-class star, and it emits yellow light. Cooler than G6', '2024-02-14');
INSERT INTO public.star_class VALUES (49, 'G8', 'These stars are less massive and cooler than F-class stars, with temperatures ranging from 5,200 to 6,000 K. The Sun is an example of a G-class star, and it emits yellow light. Cooler than G7', '2024-02-14');
INSERT INTO public.star_class VALUES (50, 'G9', 'These stars are less massive and cooler than F-class stars, with temperatures ranging from 5,200 to 6,000 K. The Sun is an example of a G-class star, and it emits yellow light. Cooler than G8', '2024-02-14');
INSERT INTO public.star_class VALUES (51, 'K0', 'These stars are less massive and cooler than G-class stars, with temperatures ranging from 3,700 to 5,200 K. They emit orange light.', '2024-02-14');
INSERT INTO public.star_class VALUES (52, 'K1', 'These stars are less massive and cooler than G-class stars, with temperatures ranging from 3,700 to 5,200 K. They emit orange light. Cooler than K0', '2024-02-14');
INSERT INTO public.star_class VALUES (53, 'K2', 'These stars are less massive and cooler than G-class stars, with temperatures ranging from 3,700 to 5,200 K. They emit orange light. Cooler than K1', '2024-02-14');
INSERT INTO public.star_class VALUES (54, 'K3', 'These stars are less massive and cooler than G-class stars, with temperatures ranging from 3,700 to 5,200 K. They emit orange light. Cooler than K2', '2024-02-14');
INSERT INTO public.star_class VALUES (55, 'K4', 'These stars are less massive and cooler than G-class stars, with temperatures ranging from 3,700 to 5,200 K. They emit orange light. Cooler than K3', '2024-02-14');
INSERT INTO public.star_class VALUES (56, 'K5', 'These stars are less massive and cooler than G-class stars, with temperatures ranging from 3,700 to 5,200 K. They emit orange light. Cooler than K4', '2024-02-14');
INSERT INTO public.star_class VALUES (57, 'K6', 'These stars are less massive and cooler than G-class stars, with temperatures ranging from 3,700 to 5,200 K. They emit orange light. Cooler than K5', '2024-02-14');
INSERT INTO public.star_class VALUES (58, 'K7', 'These stars are less massive and cooler than G-class stars, with temperatures ranging from 3,700 to 5,200 K. They emit orange light. Cooler than K6', '2024-02-14');
INSERT INTO public.star_class VALUES (59, 'K8', 'These stars are less massive and cooler than G-class stars, with temperatures ranging from 3,700 to 5,200 K. They emit orange light. Cooler than K7', '2024-02-14');
INSERT INTO public.star_class VALUES (60, 'K9', 'These stars are less massive and cooler than G-class stars, with temperatures ranging from 3,700 to 5,200 K. They emit orange light. Cooler than K8', '2024-02-14');
INSERT INTO public.star_class VALUES (61, 'M0', 'These stars are the smallest and coolest, with temperatures below 3,700 K. They emit red light.', '2024-02-14');
INSERT INTO public.star_class VALUES (62, 'M1', 'These stars are the smallest and coolest, with temperatures below 3,700 K. They emit red light. Cooler than M0', '2024-02-14');
INSERT INTO public.star_class VALUES (63, 'M2', 'These stars are the smallest and coolest, with temperatures below 3,700 K. They emit red light. Cooler than M1', '2024-02-14');
INSERT INTO public.star_class VALUES (64, 'M3', 'These stars are the smallest and coolest, with temperatures below 3,700 K. They emit red light. Cooler than M2', '2024-02-14');
INSERT INTO public.star_class VALUES (65, 'M4', 'These stars are the smallest and coolest, with temperatures below 3,700 K. They emit red light. Cooler than M3', '2024-02-14');
INSERT INTO public.star_class VALUES (66, 'M5', 'These stars are the smallest and coolest, with temperatures below 3,700 K. They emit red light. Cooler than M4', '2024-02-14');
INSERT INTO public.star_class VALUES (67, 'M6', 'These stars are the smallest and coolest, with temperatures below 3,700 K. They emit red light. Cooler than M5', '2024-02-14');
INSERT INTO public.star_class VALUES (68, 'M7', 'These stars are the smallest and coolest, with temperatures below 3,700 K. They emit red light. Cooler than M6', '2024-02-14');
INSERT INTO public.star_class VALUES (69, 'M8', 'These stars are the smallest and coolest, with temperatures below 3,700 K. They emit red light. Cooler than M7', '2024-02-14');
INSERT INTO public.star_class VALUES (70, 'M9', 'These stars are the smallest and coolest, with temperatures below 3,700 K. They emit red light. Cooler than M8', '2024-02-14');


--
-- Name: celestial_body_celestial_body_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.celestial_body_celestial_body_id_seq', 10, true);


--
-- Name: celestial_body_type_celestial_body_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.celestial_body_type_celestial_body_type_id_seq', 3, true);


--
-- Name: galaxy_classification_galaxy_classification_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_classification_galaxy_classification_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: nebula_nebula_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.nebula_nebula_id_seq', 13, true);


--
-- Name: nebula_type_nebula_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.nebula_type_nebula_type_id_seq', 5, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_class_star_class_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_class_star_class_id_seq', 70, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: celestial_body celestial_body_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_body
    ADD CONSTRAINT celestial_body_name_key UNIQUE (name);


--
-- Name: celestial_body celestial_body_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_body
    ADD CONSTRAINT celestial_body_pkey PRIMARY KEY (celestial_body_id);


--
-- Name: celestial_body_type celestial_body_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_body_type
    ADD CONSTRAINT celestial_body_type_name_key UNIQUE (name);


--
-- Name: celestial_body_type celestial_body_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_body_type
    ADD CONSTRAINT celestial_body_type_pkey PRIMARY KEY (celestial_body_type_id);


--
-- Name: galaxy_classification galaxy_classification_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_classification
    ADD CONSTRAINT galaxy_classification_name_key UNIQUE (name);


--
-- Name: galaxy_classification galaxy_classification_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_classification
    ADD CONSTRAINT galaxy_classification_pkey PRIMARY KEY (galaxy_classification_id);


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
-- Name: nebula nebula_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_name_key UNIQUE (name);


--
-- Name: nebula nebula_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_pkey PRIMARY KEY (nebula_id);


--
-- Name: nebula_type nebula_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula_type
    ADD CONSTRAINT nebula_type_name_key UNIQUE (name);


--
-- Name: nebula_type nebula_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula_type
    ADD CONSTRAINT nebula_type_pkey PRIMARY KEY (nebula_type_id);


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
-- Name: star_class star_class_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_class
    ADD CONSTRAINT star_class_name_key UNIQUE (name);


--
-- Name: star_class star_class_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_class
    ADD CONSTRAINT star_class_pkey PRIMARY KEY (star_class_id);


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
-- Name: celestial_body celestial_body_celestial_body_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_body
    ADD CONSTRAINT celestial_body_celestial_body_type_id_fkey FOREIGN KEY (celestial_body_type_id) REFERENCES public.celestial_body_type(celestial_body_type_id);


--
-- Name: celestial_body celestial_body_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_body
    ADD CONSTRAINT celestial_body_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: galaxy galaxy_galaxy_classification_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_classification_id_fkey FOREIGN KEY (galaxy_classification_id) REFERENCES public.galaxy_classification(galaxy_classification_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: nebula nebula_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: nebula nebula_nebula_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_nebula_type_id_fkey FOREIGN KEY (nebula_type_id) REFERENCES public.nebula_type(nebula_type_id);


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
-- Name: star star_star_class_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_class_id_fkey FOREIGN KEY (star_class_id) REFERENCES public.star_class(star_class_id);


--
-- PostgreSQL database dump complete
--

