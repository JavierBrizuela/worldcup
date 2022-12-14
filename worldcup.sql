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

INSERT INTO public.games VALUES (109, 2018, 'Final', 443, 444, 4, 2);
INSERT INTO public.games VALUES (110, 2018, 'Third Place', 445, 446, 2, 0);
INSERT INTO public.games VALUES (111, 2018, 'Semi-Final', 444, 446, 2, 1);
INSERT INTO public.games VALUES (112, 2018, 'Semi-Final', 443, 445, 1, 0);
INSERT INTO public.games VALUES (113, 2018, 'Quarter-Final', 444, 447, 3, 2);
INSERT INTO public.games VALUES (114, 2018, 'Quarter-Final', 446, 448, 2, 0);
INSERT INTO public.games VALUES (115, 2018, 'Quarter-Final', 445, 449, 2, 1);
INSERT INTO public.games VALUES (116, 2018, 'Quarter-Final', 443, 450, 2, 0);
INSERT INTO public.games VALUES (117, 2018, 'Eighth-Final', 446, 451, 2, 1);
INSERT INTO public.games VALUES (118, 2018, 'Eighth-Final', 448, 452, 1, 0);
INSERT INTO public.games VALUES (119, 2018, 'Eighth-Final', 445, 453, 3, 2);
INSERT INTO public.games VALUES (120, 2018, 'Eighth-Final', 449, 454, 2, 0);
INSERT INTO public.games VALUES (121, 2018, 'Eighth-Final', 444, 455, 2, 1);
INSERT INTO public.games VALUES (122, 2018, 'Eighth-Final', 447, 456, 2, 1);
INSERT INTO public.games VALUES (123, 2018, 'Eighth-Final', 450, 457, 2, 1);
INSERT INTO public.games VALUES (124, 2018, 'Eighth-Final', 443, 458, 4, 3);
INSERT INTO public.games VALUES (125, 2014, 'Final', 459, 458, 1, 0);
INSERT INTO public.games VALUES (126, 2014, 'Third Place', 460, 449, 3, 0);
INSERT INTO public.games VALUES (127, 2014, 'Semi-Final', 458, 460, 1, 0);
INSERT INTO public.games VALUES (128, 2014, 'Semi-Final', 459, 449, 7, 1);
INSERT INTO public.games VALUES (129, 2014, 'Quarter-Final', 460, 461, 1, 0);
INSERT INTO public.games VALUES (130, 2014, 'Quarter-Final', 458, 445, 1, 0);
INSERT INTO public.games VALUES (131, 2014, 'Quarter-Final', 449, 451, 2, 1);
INSERT INTO public.games VALUES (132, 2014, 'Quarter-Final', 459, 443, 1, 0);
INSERT INTO public.games VALUES (133, 2014, 'Eighth-Final', 449, 462, 2, 1);
INSERT INTO public.games VALUES (134, 2014, 'Eighth-Final', 451, 450, 2, 0);
INSERT INTO public.games VALUES (135, 2014, 'Eighth-Final', 443, 463, 2, 0);
INSERT INTO public.games VALUES (136, 2014, 'Eighth-Final', 459, 464, 2, 1);
INSERT INTO public.games VALUES (137, 2014, 'Eighth-Final', 460, 454, 2, 1);
INSERT INTO public.games VALUES (138, 2014, 'Eighth-Final', 461, 465, 2, 1);
INSERT INTO public.games VALUES (139, 2014, 'Eighth-Final', 458, 452, 1, 0);
INSERT INTO public.games VALUES (140, 2014, 'Eighth-Final', 445, 466, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (443, 'France');
INSERT INTO public.teams VALUES (444, 'Croatia');
INSERT INTO public.teams VALUES (445, 'Belgium');
INSERT INTO public.teams VALUES (446, 'England');
INSERT INTO public.teams VALUES (447, 'Russia');
INSERT INTO public.teams VALUES (448, 'Sweden');
INSERT INTO public.teams VALUES (449, 'Brazil');
INSERT INTO public.teams VALUES (450, 'Uruguay');
INSERT INTO public.teams VALUES (451, 'Colombia');
INSERT INTO public.teams VALUES (452, 'Switzerland');
INSERT INTO public.teams VALUES (453, 'Japan');
INSERT INTO public.teams VALUES (454, 'Mexico');
INSERT INTO public.teams VALUES (455, 'Denmark');
INSERT INTO public.teams VALUES (456, 'Spain');
INSERT INTO public.teams VALUES (457, 'Portugal');
INSERT INTO public.teams VALUES (458, 'Argentina');
INSERT INTO public.teams VALUES (459, 'Germany');
INSERT INTO public.teams VALUES (460, 'Netherlands');
INSERT INTO public.teams VALUES (461, 'Costa Rica');
INSERT INTO public.teams VALUES (462, 'Chile');
INSERT INTO public.teams VALUES (463, 'Nigeria');
INSERT INTO public.teams VALUES (464, 'Algeria');
INSERT INTO public.teams VALUES (465, 'Greece');
INSERT INTO public.teams VALUES (466, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 140, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 466, true);


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
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

