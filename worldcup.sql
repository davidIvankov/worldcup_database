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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (71, 2018, 'Final', 778, 779, 4, 2);
INSERT INTO public.games VALUES (72, 2018, 'Third Place', 780, 781, 2, 0);
INSERT INTO public.games VALUES (73, 2018, 'Semi-Final', 779, 781, 2, 1);
INSERT INTO public.games VALUES (74, 2018, 'Semi-Final', 778, 780, 1, 0);
INSERT INTO public.games VALUES (75, 2018, 'Quarter-Final', 779, 782, 3, 2);
INSERT INTO public.games VALUES (76, 2018, 'Quarter-Final', 781, 783, 2, 0);
INSERT INTO public.games VALUES (77, 2018, 'Quarter-Final', 780, 784, 2, 1);
INSERT INTO public.games VALUES (78, 2018, 'Quarter-Final', 778, 785, 2, 0);
INSERT INTO public.games VALUES (79, 2018, 'Eighth-Final', 781, 786, 2, 1);
INSERT INTO public.games VALUES (80, 2018, 'Eighth-Final', 783, 787, 1, 0);
INSERT INTO public.games VALUES (81, 2018, 'Eighth-Final', 780, 788, 3, 2);
INSERT INTO public.games VALUES (82, 2018, 'Eighth-Final', 784, 789, 2, 0);
INSERT INTO public.games VALUES (83, 2018, 'Eighth-Final', 779, 790, 2, 1);
INSERT INTO public.games VALUES (84, 2018, 'Eighth-Final', 782, 791, 2, 1);
INSERT INTO public.games VALUES (85, 2018, 'Eighth-Final', 785, 792, 2, 1);
INSERT INTO public.games VALUES (86, 2018, 'Eighth-Final', 778, 793, 4, 3);
INSERT INTO public.games VALUES (87, 2014, 'Final', 794, 793, 1, 0);
INSERT INTO public.games VALUES (88, 2014, 'Third Place', 795, 784, 3, 0);
INSERT INTO public.games VALUES (89, 2014, 'Semi-Final', 793, 795, 1, 0);
INSERT INTO public.games VALUES (90, 2014, 'Semi-Final', 794, 784, 7, 1);
INSERT INTO public.games VALUES (91, 2014, 'Quarter-Final', 795, 796, 1, 0);
INSERT INTO public.games VALUES (92, 2014, 'Quarter-Final', 793, 780, 1, 0);
INSERT INTO public.games VALUES (93, 2014, 'Quarter-Final', 784, 786, 2, 1);
INSERT INTO public.games VALUES (94, 2014, 'Quarter-Final', 794, 778, 1, 0);
INSERT INTO public.games VALUES (95, 2014, 'Eighth-Final', 784, 797, 2, 1);
INSERT INTO public.games VALUES (96, 2014, 'Eighth-Final', 786, 785, 2, 0);
INSERT INTO public.games VALUES (97, 2014, 'Eighth-Final', 778, 798, 2, 0);
INSERT INTO public.games VALUES (98, 2014, 'Eighth-Final', 794, 799, 2, 1);
INSERT INTO public.games VALUES (99, 2014, 'Eighth-Final', 795, 789, 2, 1);
INSERT INTO public.games VALUES (100, 2014, 'Eighth-Final', 796, 800, 2, 1);
INSERT INTO public.games VALUES (101, 2014, 'Eighth-Final', 793, 787, 1, 0);
INSERT INTO public.games VALUES (102, 2014, 'Eighth-Final', 780, 801, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (778, 'France');
INSERT INTO public.teams VALUES (779, 'Croatia');
INSERT INTO public.teams VALUES (780, 'Belgium');
INSERT INTO public.teams VALUES (781, 'England');
INSERT INTO public.teams VALUES (782, 'Russia');
INSERT INTO public.teams VALUES (783, 'Sweden');
INSERT INTO public.teams VALUES (784, 'Brazil');
INSERT INTO public.teams VALUES (785, 'Uruguay');
INSERT INTO public.teams VALUES (786, 'Colombia');
INSERT INTO public.teams VALUES (787, 'Switzerland');
INSERT INTO public.teams VALUES (788, 'Japan');
INSERT INTO public.teams VALUES (789, 'Mexico');
INSERT INTO public.teams VALUES (790, 'Denmark');
INSERT INTO public.teams VALUES (791, 'Spain');
INSERT INTO public.teams VALUES (792, 'Portugal');
INSERT INTO public.teams VALUES (793, 'Argentina');
INSERT INTO public.teams VALUES (794, 'Germany');
INSERT INTO public.teams VALUES (795, 'Netherlands');
INSERT INTO public.teams VALUES (796, 'Costa Rica');
INSERT INTO public.teams VALUES (797, 'Chile');
INSERT INTO public.teams VALUES (798, 'Nigeria');
INSERT INTO public.teams VALUES (799, 'Algeria');
INSERT INTO public.teams VALUES (800, 'Greece');
INSERT INTO public.teams VALUES (801, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 102, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 801, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_team_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_team_id FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_team_id_1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_team_id_1 FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

