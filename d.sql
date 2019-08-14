--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5
-- Dumped by pg_dump version 11.4

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

--
-- Name: roster; Type: SCHEMA; Schema: -; Owner: tommynguyen
--

CREATE SCHEMA roster;


ALTER SCHEMA roster OWNER TO tommynguyen;

--
-- Name: users; Type: SCHEMA; Schema: -; Owner: tommynguyen
--

CREATE SCHEMA users;


ALTER SCHEMA users OWNER TO tommynguyen;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: roster; Type: TABLE; Schema: public; Owner: tommynguyen
--

CREATE TABLE public.roster (
    id integer NOT NULL,
    name text,
    home text,
    major text,
    uji text,
    classname text,
    classnumber text
);


ALTER TABLE public.roster OWNER TO tommynguyen;

--
-- Name: roster_id_seq; Type: SEQUENCE; Schema: public; Owner: tommynguyen
--

CREATE SEQUENCE public.roster_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roster_id_seq OWNER TO tommynguyen;

--
-- Name: roster_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tommynguyen
--

ALTER SEQUENCE public.roster_id_seq OWNED BY public.roster.id;


--
-- Name: active_member; Type: TABLE; Schema: roster; Owner: tommynguyen
--

CREATE TABLE roster.active_member (
    fullname character varying(50),
    major character varying(50),
    homeplace character varying(50),
    ujiname character varying(50),
    classname character varying(50),
    linenumber integer,
    id integer NOT NULL,
    picture text
);


ALTER TABLE roster.active_member OWNER TO tommynguyen;

--
-- Name: line_number; Type: TABLE; Schema: roster; Owner: tommynguyen
--

CREATE TABLE roster.line_number (
    linenumber integer NOT NULL
);


ALTER TABLE roster.line_number OWNER TO tommynguyen;

--
-- Name: uji; Type: TABLE; Schema: roster; Owner: tommynguyen
--

CREATE TABLE roster.uji (
    ujiname character varying(20) NOT NULL
);


ALTER TABLE roster.uji OWNER TO tommynguyen;

--
-- Name: roster id; Type: DEFAULT; Schema: public; Owner: tommynguyen
--

ALTER TABLE ONLY public.roster ALTER COLUMN id SET DEFAULT nextval('public.roster_id_seq'::regclass);


--
-- Data for Name: roster; Type: TABLE DATA; Schema: public; Owner: tommynguyen
--

COPY public.roster (id, name, home, major, uji, classname, classnumber) FROM stdin;
1	David Gamez	Hammond, Indiana	Business	David Gamez Uji	Charter	No. 2
2	David Ho	Taipei, Taiwan	Management/Marketing	David Ho Uji	Charter	No. 3
3	Jimmy Kim	Seoul, South Korea	Political Science	Jimmy Kim Uji	Charter	No. 4
4	Timothy Kim	Seoul, South Korea	Journalism	Timothy Kim Uji	Charter	No. 5
5	John Ngo	Quy Nhon, Vietnam	Electrical Engineering	John Ngo Uji	Charter	No. 6
6	Dan Nguyen	Hue, Vietnam	Sociology/Economics	Dan Nguyen Uji	Charter	No. 7
7	John Nguyen	Soc Trang. Vietnam	Biology	John Nguyen Uji	Charter	No. 8
8	Long Nguyen	Da Lat, Vietnam	Biology	Long Nguyen Uji	Charter	No. 9
9	Duke Truong	Caniho, Vietnam	Business Administration	Duke Truong Uji	Charter	No. 10
10	Baophong Vinh	Saigon, Vietnam	Biology	Baophong Vinh Uji	Charter	No. 11
11	George Wong	Houston, TX	Accounting/Finance	George Wong Uji	Charter	No. 12
12	Freddie Chang	Paris, France	International Business	Dan Nguyen Uji	Alpha	No. 13
13	Peter Chen	Kowloon, Hong Kong	Finance/Pre-Law	George Wong Uji	Alpha	No. 14
14	Huy Dinh	Nga Trang, Vietnam	Accounting	Jimmy Kim Uji	Alpha	No. 15
15	Lindley Manalo	Negros Occidental, Philippines	Psychology	John Nguyen Uji	Alpha	No. 16
16	Patrick Park	Elmira, New York	Psychology/Marketing	Timothy Kim Uji	Alpha	No. 17
17	Bradford Eu	San Francisco, CA	Biology/Pre-Denta	Jimmy Kim Uji	Beta	No. 19
18	Steven Huynh	Vietnam	Biology	George Wong Uji	Beta	No. 20
19	Darrick Kung	Houston, TX	Accounting	Jonathan Dizon Uji	Beta	No. 21
20	Phuong Nguyen	South Vietnam	Biology	David Ho Uji	Beta	No. 22
21	David Phan	Midland, Michigan	Biology	John Ngo Uji	Beta	No. 23
22	Vinh Tri	Saigon, Vietnam	Pre-Pharmacy	Timothy Kim Uji	Beta	No. 24
23	Glen Vo	San Francisco, CA	Biology	Long Nguyen Uji	Beta	No. 25
24	Craig Casipe	Houston, TX	Psychology	Jonathan Dizon Uji	Gamma	No. 26
25	Caesar Chang	Kingstown, Rhode Island	Business	John Nguyen Uji	Gamma	No. 27
26	Gabriel Nguyen		Business	Dan Nguyen Uji	Gamma	No. 28
27	Doug Park	Houston, TX	Sports Administration	George Wong Uji	Gamma	No. 29
28	Bob Ho	Taipei, Taiwan	Architecture	Long Nguyen Uji	Delta	No. 30
29	Tuan Hong	Mesa, Arizona	Biology	David Gamez Uji	Delta	No. 31
30	Gary Ho	Republic of China	Finance	Duke Truong Uji	Epsilon	No. 32
31	Tony Mu	Houston, TX	Accounting	Dan Nguyen Uji	Epsilon	No. 33
32	Jimmy Shum	Venezuela	University Studies	Baophong Vinh Uji	Epsilon	No. 34
33	Troy Allum	Kalamazoo, Michigan	Biology	Long Nguyen Uji	Zeta	No. 35
34	San Huynh	Vietnam	University Studies	David Gamez Uji	Zeta	No. 36
35	Truong Nguyen	Vietnam	Biology	John Ngo Uji	Zeta	No. 37
36	Albert Wu	Taiwan	Psychology	Jimmy Kim Uji	Zeta	No. 39
37	Justin Yao	New York	Information Technology	Duke Truong Uji	Zeta	No. 40
38	Phillip Chen	Riverton	University Studies	Duke Truong Uji	Eta	No. 41
39	Khai Diep	Vietnam	Pharmacy	Timothy Kim Uji	Eta	No. 42
40	Minh Nguyen	Houston, TX	Business	Jimmy Kim Uji	Eta	No. 43
41	Minh Nguyen	Houston, TX	Business Managemen	David Ho Uji	Eta	No. 43
42	Wilson Ornedo	Philippines	MIS	Jonathan Dizon Uji	Eta	No. 44
43	Alex Pham	Vietnam	Business	Dan Nguyen Uji	Eta	No. 45
44	Paul Qui	Philippines	Marketing	David Ho Uji	Eta	No. 46
45	Nick Sun	Taiwan	Hospitality	John Nguyen Uji	Eta	No. 47
46	Peter Kuo	Taiwan	IST	Jonathan Dizon Uji	Theta	No. 48
47	Mastimar Mohammed	Malaysia	IST	John Ngo Uji	Theta	No. 49
48	Quan Nguyen	Vietnam	CET	Baophong Vinh Uji	Theta	No. 50
49	Joseph Stang	MA	Computer Engineering	David Ho Uji	Theta	No. 51
50	Neil Alba	Bueno Park City, CA	Adverting	John Ngo Uji	Iota	No. 52
51	Rudy Garcia II	Chicago, IL	Corporate Communication	Timothy Kim Uji	Iota	No. 53
52	Doug Le	Houston, TX	Communication	Baophong Vinh Uji	Iota	No. 54
53	Viet Le	Phoenix, AZ	Pharmacy	Long Nguyen Uji	Iota	No. 55
54	Wan Jin No	Seoul, Korea	Nutrition	Jimmy Kim Uji	Iota	No. 56
55	Vu Tran	Houston, TX	Finance	John Nguyen Uji	Iota	No. 57
56	Tony Yu	Taipei, Taiwan	Marketing	Jonathan Dizon Uji	Iota	No. 58
57	Jimmy Bui	Chicago, IL	Pharmacy	Baophong Vinh Uji	Kappa	No. 59
58	Cedric Chang	Taipei, Taiwan	Architecture	John Nguyen Uji	Kappa	No. 60
59	Kiet Dang	Saigon, Vietnam	Computer Engineering	David Gamez Uji	Kappa	No. 61
60	Chris Huynh	Freeport, TX	Telecommunications	Dan Nguyen Uji	Kappa	No. 62
61	Mike Medina	Makati-Manila, Philippines	Business	Long Nguyen Uji	Kappa	No. 63
62	Vinh Nguyen	Hue, Vietnam	Biochemistry	Jimmy Kim Uji	Kappa	No. 64
63	Phai Thach	Bangkok, Thailand	University Studies	David Ho Uji	Kappa	No. 65
64	Ramon Alvarado	Houston, TX	Governmen	Timothy Kim Uji	Mu	No. 66
65	Mike Chang	Taipei, Taiwan	Marketing	David Gamez Uji	Mu	No. 67
66	Naoki Ishii	Hiroshima, Japan	Psychology	Duke Truong Uji	Nu	No. 70
67	Jien Cheng	Dallas, TX	Pre-pharmacy	Jimmy Kim Uji	Xi	No. 73
68	Justin Kim	Houston, TX	Business	David Gamez Uji	Xi	No. 74
69	David Liu	Beijing, China	Pre-pharmacy	Baophong Vinh Uji	Xi	No. 75
70	Richy Nguyen	Pittsburgh, Pennsylvania	Bio-Medica	Jimmy Kim Uji	Xi	No. 76
71	Tony Nguyen	Richardson, TX	Biology	John Ngo Uji	Xi	No. 77
72	Milbert Tumaliuan	Houston, TX	USD	Baophong Vinh Uji	Xi	No. 79
73	Dan Vo	Saigon, Vietnam	MBA	David Ho Uji	Xi	No. 80
74	Phuc Vo	Houston, TX	Business	David Gamez Uji	Xi	No. 81
75	Paul Yuen	Toi-Shan, China	Marketing	Jonathan Dizon Uji	Xi	No. 82
76	Khan Ngo	Houston, TX	Pharmacy	Baophong Vinh Uji	Omicron	No. 83
77	Liem Nguyen	Houston, TX	Biology	Baophong Vinh Uji	Omicron	No. 84
78	Harry So	Clear Lake, TX	Pharmacy	John Ngo Uji	Omicron	No. 85
79	Chris Nguyen	Houston, TX	Pre-Med	Jonathan Dizon Uji	Rho	No. 87
80	Eric Nguyen	Katy, TX	Computer Science	David Gamez Uji	Rho	No. 88
81	Ryan Thai	Houston, TX	Business	Dan Nguyen Uji	Rho	No. 90
82	Robie Jugeta Calong	Manila, Philippines	Electrical Engineering	Timothy Kim Uji	Sigma	No. 91
83	Tony Chao	Thailand	Kinesiology	George Wong Uji	Sigma	No. 92
84	Anthony Cheung	Houston, TX	Kinesiology	Baophong Vinh Uji	Sigma	No. 93
85	David Chow	Houston, TX	Business Managemen	John Ngo Uji	Sigma	No. 94
86	Jed Foronda	Houston, TX	Business	David Gamez Uji	Sigma	No. 95
87	Alan Kuo	Houston, TX	Corporate Law	Jonathan Dizon Uji	Sigma	No. 96
88	Banny Lim	Houston, TX	Advertising	Jimmy Kim Uji	Sigma	No. 97
89	David Luu	Ontario, Canada	Major	Timothy Kim Uji	Sigma	No. 98
90	Koan Loc	Milwaukee, WI	Biology	Baophong Vinh Uji	Sigma	No. 99
91	Terry Mu	Houston, TX	Nursing	Long Nguyen Uji	Sigma	No. 100
92	Tuong Nguyen	Hue, Vietnam	Mechanical Engineering	John Nguyen Uji	Sigma	No. 102
93	Jonathan Chan	Houston, TX	Accounting	John Nguyen Uji	Tau	No. 103
94	June Kim	Houston, TX	Biology	Timothy Kim Uji	Tau	No. 104
95	John DeFelice	Bristol, PA	Engineering	David Ho Uji	Tau	No. 105
96	Lydar Lay	LA	Pharmacy	George Wong Uji	Tau	No. 106
97	Gabriel Medina	Houston, TX	Political Science	David Ho Uji	Tau	No. 107
98	Anthony Nguyen	San Jose, CA	Civil Engineering	David Gamez Uji	Tau	No. 108
99	Gireesh Shintri	Houston, TX	Political Science	Jonathan Dizon Uji	Tau	No. 110
100	David Wu	Houston, TX	Hotel Managemen	Dan Nguyen Uji	Tau	No. 111
101	Alfredo Yuen	Buenos Aires, Argentina	Accounting	Duke Truong Uji	Tau	No. 112
102	Antonio Yuen	Buenos Aires, Argentina	Business	Jonathan Dizon Uji	Tau	No. 113
103	Ryan Cheng	Calgary, Canada	Electrical Engineering	John Ngo Uji	Upsilon	No. 114
104	Raydon Chow	Houston, TX	Business Managemen	Dan Nguyen Uji	Upsilon	No. 115
105	Jeff Chu	Louisville, KY	Nursing	Baophong Vinh Uji	Upsilon	No. 116
106	Long Feng	China	Economics	John Nguyen Uji	Upsilon	No. 117
107	Nita Hayes	Cambodia	Pharmacy	George Wong Uji	Upsilon	No. 118
108	Henry Leu	San Francisco, CA	Bio Chemistry	Jimmy Kim Uji	Upsilon	No. 119
109	Ramon Reyna	Galveston, TX	Business	Baophong Vinh Uji	Upsilon	No. 120
110	Tony Kim	Houston, TX	Electrical Engineering	Duke Truong Uji	Phi	No. 121
111	Chris Le	Mountainview, CA	Nutrition	Baophong Vinh Uji	Phi	No. 122
112	Tommy Nguyen	Houston, TX	Business	John Nguyen Uji	Phi	No. 123
113	Alex Wang	Houston, TX	Accounting/Finance	Dan Nguyen Uji	Phi	No. 124
114	Eric Wu	Houston, TX	Hotel Managemen	John Ngo Uji	Phi	No. 125
115	Carlos Moxon	Houston, TX	Advertising/International Business	George Wong Uji	Chi	No. 126
116	Kevin Wang	Tainan, Taiwan	Biology	Baophong Vinh Uji	Chi	No. 127
117	Austen Chang	Houston, TX	Computer Engineering Technology	Duke Truong Uji	Psi	No. 129
118	Quan Hong	Houston, TX	English	Timothy Kim Uji	Psi	No. 130
119	John Lesslar	Miri, Malaysia	Mechanical Engineering Technology	John Ngo Uji	Psi	No. 131
120	Robbie Reyes	Houston, TX	Finance/Accounting	Dan Nguyen Uji	Psi	No. 132
121	Tony Tran	Rockford, Illinois	Computer Engineering Technology	Long Nguyen Uji	Psi	No. 133
122	Jason Wang	Houston, TX	Accounting	Jimmy Kim Uji	Psi	No. 134
123	Mahim Chowdhury	Queens, NY	Economics	Dan Nguyen Uji	Alpha-Alpha	No. 135
124	James Han	Houston, TX	Economics	David Gamez Uji	Alpha-Alpha	No. 136
125	Craig Henry	Brooklyn, NY	Psychology	Jimmy Kim Uji	Alpha-Alpha	No. 137
126	Bernard Hong	Meri, Malaysia	Finance/Marketing	John Nguyen Uji	Alpha-Alpha	No. 138
127	Chris Huynh	Houston, TX	Psychology	Timothy Kim Uji	Alpha-Alpha	No. 139
128	Ryan Nghe	Dallas, TX	Finance	Jonathan Dizon Uji	Alpha-Alpha	No. 140
129	Ryan Nguyen	Houston, TX	Business	Dan Nguyen Uji	Alpha-Alpha	No. 141
130	Methe Sriyunyongwat	Houston, TX	Chemistry Engineer	David Ho Uji	Alpha-Alpha	No. 142
131	Andy Thai	Houston, TX	Petroleum Engineering	Long Nguyen Uji	Alpha-Alpha	No. 143
132	Phil Tseng	Houston, TX	Biology	George Wong Uji	Alpha-Alpha	No. 144
133	Ben Wu	China	Photography	Baophong Vinh Uji	Alpha-Alpha	No. 145
134	Leon Chu	Houston, TX	Pre-Denta	George Wong Uji	Alpha-Beta	No. 146
135	Lizandro Delgado	Houston, TX	Business	Long Nguyen Uji	Alpha-Beta	No. 147
136	Eric Jui	Houston, TX	Accounting	David Ho Uji	Alpha-Beta	No. 148
137	Wally Le	New Orleans, LA	Biology	Jimmy Kim Uji	Alpha-Beta	No. 149
138	Ivan Mei	Columbia	Biology	Dan Nguyen Uji	Alpha-Beta	No. 150
139	Ted Nguyen	Houston, TX	Business	Duke Truong Uji	Alpha-Beta	No. 151
140	Tommy Phan	Houston, TX	Law Enforcemen	Timothy Kim Uji	Alpha-Beta	No. 152
141	David Yim	Houston, TX	Business	David Gamez Uji	Alpha-Beta	No. 153
142	Anthony Bui	Houston, TX	Finance	Timothy Kim Uji	Alpha-Gamma	No. 154
143	Raymond Cui	Manhattan, NY	Marketing	Dan Nguyen Uji	Alpha-Gamma	No. 155
144	Charles Fealy	Manila, Philippines	Accounting	George Wong Uji	Alpha-Gamma	No. 156
145	John Hoang	Houston, TX	Accounting	Jonathan Dizon Uji	Alpha-Gamma	No. 157
146	Terry Huang	Houston, TX	Business	Dan Nguyen Uji	Alpha-Gamma	No. 158
147	Tuan Le	Amarillo, TX	Business	Jimmy Kim Uji	Alpha-Gamma	No. 159
148	Jensen Leung	Macau	Chemical Engineering	John Ngo Uji	Alpha-Gamma	No. 160
149	Anthony Nguyen	Houston, TX	Industrial Design	David Ho Uji	Alpha-Gamma	No. 161
150	John Nguyen	Orange County, CA	Business	John Nguyen Uji	Alpha-Gamma	No. 162
151	Peter Nguyen	Orange County, CA	Business	George Wong Uji	Alpha-Gamma	No. 163
152	Greg Nitayamekin	Thailand	Business	Long Nguyen Uji	Alpha-Gamma	No. 164
153	Micheal Phan	Houston, TX	Biology	Jonathan Dizon Uji	Alpha-Gamma	No. 165
154	Lloyd Reyes	Toronto, CA	Pre-Pharmacy	Duke Truong Uji	Alpha-Gamma	No. 166
155	Jim Tai	Taipei, Taiwan	Bioengineering/Entrepreneurship	Long Nguyen Uji	Alpha-Gamma	No. 167
156	Kelvin Tarng	Houston, TX	Business	Jimmy Kim Uji	Alpha-Gamma	No. 168
157	Andrew Thai	Houston, TX	Management Information Systems	Baophong Vinh Uji	Alpha-Gamma	No. 169
158	Tony Tran	Houston, TX	Mechanical Engineering	David Ho Uji	Alpha-Gamma	No. 170
159	Steven Truong	San Antonio, TX	Architecture	John Nguyen Uji	Alpha-Gamma	No. 171
160	Van Vo	Houston, TX	Architecture	John Ngo Uji	Alpha-Gamma	No. 172
161	Anirban Bhaumik	Mumbai, India	Biomedical Engineer	Baophong Vinh Uji	Alpha-Delta	No. 173
162	Danny Chang	Houston, TX	Accounting	David Ho Uji	Alpha-Delta	No. 174
163	Phong Doan	Cleveland, Ohio	Electrical Engineer	John Ngo Uji	Alpha-Delta	No. 175
164	Rishi Goradia	Mumbai, India	Biology/Business	Baophong Vinh Uji	Alpha-Delta	No. 176
165	Andre Huynh		California	Timothy Kim Uji	Alpha-Delta	No. 178
166	Kevin Ngo	Houston, TX	Business	John Ngo Uji	Alpha-Delta	No. 179
167	Viet Tu Nguyen	Houston, TX	Marketing	David Gamez Uji	Alpha-Delta	No. 180
168	Shawn Reddy	Houston, TX	Biochemistry/Pre-Med	Long Nguyen Uji	Alpha-Delta	No. 181
169	Alan Tran	Houston, TX	John Nguyen	John Nguyen Uji	Alpha-Delta	No. 182
170	Billy Tran	Houston, TX	Business	John Nguyen Uji	Alpha-Delta	No. 183
171	Davis Vo	Keller, TX	Business	Long Nguyen Uji	Alpha-Delta	No. 184
172	Patrick Chau	Orange County, CA	Business	David Gamez Uji	Alpha-Epsilon	No. 185
173	Sean Dao	San Jose, CA	Kinesiology	Long Nguyen Uji	Alpha-Epsilon	No. 186
174	Jimmie Doan	Sugar Land, TX	Architecture	David Ho Uji	Alpha-Epsilon	No. 187
175	Jimmy Guo	Edmonton, Canada	Math/Economics	John Nguyen Uji	Alpha-Epsilon	No. 188
176	John Ren	Guangzhou	Psychology	Jonathan Dizon Uji	Alpha-Epsilon	No. 189
177	Wesley Vu	Houston, TX	Kinesiology	Baophong Vinh Uji	Alpha-Epsilon	No. 190
178	Ferris Elestwani	Houston, TX	Accounting	Jimmy Kim Uji	Alpha-Zeta	No. 191
179	Berny Nguyen	Fountain Valley, Ca	Kinesiology	John Ngo Uji	Alpha-Zeta	No. 192
180	Davis Nguyen		Birthplace	David Gamez Uji	Alpha-Zeta	No. 193
181	Trianh Phan	San Jose, CA	Biology	Duke Truong Uji	Alpha-Zeta	No. 195
182	Mark Tiu	Manhattan, NY	Kinesiology	Dan Nguyen Uji	Alpha-Zeta	No. 196
183	Kingsley Li	Guang Zhou, China	Marketing	Jimmy Kim Uji	Alpha-Eta	No. 198
184	Nam Vu	Houston, TX	Finance/Accounting	Jonathan Dizon Uji	Alpha-Eta	No. 199
185	Brandon Wu	Houston, TX	Pre Medica	John Nguyen Uji	Alpha-Eta	No. 200
186	Wes Wu	Houston, TX	Finance	David Ho Uji	Alpha-Eta	No. 201
187	Hao Tran	Houston, TX	Human Development and Family Studies	John Nguyen Uji	Alpha-Theta	No. 203
188	Richard Trieu	San Jose, CA	Biology	Baophong Vinh Uji	Alpha-Theta	No. 204
189	James Wang	Houston, TX	Computer Engineering	Dan Nguyen Uji	Alpha-Theta	No. 205
190	Tung Dao	Houston, TX	Computer Science	John Ngo Uji	Alpha-Iota	No. 206
191	Aakash Gohel	Danbury, CT	Pharmacy	David Ho Uji	Alpha-Iota	No. 207
192	Blake McCardell	Houston, TX	Psychology	David Gamez Uji	Alpha-Iota	No. 208
193	Sonny Nguyen	Dallas, TX	Pharmacy	George Wong Uji	Alpha-Iota	No. 209
194	Mike Tran	Houston, TX	Supply Chain	Timothy Kim Uji	Alpha-Iota	No. 210
195	Juan Carlos Acuna	Houston, TX	Chemical Engineering	Jimmy Kim Uji	Alpha-Kappa	No. 212
196	Yaser Kazzaz	Birmingham, United Kingdom	Business	David Gamez Uji	Alpha-Kappa	No. 213
197	Kenny Ky	San Antonio, TX	Business	David Ho Uji	Alpha-Kappa	No. 214
198	James Lee	Harlingen, TX	Hospitality	Jonathan Dizon Uji	Alpha-Kappa	No. 215
199	Cheng Lin	China	Pharmacy	Baophong Vinh Uji	Alpha-Kappa	No. 216
200	Zheng Liu	Shen Yang, China	0331 Machine Gunner	Jimmy Kim Uji	Alpha-Kappa	No. 217
201	John Ngo	Fort Worth, TX	Hotel Restaurant Managemen	George Wong Uji	Alpha-Kappa	No. 218
202	Mike Vo Nguyen	Houston, TX	Decision and Information Science	David Ho Uji	Alpha-Kappa	No. 219
203	Thu Nguyen	Corpus Christi, TX	Petroleum Engineering	Jonathan Dizon Uji	Alpha-Kappa	No. 220
204	Tien Nguyen	Galveston, TX	Business	Baophong Vinh Uji	Alpha-Kappa	No. 221
205	Dorian Qi	Lorrach, Germany	Supply Chain Managemen	John Ngo Uji	Alpha-Kappa	No. 222
206	Jesse Yao	Houston, TX	Computer Science	John Nguyen Uji	Alpha-Kappa	No. 223
207	Anthony Bui	Houston, TX	Biology	Dan Nguyen Uji	Alpha-Mu	No. 224
208	Andrew Cobarruvias	San Antonio, TX	Construction Managemen	George Wong Uji	Alpha-Mu	No. 225
209	Anh Minh Duong	Saigon, Vietnam	Political Science	Long Nguyen Uji	Alpha-Mu	No. 226
210	Louis Khoa Dan	Houston, TX	Biology/Pre-Medica	Baophong Vinh Uji	Alpha-Mu	No. 227
211	Quyen Nguy	Ho Chi Minh City, Vietnam	Civil Engineering	John Nguyen Uji	Alpha-Mu	No. 228
212	Andrew Nguyen	Houston, TX	Business	Duke Truong Uji	Alpha-Mu	No. 229
213	Tai Nguyen	Houston, TX	Culinary	Duke Truong Uji	Alpha-Mu	No. 230
214	Richardson Pham	Houston, TX	Nutrition	Long Nguyen Uji	Alpha-Mu	No. 231
215	Steven Vo	Montreal, Quebec	Pre-Pharmacy	David Ho Uji	Alpha-Mu	No. 232
216	Davis Dang	Orange County, CA	Digital Media	Jimmy Kim Uji	Alpha-Nu	No. 233
217	Tony Do	Saigon, Vietnam	Mechanical Engineering	Dan Nguyen Uji	Alpha-Nu	No. 234
218	John Duong	Houston, TX	Petroleum Engineering	Dan Nguyen Uji	Alpha-Nu	No. 235
219	Bryan Galindo	Houston, TX	Mathematics	Duke Truong Uji	Alpha-Nu	No. 236
220	Tom Lai	Taipei, Taiwan	Supply Chain Logistics	George Wong Uji	Alpha-Nu	No. 238
221	Andy Luu	Galveston, TX	Biology	Baophong Vinh Uji	Alpha-Nu	No. 239
222	Francis Bhatia	Melbourne, Australia	Supply Chain Managemen	Jimmy Kim Uji	Alpha-Xi	No. 241
223	Steven Dao	Houston, TX	Computer Science	Dan Nguyen Uji	Alpha-Xi	No. 242
224	Justin Hinh	Houston, TX	Finance	David Ho Uji	Alpha-Xi	No. 243
225	Jason Pham	Los Angeles, CA	Combat Suppor	Duke Truong Uji	Alpha-Xi	No. 244
226	Dominique Thou	Dallas, TX	Digital Media	John Ngo Uji	Alpha-Xi	No. 245
227	Christopher Torres	Sacramento, CA	Business/Pre Law	Jonathan Dizon Uji	Alpha-Xi	No. 246
228	Dale Tran	Dallas, TX	Marketing	Jimmy Kim Uji	Alpha-Xi	No. 247
229	Geoffrey Chan	Queens, New York	Pharmacy	Long Nguyen Uji	Alpha-Omicron	No. 248
230	Alex Dinh	Galveston, TX	Human Resources	George Wong Uji	Alpha-Omicron	No. 249
231	Bop Huynh	Palawan, Philippines	Cis	Timothy Kim Uji	Alpha-Omicron	No. 250
232	Tai Le	Kuala Lumpur, Malaysia	Petroleum Engineering	Baophong Vinh Uji	Alpha-Omicron	No. 251
233	York Lin	Houston, TX	Industrial Engineering	David Gamez Uji	Alpha-Omicron	No. 252
234	Justin Marasigan	Manila, Philippines	Accounting	Long Nguyen Uji	Alpha-Omicron	No. 253
235	Tommy Nguyen	Dallas, TX	Supply Chain Managemen	John Nguyen Uji	Alpha-Omicron	No. 254
236	Oh Peou	Phnom Penh, Cambodia	Human Resource Developmen	David Gamez Uji	Alpha-Omicron	No. 255
237	Jiazhi Qiu	Jilin, China	Supply Chain Managemen	Jimmy Kim Uji	Alpha-Omicron	No. 256
238	Julio Tan	Lima, Peru	Supply Chain Managemen	John Nguyen Uji	Alpha-Omicron	No. 257
239	Patrick Cho	Houston, TX	Biology	Timothy Kim Uji	Alpha-Pi	No. 259
240	Anthony Fernando	Newark, New Jersey	Biology	David Gamez Uji	Alpha-Pi	No. 260
241	Bryan Hoang	Melbourne, Australia	Biomedical Science	Jimmy Kim Uji	Alpha-Pi	No. 261
242	Nicholas Hong	Long Beach, CA	Biology	Jimmy Kim Uji	Alpha-Pi	No. 262
243	Ed Lang	Boston, Massachusetts	Petroleum Engineer	Baophong Vinh Uji	Alpha-Pi	No. 263
244	Kevin Nguyen	Orange County, CA	Hrm	Dan Nguyen Uji	Alpha-Pi	No. 264
245	Andrew Nguyen	New Orleans, Louisiana	Chemical Engineering	John Ngo Uji	Alpha-Pi	No. 265
246	Dean Pham	Orange County, CA	Finance	Jonathan Dizon Uji	Alpha-Pi	No. 266
247	Jonathan Quach	Houston, TX	Biology	Long Nguyen Uji	Alpha-Pi	No. 267
248	Kevin Thai	Houston, TX	Mechanical Engineering	Timothy Kim Uji	Alpha-Pi	No. 268
249	Micael Tran	Port Arthur, TX	Psychology	David Ho Uji	Alpha-Pi	No. 269
250	Michael Tran	Houston, TX	Computer Engineering Technology	David Ho Uji	Alpha-Pi	No. 270
251	Jadarian Bush	Shreveport, Louisiana	Sports Administration	Duke Truong Uji	Alpha-Rho	No. 271
252	Raymond Chan	San Jose, CA	Chemical engineering	Long Nguyen Uji	Alpha-Rho	No. 272
253	Alex Duong	Houston, TX	Economics	Timothy Kim Uji	Alpha-Rho	No. 273
254	Nathan Huynh	Kien Giang, Vietnam	Computer Engineer Tech	John Nguyen Uji	Alpha-Rho	No. 274
255	Michael Jiang	Houston, TX	Accounting	Jimmy Kim Uji	Alpha-Rho	No. 275
256	Isaiah Nguyen	Houston, TX	Accounting	George Wong Uji	Alpha-Rho	No. 276
257	Jimmy Nguyen	Kuala Lampur, Malaysia	Biology	David Gamez Uji	Alpha-Rho	No. 277
258	Phat Nguyen	Saigon, Vietnam	Accounting	John Ngo Uji	Alpha-Rho	No. 278
259	Christopher Rice	Houston, TX	Marketing	Dan Nguyen Uji	Alpha-Rho	No. 279
260	David Vo	Houston, TX	Mechanical Engineering Technology	Dan Nguyen Uji	Alpha-Rho	No. 280
261	Mathew Nguyen	Houston, TX	Supply Chain	Baophong Vinh Uji	Alpha-Sigma	No. 281
262	Obinna Nnaji	Houston, TX	Chemical Enginnering 	Dan Nguyen Uji	Alpha-Sigma	No. 282
263	Christopher Theriot	Houston, TX	Computer Engineering	John Nguyen Uji	Alpha-Sigma	No. 283
264	Felix Chang	Queens, NY	Kinesiology	John Ngo Uji	Alpha-Tau	No. 284
265	Justin Do	Port Arthur, TX	Electrical Engineering	Jimmy Kim Uji	Alpha-Tau	No. 285
266	Tony Luu	Houston, TX	Petroleum Engineering	Duke Truong Uji	Alpha-Tau	No. 286
267	Rogelio Munoz	Houston, TX	Digital Media	Dan Nguyen Uji	Alpha-Tau	No. 287
268	Andy Nguyen	Pearland, TX	Construction Managemen	Timothy Kim Uji	Alpha-Tau	No. 288
269	Charlie Nguyen	Houston, Tx	Chemical Engineering	David Ho Uji	Alpha-Tau	No. 289
270	Nathan Nguyen	Montgomery, AL	Computer Engineer	Baophong Vinh Uji	Alpha-Tau	No. 290
271	Tommy Nguyen	Houston, TX	Electrical Engineering	Dan Nguyen Uji	Alpha-Tau	No. 291
272	Vashon Nguyen	Houston, TX	Pharmacy	Jonathan Dizon Uji	Alpha-Tau	No. 292
273	Nicholas Vo	Houston, TX	Retailing/Consumer Science	Duke Truong Uji	Alpha-Tau	No. 293
\.


--
-- Data for Name: active_member; Type: TABLE DATA; Schema: roster; Owner: tommynguyen
--

COPY roster.active_member (fullname, major, homeplace, ujiname, classname, linenumber, id, picture) FROM stdin;
Francis Bhatia	Supply Chain Managemen	Melbourne, Australia	Jimmy Kim Uji	Alpha-Xi	241	241	yes
Justin Marasigan	Accounting	Manila, Philippines	Long Nguyen Uji	Alpha-Omicron	253	253	yes
David Gamez	Business	Hammond, Indiana	David Gamez Uji	Charter	2	2	no
David Ho	Management/Marketing	Taipei, Taiwan	David Ho Uji	Charter	3	3	no
Jimmy Kim	Political Science	Seoul, South Korea	Jimmy Kim Uji	Charter	4	4	no
Timothy Kim	Journalism	Seoul, South Korea	Timothy Kim Uji	Charter	5	5	no
John Ngo	Electrical Engineering	Quy Nhon, Vietnam	John Ngo Uji	Charter	6	6	no
Dan Nguyen	Sociology/Economics	Hue, Vietnam	Dan Nguyen Uji	Charter	7	7	no
John Nguyen	Biology	Soc Trang. Vietnam	John Nguyen Uji	Charter	8	8	no
Long Nguyen	Biology	Da Lat, Vietnam	Long Nguyen Uji	Charter	9	9	no
Duke Truong	Business Administration	Caniho, Vietnam	Duke Truong Uji	Charter	10	10	no
Baophong Vinh	Biology	Saigon, Vietnam	Baophong Vinh Uji	Charter	11	11	no
George Wong	Accounting/Finance	Houston, TX	George Wong Uji	Charter	12	12	no
Freddie Chang	International Business	Paris, France	Dan Nguyen Uji	Alpha	13	13	no
Peter Chen	Finance/Pre-Law	Kowloon, Hong Kong	George Wong Uji	Alpha	14	14	no
Huy Dinh	Accounting	Nga Trang, Vietnam	Jimmy Kim Uji	Alpha	15	15	no
Lindley Manalo	Psychology	Negros Occidental, Philippines	John Nguyen Uji	Alpha	16	16	no
Patrick Park	Psychology/Marketing	Elmira, New York	Timothy Kim Uji	Alpha	17	17	no
Bradford Eu	Biology/Pre-Denta	San Francisco, CA	Jimmy Kim Uji	Beta	19	19	no
Steven Huynh	Biology	Vietnam	George Wong Uji	Beta	20	20	no
Darrick Kung	Accounting	Houston, TX	Jonathan Dizon Uji	Beta	21	21	no
Phuong Nguyen	Biology	South Vietnam	David Ho Uji	Beta	22	22	no
David Phan	Biology	Midland, Michigan	John Ngo Uji	Beta	23	23	no
Vinh Tri	Pre-Pharmacy	Saigon, Vietnam	Timothy Kim Uji	Beta	24	24	no
Glen Vo	Biology	San Francisco, CA	Long Nguyen Uji	Beta	25	25	no
Craig Casipe	Psychology	Houston, TX	Jonathan Dizon Uji	Gamma	26	26	no
Caesar Chang	Business	Kingstown, Rhode Island	John Nguyen Uji	Gamma	27	27	no
Gabriel Nguyen	Business		Dan Nguyen Uji	Gamma	28	28	no
Doug Park	Sports Administration	Houston, TX	George Wong Uji	Gamma	29	29	no
Bob Ho	Architecture	Taipei, Taiwan	Long Nguyen Uji	Delta	30	30	no
Tuan Hong	Biology	Mesa, Arizona	David Gamez Uji	Delta	31	31	no
Gary Ho	Finance	Republic of China	Duke Truong Uji	Epsilon	32	32	no
Tony Mu	Accounting	Houston, TX	Dan Nguyen Uji	Epsilon	33	33	no
Jimmy Shum	University Studies	Venezuela	Baophong Vinh Uji	Epsilon	34	34	no
Troy Allum	Biology	Kalamazoo, Michigan	Long Nguyen Uji	Zeta	35	35	no
San Huynh	University Studies	Vietnam	David Gamez Uji	Zeta	36	36	no
Truong Nguyen	Biology	Vietnam	John Ngo Uji	Zeta	37	37	no
Albert Wu	Psychology	Taiwan	Jimmy Kim Uji	Zeta	39	39	no
Justin Yao	Information Technology	New York	Duke Truong Uji	Zeta	40	40	no
Phillip Chen	University Studies	Riverton	Duke Truong Uji	Eta	41	41	no
Khai Diep	Pharmacy	Vietnam	Timothy Kim Uji	Eta	42	42	no
Minh Nguyen	Business	Houston, TX	Jimmy Kim Uji	Eta	43	43	no
Wilson Ornedo	MIS	Philippines	Jonathan Dizon Uji	Eta	44	44	no
Alex Pham	Business	Vietnam	Dan Nguyen Uji	Eta	45	45	no
Paul Qui	Marketing	Philippines	David Ho Uji	Eta	46	46	no
Nick Sun	Hospitality	Taiwan	John Nguyen Uji	Eta	47	47	no
Peter Kuo	IST	Taiwan	Jonathan Dizon Uji	Theta	48	48	no
Mastimar Mohammed	IST	Malaysia	John Ngo Uji	Theta	49	49	no
Quan Nguyen	CET	Vietnam	Baophong Vinh Uji	Theta	50	50	no
Joseph Stang	Computer Engineering	MA	David Ho Uji	Theta	51	51	no
Neil Alba	Adverting	Bueno Park City, CA	John Ngo Uji	Iota	52	52	no
Rudy Garcia II	Corporate Communication	Chicago, IL	Timothy Kim Uji	Iota	53	53	no
Doug Le	Communication	Houston, TX	Baophong Vinh Uji	Iota	54	54	no
Viet Le	Pharmacy	Phoenix, AZ	Long Nguyen Uji	Iota	55	55	no
Wan Jin No	Nutrition	Seoul, Korea	Jimmy Kim Uji	Iota	56	56	no
Vu Tran	Finance	Houston, TX	John Nguyen Uji	Iota	57	57	no
Tony Yu	Marketing	Taipei, Taiwan	Jonathan Dizon Uji	Iota	58	58	no
Jimmy Bui	Pharmacy	Chicago, IL	Baophong Vinh Uji	Kappa	59	59	no
Cedric Chang	Architecture	Taipei, Taiwan	John Nguyen Uji	Kappa	60	60	no
Kiet Dang	Computer Engineering	Saigon, Vietnam	David Gamez Uji	Kappa	61	61	no
Chris Huynh	Telecommunications	Freeport, TX	Dan Nguyen Uji	Kappa	62	62	no
Mike Medina	Business	Makati-Manila, Philippines	Long Nguyen Uji	Kappa	63	63	no
Vinh Nguyen	Biochemistry	Hue, Vietnam	Jimmy Kim Uji	Kappa	64	64	no
Phai Thach	University Studies	Bangkok, Thailand	David Ho Uji	Kappa	65	65	no
Ramon Alvarado	Governmen	Houston, TX	Timothy Kim Uji	Mu	66	66	no
Mike Chang	Marketing	Taipei, Taiwan	David Gamez Uji	Mu	67	67	no
Naoki Ishii	Psychology	Hiroshima, Japan	Duke Truong Uji	Nu	70	70	no
Jien Cheng	Pre-pharmacy	Dallas, TX	Jimmy Kim Uji	Xi	73	73	no
Justin Kim	Business	Houston, TX	David Gamez Uji	Xi	74	74	no
David Liu	Pre-pharmacy	Beijing, China	Baophong Vinh Uji	Xi	75	75	no
Richy Nguyen	Bio-Medica	Pittsburgh, Pennsylvania	Jimmy Kim Uji	Xi	76	76	no
Tony Nguyen	Biology	Richardson, TX	John Ngo Uji	Xi	77	77	no
Milbert Tumaliuan	USD	Houston, TX	Baophong Vinh Uji	Xi	79	79	no
Dan Vo	MBA	Saigon, Vietnam	David Ho Uji	Xi	80	80	no
Phuc Vo	Business	Houston, TX	David Gamez Uji	Xi	81	81	no
Paul Yuen	Marketing	Toi-Shan, China	Jonathan Dizon Uji	Xi	82	82	no
Khan Ngo	Pharmacy	Houston, TX	Baophong Vinh Uji	Omicron	83	83	no
Liem Nguyen	Biology	Houston, TX	Baophong Vinh Uji	Omicron	84	84	no
Harry So	Pharmacy	Clear Lake, TX	John Ngo Uji	Omicron	85	85	no
Chris Nguyen	Pre-Med	Houston, TX	Jonathan Dizon Uji	Rho	87	87	no
Eric Nguyen	Computer Science	Katy, TX	David Gamez Uji	Rho	88	88	no
Ryan Thai	Business	Houston, TX	Dan Nguyen Uji	Rho	90	90	no
Robie Jugeta Calong	Electrical Engineering	Manila, Philippines	Timothy Kim Uji	Sigma	91	91	no
Tony Chao	Kinesiology	Thailand	George Wong Uji	Sigma	92	92	no
Anthony Cheung	Kinesiology	Houston, TX	Baophong Vinh Uji	Sigma	93	93	no
David Chow	Business Managemen	Houston, TX	John Ngo Uji	Sigma	94	94	no
Jed Foronda	Business	Houston, TX	David Gamez Uji	Sigma	95	95	no
Alan Kuo	Corporate Law	Houston, TX	Jonathan Dizon Uji	Sigma	96	96	no
Banny Lim	Advertising	Houston, TX	Jimmy Kim Uji	Sigma	97	97	no
David Luu	Major	Ontario, Canada	Timothy Kim Uji	Sigma	98	98	no
Koan Loc	Biology	Milwaukee, WI	Baophong Vinh Uji	Sigma	99	99	no
Terry Mu	Nursing	Houston, TX	Long Nguyen Uji	Sigma	100	100	no
Tuong Nguyen	Mechanical Engineering	Hue, Vietnam	John Nguyen Uji	Sigma	102	102	no
Jonathan Chan	Accounting	Houston, TX	John Nguyen Uji	Tau	103	103	no
June Kim	Biology	Houston, TX	Timothy Kim Uji	Tau	104	104	no
John DeFelice	Engineering	Bristol, PA	David Ho Uji	Tau	105	105	no
Lydar Lay	Pharmacy	LA	George Wong Uji	Tau	106	106	no
Gabriel Medina	Political Science	Houston, TX	David Ho Uji	Tau	107	107	no
Anthony Nguyen	Civil Engineering	San Jose, CA	David Gamez Uji	Tau	108	108	no
Gireesh Shintri	Political Science	Houston, TX	Jonathan Dizon Uji	Tau	110	110	no
David Wu	Hotel Managemen	Houston, TX	Dan Nguyen Uji	Tau	111	111	no
Alfredo Yuen	Accounting	Buenos Aires, Argentina	Duke Truong Uji	Tau	112	112	no
Antonio Yuen	Business	Buenos Aires, Argentina	Jonathan Dizon Uji	Tau	113	113	no
Ryan Cheng	Electrical Engineering	Calgary, Canada	John Ngo Uji	Upsilon	114	114	no
Raydon Chow	Business Managemen	Houston, TX	Dan Nguyen Uji	Upsilon	115	115	no
Jeff Chu	Nursing	Louisville, KY	Baophong Vinh Uji	Upsilon	116	116	no
Long Feng	Economics	China	John Nguyen Uji	Upsilon	117	117	no
Nita Hayes	Pharmacy	Cambodia	George Wong Uji	Upsilon	118	118	no
Henry Leu	Bio Chemistry	San Francisco, CA	Jimmy Kim Uji	Upsilon	119	119	no
Ramon Reyna	Business	Galveston, TX	Baophong Vinh Uji	Upsilon	120	120	no
Tony Kim	Electrical Engineering	Houston, TX	Duke Truong Uji	Phi	121	121	no
Chris Le	Nutrition	Mountainview, CA	Baophong Vinh Uji	Phi	122	122	no
Tommy Nguyen	Business	Houston, TX	John Nguyen Uji	Phi	123	123	no
Alex Wang	Accounting/Finance	Houston, TX	Dan Nguyen Uji	Phi	124	124	no
Eric Wu	Hotel Managemen	Houston, TX	John Ngo Uji	Phi	125	125	no
Carlos Moxon	Advertising/International Business	Houston, TX	George Wong Uji	Chi	126	126	no
Kevin Wang	Biology	Tainan, Taiwan	Baophong Vinh Uji	Chi	127	127	no
Austen Chang	Computer Engineering Technology	Houston, TX	Duke Truong Uji	Psi	129	129	no
Quan Hong	English	Houston, TX	Timothy Kim Uji	Psi	130	130	no
John Lesslar	Mechanical Engineering Technology	Miri, Malaysia	John Ngo Uji	Psi	131	131	no
Robbie Reyes	Finance/Accounting	Houston, TX	Dan Nguyen Uji	Psi	132	132	no
Tony Tran	Computer Engineering Technology	Rockford, Illinois	Long Nguyen Uji	Psi	133	133	no
Jason Wang	Accounting	Houston, TX	Jimmy Kim Uji	Psi	134	134	no
Mahim Chowdhury	Economics	Queens, NY	Dan Nguyen Uji	Alpha-Alpha	135	135	no
James Han	Economics	Houston, TX	David Gamez Uji	Alpha-Alpha	136	136	no
Craig Henry	Psychology	Brooklyn, NY	Jimmy Kim Uji	Alpha-Alpha	137	137	no
Bernard Hong	Finance/Marketing	Meri, Malaysia	John Nguyen Uji	Alpha-Alpha	138	138	no
Chris Huynh	Psychology	Houston, TX	Timothy Kim Uji	Alpha-Alpha	139	139	no
Ryan Nghe	Finance	Dallas, TX	Jonathan Dizon Uji	Alpha-Alpha	140	140	no
Ryan Nguyen	Business	Houston, TX	Dan Nguyen Uji	Alpha-Alpha	141	141	no
Methe Sriyunyongwat	Chemistry Engineer	Houston, TX	David Ho Uji	Alpha-Alpha	142	142	no
Andy Thai	Petroleum Engineering	Houston, TX	Long Nguyen Uji	Alpha-Alpha	143	143	no
Phil Tseng	Biology	Houston, TX	George Wong Uji	Alpha-Alpha	144	144	no
Ben Wu	Photography	China	Baophong Vinh Uji	Alpha-Alpha	145	145	no
Leon Chu	Pre-Denta	Houston, TX	George Wong Uji	Alpha-Beta	146	146	no
Lizandro Delgado	Business	Houston, TX	Long Nguyen Uji	Alpha-Beta	147	147	no
Eric Jui	Accounting	Houston, TX	David Ho Uji	Alpha-Beta	148	148	no
Wally Le	Biology	New Orleans, LA	Jimmy Kim Uji	Alpha-Beta	149	149	no
Ivan Mei	Biology	Columbia	Dan Nguyen Uji	Alpha-Beta	150	150	no
Ted Nguyen	Business	Houston, TX	Duke Truong Uji	Alpha-Beta	151	151	no
Tommy Phan	Law Enforcemen	Houston, TX	Timothy Kim Uji	Alpha-Beta	152	152	no
David Yim	Business	Houston, TX	David Gamez Uji	Alpha-Beta	153	153	no
Anthony Bui	Finance	Houston, TX	Timothy Kim Uji	Alpha-Gamma	154	154	no
Raymond Cui	Marketing	Manhattan, NY	Dan Nguyen Uji	Alpha-Gamma	155	155	no
Charles Fealy	Accounting	Manila, Philippines	George Wong Uji	Alpha-Gamma	156	156	no
John Hoang	Accounting	Houston, TX	Jonathan Dizon Uji	Alpha-Gamma	157	157	no
Terry Huang	Business	Houston, TX	Dan Nguyen Uji	Alpha-Gamma	158	158	no
Tuan Le	Business	Amarillo, TX	Jimmy Kim Uji	Alpha-Gamma	159	159	no
Jensen Leung	Chemical Engineering	Macau	John Ngo Uji	Alpha-Gamma	160	160	no
Anthony Nguyen	Industrial Design	Houston, TX	David Ho Uji	Alpha-Gamma	161	161	no
John Nguyen	Business	Orange County, CA	John Nguyen Uji	Alpha-Gamma	162	162	no
Peter Nguyen	Business	Orange County, CA	George Wong Uji	Alpha-Gamma	163	163	no
Greg Nitayamekin	Business	Thailand	Long Nguyen Uji	Alpha-Gamma	164	164	no
Micheal Phan	Biology	Houston, TX	Jonathan Dizon Uji	Alpha-Gamma	165	165	no
Lloyd Reyes	Pre-Pharmacy	Toronto, CA	Duke Truong Uji	Alpha-Gamma	166	166	no
Jim Tai	Bioengineering/Entrepreneurship	Taipei, Taiwan	Long Nguyen Uji	Alpha-Gamma	167	167	no
Kelvin Tarng	Business	Houston, TX	Jimmy Kim Uji	Alpha-Gamma	168	168	no
Andrew Thai	Management Information Systems	Houston, TX	Baophong Vinh Uji	Alpha-Gamma	169	169	no
Tony Tran	Mechanical Engineering	Houston, TX	David Ho Uji	Alpha-Gamma	170	170	no
Steven Truong	Architecture	San Antonio, TX	John Nguyen Uji	Alpha-Gamma	171	171	no
Van Vo	Architecture	Houston, TX	John Ngo Uji	Alpha-Gamma	172	172	no
Anirban Bhaumik	Biomedical Engineer	Mumbai, India	Baophong Vinh Uji	Alpha-Delta	173	173	no
Danny Chang	Accounting	Houston, TX	David Ho Uji	Alpha-Delta	174	174	no
Phong Doan	Electrical Engineer	Cleveland, Ohio	John Ngo Uji	Alpha-Delta	175	175	no
Rishi Goradia	Biology/Business	Mumbai, India	Baophong Vinh Uji	Alpha-Delta	176	176	no
Andre Huynh	California		Timothy Kim Uji	Alpha-Delta	178	178	no
Kevin Ngo	Business	Houston, TX	John Ngo Uji	Alpha-Delta	179	179	no
Viet Tu Nguyen	Marketing	Houston, TX	David Gamez Uji	Alpha-Delta	180	180	no
Shawn Reddy	Biochemistry/Pre-Med	Houston, TX	Long Nguyen Uji	Alpha-Delta	181	181	no
Alan Tran	John Nguyen	Houston, TX	John Nguyen Uji	Alpha-Delta	182	182	no
Billy Tran	Business	Houston, TX	John Nguyen Uji	Alpha-Delta	183	183	no
Davis Vo	Business	Keller, TX	Long Nguyen Uji	Alpha-Delta	184	184	no
Patrick Chau	Business	Orange County, CA	David Gamez Uji	Alpha-Epsilon	185	185	no
Sean Dao	Kinesiology	San Jose, CA	Long Nguyen Uji	Alpha-Epsilon	186	186	no
Jimmie Doan	Architecture	Sugar Land, TX	David Ho Uji	Alpha-Epsilon	187	187	no
Jimmy Guo	Math/Economics	Edmonton, Canada	John Nguyen Uji	Alpha-Epsilon	188	188	no
John Ren	Psychology	Guangzhou	Jonathan Dizon Uji	Alpha-Epsilon	189	189	no
Wesley Vu	Kinesiology	Houston, TX	Baophong Vinh Uji	Alpha-Epsilon	190	190	no
Ferris Elestwani	Accounting	Houston, TX	Jimmy Kim Uji	Alpha-Zeta	191	191	no
Berny Nguyen	Kinesiology	Fountain Valley, Ca	John Ngo Uji	Alpha-Zeta	192	192	no
Davis Nguyen	Birthplace		David Gamez Uji	Alpha-Zeta	193	193	no
Trianh Phan	Biology	San Jose, CA	Duke Truong Uji	Alpha-Zeta	195	195	no
Mark Tiu	Kinesiology	Manhattan, NY	Dan Nguyen Uji	Alpha-Zeta	196	196	no
Kingsley Li	Marketing	Guang Zhou, China	Jimmy Kim Uji	Alpha-Eta	198	198	no
Nam Vu	Finance/Accounting	Houston, TX	Jonathan Dizon Uji	Alpha-Eta	199	199	no
Brandon Wu	Pre Medica	Houston, TX	John Nguyen Uji	Alpha-Eta	200	200	no
Wes Wu	Finance	Houston, TX	David Ho Uji	Alpha-Eta	201	201	no
Hao Tran	Human Development and Family Studies	Houston, TX	John Nguyen Uji	Alpha-Theta	203	203	no
Richard Trieu	Biology	San Jose, CA	Baophong Vinh Uji	Alpha-Theta	204	204	no
James Wang	Computer Engineering	Houston, TX	Dan Nguyen Uji	Alpha-Theta	205	205	no
Tung Dao	Computer Science	Houston, TX	John Ngo Uji	Alpha-Iota	206	206	no
Aakash Gohel	Pharmacy	Danbury, CT	David Ho Uji	Alpha-Iota	207	207	no
Blake McCardell	Psychology	Houston, TX	David Gamez Uji	Alpha-Iota	208	208	no
Sonny Nguyen	Pharmacy	Dallas, TX	George Wong Uji	Alpha-Iota	209	209	no
Mike Tran	Supply Chain	Houston, TX	Timothy Kim Uji	Alpha-Iota	210	210	no
Juan Carlos Acuna	Chemical Engineering	Houston, TX	Jimmy Kim Uji	Alpha-Kappa	212	212	no
Yaser Kazzaz	Business	Birmingham, United Kingdom	David Gamez Uji	Alpha-Kappa	213	213	no
Kenny Ky	Business	San Antonio, TX	David Ho Uji	Alpha-Kappa	214	214	no
James Lee	Hospitality	Harlingen, TX	Jonathan Dizon Uji	Alpha-Kappa	215	215	no
Cheng Lin	Pharmacy	China	Baophong Vinh Uji	Alpha-Kappa	216	216	no
Zheng Liu	0331 Machine Gunner	Shen Yang, China	Jimmy Kim Uji	Alpha-Kappa	217	217	no
John Ngo	Hotel Restaurant Managemen	Fort Worth, TX	George Wong Uji	Alpha-Kappa	218	218	no
Mike Vo Nguyen	Decision and Information Science	Houston, TX	David Ho Uji	Alpha-Kappa	219	219	no
Thu Nguyen	Petroleum Engineering	Corpus Christi, TX	Jonathan Dizon Uji	Alpha-Kappa	220	220	no
Tien Nguyen	Business	Galveston, TX	Baophong Vinh Uji	Alpha-Kappa	221	221	no
Dorian Qi	Supply Chain Managemen	Lorrach, Germany	John Ngo Uji	Alpha-Kappa	222	222	no
Jesse Yao	Computer Science	Houston, TX	John Nguyen Uji	Alpha-Kappa	223	223	no
Anthony Bui	Biology	Houston, TX	Dan Nguyen Uji	Alpha-Mu	224	224	no
Andrew Cobarruvias	Construction Managemen	San Antonio, TX	George Wong Uji	Alpha-Mu	225	225	no
Anh Minh Duong	Political Science	Saigon, Vietnam	Long Nguyen Uji	Alpha-Mu	226	226	no
Louis Khoa Dan	Biology/Pre-Medica	Houston, TX	Baophong Vinh Uji	Alpha-Mu	227	227	no
Quyen Nguy	Civil Engineering	Ho Chi Minh City, Vietnam	John Nguyen Uji	Alpha-Mu	228	228	no
Andrew Nguyen	Business	Houston, TX	Duke Truong Uji	Alpha-Mu	229	229	no
Tai Nguyen	Culinary	Houston, TX	Duke Truong Uji	Alpha-Mu	230	230	no
Richardson Pham	Nutrition	Houston, TX	Long Nguyen Uji	Alpha-Mu	231	231	no
Steven Vo	Pre-Pharmacy	Montreal, Quebec	David Ho Uji	Alpha-Mu	232	232	no
Davis Dang	Digital Media	Orange County, CA	Jimmy Kim Uji	Alpha-Nu	233	233	no
Tony Do	Mechanical Engineering	Saigon, Vietnam	Dan Nguyen Uji	Alpha-Nu	234	234	no
John Duong	Petroleum Engineering	Houston, TX	Dan Nguyen Uji	Alpha-Nu	235	235	no
Bryan Galindo	Mathematics	Houston, TX	Duke Truong Uji	Alpha-Nu	236	236	no
Tom Lai	Supply Chain Logistics	Taipei, Taiwan	George Wong Uji	Alpha-Nu	238	238	no
Andy Luu	Biology	Galveston, TX	Baophong Vinh Uji	Alpha-Nu	239	239	no
Jason Pham	Combat Suppor	Los Angeles, CA	Duke Truong Uji	Alpha-Xi	244	244	no
Geoffrey Chan	Pharmacy	Queens, New York	Long Nguyen Uji	Alpha-Omicron	248	248	no
Tai Le	Petroleum Engineering	Kuala Lumpur, Malaysia	Baophong Vinh Uji	Alpha-Omicron	251	251	no
York Lin	Industrial Engineering	Houston, TX	David Gamez Uji	Alpha-Omicron	252	252	no
Tommy Nguyen	Supply Chain Managemen	Dallas, TX	John Nguyen Uji	Alpha-Omicron	254	254	no
Oh Peou	Human Resource Developmen	Phnom Penh, Cambodia	David Gamez Uji	Alpha-Omicron	255	255	no
Julio Tan	Supply Chain Managemen	Lima, Peru	John Nguyen Uji	Alpha-Omicron	257	257	no
Bryan Hoang	Biomedical Science	Melbourne, Australia	Jimmy Kim Uji	Alpha-Pi	261	261	no
Nicholas Hong	Biology	Long Beach, CA	Jimmy Kim Uji	Alpha-Pi	262	262	no
Andrew Nguyen	Chemical Engineering	New Orleans, Louisiana	John Ngo Uji	Alpha-Pi	265	265	no
Jonathan Quach	Biology	Houston, TX	Long Nguyen Uji	Alpha-Pi	267	267	no
Kevin Thai	Mechanical Engineering	Houston, TX	Timothy Kim Uji	Alpha-Pi	268	268	no
Jadarian Bush	Sports Administration	Shreveport, Louisiana	Duke Truong Uji	Alpha-Rho	271	271	no
Nathan Huynh	Computer Engineer Tech	Kien Giang, Vietnam	John Nguyen Uji	Alpha-Rho	274	274	no
Christopher Rice	Marketing	Houston, TX	Dan Nguyen Uji	Alpha-Rho	279	279	no
David Vo	Mechanical Engineering Technology	Houston, TX	Dan Nguyen Uji	Alpha-Rho	280	280	no
Obinna Nnaji	Chemical Enginnering 	Houston, TX	Dan Nguyen Uji	Alpha-Sigma	282	282	no
Charlie Nguyen	Chemical Engineering	Houston, Tx	David Ho Uji	Alpha-Tau	289	289	no
Steven Dao	Computer Science	Houston, TX	Dan Nguyen Uji	Alpha-Xi	242	242	yes
Justin Hinh	Finance	Houston, TX	David Ho Uji	Alpha-Xi	243	243	yes
Dominique Thou	Digital Media	Dallas, TX	John Ngo Uji	Alpha-Xi	245	245	yes
Christopher Torres	Business/Pre Law	Sacramento, CA	Jonathan Dizon Uji	Alpha-Xi	246	246	yes
Dale Tran	Marketing	Dallas, TX	Jimmy Kim Uji	Alpha-Xi	247	247	yes
Alex Dinh	Human Resources	Galveston, TX	George Wong Uji	Alpha-Omicron	249	249	yes
Bop Huynh	Cis	Palawan, Philippines	Timothy Kim Uji	Alpha-Omicron	250	250	yes
Jiazhi Qiu	Supply Chain Managemen	Jilin, China	Jimmy Kim Uji	Alpha-Omicron	256	256	yes
Patrick Cho	Biology	Houston, TX	Timothy Kim Uji	Alpha-Pi	259	259	yes
Anthony Fernando	Biology	Newark, New Jersey	David Gamez Uji	Alpha-Pi	260	260	yes
Ed Lang	Petroleum Engineer	Boston, Massachusetts	Baophong Vinh Uji	Alpha-Pi	263	263	yes
Kevin Nguyen	Hrm	Orange County, CA	Dan Nguyen Uji	Alpha-Pi	264	264	yes
Dean Pham	Finance	Orange County, CA	Jonathan Dizon Uji	Alpha-Pi	266	266	yes
Micael Tran	Psychology	Port Arthur, TX	David Ho Uji	Alpha-Pi	269	269	yes
Michael Tran	Computer Engineering Technology	Houston, TX	David Ho Uji	Alpha-Pi	270	270	yes
Raymond Chan	Chemical engineering	San Jose, CA	Long Nguyen Uji	Alpha-Rho	272	272	yes
Alex Duong	Economics	Houston, TX	Timothy Kim Uji	Alpha-Rho	273	273	yes
Michael Jiang	Accounting	Houston, TX	Jimmy Kim Uji	Alpha-Rho	275	275	yes
Isaiah Nguyen	Accounting	Houston, TX	George Wong Uji	Alpha-Rho	276	276	yes
Jimmy Nguyen	Biology	Kuala Lampur, Malaysia	David Gamez Uji	Alpha-Rho	277	277	yes
Phat Nguyen	Accounting	Saigon, Vietnam	John Ngo Uji	Alpha-Rho	278	278	yes
Mathew Nguyen	Supply Chain	Houston, TX	Baophong Vinh Uji	Alpha-Sigma	281	281	yes
Christopher Theriot	Computer Engineering	Houston, TX	John Nguyen Uji	Alpha-Sigma	283	283	yes
Felix Chang	Kinesiology	Queens, NY	John Ngo Uji	Alpha-Tau	284	284	yes
Justin Do	Electrical Engineering	Port Arthur, TX	Jimmy Kim Uji	Alpha-Tau	285	285	yes
Tony Luu	Petroleum Engineering	Houston, TX	Duke Truong Uji	Alpha-Tau	286	286	yes
Rogelio Munoz	Digital Media	Houston, TX	Dan Nguyen Uji	Alpha-Tau	287	287	yes
Andy Nguyen	Construction Managemen	Pearland, TX	Timothy Kim Uji	Alpha-Tau	288	288	yes
Nathan Nguyen	Computer Engineer	Montgomery, AL	Baophong Vinh Uji	Alpha-Tau	290	290	yes
Tommy Nguyen	Electrical Engineering	Houston, TX	Dan Nguyen Uji	Alpha-Tau	291	291	yes
Vashon Nguyen	Pharmacy	Houston, TX	Jonathan Dizon Uji	Alpha-Tau	292	292	yes
Nicholas Vo	Retailing/Consumer Science	Houston, TX	Duke Truong Uji	Alpha-Tau	293	293	yes
\.


--
-- Data for Name: line_number; Type: TABLE DATA; Schema: roster; Owner: tommynguyen
--

COPY roster.line_number (linenumber) FROM stdin;
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
70
73
74
75
76
77
79
80
81
82
83
84
85
87
88
90
91
92
93
94
95
96
97
98
99
100
102
103
104
105
106
107
108
110
111
112
113
114
115
116
117
118
119
120
121
122
123
124
125
126
127
129
130
131
132
133
134
135
136
137
138
139
140
141
142
143
144
145
146
147
148
149
150
151
152
153
154
155
156
157
158
159
160
161
162
163
164
165
166
167
168
169
170
171
172
173
174
175
176
178
179
180
181
182
183
184
185
186
187
188
189
190
191
192
193
195
196
198
199
200
201
203
204
205
206
207
208
209
210
212
213
214
215
216
217
218
219
220
221
222
223
224
225
226
227
228
229
230
231
232
233
234
235
236
238
239
241
242
243
244
245
246
247
248
249
250
251
252
253
254
255
256
257
259
260
261
262
263
264
265
266
267
268
269
270
271
272
273
274
275
276
277
278
279
280
281
282
283
284
285
286
287
288
289
290
291
292
293
\.


--
-- Data for Name: uji; Type: TABLE DATA; Schema: roster; Owner: tommynguyen
--

COPY roster.uji (ujiname) FROM stdin;
Jonathan Dizon Uji
David Gamez Uji
David Ho Uji
Jimmy Kim Uji
Timothy Kim Uji
John Ngo Uji
Dan Nguyen Uji
John Nguyen Uji
Long Nguyen Uji
Duke Truong Uji
Baophong Vinh Uji
George Wong Uji
\.


--
-- Name: roster_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tommynguyen
--

SELECT pg_catalog.setval('public.roster_id_seq', 273, true);


--
-- Name: roster roster_pkey; Type: CONSTRAINT; Schema: public; Owner: tommynguyen
--

ALTER TABLE ONLY public.roster
    ADD CONSTRAINT roster_pkey PRIMARY KEY (id);


--
-- Name: active_member active_member_classnumber_key; Type: CONSTRAINT; Schema: roster; Owner: tommynguyen
--

ALTER TABLE ONLY roster.active_member
    ADD CONSTRAINT active_member_classnumber_key UNIQUE (linenumber);


--
-- Name: active_member active_member_pkey; Type: CONSTRAINT; Schema: roster; Owner: tommynguyen
--

ALTER TABLE ONLY roster.active_member
    ADD CONSTRAINT active_member_pkey PRIMARY KEY (id);


--
-- Name: line_number line_number_pkey; Type: CONSTRAINT; Schema: roster; Owner: tommynguyen
--

ALTER TABLE ONLY roster.line_number
    ADD CONSTRAINT line_number_pkey PRIMARY KEY (linenumber);


--
-- Name: uji uji_pkey; Type: CONSTRAINT; Schema: roster; Owner: tommynguyen
--

ALTER TABLE ONLY roster.uji
    ADD CONSTRAINT uji_pkey PRIMARY KEY (ujiname);


--
-- Name: active_member active_member_classnumber_fkey; Type: FK CONSTRAINT; Schema: roster; Owner: tommynguyen
--

ALTER TABLE ONLY roster.active_member
    ADD CONSTRAINT active_member_classnumber_fkey FOREIGN KEY (linenumber) REFERENCES roster.line_number(linenumber);


--
-- Name: active_member active_member_ujiname_fkey; Type: FK CONSTRAINT; Schema: roster; Owner: tommynguyen
--

ALTER TABLE ONLY roster.active_member
    ADD CONSTRAINT active_member_ujiname_fkey FOREIGN KEY (ujiname) REFERENCES roster.uji(ujiname);


--
-- PostgreSQL database dump complete
--

