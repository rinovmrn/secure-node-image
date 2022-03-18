--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2 (Debian 14.2-1.pgdg110+1)
-- Dumped by pg_dump version 14.1

-- Started on 2022-03-17 10:22:18 UTC

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
-- TOC entry 211 (class 1259 OID 24579)
-- Name: images; Type: TABLE; Schema: public; Owner: tutorial
--

CREATE TABLE public.images (
    id integer NOT NULL,
    title character varying(128) NOT NULL,
    cloudinary_id character varying(128) NOT NULL,
    image_url character varying(128) NOT NULL
);


ALTER TABLE public.images OWNER TO tutorial;

--
-- TOC entry 210 (class 1259 OID 24578)
-- Name: images_id_seq; Type: SEQUENCE; Schema: public; Owner: tutorial
--

CREATE SEQUENCE public.images_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.images_id_seq OWNER TO tutorial;

--
-- TOC entry 3321 (class 0 OID 0)
-- Dependencies: 210
-- Name: images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tutorial
--

ALTER SEQUENCE public.images_id_seq OWNED BY public.images.id;


--
-- TOC entry 209 (class 1259 OID 16402)
-- Name: tutorial; Type: TABLE; Schema: public; Owner: tutorial
--

CREATE TABLE public.tutorial (
);


ALTER TABLE public.tutorial OWNER TO tutorial;

--
-- TOC entry 3171 (class 2604 OID 24582)
-- Name: images id; Type: DEFAULT; Schema: public; Owner: tutorial
--

ALTER TABLE ONLY public.images ALTER COLUMN id SET DEFAULT nextval('public.images_id_seq'::regclass);


--
-- TOC entry 3315 (class 0 OID 24579)
-- Dependencies: 211
-- Data for Name: images; Type: TABLE DATA; Schema: public; Owner: tutorial
--

COPY public.images (id, title, cloudinary_id, image_url) FROM stdin;
4	Testing Persist Image	cxux4rt6wi7r7mvcsedd	https://res.cloudinary.com/rinovmrn/image/upload/v1647501722/cxux4rt6wi7r7mvcsedd.jpg
2	update latest Image	quertnxsbtb5intwkj7z	https://res.cloudinary.com/rinovmrn/image/upload/v1647502448/quertnxsbtb5intwkj7z.jpg
5	Upload latest Image	ucwpgmi4rhxrc0tbm2pp	https://res.cloudinary.com/rinovmrn/image/upload/v1647510552/ucwpgmi4rhxrc0tbm2pp.jpg
\.


--
-- TOC entry 3313 (class 0 OID 16402)
-- Dependencies: 209
-- Data for Name: tutorial; Type: TABLE DATA; Schema: public; Owner: tutorial
--

COPY public.tutorial  FROM stdin;
\.


--
-- TOC entry 3322 (class 0 OID 0)
-- Dependencies: 210
-- Name: images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tutorial
--

SELECT pg_catalog.setval('public.images_id_seq', 5, true);


--
-- TOC entry 3173 (class 2606 OID 24584)
-- Name: images images_pkey; Type: CONSTRAINT; Schema: public; Owner: tutorial
--

ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_pkey PRIMARY KEY (id);


-- Completed on 2022-03-17 10:22:18 UTC

--
-- PostgreSQL database dump complete
--

