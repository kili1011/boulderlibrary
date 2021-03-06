--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

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
-- Name: alembic_version; Type: TABLE; Schema: public; Owner: schrenkk
--

CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);


ALTER TABLE public.alembic_version OWNER TO schrenkk;

--
-- Name: category; Type: TABLE; Schema: public; Owner: schrenkk
--

CREATE TABLE public.category (
    id integer NOT NULL,
    description character varying(40)
);


ALTER TABLE public.category OWNER TO schrenkk;

--
-- Name: category_id_seq; Type: SEQUENCE; Schema: public; Owner: schrenkk
--

CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.category_id_seq OWNER TO schrenkk;

--
-- Name: category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: schrenkk
--

ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;


--
-- Name: city; Type: TABLE; Schema: public; Owner: schrenkk
--

CREATE TABLE public.city (
    id integer NOT NULL,
    name character varying(80) NOT NULL,
    state_id integer NOT NULL
);


ALTER TABLE public.city OWNER TO schrenkk;

--
-- Name: city_id_seq; Type: SEQUENCE; Schema: public; Owner: schrenkk
--

CREATE SEQUENCE public.city_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.city_id_seq OWNER TO schrenkk;

--
-- Name: city_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: schrenkk
--

ALTER SEQUENCE public.city_id_seq OWNED BY public.city.id;


--
-- Name: gym; Type: TABLE; Schema: public; Owner: schrenkk
--

CREATE TABLE public.gym (
    id integer NOT NULL,
    name character varying(120) NOT NULL,
    address character varying NOT NULL,
    website character varying NOT NULL,
    city_id integer NOT NULL,
    status_description character varying(12) NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE public.gym OWNER TO schrenkk;

--
-- Name: gym_id_seq; Type: SEQUENCE; Schema: public; Owner: schrenkk
--

CREATE SEQUENCE public.gym_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gym_id_seq OWNER TO schrenkk;

--
-- Name: gym_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: schrenkk
--

ALTER SEQUENCE public.gym_id_seq OWNED BY public.gym.id;


--
-- Name: state; Type: TABLE; Schema: public; Owner: schrenkk
--

CREATE TABLE public.state (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.state OWNER TO schrenkk;

--
-- Name: state_id_seq; Type: SEQUENCE; Schema: public; Owner: schrenkk
--

CREATE SEQUENCE public.state_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.state_id_seq OWNER TO schrenkk;

--
-- Name: state_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: schrenkk
--

ALTER SEQUENCE public.state_id_seq OWNED BY public.state.id;


--
-- Name: status; Type: TABLE; Schema: public; Owner: schrenkk
--

CREATE TABLE public.status (
    description character varying(12) NOT NULL
);


ALTER TABLE public.status OWNER TO schrenkk;

--
-- Name: user; Type: TABLE; Schema: public; Owner: schrenkk
--

CREATE TABLE public."user" (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public."user" OWNER TO schrenkk;

--
-- Name: user_id_seq; Type: SEQUENCE; Schema: public; Owner: schrenkk
--

CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_id_seq OWNER TO schrenkk;

--
-- Name: user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: schrenkk
--

ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;


--
-- Name: category id; Type: DEFAULT; Schema: public; Owner: schrenkk
--

ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);


--
-- Name: city id; Type: DEFAULT; Schema: public; Owner: schrenkk
--

ALTER TABLE ONLY public.city ALTER COLUMN id SET DEFAULT nextval('public.city_id_seq'::regclass);


--
-- Name: gym id; Type: DEFAULT; Schema: public; Owner: schrenkk
--

ALTER TABLE ONLY public.gym ALTER COLUMN id SET DEFAULT nextval('public.gym_id_seq'::regclass);


--
-- Name: state id; Type: DEFAULT; Schema: public; Owner: schrenkk
--

ALTER TABLE ONLY public.state ALTER COLUMN id SET DEFAULT nextval('public.state_id_seq'::regclass);


--
-- Name: user id; Type: DEFAULT; Schema: public; Owner: schrenkk
--

ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);


--
-- Data for Name: alembic_version; Type: TABLE DATA; Schema: public; Owner: schrenkk
--

COPY public.alembic_version (version_num) FROM stdin;
8b31dabc1afa
\.


--
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: schrenkk
--

COPY public.category (id, description) FROM stdin;
1	Boulder
2	Rope climbing
3	Boulder and rope climbing
\.


--
-- Data for Name: city; Type: TABLE DATA; Schema: public; Owner: schrenkk
--

COPY public.city (id, name, state_id) FROM stdin;
1	Berlin	1
2	Stuttgart	2
3	Mannheim	2
4	Heidelberg	2
5	Karlsruhe	2
6	Freiburg	2
7	Ulm	2
8	Biberach	2
9	Künzelsau	2
10	Ludwigsburg	2
11	Tauberbischofsheim	2
12	Emmendingen	2
13	Heilbronn	2
14	Schwäbisch Hall	2
15	Offenburg	2
16	Pforzheim	2
17	Ravensburg	2
18	Balingen	2
19	Reutlingen	2
20	Tuttlingen	2
21	Baden-Baden	2
22	Böblingen	2
23	Mosbach	2
24	Calw	2
25	Tübingen	2
26	Rastatt	2
27	Waiblingen	2
28	Villingen-Schwenningen	2
29	Rottweil	2
30	Göppingen	2
31	Freudenstadt	2
32	Lörrach	2
33	Sigmaringen	2
34	Heidenheim	2
35	Waldshut-Tiengen	2
36	Esslingen	2
37	Aalen	2
38	Frankfurt	3
39	Wiesbaden	3
40	Kassel	3
41	Gießen	3
42	Heppenheim	3
43	Hanau	3
44	Marburg	3
45	Darmstadt	3
46	Korbach	3
47	Friedberg	3
48	Offenbach	3
49	Erbach	3
50	Limburg	3
51	Homberg	3
52	Wetzlar	3
53	Bad Homburg	3
54	Bad Schwalbach	3
55	Lauterbach	3
56	Eschwege	3
57	Bad Hersfeld	3
58	Groß-Gerau	3
59	Neustadt	3
60	Hofheim	3
61	Fulda	3
62	Hamburg	4
63	Essen	5
64	Duisburg	5
65	Düsseldorf	5
66	Cologne	5
67	Wuppertal	5
68	Bonn	5
69	Dortmund	5
70	Bielefeld	5
71	Münster	5
72	Detmold	5
73	Düren	5
74	Siegen	5
75	Warendorf	5
76	Bergheim	5
77	Viersen	5
78	Neuss	5
79	Euskirchen	5
80	Gelsenkirchen	5
81	Mettmann	5
82	Höxter	5
83	Lüdenscheid	5
84	Bochum	5
85	Mülheim	5
86	Soest	5
87	Kleve	5
88	Aachen	5
89	Mönchengladbach	5
90	Krefeld	5
91	Recklinghausen	5
92	Remscheid	5
93	Herne	5
94	Heinsberg	5
95	Hagen	5
96	Wesel	5
97	Schwelm	5
98	Meschede	5
99	Steinfurt	5
100	Paderborn	5
101	Olpe	5
102	Bottrop	5
103	Borken	5
104	Gummersbach	5
105	Herford	5
106	Solingen	5
107	Siegburg	5
108	Leverkusen	5
109	Unna	5
110	Coesfeld	5
111	Bergisch Gladbach	5
112	Oberhausen	5
113	Minden	5
114	Gütersloh	5
115	Hamm	5
116	Munich	6
117	Marienberg	6
118	Augsburg	6
119	Fürth	6
120	Würzburg	6
121	Regensburg	6
122	Ingolstadt	6
123	Rosenheim	6
124	Coburg	6
125	Hofeck	6
126	Kitzingen	6
127	Dingolfing	6
128	Schwandorf	6
129	Cham	6
130	Traunstein	6
131	Bad Reichenhall	6
132	Weißenburg	6
133	Regen	6
134	Nuremberg	6
135	Aichach	6
136	Landsberg	6
137	Deggendorf	6
138	Memmingen	6
139	Kronach	6
140	Mindelheim	6
141	Donauwörth	6
142	Hof	6
143	Neuburg	6
144	Bad Kissingen	6
145	Bamberg	6
146	Fürstenfeldbruck	6
147	Günzburg	6
148	Tirschenreuth	6
149	Schwabach	6
150	Freising	6
151	Neu-Ulm	6
152	Garmisch-Partenkirchen	6
153	Bayreuth	6
154	Wunsiedel	6
155	Pfaffenhofen	6
156	Freyung	6
157	Weiden	6
158	Kulmbach	6
159	Kempten	6
160	Lichtenfels	6
161	Weilheim	6
162	Altötting	6
163	Erding	6
164	Neustadt	6
165	Kaufbeuren	6
166	Lauf	6
167	Amberg	6
168	Neustadt	6
169	Forchheim	6
170	Kelheim	6
171	Bad Neustadt	6
172	Haßfurt	6
173	Marktoberdorf	6
174	Landshut	6
175	Passau	6
176	Miesbach	6
177	Aschaffenburg	6
178	Karlstadt	6
179	Eichstätt	6
180	Erlangen	6
181	Ansbach	6
182	Starnberg	6
183	Dachau	6
184	Sonthofen	6
185	Dillingen	6
186	Ebersberg	6
187	Bad Tölz	6
188	Neumarkt	6
189	Miltenberg	6
190	Coburg	6
191	Mühldorf	6
192	Straubing	6
193	Pfarrkirchen	6
194	Saarbrücken	7
195	Sankt Wendel	7
196	Homburg	7
197	Saarlouis	7
198	Merzig	7
199	Neunkirchen	7
200	Bremen	8
201	Bremerhaven	8
202	Hannover	9
203	Braunschweig	9
204	Osnabrück	9
205	Oldenburg	9
206	Göttingen	9
207	Emden	9
208	Lüchow	9
209	Gifhorn	9
210	Aurich	9
211	Nordhorn	9
212	Vechta	9
213	Westerstede	9
214	Verden	9
215	Peine	9
216	Nienburg	9
217	Brake	9
218	Rotenburg	9
219	Hameln	9
220	Bad Fallingbostel	9
221	Wolfenbüttel	9
222	Uelzen	9
223	Leer	9
224	Wittmund	9
225	Osterode	9
226	Wilhelmshaven	9
227	Northeim	9
228	Cuxhaven	9
229	Jever	9
230	Lüneburg	9
231	Delmenhorst	9
232	Holzminden	9
233	Stadthagen	9
234	Hildesheim	9
235	Celle	9
236	Helmstedt	9
237	Winsen	9
238	Cloppenburg	9
239	Meppen	9
240	Wolfsburg	9
241	Goslar	9
242	Osterholz-Scharmbeck	9
243	Stade	9
244	Salzgitter	9
245	Diepholz	9
246	Dresden	10
247	Leipzig	10
248	Altchemnitz	10
249	Meißen	10
250	Torgau	10
251	Görlitz	10
252	Pirna	10
253	Chemnitz	10
254	Zwickau	10
255	Plauen	10
256	Annaberg-Buchholz	10
257	Freiberg	10
258	Bautzen	10
259	Koblenz	11
260	Mainz	11
261	Bitburg	11
262	Trier	11
263	Pirmasens	11
264	Neustadt	11
265	Worms	11
266	Kirchheimbolanden	11
267	Birkenfeld	11
268	Bad Kreuznach	11
269	Bad Ems	11
270	Altenkirchen	11
271	Ingelheim	11
272	Landau	11
273	Bad Dürkheim	11
274	Zweibrücken	11
275	Montabaur	11
276	Alzey	11
277	Kusel	11
278	Wittlich	11
279	Ludwigshafen	11
280	Speyer	11
281	Cochem	11
282	Bad Neuenahr-Ahrweiler	11
283	Germersheim	11
284	Kaiserslautern	11
285	Neuwied	11
286	Daun	11
287	Simmern	11
288	Frankenthal	11
289	Kiel	12
290	Lübeck	12
291	Flensburg	12
292	Husum	12
293	Bad Segeberg	12
294	Rendsburg	12
295	Neumünster	12
296	Heide	12
297	Plön	12
298	Ratzeburg	12
299	Eutin	12
300	Bad Oldesloe	12
301	Pinneberg	12
302	Schleswig	12
303	Itzehoe	12
304	Magdeburg	13
305	Halle	13
306	Stendal	13
307	Köthen	13
308	Merseburg	13
309	Halberstadt	13
310	Dessau-Roßlau	13
311	Salzwedel	13
312	Naumburg	13
313	Sangerhausen	13
314	Burg	13
315	Bernburg	13
316	Wittenberg	13
317	Haldensleben	13
318	Potsdam	14
319	Cottbus	14
320	Beeskow	14
321	Frankfurt (Oder)	14
322	Herzberg	14
323	Oranienburg	14
324	Forst	14
325	Perleberg	14
326	Lübben	14
327	Eberswalde	14
328	Neuruppin	14
329	Rathenow	14
330	Brandenburg	14
331	Prenzlau	14
332	Luckenwalde	14
333	Senftenberg	14
334	Seelow	14
335	Erfurt	15
336	Jena	15
337	Gera	15
338	Meiningen	15
339	Suhl	15
340	Saalfeld	15
341	Eisenach	15
342	Schleiz	15
343	Weimar	15
344	Altenburg	15
345	Mühlhausen	15
346	Bad Salzungen	15
347	Arnstadt	15
348	Greiz	15
349	Heilbad Heiligenstadt	15
350	Nordhausen	15
351	Eisenberg	15
352	Sömmerda	15
353	Apolda	15
354	Gotha	15
355	Sonneberg	15
356	Sondershausen	15
357	Hildburghausen	15
358	Rostock	16
359	Schwerin	16
360	Stralsund	16
361	Güstrow	16
362	Neubrandenburg	16
363	Wismar	16
364	Greifswald	16
365	Parchim	16
\.


--
-- Data for Name: gym; Type: TABLE DATA; Schema: public; Owner: schrenkk
--

COPY public.gym (id, name, address, website, city_id, status_description, category_id) FROM stdin;
2	Einstein	Landsberger Str. 185	https://muenchen.einstein-boulder.com/	116	closed	1
1	Boulderwelt Ost	Hanne-Hiob-Straße 4	https://www.boulderwelt-muenchen-ost.de/	116	open	1
\.


--
-- Data for Name: state; Type: TABLE DATA; Schema: public; Owner: schrenkk
--

COPY public.state (id, name) FROM stdin;
1	Berlin
2	Baden-Württemberg
3	Hesse
4	Hamburg
5	North Rhine-Westphalia
6	Bavaria
7	Saarland
8	Bremen
9	Lower Saxony
10	Saxony
11	Rhineland-Palatinate
12	Schleswig-Holstein
13	Saxony-Anhalt
14	Brandenburg
15	Thuringia
16	Mecklenburg-Western Pomerania
\.


--
-- Data for Name: status; Type: TABLE DATA; Schema: public; Owner: schrenkk
--

COPY public.status (description) FROM stdin;
open
closed
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: schrenkk
--

COPY public."user" (id, name) FROM stdin;
2	Kilian
1	Arina
\.


--
-- Name: category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: schrenkk
--

SELECT pg_catalog.setval('public.category_id_seq', 3, true);


--
-- Name: city_id_seq; Type: SEQUENCE SET; Schema: public; Owner: schrenkk
--

SELECT pg_catalog.setval('public.city_id_seq', 365, true);


--
-- Name: gym_id_seq; Type: SEQUENCE SET; Schema: public; Owner: schrenkk
--

SELECT pg_catalog.setval('public.gym_id_seq', 5, true);


--
-- Name: state_id_seq; Type: SEQUENCE SET; Schema: public; Owner: schrenkk
--

SELECT pg_catalog.setval('public.state_id_seq', 16, true);


--
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: schrenkk
--

SELECT pg_catalog.setval('public.user_id_seq', 2, true);


--
-- Name: alembic_version alembic_version_pkc; Type: CONSTRAINT; Schema: public; Owner: schrenkk
--

ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);


--
-- Name: category category_pkey; Type: CONSTRAINT; Schema: public; Owner: schrenkk
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);


--
-- Name: city city_pkey; Type: CONSTRAINT; Schema: public; Owner: schrenkk
--

ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (id);


--
-- Name: gym gym_address_key; Type: CONSTRAINT; Schema: public; Owner: schrenkk
--

ALTER TABLE ONLY public.gym
    ADD CONSTRAINT gym_address_key UNIQUE (address);


--
-- Name: gym gym_pkey; Type: CONSTRAINT; Schema: public; Owner: schrenkk
--

ALTER TABLE ONLY public.gym
    ADD CONSTRAINT gym_pkey PRIMARY KEY (id);


--
-- Name: state state_name_key; Type: CONSTRAINT; Schema: public; Owner: schrenkk
--

ALTER TABLE ONLY public.state
    ADD CONSTRAINT state_name_key UNIQUE (name);


--
-- Name: state state_pkey; Type: CONSTRAINT; Schema: public; Owner: schrenkk
--

ALTER TABLE ONLY public.state
    ADD CONSTRAINT state_pkey PRIMARY KEY (id);


--
-- Name: status status_pkey; Type: CONSTRAINT; Schema: public; Owner: schrenkk
--

ALTER TABLE ONLY public.status
    ADD CONSTRAINT status_pkey PRIMARY KEY (description);


--
-- Name: user user_name_key; Type: CONSTRAINT; Schema: public; Owner: schrenkk
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_name_key UNIQUE (name);


--
-- Name: user user_pkey; Type: CONSTRAINT; Schema: public; Owner: schrenkk
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- Name: city city_state_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: schrenkk
--

ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_state_id_fkey FOREIGN KEY (state_id) REFERENCES public.state(id);


--
-- Name: gym gym_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: schrenkk
--

ALTER TABLE ONLY public.gym
    ADD CONSTRAINT gym_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.category(id);


--
-- Name: gym gym_city_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: schrenkk
--

ALTER TABLE ONLY public.gym
    ADD CONSTRAINT gym_city_id_fkey FOREIGN KEY (city_id) REFERENCES public.city(id);


--
-- Name: gym gym_status_description_fkey; Type: FK CONSTRAINT; Schema: public; Owner: schrenkk
--

ALTER TABLE ONLY public.gym
    ADD CONSTRAINT gym_status_description_fkey FOREIGN KEY (status_description) REFERENCES public.status(description);


--
-- PostgreSQL database dump complete
--

