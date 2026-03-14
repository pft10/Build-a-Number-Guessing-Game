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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 547);
INSERT INTO public.games VALUES (2, 1, 491);
INSERT INTO public.games VALUES (3, 2, 793);
INSERT INTO public.games VALUES (4, 2, 621);
INSERT INTO public.games VALUES (5, 1, 911);
INSERT INTO public.games VALUES (6, 1, 34);
INSERT INTO public.games VALUES (7, 1, 895);
INSERT INTO public.games VALUES (8, 3, 454);
INSERT INTO public.games VALUES (9, 3, 73);
INSERT INTO public.games VALUES (10, 4, 188);
INSERT INTO public.games VALUES (11, 4, 514);
INSERT INTO public.games VALUES (12, 3, 356);
INSERT INTO public.games VALUES (13, 3, 220);
INSERT INTO public.games VALUES (14, 3, 945);
INSERT INTO public.games VALUES (15, 5, 939);
INSERT INTO public.games VALUES (16, 5, 85);
INSERT INTO public.games VALUES (17, 6, 118);
INSERT INTO public.games VALUES (18, 6, 835);
INSERT INTO public.games VALUES (19, 5, 856);
INSERT INTO public.games VALUES (20, 5, 124);
INSERT INTO public.games VALUES (21, 5, 107);
INSERT INTO public.games VALUES (22, 7, 32);
INSERT INTO public.games VALUES (23, 7, 215);
INSERT INTO public.games VALUES (24, 8, 1001);
INSERT INTO public.games VALUES (25, 8, 31);
INSERT INTO public.games VALUES (26, 7, 468);
INSERT INTO public.games VALUES (27, 7, 34);
INSERT INTO public.games VALUES (28, 7, 941);
INSERT INTO public.games VALUES (29, 9, 581);
INSERT INTO public.games VALUES (30, 9, 982);
INSERT INTO public.games VALUES (31, 10, 413);
INSERT INTO public.games VALUES (32, 10, 30);
INSERT INTO public.games VALUES (33, 9, 121);
INSERT INTO public.games VALUES (34, 9, 486);
INSERT INTO public.games VALUES (35, 9, 767);
INSERT INTO public.games VALUES (36, 11, 935);
INSERT INTO public.games VALUES (37, 11, 494);
INSERT INTO public.games VALUES (38, 12, 38);
INSERT INTO public.games VALUES (39, 12, 780);
INSERT INTO public.games VALUES (40, 11, 270);
INSERT INTO public.games VALUES (41, 11, 923);
INSERT INTO public.games VALUES (42, 11, 780);
INSERT INTO public.games VALUES (43, 13, 997);
INSERT INTO public.games VALUES (44, 13, 816);
INSERT INTO public.games VALUES (45, 14, 495);
INSERT INTO public.games VALUES (46, 14, 511);
INSERT INTO public.games VALUES (47, 13, 477);
INSERT INTO public.games VALUES (48, 13, 526);
INSERT INTO public.games VALUES (49, 13, 402);
INSERT INTO public.games VALUES (50, 15, 258);
INSERT INTO public.games VALUES (51, 15, 389);
INSERT INTO public.games VALUES (52, 16, 436);
INSERT INTO public.games VALUES (53, 16, 263);
INSERT INTO public.games VALUES (54, 15, 651);
INSERT INTO public.games VALUES (55, 15, 492);
INSERT INTO public.games VALUES (56, 15, 956);
INSERT INTO public.games VALUES (57, 17, 498);
INSERT INTO public.games VALUES (58, 17, 334);
INSERT INTO public.games VALUES (59, 18, 738);
INSERT INTO public.games VALUES (60, 18, 699);
INSERT INTO public.games VALUES (61, 17, 693);
INSERT INTO public.games VALUES (62, 17, 486);
INSERT INTO public.games VALUES (63, 17, 539);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1773450280671');
INSERT INTO public.users VALUES (2, 'user_1773450280670');
INSERT INTO public.users VALUES (3, 'user_1773450344132');
INSERT INTO public.users VALUES (4, 'user_1773450344131');
INSERT INTO public.users VALUES (5, 'user_1773450389793');
INSERT INTO public.users VALUES (6, 'user_1773450389792');
INSERT INTO public.users VALUES (7, 'user_1773450395051');
INSERT INTO public.users VALUES (8, 'user_1773450395050');
INSERT INTO public.users VALUES (9, 'user_1773450406015');
INSERT INTO public.users VALUES (10, 'user_1773450406014');
INSERT INTO public.users VALUES (11, 'user_1773451372343');
INSERT INTO public.users VALUES (12, 'user_1773451372342');
INSERT INTO public.users VALUES (13, 'user_1773451483018');
INSERT INTO public.users VALUES (14, 'user_1773451483017');
INSERT INTO public.users VALUES (15, 'user_1773451572900');
INSERT INTO public.users VALUES (16, 'user_1773451572899');
INSERT INTO public.users VALUES (17, 'user_1773451802262');
INSERT INTO public.users VALUES (18, 'user_1773451802261');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 63, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 18, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--



