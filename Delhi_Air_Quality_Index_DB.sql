--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.4

-- Started on 2020-09-13 17:43:18

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
-- TOC entry 203 (class 1259 OID 32807)
-- Name: delhi_monitoring_stations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.delhi_monitoring_stations (
    id integer NOT NULL,
    states character varying(50) NOT NULL,
    city character varying(50) NOT NULL,
    station_code character varying(50) NOT NULL,
    station_name character varying(50) NOT NULL,
    board character varying(50) NOT NULL,
    latitude double precision,
    longitude double precision
);


ALTER TABLE public.delhi_monitoring_stations OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 32805)
-- Name: delhi_monitoring_stations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.delhi_monitoring_stations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.delhi_monitoring_stations_id_seq OWNER TO postgres;

--
-- TOC entry 2834 (class 0 OID 0)
-- Dependencies: 202
-- Name: delhi_monitoring_stations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.delhi_monitoring_stations_id_seq OWNED BY public.delhi_monitoring_stations.id;


--
-- TOC entry 205 (class 1259 OID 32816)
-- Name: delhi_pm_2_5; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.delhi_pm_2_5 (
    id integer NOT NULL,
    station_code character varying(50) NOT NULL,
    s_date date NOT NULL,
    pm_2_5 integer
);


ALTER TABLE public.delhi_pm_2_5 OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 32814)
-- Name: delhi_pm_2_5_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.delhi_pm_2_5_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.delhi_pm_2_5_id_seq OWNER TO postgres;

--
-- TOC entry 2835 (class 0 OID 0)
-- Dependencies: 204
-- Name: delhi_pm_2_5_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.delhi_pm_2_5_id_seq OWNED BY public.delhi_pm_2_5.id;


--
-- TOC entry 2693 (class 2604 OID 32810)
-- Name: delhi_monitoring_stations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.delhi_monitoring_stations ALTER COLUMN id SET DEFAULT nextval('public.delhi_monitoring_stations_id_seq'::regclass);


--
-- TOC entry 2694 (class 2604 OID 32819)
-- Name: delhi_pm_2_5 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.delhi_pm_2_5 ALTER COLUMN id SET DEFAULT nextval('public.delhi_pm_2_5_id_seq'::regclass);


--
-- TOC entry 2826 (class 0 OID 32807)
-- Dependencies: 203
-- Data for Name: delhi_monitoring_stations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (0, 'Andhra Pradesh', 'Amaravati', 'site_1406', 'Secretariat, Amaravati', 'APPCB', 16.515083, 80.518167);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (1, 'Andhra Pradesh', 'Rajamahendravaram', 'site_1399', 'Anand Kala Kshetram, Rajamahendravaram', 'APPCB', 16.987287, 81.736318);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (2, 'Andhra Pradesh', 'Tirupati', 'site_258', 'Tirumala, Tirupati', 'APPCB', 13.67, 79.35);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (3, 'Andhra Pradesh', 'Visakhapatnam', 'site_260', 'GVM Corporation, Visakhapatnam', 'APPCB', 17.72, 83.3);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (4, 'Assam', 'Guwahati', 'site_5073', 'Railway Colony, Guwahati', 'APCB', 26.181742, 91.78063);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (5, 'Bihar', 'Gaya', 'site_159', 'Collectorate, Gaya', 'BSPCB', 24.7955, 84.9994);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (6, 'Bihar', 'Gaya', 'site_5338', 'SFTI Kusdihra, Gaya', 'BSPCB', 24.762518, 84.982348);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (7, 'Bihar', 'Hajipur', 'site_5337', 'Industrial Area, Hajipur', 'BSPCB', 25.697189, 85.2459);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (8, 'Bihar', 'Muzaffarpur', 'site_5370', 'Buddha Colony, Muzaffarpur', 'BSPCB', 26.11442, 85.39813);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (9, 'Bihar', 'Muzaffarpur', 'site_158', 'Muzaffarpur Collectorate, Muzaffarpur', 'BSPCB', 26.1209, 85.3647);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (10, 'Bihar', 'Patna', 'site_5336', 'DRM Office Danapur, Patna', 'BSPCB', 25.586562, 85.043586);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (11, 'Bihar', 'Patna', 'site_5335', 'Govt. High School Shikarpur, Patna', 'BSPCB', 25.592539, 85.227158);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (12, 'Bihar', 'Patna', 'site_157', 'IGSC Planetarium Complex, Patna', 'BSPCB', 25.5941, 85.1376);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (13, 'Bihar', 'Patna', 'site_5261', 'Muradpur, Patna', 'BSPCB', 25.619651, 85.147382);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (14, 'Bihar', 'Patna', 'site_5262', 'Rajbansi Nagar, Patna', 'BSPCB', 25.599486, 85.113666);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (15, 'Bihar', 'Patna', 'site_5263', 'Samanpura, Patna', 'BSPCB', 25.596727, 85.085624);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (16, 'Chandigarh', 'Chandigarh', 'site_5127', 'Sector-25, Chandigarh', 'CPCC', 30.751462, 76.762879);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (17, 'Delhi', 'Delhi', 'site_5024', 'Alipur, Delhi', 'DPCC', 28.815329, 77.15301);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (18, 'Delhi', 'Delhi', 'site_301', 'Anand Vihar, Delhi', 'DPCC', 28.646835, 77.316032);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (19, 'Delhi', 'Delhi', 'site_1420', 'Ashok Vihar, Delhi', 'DPCC', 28.695381, 77.181665);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (20, 'Delhi', 'Delhi', 'site_108', 'Aya Nagar, Delhi', 'IMD', 28.470691, 77.109936);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (21, 'Delhi', 'Delhi', 'site_1560', 'Bawana, Delhi', 'DPCC', 28.7762, 77.051074);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (22, 'Delhi', 'Delhi', 'site_103', 'CRRI Mathura Road, Delhi', 'IMD', 28.551201, 77.273574);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (23, 'Delhi', 'Delhi', 'site_118', 'DTU, Delhi', 'CPCB', 28.75005, 77.111261);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (24, 'Delhi', 'Delhi', 'site_1421', 'Dr. Karni Singh Shooting Range, Delhi', 'DPCC', 28.498571, 77.26484);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (25, 'Delhi', 'Delhi', 'site_1422', 'Dwarka-Sector 8, Delhi', 'DPCC', 28.571027, 77.071901);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (26, 'Delhi', 'Delhi', 'site_106', 'IGI Airport (T3), Delhi', 'IMD', 28.562776, 77.118005);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (27, 'Delhi', 'Delhi', 'site_114', 'IHBAS, Dilshad Garden, Delhi', 'CPCB', 28.681174, 77.302523);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (28, 'Delhi', 'Delhi', 'site_117', 'ITO, Delhi', 'CPCB', 28.628624, 77.24106);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (29, 'Delhi', 'Delhi', 'site_1423', 'Jahangirpuri, Delhi', 'DPCC', 28.73282, 77.170633);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (30, 'Delhi', 'Delhi', 'site_1424', 'Jawaharlal Nehru Stadium', 'DPCC', 28.58028, 77.233829);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (31, 'Delhi', 'Delhi', 'site_109', 'Lodhi Road, Delhi', 'IMD', 28.591825, 77.227307);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (32, 'Delhi', 'Delhi', 'site_1425', 'Major Dhyan Chand National Stadium, Delhi', 'DPCC', 28.611281, 77.237738);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (33, 'Delhi', 'Delhi', 'site_122', 'Mandir Marg, Delhi', 'DPCC', 28.636429, 77.201067);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (34, 'Delhi', 'Delhi', 'site_1561', 'Mundka, Delhi - DPCC', 'DPCC', 28.684678, 77.076574);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (35, 'Delhi', 'Delhi', 'site_115', 'NSIT Dwarka, Delhi', 'CPCB', 28.60909, 77.032541);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (36, 'Delhi', 'Delhi', 'site_1427', 'Najafgarh, Delhi', 'DPCC', 28.570173, 76.933762);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (37, 'Delhi', 'Delhi', 'site_1426', 'Narela, Delhi', 'DPCC', 28.822836, 77.101981);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (38, 'Delhi', 'Delhi', 'site_1429', 'Nehru Nagar, Delhi', 'DPCC', 28.56789, 77.250515);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (39, 'Delhi', 'Delhi', 'site_105', 'North Campus, DU, Delhi', 'IMD', 28.657381, 77.158545);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (40, 'Delhi', 'Delhi', 'site_1428', 'Okhla Phase-2, Delhi', 'DPCC', 28.530785, 77.271255);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (41, 'Delhi', 'Delhi', 'site_1431', 'Patparganj, Delhi ', 'DPCC', 28.623748, 77.287205);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (42, 'Delhi', 'Delhi', 'site_125', 'Punjabi Bagh, Delhi', 'DPCC', 28.674045, 77.131023);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (43, 'Delhi', 'Delhi', 'site_1563', 'Pusa, Delhi', 'DPCC', 28.639645, 77.146262);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (44, 'Delhi', 'Delhi', 'site_107', 'Pusa, Delhi', 'IMD', 28.639645, 77.146263);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (45, 'Delhi', 'Delhi', 'site_124', 'R K Puram, Delhi', 'DPCC', 28.563262, 77.186937);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (46, 'Delhi', 'Delhi', 'site_1430', 'Rohini, Delhi', 'DPCC', 28.732528, 77.11992);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (47, 'Delhi', 'Delhi', 'site_113', 'Shadipur, Delhi - CPCB'',', 'CPCB', 28.651478, 77.147311);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (48, 'Delhi', 'Delhi', 'site_119', 'Sirifort, Delhi', 'CPCB', 28.550425, 77.215938);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (49, 'Delhi', 'Delhi', 'site_1432', 'Sonia Vihar, Delhi', 'DPCC', 28.710508, 77.249485);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (50, 'Delhi', 'Delhi', 'site_1562', 'Sri Aurobindo Marg, Delhi', 'DPCC', 28.531346, 77.190156);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (51, 'Delhi', 'Delhi', 'site_1435', 'Vivek Vihar, Delhi', 'DPCC', 28.672342, 77.31526);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (52, 'Delhi', 'Delhi', 'site_1434', 'Wazirpur, Delhi', 'DPCC', 28.699793, 77.165453);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (53, 'Gujarat', 'Ahmedabad', 'site_308', 'Maninagar, Ahmedabad', 'GPCB', 23.002657, 72.591912);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (54, 'Gujarat', 'Ankleshwar', 'site_5065', 'GIDC, Ankleshwar', 'GPCB', 21.613267, 73.010555);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (55, 'Gujarat', 'Gandhinagar', 'site_5066', 'Sector-10, Gandhinagar', 'GPCB', 23.221714, 72.654328);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (56, 'Gujarat', 'Nandesari', 'site_5274', 'GIDC, Nandesari', 'Nandesari Ind. Association', 22.410802, 73.097923);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (57, 'Gujarat', 'Vapi', 'site_5071', 'Phase-1 GIDC, Vapi', 'GPCB', 20.362421, 72.918013);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (58, 'Gujarat', 'Vatva', 'site_5067', 'Phase-4 GIDC, Vatva', 'GPCB', 22.969611, 72.6435);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (59, 'Haryana', 'Ambala  ', 'site_5052', 'Patti Mehar, Ambala', 'HSPCB', 30.379589, 76.778328);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (60, 'Haryana', 'Bahadurgarh ', 'site_5045', 'Arya Nagar, Bahadurgarh', 'HSPCB', 28.6701, 76.9254);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (61, 'Haryana', 'Ballabgarh', 'site_5060', 'Nathu Colony, Ballabgarh', 'HSPCB', 28.341925, 77.319699);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (62, 'Haryana', 'Bhiwani', 'site_5047', 'H.B. Colony, Bhiwani', 'HSPCB', 28.806223, 76.141105);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (63, 'Haryana', 'Charkhi Dadri', 'site_5339', 'Mini Secretariat, Charkhi Dadri', 'HSPCB', 28.593883, 76.270653);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (64, 'Haryana', 'Dharuhera', 'site_5044', 'Municipal Corporation Office, Dharuhera', 'HSPCB', 28.2068, 76.7997);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (65, 'Haryana', 'Faridabad', 'site_5340', 'New Industrial Town, Faridabad', 'HSPCB', 28.39072, 77.30059);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (66, 'Haryana', 'Faridabad', 'site_5342', 'Sector 11, Faridabad', 'HSPCB', 28.376058, 77.315741);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (67, 'Haryana', 'Faridabad', 'site_5341', 'Sector 30, Faridabad', 'HSPCB', 28.4417, 77.3217);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (68, 'Haryana', 'Faridabad', 'site_263', 'Sector- 16A, Faridabad', 'HSPCB', 28.408842, 77.309908);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (69, 'Haryana', 'Fatehabad ', 'site_5054', 'Huda Sector, Fatehabad', 'HSPCB', 29.503664, 75.467934);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (70, 'Haryana', 'Gurugram', 'site_5025', 'NISE Gwal Pahari, Gurugram', 'HSPCB', 28.422681, 77.148944);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (71, 'Haryana', 'Gurugram', 'site_5345', 'Sector-51, Gurugram', 'HSPCB', 28.4227, 77.0667);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (72, 'Haryana', 'Gurugram', 'site_5344', 'Teri Gram, Gurugram', 'HSPCB', 28.4275, 77.1465);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (73, 'Haryana', 'Gurugram', 'site_146', 'Vikas Sadan, Gurugram', 'HSPCB', 28.450124, 77.026305);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (74, 'Haryana', 'Hisar', 'site_5057', 'Urban Estate-II, Hisar', 'HSPCB', 29.14056, 75.744941);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (75, 'Haryana', 'Jind', 'site_5056', 'Police Lines, Jind', 'HSPCB', 29.307814, 76.337619);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (76, 'Haryana', 'Kaithal', 'site_5072', 'Rishi Nagar, Kaithal', 'HSPCB', 29.8006, 76.4155);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (77, 'Haryana', 'Karnal', 'site_5049', 'Sector-12, Karnal', 'HSPCB', 29.6953, 77.0027);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (78, 'Haryana', 'Kurukshetra ', 'site_5043', 'Sector-7, Kurukshetra', 'HSPCB', 29.966942, 76.875879);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (79, 'Haryana', 'Mandikhera', 'site_5055', 'General Hospital, Mandikhera', 'HSPCB', 27.9002, 76.9938);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (80, 'Haryana', 'Manesar ', 'site_5039', 'Sector-2 IMT, Manesar', 'HSPCB', 28.360699, 76.93609);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (81, 'Haryana', 'Narnaul', 'site_5053', 'Shastri Nagar, Narnaul', 'HSPCB', 28.060249, 76.113115);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (82, 'Haryana', 'Palwal ', 'site_5050', 'Shyam Nagar, Palwal', 'HSPCB', 28.148556, 77.332067);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (83, 'Haryana', 'Panchkula', 'site_161', 'Sector-6, Panchkula', 'HSPCB', 30.705778, 76.853181);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (84, 'Haryana', 'Panipat', 'site_5048', 'Sector-18, Panipat', 'HSPCB', 29.497973, 76.993331);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (85, 'Haryana', 'Rohtak', 'site_147', 'MD University, Rohtak', 'HSPCB', 28.52123, 76.37138);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (86, 'Haryana', 'Sirsa ', 'site_5051', 'F-Block, Sirsa', 'HSPCB', 29.5364, 75.0158);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (87, 'Haryana', 'Sonipat', 'site_5041', 'Murthal, Sonipat', 'HSPCB', 29.0272, 77.0621);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (88, 'Haryana', 'Yamunanagar', 'site_5046', 'Gobind Pura, Yamuna Nagar', 'HSPCB', 30.148057, 77.289347);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (89, 'Jharkhand', 'Jorapokhar', 'site_254', 'Tata Stadium, Jorapokhar', 'JSPCB', 23.707909, 86.41467);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (90, 'Karnataka', 'Bagalkot', 'site_5264', 'Vidayagiri, Bagalkot', 'KSPCB', 16.172806, 75.659694);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (91, 'Karnataka', 'Bengaluru', 'site_162', 'BTM Layout, Bengaluru', 'CPCB', 12.913522, 77.59508);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (92, 'Karnataka', 'Bengaluru', 'site_164', 'BWSSB Kadabesanahalli, Bengaluru', 'CPCB', 12.935205, 77.681449);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (93, 'Karnataka', 'Bengaluru', 'site_1553', 'Bapuji Nagar, Bengaluru', 'KSPCB', 12.951913, 77.539784);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (94, 'Karnataka', 'Bengaluru', 'site_165', 'City Railway Station, Bengaluru', 'KSPCB', 12.975684, 77.566075);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (95, 'Karnataka', 'Bengaluru', 'site_1554', 'Hebbal, Bengaluru', 'KSPCB', 13.029152, 77.585901);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (96, 'Karnataka', 'Bengaluru', 'site_1555', 'Hombegowda Nagar, Bengaluru', 'KSPCB', 12.938539, 77.5901);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (97, 'Karnataka', 'Bengaluru', 'site_1556', 'Jayanagar 5th Block, Bengaluru', 'KSPCB', 12.920984, 77.584908);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (98, 'Karnataka', 'Bengaluru', 'site_163', 'Peenya, Bengaluru', 'CPCB', 13.02702, 77.494094);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (99, 'Karnataka', 'Bengaluru', 'site_166', 'Sanegurava Halli, Bengaluru', 'KSPCB', 12.990328, 77.543139);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (100, 'Karnataka', 'Bengaluru', 'site_1558', 'Silk Board, Bengaluru', 'KSPCB', 12.917348, 77.622813);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (101, 'Karnataka', 'Chikkaballapur', 'site_1557', 'Chikkaballapur Rural, Chikkaballapur', 'KSPCB', 13.428828, 77.731418);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (102, 'Karnataka', 'Chikkamagaluru', 'site_5265', 'Kalyana Nagara, Chikkamagaluru', 'KSPCB', 13.328028, 75.797056);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (103, 'Karnataka', 'Hubballi', 'site_1447', 'Deshpande Nagar, Hubballi', 'KSPCB', 15.351773, 75.140726);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (104, 'Karnataka', 'Kalaburagi', 'site_1565', 'Lal Bahadur Shastri Nagar, Kalaburagi', 'KSPCB', 17.321993, 76.822628);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (105, 'Karnataka', 'Mysuru', 'site_5125', 'Hebbal 1st Stage, Mysuru', 'KSPCB', 12.21041, 76.37376);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (106, 'Karnataka', 'Ramanagara', 'site_5255', 'Vijay Nagar, Ramanagara', 'KSPCB', 12.733409, 77.298051);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (107, 'Karnataka', 'Vijayapura', 'site_5267', 'Ibrahimpur, Vijayapura', 'KSPCB', 16.802639, 75.722694);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (108, 'Karnataka', 'Yadgir', 'site_5254', 'Collector Office, Yadgir', 'KSPCB', 16.7602, 77.1428);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (109, 'Kerala', 'Eloor', 'site_5105', 'Udyogamandal, Eloor', 'Kerala PCB', 10.073232, 76.302765);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (110, 'Kerala', 'Ernakulam', 'site_5272', 'Kacheripady, Ernakulam', 'Kerala PCB', 9.985653, 76.281342);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (111, 'Kerala', 'Kannur', 'site_5276', 'Thavakkara, Kannur', 'Kerala PCB', 11.875, 75.3732);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (112, 'Kerala', 'Kochi', 'site_5270', 'Vyttila, Kochi', 'Kerala PCB', 9.969447, 76.321186);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (113, 'Kerala', 'Kollam', 'site_5334', 'Polayathode, Kollam', 'Kerala PCB', 8.8787, 76.6073);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (114, 'Kerala', 'Kozhikode', 'site_5271', 'Palayam, Kozhikode', 'Kerala PCB', 11.249077, 75.784371);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (115, 'Kerala', 'Thiruvananthapuram', 'site_5331', 'Kariavattom, Thiruvananthapuram', 'Kerala PCB', 8.5637, 76.8865);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (116, 'Kerala', 'Thiruvananthapuram', 'site_252', 'Plammoodu, Thiruvananthapuram', 'Kerala PCB', 8.514909, 76.943588);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (117, 'Madhya Pradesh', 'Bhopal', 'site_5247', 'T T Nagar, Bhopal', 'MPPCB', 23.233584, 77.400574);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (118, 'Madhya Pradesh', 'Damoh', 'site_5040', 'Shrivastav Colony, Damoh', 'MPPCB', 23.817487, 79.446246);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (119, 'Madhya Pradesh', 'Dewas', 'site_1404', 'Bhopal Chauraha, Dewas', 'MPPCB', 22.968259, 76.064118);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (120, 'Madhya Pradesh', 'Gwalior', 'site_5273', 'City Center, Gwalior', 'MPPCB', 26.203442, 78.193251);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (121, 'Madhya Pradesh', 'Gwalior', 'site_5275', 'Phool Bagh, Gwalior', 'Mondelez Ind. Food', 26.210536, 78.171);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (122, 'Madhya Pradesh', 'Indore', 'site_5248', 'Chhoti Gwaltoli, Indore', 'MPPCB', 22.431, 75.5213);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (123, 'Madhya Pradesh', 'Jabalpur', 'site_5249', 'Marhatal, Jabalpur', 'MPPCB', 23.168606, 79.932247);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (124, 'Madhya Pradesh', 'Katni', 'site_5250', 'Gole Bazar, Katni', 'MPPCB', 23.50016, 80.23284);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (125, 'Madhya Pradesh', 'Maihar', 'site_5068', 'Sahilara, Maihar', 'KJS Cements', 24.261301, 80.723178);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (126, 'Madhya Pradesh', 'Mandideep', 'site_1403', 'Sector-D Industrial Area, Mandideep', 'MPPCB', 23.10844, 77.511428);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (127, 'Madhya Pradesh', 'Pithampur', 'site_1402', 'Sector-2 Industrial Area, Pithampur', 'MPPCB', 22.624758, 75.675238);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (128, 'Madhya Pradesh', 'Ratlam', 'site_5042', 'Shasthri Nagar, Ratlam', 'IPCA Lab', 23.331731, 75.045981);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (129, 'Madhya Pradesh', 'Sagar', 'site_5269', 'Deen Dayal Nagar, Sagar', 'MPPCB', 23.864016, 78.802893);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (130, 'Madhya Pradesh', 'Satna', 'site_1433', 'Bandhavgar Colony, Satna', 'Birla Cement', 24.584344, 80.854941);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (131, 'Madhya Pradesh', 'Singrauli', 'site_1401', 'Vindhyachal STPS, Singrauli', 'MPPCB', 24.10897, 82.64558);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (132, 'Madhya Pradesh', 'Ujjain', 'site_1400', 'Mahakaleshwar Temple, Ujjain', 'MPPCB', 23.182719, 75.768218);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (133, 'Maharashtra', 'Aurangabad', 'site_198', 'More Chowk Waluj, Aurangabad', 'MPCB', 19.838944, 75.244448);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (134, 'Maharashtra', 'Chandrapur', 'site_271', 'Chandrapur, Chandrapur', 'MPCB', 19.645324, 77.634523);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (135, 'Maharashtra', 'Chandrapur', 'site_295', 'MIDC Khutala, Chandrapur', 'MPCB', 19.97753, 79.233709);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (136, 'Maharashtra', 'Kalyan', 'site_5118', 'Khadakpada, Kalyan', 'MPCB', 19.25292, 73.142019);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (137, 'Maharashtra', 'Mumbai', 'site_168', 'Bandra, Mumbai', 'MPCB', 19.0627, 72.84614);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (138, 'Maharashtra', 'Mumbai', 'site_5113', 'Borivali East, Mumbai', 'MPCB', 19.13276, 72.52048);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (139, 'Maharashtra', 'Mumbai', 'site_5107', 'Chhatrapati Shivaji Intl. Airport (T2), Mumbai', 'MPCB', 19.10078, 72.87462);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (140, 'Maharashtra', 'Mumbai', 'site_5120', 'Colaba, Mumbai', 'MPCB', 18.91, 72.82);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (141, 'Maharashtra', 'Mumbai', 'site_5104', 'Kurla, Mumbai', 'MPCB', 19.0863, 72.8888);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (142, 'Maharashtra', 'Mumbai', 'site_5112', 'Powai, Mumbai', 'MPCB', 19.1375, 72.915056);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (143, 'Maharashtra', 'Mumbai', 'site_5119', 'Sion, Mumbai', 'MPCB', 19.047, 72.8746);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (144, 'Maharashtra', 'Mumbai', 'site_5102', 'Vasai West, Mumbai', 'MPCB', 19.3832, 72.8204);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (145, 'Maharashtra', 'Mumbai', 'site_5106', 'Vile Parle West, Mumbai', 'MPCB', 19.10861, 72.83622);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (146, 'Maharashtra', 'Mumbai', 'site_5115', 'Worli, Mumbai', 'MPCB', 18.993616, 72.812811);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (147, 'Maharashtra', 'Nagpur', 'site_303', 'Opp GPO Civil Lines, Nagpur', 'MPCB', 21.152875, 79.051753);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (148, 'Maharashtra', 'Nashik', 'site_304', 'Gangapur Road, Nashik', 'MPCB', 20.007329, 73.776243);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (149, 'Maharashtra', 'Navi Mumbai', 'site_261', 'Airoli, Navi Mumbai', 'MPCB', 19.1494, 72.9986);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (150, 'Maharashtra', 'Navi Mumbai', 'site_5114', 'Mahape, Navi Mumbai', 'MPCB', 19.113505, 73.008978);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (151, 'Maharashtra', 'Navi Mumbai', 'site_5103', 'Nerul, Navi Mumbai', 'MPCB', 19.008751, 73.01662);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (152, 'Maharashtra', 'Pune', 'site_292', 'Karve Road, Pune', 'MPCB', 18.501174, 73.816553);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (153, 'Maharashtra', 'Solapur', 'site_302', 'Solapur, Solapur', 'MPCB', 17.659919, 75.906391);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (154, 'Maharashtra', 'Thane', 'site_305', 'Pimpleshwar Mandir, Thane', 'MPCB', 19.192056, 72.958519);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (155, 'Meghalaya ', 'Shillong', 'site_5131', 'Lumpyngngad, Shillong', 'Meghalaya PCB', 25.5586, 91.8985);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (156, 'Mizoram', 'Aizawl', 'site_5346', 'Sikulpuikawn, Aizawl', 'Mizoram PCB', 23.717634, 92.719284);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (157, 'Nagaland', 'Kohima', 'site_5375', 'PWD Juction, Kohima', 'NPCB', 25.663541, 94.098988);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (158, 'Odisha', 'Brajrajnagar', 'site_1410', 'GM Office, Brajrajnagar', 'OSPCB', 21.8005, 83.839698);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (159, 'Odisha', 'Talcher', 'site_1408', 'Talcher Coalfields,Talcher', 'OSPCB', 20.936071, 85.170702);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (160, 'Punjab', 'Amritsar', 'site_256', 'Golden Temple, Amritsar', 'PPCB', 31.62, 74.876512);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (161, 'Punjab', 'Bathinda', 'site_1549', 'Hardev Nagar, Bathinda', 'PPCB', 30.233011, 74.907758);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (162, 'Punjab', 'Jalandhar', 'site_1438', 'Civil Line, Jalandhar', 'PPCB', 31.321907, 75.578914);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (163, 'Punjab', 'Khanna', 'site_1450', 'Kalal Majra, Khanna', 'PPCB', 30.736056, 76.209694);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (164, 'Punjab', 'Ludhiana', 'site_253', 'Punjab Agricultural University, Ludhiana', 'PPCB', 30.9028, 75.8086);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (165, 'Punjab', 'Mandi Gobindgarh', 'site_255', 'RIMT University, Mandi Gobindgarh', 'PPCB', 30.649961, 76.331442);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (166, 'Punjab', 'Patiala', 'site_1437', 'Model Town, Patiala', 'PPCB', 30.349388, 76.366642);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (167, 'Punjab', 'Rupnagar', 'site_1538', 'Ratanpura, Rupnagar', 'Ambuja Cements', 30.032545, 76.562305);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (168, 'Rajasthan', 'Alwar', 'site_1390', 'Moti Doongri, Alwar', 'RSPCB', 27.554793, 76.611536);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (169, 'Rajasthan', 'Ajmer', 'site_1392', 'Civil Lines, Ajmer', 'RSPCB', 26.470859, 74.646594);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (170, 'Rajasthan', 'Bhiwadi', 'site_1391', 'RIICO Ind. Area III, Bhiwadi', 'RSPCB', 28.194909, 76.862296);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (171, 'Rajasthan', 'Jaipur', 'site_1393', 'Adarsh Nagar, Jaipur', 'RSPCB', 26.902909, 75.836858);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (172, 'Rajasthan', 'Jaipur', 'site_134', 'Police Commissionerate, Jaipur', 'RSPCB', 26.916409, 75.79949);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (173, 'Rajasthan', 'Jaipur', 'site_1396', 'Shastri Nagar, Jaipur', 'RSPCB', 26.950293, 75.730943);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (174, 'Rajasthan', 'Jodhpur', 'site_136', 'Collectorate, Jodhpur', 'RSPCB', 26.268249, 73.019385);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (175, 'Rajasthan', 'Kota', 'site_1394', 'Shrinath Puram, Kota', 'RSPCB', 25.14389, 75.821256);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (176, 'Rajasthan', 'Pali', 'site_1395', 'Indira Colony Vistar, Pali', 'RSPCB', 25.771061, 73.340227);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (177, 'Rajasthan', 'Udaipur', 'site_1397', 'Ashok Nagar, Udaipur', 'RSPCB', 24.588617, 73.63214);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (178, 'Tamil Nadu', 'Chennai', 'site_293', 'Alandur Bus Depot, Chennai', 'CPCB', 12.909916, 80.107654);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (179, 'Tamil Nadu', 'Chennai', 'site_5092', 'Manali Village, Chennai', 'TNPCB', 13.1662, 80.2584);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (180, 'Tamil Nadu', 'Chennai', 'site_306', 'Manali, Chennai', 'CPCB', 13.164544, 80.26285);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (181, 'Tamil Nadu', 'Chennai', 'site_288', 'Velachery Res. Area, Chennai', 'CPCB', 13.005219, 80.239813);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (182, 'Tamil Nadu', 'Coimbatore', 'site_5094', 'SIDCO Kurichi, Coimbatore', 'TNPCB', 10.942451, 76.978996);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (183, 'Telangana', 'Hyderabad', 'site_199', 'Bollaram Industrial Area, Hyderabad', 'TSPCB', 17.540891, 78.358528);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (184, 'Telangana', 'Hyderabad', 'site_262', 'Central University, Hyderabad', 'TSPCB', 17.460103, 78.334361);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (185, 'Telangana', 'Hyderabad', 'site_251', 'ICRISAT Patancheru, Hyderabad', 'TSPCB', 17.5184, 78.278777);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (186, 'Telangana', 'Hyderabad', 'site_275', 'IDA Pashamylaram, Hyderabad', 'TSPCB', 17.53169, 78.218939);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (187, 'Telangana', 'Hyderabad', 'site_294', 'Sanathnagar, Hyderabad', 'TSPCB', 17.455946, 78.433215);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (188, 'Telangana', 'Hyderabad', 'site_298', 'Zoo Park, Hyderabad', 'TSPCB', 17.349694, 78.451437);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (189, 'Uttar Pradesh', 'Agra', 'site_307', 'Sanjay Palace, Agra', 'UPPCB', 27.198658, 78.005981);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (190, 'Uttar Pradesh', 'Baghpat', 'site_1569', 'New Collectorate, Baghpat', 'UPPCB', 28.974801, 77.213357);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (191, 'Uttar Pradesh', 'Bulandshahr', 'site_1542', 'Yamunapuram, Bulandshahr', 'UPPCB', 28.406963, 77.849831);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (192, 'Uttar Pradesh', 'Ghaziabad', 'site_5082', 'Indirapuram, Ghaziabad', 'UPPCB', 28.646233, 77.358075);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (193, 'Uttar Pradesh', 'Ghaziabad', 'site_5083', 'Loni, Ghaziabad', 'UPPCB', 28.757294, 77.278792);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (194, 'Uttar Pradesh', 'Ghaziabad', 'site_5081', 'Sanjay Nagar, Ghaziabad', 'UPPCB', 28.685382, 77.453839);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (195, 'Uttar Pradesh', 'Ghaziabad', 'site_144', 'Vasundhara, Ghaziabad', 'UPPCB', 28.660335, 77.357256);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (196, 'Uttar Pradesh', 'Greater Noida', 'site_1541', 'Knowledge Park - III, Greater Noida', 'UPPCB', 28.47272, 77.482);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (197, 'Uttar Pradesh', 'Greater Noida', 'site_5121', 'Knowledge Park - V, Greater Noida', 'UPPCB', 28.557054, 77.453663);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (198, 'Uttar Pradesh', 'Hapur', 'site_5023', 'Anand Vihar, Hapur', 'UPPCB', 28.725645, 77.749675);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (199, 'Uttar Pradesh', 'Kanpur', 'site_276', 'Nehru Nagar, Kanpur', 'UPPCB', 26.470314, 80.322986);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (200, 'Uttar Pradesh', 'Lucknow', 'site_272', 'Central School, Lucknow', 'CPCB', 26.8821, 80.930275);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (201, 'Uttar Pradesh', 'Lucknow', 'site_5128', 'Gomti Nagar, Lucknow', 'UPPCB', 26.86812, 81.005119);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (202, 'Uttar Pradesh', 'Lucknow', 'site_277', 'Lalbagh, Lucknow', 'CPCB', 26.84588, 80.936554);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (203, 'Uttar Pradesh', 'Lucknow', 'site_279', 'Talkatora District Industries Center, Lucknow', 'CPCB', 26.833997, 80.891736);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (204, 'Uttar Pradesh', 'Meerut', 'site_5258', 'Ganga Nagar, Meerut', 'UPPCB', 28.999264, 77.759035);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (205, 'Uttar Pradesh', 'Meerut', 'site_5109', 'Jai Bhim Nagar, Meerut', 'UPPCB', 28.953588, 77.762294);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (206, 'Uttar Pradesh', 'Meerut', 'site_5257', 'Pallavpuram Phase 2, Meerut', 'UPPCB', 29.06351, 77.709723);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (207, 'Uttar Pradesh', 'Moradabad', 'site_1398', 'Lajpat Nagar, Moradabad', 'UPPCB', 28.825341, 78.721301);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (208, 'Uttar Pradesh', 'Muzaffarnagar', 'site_1550', 'New Mandi, Muzaffarnagar', 'UPPCB', 29.472351, 77.719403);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (209, 'Uttar Pradesh', 'Noida', 'site_153', 'Sector - 125, Noida', 'UPPCB', 28.544761, 77.323126);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (210, 'Uttar Pradesh', 'Noida', 'site_111', 'Sector - 62, Noida', 'IMD', 28.624548, 77.35771);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (211, 'Uttar Pradesh', 'Noida', 'site_5123', 'Sector-1, Noida', 'UPPCB', 28.5898, 77.3101);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (212, 'Uttar Pradesh', 'Noida', 'site_5122', 'Sector-116, Noida', 'UPPCB', 28.56923, 77.393848);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (213, 'Uttar Pradesh', 'Varanasi', 'site_273', 'Ardhali Bazar, Varanasi', 'UPPCB', 25.350599, 82.908307);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (214, 'West Bengal', 'Asansol', 'site_1418', 'Asansol Court Area, Asansol', 'WBPCB', 23.685297, 86.945968);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (215, 'West Bengal', 'Howrah', 'site_5101', 'Belur Math, Howrah', 'WBPCB', 22.629801, 88.352017);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (216, 'West Bengal', 'Howrah', 'site_274', 'Ghusuri, Howrah', 'WBPCB', 22.611968, 88.347422);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (217, 'West Bengal', 'Howrah', 'site_1416', 'Padmapukur, Howrah', 'WBPCB', 22.568732, 88.279728);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (218, 'West Bengal', 'Kolkata', 'site_5238', 'Ballygunge, Kolkata', 'WBPCB', 22.536751, 88.363802);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (219, 'West Bengal', 'Kolkata', 'site_5129', 'Bidhannagar, Kolkata', 'WBPCB', 22.58157, 88.410025);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (220, 'West Bengal', 'Kolkata', 'site_5110', 'Fort William, Kolkata', 'WBPCB', 22.55664, 88.342674);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (221, 'West Bengal', 'Kolkata', 'site_5111', 'Jadavpur, Kolkata', 'WBPCB', 22.49929, 88.36917);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (222, 'West Bengal', 'Kolkata', 'site_296', 'Rabindra Bharati University, Kolkata', 'WBPCB', 22.627847, 88.380669);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (223, 'West Bengal', 'Kolkata', 'site_5126', 'Rabindra Sarobar, Kolkata', 'WBPCB', 22.51106, 88.35142);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (224, 'West Bengal', 'Kolkata', 'site_309', 'Victoria, Kolkata', 'WBPCB', 22.544808, 88.340369);
INSERT INTO public.delhi_monitoring_stations (id, states, city, station_code, station_name, board, latitude, longitude) VALUES (225, 'West Bengal', 'Siliguri', 'site_1419', 'Ward-32 Bapupara, Siliguri', 'WBPCB', NULL, NULL);


--
-- TOC entry 2828 (class 0 OID 32816)
-- Dependencies: 205
-- Data for Name: delhi_pm_2_5; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (0, 'site_5024', '2020-09-01', 27);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (1, 'site_5024', '2020-09-02', 30);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (2, 'site_5024', '2020-09-03', 60);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (3, 'site_5024', '2020-09-04', 66);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (4, 'site_5024', '2020-09-05', 120);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (5, 'site_5024', '2020-09-06', 57);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (6, 'site_5024', '2020-09-07', 70);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (7, 'site_5024', '2020-09-08', 52);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (8, 'site_5024', '2020-09-09', 76);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (9, 'site_5024', '2020-09-10', 78);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (10, 'site_5024', '2020-09-11', 116);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (11, 'site_301', '2020-09-01', 26);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (12, 'site_301', '2020-09-02', 31);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (13, 'site_301', '2020-09-03', 64);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (14, 'site_301', '2020-09-04', 63);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (15, 'site_301', '2020-09-05', 89);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (16, 'site_301', '2020-09-06', 75);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (17, 'site_301', '2020-09-07', 133);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (18, 'site_301', '2020-09-08', 67);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (19, 'site_301', '2020-09-09', 77);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (20, 'site_301', '2020-09-10', 90);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (21, 'site_301', '2020-09-11', 97);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (22, 'site_1420', '2020-09-01', 19);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (23, 'site_1420', '2020-09-02', 22);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (24, 'site_1420', '2020-09-03', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (25, 'site_1420', '2020-09-04', 58);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (26, 'site_1420', '2020-09-05', 86);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (27, 'site_1420', '2020-09-06', 46);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (28, 'site_1420', '2020-09-07', 94);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (29, 'site_1420', '2020-09-08', 59);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (30, 'site_1420', '2020-09-09', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (31, 'site_1420', '2020-09-10', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (32, 'site_1420', '2020-09-11', 87);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (33, 'site_108', '2020-09-01', 26);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (34, 'site_108', '2020-09-02', 28);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (35, 'site_108', '2020-09-03', 54);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (36, 'site_108', '2020-09-04', 61);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (37, 'site_108', '2020-09-05', 44);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (38, 'site_108', '2020-09-06', 34);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (39, 'site_108', '2020-09-07', 68);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (40, 'site_108', '2020-09-08', 41);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (41, 'site_108', '2020-09-09', 86);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (42, 'site_108', '2020-09-10', 89);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (43, 'site_108', '2020-09-11', 120);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (44, 'site_1560', '2020-09-01', 34);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (45, 'site_1560', '2020-09-02', 36);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (46, 'site_1560', '2020-09-03', 82);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (47, 'site_1560', '2020-09-04', 71);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (48, 'site_1560', '2020-09-05', 109);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (49, 'site_1560', '2020-09-06', 58);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (50, 'site_1560', '2020-09-07', 77);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (51, 'site_1560', '2020-09-08', 51);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (52, 'site_1560', '2020-09-09', 106);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (53, 'site_1560', '2020-09-10', 100);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (54, 'site_1560', '2020-09-11', 120);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (55, 'site_103', '2020-09-01', 30);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (56, 'site_103', '2020-09-02', 32);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (57, 'site_103', '2020-09-03', 43);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (58, 'site_103', '2020-09-04', 74);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (59, 'site_103', '2020-09-05', 64);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (60, 'site_103', '2020-09-06', 40);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (61, 'site_103', '2020-09-07', 80);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (62, 'site_103', '2020-09-08', 57);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (63, 'site_103', '2020-09-09', 92);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (64, 'site_103', '2020-09-10', 95);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (65, 'site_103', '2020-09-11', 114);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (66, 'site_118', '2020-09-01', 24);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (67, 'site_118', '2020-09-02', 38);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (68, 'site_118', '2020-09-03', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (69, 'site_118', '2020-09-04', 90);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (70, 'site_118', '2020-09-05', 129);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (71, 'site_118', '2020-09-06', 56);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (72, 'site_118', '2020-09-07', 76);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (73, 'site_118', '2020-09-08', 66);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (74, 'site_118', '2020-09-09', 120);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (75, 'site_118', '2020-09-10', 114);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (76, 'site_118', '2020-09-11', 131);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (77, 'site_1421', '2020-09-01', 19);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (78, 'site_1421', '2020-09-02', 20);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (79, 'site_1421', '2020-09-03', 41);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (80, 'site_1421', '2020-09-04', 44);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (81, 'site_1421', '2020-09-05', 35);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (82, 'site_1421', '2020-09-06', 25);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (83, 'site_1421', '2020-09-07', 52);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (84, 'site_1421', '2020-09-08', 33);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (85, 'site_1421', '2020-09-09', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (86, 'site_1421', '2020-09-10', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (87, 'site_1421', '2020-09-11', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (88, 'site_1422', '2020-09-01', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (89, 'site_1422', '2020-09-02', 27);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (90, 'site_1422', '2020-09-03', 53);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (91, 'site_1422', '2020-09-04', 59);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (92, 'site_1422', '2020-09-05', 69);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (93, 'site_1422', '2020-09-06', 44);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (94, 'site_1422', '2020-09-07', 87);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (95, 'site_1422', '2020-09-08', 47);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (96, 'site_1422', '2020-09-09', 106);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (97, 'site_1422', '2020-09-10', 108);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (98, 'site_1422', '2020-09-11', 142);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (99, 'site_106', '2020-09-01', 27);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (100, 'site_106', '2020-09-02', 28);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (101, 'site_106', '2020-09-03', 61);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (102, 'site_106', '2020-09-04', 65);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (103, 'site_106', '2020-09-05', 78);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (104, 'site_106', '2020-09-06', 41);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (105, 'site_106', '2020-09-07', 83);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (106, 'site_106', '2020-09-08', 35);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (107, 'site_106', '2020-09-09', 98);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (108, 'site_106', '2020-09-10', 103);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (109, 'site_106', '2020-09-11', 128);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (110, 'site_114', '2020-09-01', 29);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (111, 'site_114', '2020-09-02', 29);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (112, 'site_114', '2020-09-03', 43);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (113, 'site_114', '2020-09-04', 41);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (114, 'site_114', '2020-09-05', 46);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (115, 'site_114', '2020-09-06', 37);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (116, 'site_114', '2020-09-07', 50);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (117, 'site_114', '2020-09-08', 36);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (118, 'site_114', '2020-09-09', 47);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (119, 'site_114', '2020-09-10', 38);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (120, 'site_114', '2020-09-11', 42);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (121, 'site_117', '2020-09-01', 26);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (122, 'site_117', '2020-09-02', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (123, 'site_117', '2020-09-03', 55);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (124, 'site_117', '2020-09-04', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (125, 'site_117', '2020-09-05', 64);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (126, 'site_117', '2020-09-06', 36);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (127, 'site_117', '2020-09-07', 55);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (128, 'site_117', '2020-09-08', 34);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (129, 'site_117', '2020-09-09', 47);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (130, 'site_117', '2020-09-10', 58);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (131, 'site_117', '2020-09-11', 66);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (132, 'site_1423', '2020-09-01', 27);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (133, 'site_1423', '2020-09-02', 30);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (134, 'site_1423', '2020-09-03', 74);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (135, 'site_1423', '2020-09-04', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (136, 'site_1423', '2020-09-05', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (137, 'site_1423', '2020-09-06', 66);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (138, 'site_1423', '2020-09-07', 92);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (139, 'site_1423', '2020-09-08', 69);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (140, 'site_1423', '2020-09-09', 137);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (141, 'site_1423', '2020-09-10', 144);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (142, 'site_1423', '2020-09-11', 145);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (143, 'site_1424', '2020-09-01', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (144, 'site_1424', '2020-09-02', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (145, 'site_1424', '2020-09-03', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (146, 'site_1424', '2020-09-04', 54);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (147, 'site_1424', '2020-09-05', 48);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (148, 'site_1424', '2020-09-06', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (149, 'site_1424', '2020-09-07', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (150, 'site_1424', '2020-09-08', 39);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (151, 'site_1424', '2020-09-09', 69);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (152, 'site_1424', '2020-09-10', 71);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (153, 'site_1424', '2020-09-11', 84);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (154, 'site_109', '2020-09-01', 34);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (155, 'site_109', '2020-09-02', 25);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (156, 'site_109', '2020-09-03', 49);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (157, 'site_109', '2020-09-04', 37);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (158, 'site_109', '2020-09-05', 36);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (159, 'site_109', '2020-09-06', 24);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (160, 'site_109', '2020-09-07', 43);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (161, 'site_109', '2020-09-08', 26);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (162, 'site_109', '2020-09-09', 44);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (163, 'site_109', '2020-09-10', 50);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (164, 'site_109', '2020-09-11', 60);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (165, 'site_1425', '2020-09-01', 22);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (166, 'site_1425', '2020-09-02', 19);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (167, 'site_1425', '2020-09-03', 48);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (168, 'site_1425', '2020-09-04', 54);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (169, 'site_1425', '2020-09-05', 57);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (170, 'site_1425', '2020-09-06', 38);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (171, 'site_1425', '2020-09-07', 75);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (172, 'site_1425', '2020-09-08', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (173, 'site_1425', '2020-09-09', 76);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (174, 'site_1425', '2020-09-10', 79);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (175, 'site_1425', '2020-09-11', 94);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (176, 'site_122', '2020-09-01', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (177, 'site_122', '2020-09-02', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (178, 'site_122', '2020-09-03', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (179, 'site_122', '2020-09-04', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (180, 'site_122', '2020-09-05', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (181, 'site_122', '2020-09-06', 42);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (182, 'site_122', '2020-09-07', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (183, 'site_122', '2020-09-08', 39);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (184, 'site_122', '2020-09-09', 50);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (185, 'site_122', '2020-09-10', 63);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (186, 'site_122', '2020-09-11', 91);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (187, 'site_1561', '2020-09-01', 23);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (188, 'site_1561', '2020-09-02', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (189, 'site_1561', '2020-09-03', 56);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (190, 'site_1561', '2020-09-04', 61);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (191, 'site_1561', '2020-09-05', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (192, 'site_1561', '2020-09-06', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (193, 'site_1561', '2020-09-07', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (194, 'site_1561', '2020-09-08', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (195, 'site_1561', '2020-09-09', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (196, 'site_1561', '2020-09-10', 94);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (197, 'site_1561', '2020-09-11', 113);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (198, 'site_115', '2020-09-01', 34);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (199, 'site_115', '2020-09-02', 30);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (200, 'site_115', '2020-09-03', 28);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (201, 'site_115', '2020-09-04', 30);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (202, 'site_115', '2020-09-05', 30);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (203, 'site_115', '2020-09-06', 28);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (204, 'site_115', '2020-09-07', 45);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (205, 'site_115', '2020-09-08', 28);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (206, 'site_115', '2020-09-09', 46);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (207, 'site_115', '2020-09-10', 40);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (208, 'site_115', '2020-09-11', 50);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (209, 'site_1427', '2020-09-01', 16);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (210, 'site_1427', '2020-09-02', 13);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (211, 'site_1427', '2020-09-03', 44);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (212, 'site_1427', '2020-09-04', 57);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (213, 'site_1427', '2020-09-05', 59);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (214, 'site_1427', '2020-09-06', 18);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (215, 'site_1427', '2020-09-07', 54);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (216, 'site_1427', '2020-09-08', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (217, 'site_1427', '2020-09-09', 90);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (218, 'site_1427', '2020-09-10', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (219, 'site_1427', '2020-09-11', 213);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (220, 'site_1426', '2020-09-01', 38);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (221, 'site_1426', '2020-09-02', 33);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (222, 'site_1426', '2020-09-03', 87);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (223, 'site_1426', '2020-09-04', 77);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (224, 'site_1426', '2020-09-05', 103);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (225, 'site_1426', '2020-09-06', 53);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (226, 'site_1426', '2020-09-07', 65);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (227, 'site_1426', '2020-09-08', 46);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (228, 'site_1426', '2020-09-09', 83);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (229, 'site_1426', '2020-09-10', 83);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (230, 'site_1426', '2020-09-11', 97);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (231, 'site_1429', '2020-09-01', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (232, 'site_1429', '2020-09-02', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (233, 'site_1429', '2020-09-03', 48);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (234, 'site_1429', '2020-09-04', 59);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (235, 'site_1429', '2020-09-05', 58);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (236, 'site_1429', '2020-09-06', 39);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (237, 'site_1429', '2020-09-07', 82);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (238, 'site_1429', '2020-09-08', 51);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (239, 'site_1429', '2020-09-09', 83);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (240, 'site_1429', '2020-09-10', 96);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (241, 'site_1429', '2020-09-11', 104);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (242, 'site_105', '2020-09-01', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (243, 'site_105', '2020-09-02', 31);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (244, 'site_105', '2020-09-03', 59);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (245, 'site_105', '2020-09-04', 54);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (246, 'site_105', '2020-09-05', 92);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (247, 'site_105', '2020-09-06', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (248, 'site_105', '2020-09-07', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (249, 'site_105', '2020-09-08', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (250, 'site_105', '2020-09-09', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (251, 'site_105', '2020-09-10', 83);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (252, 'site_105', '2020-09-11', 114);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (253, 'site_1428', '2020-09-01', 21);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (254, 'site_1428', '2020-09-02', 19);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (255, 'site_1428', '2020-09-03', 48);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (256, 'site_1428', '2020-09-04', 56);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (257, 'site_1428', '2020-09-05', 56);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (258, 'site_1428', '2020-09-06', 35);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (259, 'site_1428', '2020-09-07', 75);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (260, 'site_1428', '2020-09-08', 47);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (261, 'site_1428', '2020-09-09', 82);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (262, 'site_1428', '2020-09-10', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (263, 'site_1428', '2020-09-11', 92);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (264, 'site_1431', '2020-09-01', 18);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (265, 'site_1431', '2020-09-02', 23);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (266, 'site_1431', '2020-09-03', 61);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (267, 'site_1431', '2020-09-04', 67);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (268, 'site_1431', '2020-09-05', 71);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (269, 'site_1431', '2020-09-06', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (270, 'site_1431', '2020-09-07', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (271, 'site_1431', '2020-09-08', 48);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (272, 'site_1431', '2020-09-09', 81);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (273, 'site_1431', '2020-09-10', 86);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (274, 'site_1431', '2020-09-11', 103);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (275, 'site_125', '2020-09-01', 27);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (276, 'site_125', '2020-09-02', 24);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (277, 'site_125', '2020-09-03', 57);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (278, 'site_125', '2020-09-04', 57);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (279, 'site_125', '2020-09-05', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (280, 'site_125', '2020-09-06', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (281, 'site_125', '2020-09-07', 111);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (282, 'site_125', '2020-09-08', 48);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (283, 'site_125', '2020-09-09', 81);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (284, 'site_125', '2020-09-10', 84);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (285, 'site_125', '2020-09-11', 81);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (286, 'site_1563', '2020-09-01', 15);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (287, 'site_1563', '2020-09-02', 69);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (288, 'site_1563', '2020-09-03', 59);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (289, 'site_1563', '2020-09-04', 40);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (290, 'site_1563', '2020-09-05', 54);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (291, 'site_1563', '2020-09-06', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (292, 'site_1563', '2020-09-07', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (293, 'site_1563', '2020-09-08', 42);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (294, 'site_1563', '2020-09-09', 72);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (295, 'site_1563', '2020-09-10', 85);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (296, 'site_1563', '2020-09-11', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (297, 'site_107', '2020-09-01', 48);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (298, 'site_107', '2020-09-02', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (299, 'site_107', '2020-09-03', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (300, 'site_107', '2020-09-04', 52);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (301, 'site_107', '2020-09-05', 64);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (302, 'site_107', '2020-09-06', 50);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (303, 'site_107', '2020-09-07', 88);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (304, 'site_107', '2020-09-08', 48);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (305, 'site_107', '2020-09-09', 77);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (306, 'site_107', '2020-09-10', 82);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (307, 'site_107', '2020-09-11', 83);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (308, 'site_124', '2020-09-01', 38);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (309, 'site_124', '2020-09-02', 20);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (310, 'site_124', '2020-09-03', 26);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (311, 'site_124', '2020-09-04', 31);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (312, 'site_124', '2020-09-05', 38);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (313, 'site_124', '2020-09-06', 22);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (314, 'site_124', '2020-09-07', 49);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (315, 'site_124', '2020-09-08', 33);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (316, 'site_124', '2020-09-09', 59);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (317, 'site_124', '2020-09-10', 61);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (318, 'site_124', '2020-09-11', 85);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (319, 'site_1430', '2020-09-01', 30);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (320, 'site_1430', '2020-09-02', 32);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (321, 'site_1430', '2020-09-03', 68);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (322, 'site_1430', '2020-09-04', 78);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (323, 'site_1430', '2020-09-05', 111);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (324, 'site_1430', '2020-09-06', 59);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (325, 'site_1430', '2020-09-07', 85);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (326, 'site_1430', '2020-09-08', 63);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (327, 'site_1430', '2020-09-09', 107);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (328, 'site_1430', '2020-09-10', 103);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (329, 'site_1430', '2020-09-11', 102);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (330, 'site_113', '2020-09-01', 24);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (331, 'site_113', '2020-09-02', 34);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (332, 'site_113', '2020-09-03', 49);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (333, 'site_113', '2020-09-04', 34);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (334, 'site_113', '2020-09-05', 41);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (335, 'site_113', '2020-09-06', 30);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (336, 'site_113', '2020-09-07', 71);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (337, 'site_113', '2020-09-08', 39);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (338, 'site_113', '2020-09-09', 56);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (339, 'site_113', '2020-09-10', 59);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (340, 'site_113', '2020-09-11', 69);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (341, 'site_119', '2020-09-01', 39);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (342, 'site_119', '2020-09-02', 29);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (343, 'site_119', '2020-09-03', 62);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (344, 'site_119', '2020-09-04', 69);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (345, 'site_119', '2020-09-05', 59);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (346, 'site_119', '2020-09-06', 35);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (347, 'site_119', '2020-09-07', 82);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (348, 'site_119', '2020-09-08', 48);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (349, 'site_119', '2020-09-09', 99);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (350, 'site_119', '2020-09-10', 93);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (351, 'site_119', '2020-09-11', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (352, 'site_1432', '2020-09-01', 31);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (353, 'site_1432', '2020-09-02', 28);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (354, 'site_1432', '2020-09-03', 77);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (355, 'site_1432', '2020-09-04', 78);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (356, 'site_1432', '2020-09-05', 99);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (357, 'site_1432', '2020-09-06', 52);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (358, 'site_1432', '2020-09-07', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (359, 'site_1432', '2020-09-08', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (360, 'site_1432', '2020-09-09', 82);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (361, 'site_1432', '2020-09-10', 84);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (362, 'site_1432', '2020-09-11', 99);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (363, 'site_1562', '2020-09-01', 25);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (364, 'site_1562', '2020-09-02', 17);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (365, 'site_1562', '2020-09-03', 48);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (366, 'site_1562', '2020-09-04', 58);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (367, 'site_1562', '2020-09-05', 48);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (368, 'site_1562', '2020-09-06', 27);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (369, 'site_1562', '2020-09-07', 57);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (370, 'site_1562', '2020-09-08', 41);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (371, 'site_1562', '2020-09-09', 72);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (372, 'site_1562', '2020-09-10', 74);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (373, 'site_1562', '2020-09-11', 78);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (374, 'site_1435', '2020-09-01', 21);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (375, 'site_1435', '2020-09-02', 29);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (376, 'site_1435', '2020-09-03', 69);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (377, 'site_1435', '2020-09-04', 68);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (378, 'site_1435', '2020-09-05', 88);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (379, 'site_1435', '2020-09-06', 72);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (380, 'site_1435', '2020-09-07', 154);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (381, 'site_1435', '2020-09-08', 66);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (382, 'site_1435', '2020-09-09', 80);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (383, 'site_1435', '2020-09-10', 88);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (384, 'site_1435', '2020-09-11', 145);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (385, 'site_1434', '2020-09-01', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (386, 'site_1434', '2020-09-02', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (387, 'site_1434', '2020-09-03', 48);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (388, 'site_1434', '2020-09-04', 55);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (389, 'site_1434', '2020-09-05', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (390, 'site_1434', '2020-09-06', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (391, 'site_1434', '2020-09-07', NULL);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (392, 'site_1434', '2020-09-08', 45);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (393, 'site_1434', '2020-09-09', 55);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (394, 'site_1434', '2020-09-10', 64);
INSERT INTO public.delhi_pm_2_5 (id, station_code, s_date, pm_2_5) VALUES (395, 'site_1434', '2020-09-11', 66);


--
-- TOC entry 2836 (class 0 OID 0)
-- Dependencies: 202
-- Name: delhi_monitoring_stations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.delhi_monitoring_stations_id_seq', 1, false);


--
-- TOC entry 2837 (class 0 OID 0)
-- Dependencies: 204
-- Name: delhi_pm_2_5_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.delhi_pm_2_5_id_seq', 1, false);


--
-- TOC entry 2696 (class 2606 OID 32812)
-- Name: delhi_monitoring_stations delhi_monitoring_stations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.delhi_monitoring_stations
    ADD CONSTRAINT delhi_monitoring_stations_pkey PRIMARY KEY (id);


--
-- TOC entry 2698 (class 2606 OID 32821)
-- Name: delhi_pm_2_5 delhi_pm_2_5_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.delhi_pm_2_5
    ADD CONSTRAINT delhi_pm_2_5_pkey PRIMARY KEY (id);


-- Completed on 2020-09-13 17:43:19

--
-- PostgreSQL database dump complete
--

