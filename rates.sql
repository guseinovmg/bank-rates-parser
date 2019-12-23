--
-- PostgreSQL database dump
--

-- Dumped from database version 11.1 (Ubuntu 11.1-1.pgdg18.04+1)
-- Dumped by pg_dump version 11.1 (Ubuntu 11.1-1.pgdg18.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: country_code; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.country_code AS ENUM (
    'AD',
    'AE',
    'AF',
    'AG',
    'AI',
    'AL',
    'AM',
    'AO',
    'AR',
    'AS',
    'AT',
    'AU',
    'AW',
    'AZ',
    'BA',
    'BB',
    'BD',
    'BE',
    'BF',
    'BG',
    'BH',
    'BI',
    'BJ',
    'BL',
    'BM',
    'BN',
    'BO',
    'BR',
    'BS',
    'BT',
    'BW',
    'BY',
    'BZ',
    'CA',
    'CC',
    'CD',
    'CF',
    'CG',
    'CH',
    'CI',
    'CK',
    'CL',
    'CM',
    'CN',
    'CO',
    'CR',
    'CU',
    'CV',
    'CW',
    'CX',
    'CY',
    'CZ',
    'DE',
    'DJ',
    'DK',
    'DM',
    'DO',
    'DZ',
    'EC',
    'EE',
    'EG',
    'EH',
    'ER',
    'ES',
    'ET',
    'FI',
    'FJ',
    'FK',
    'FM',
    'FO',
    'FR',
    'GA',
    'GB',
    'GD',
    'GE',
    'GF',
    'GG',
    'GH',
    'GI',
    'GL',
    'GM',
    'GN',
    'GP',
    'GQ',
    'GR',
    'GS',
    'GT',
    'GU',
    'GW',
    'GY',
    'HK',
    'HN',
    'HR',
    'HT',
    'HU',
    'ID',
    'IE',
    'IL',
    'IM',
    'IN',
    'IO',
    'IQ',
    'IR',
    'IS',
    'IT',
    'JE',
    'JM',
    'JO',
    'JP',
    'KE',
    'KG',
    'KH',
    'KI',
    'KM',
    'KN',
    'KP',
    'KR',
    'KW',
    'KY',
    'KZ',
    'LA',
    'LB',
    'LC',
    'LI',
    'LK',
    'LR',
    'LS',
    'LT',
    'LU',
    'LV',
    'LY',
    'MA',
    'MC',
    'MD',
    'ME',
    'MF',
    'MG',
    'MH',
    'MK',
    'ML',
    'MM',
    'MN',
    'MO',
    'MP',
    'MQ',
    'MR',
    'MS',
    'MT',
    'MU',
    'MV',
    'MW',
    'MX',
    'MY',
    'MZ',
    'NA',
    'NC',
    'NE',
    'NF',
    'NG',
    'NI',
    'NL',
    'NO',
    'NP',
    'NR',
    'NU',
    'NZ',
    'OM',
    'PA',
    'PE',
    'PF',
    'PG',
    'PH',
    'PK',
    'PL',
    'PM',
    'PN',
    'PR',
    'PS',
    'PT',
    'PW',
    'PY',
    'QA',
    'RE',
    'RO',
    'RS',
    'RU',
    'RW',
    'SA',
    'SB',
    'SC',
    'SD',
    'SE',
    'SG',
    'SH',
    'SI',
    'SJ',
    'SK',
    'SL',
    'SM',
    'SN',
    'SO',
    'SR',
    'SS',
    'ST',
    'SV',
    'SX',
    'SY',
    'SZ',
    'TC',
    'TD',
    'TF',
    'TG',
    'TH',
    'TJ',
    'TL',
    'TM',
    'TN',
    'TO',
    'TR',
    'TT',
    'TV',
    'TW',
    'TZ',
    'UA',
    'UG',
    'US',
    'UY',
    'UZ',
    'VA',
    'VC',
    'VE',
    'VG',
    'VI',
    'VN',
    'VU',
    'WF',
    'WS',
    'YE',
    'YT',
    'ZA',
    'ZM',
    'ZW'
);


ALTER TYPE public.country_code OWNER TO postgres;

--
-- Name: currency_code; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.currency_code AS ENUM (
    'AED',
    'AFN',
    'ALL',
    'AMD',
    'ANG',
    'AOA',
    'ARS',
    'AUD',
    'AWG',
    'AZN',
    'BAM',
    'BBD',
    'BDT',
    'BGN',
    'BHD',
    'BIF',
    'BMD',
    'BND',
    'BOB',
    'BRL',
    'BSD',
    'BTN',
    'BWP',
    'BYR',
    'BZD',
    'CAD',
    'CDF',
    'CHF',
    'CLP',
    'CNY',
    'COP',
    'CRC',
    'CUP',
    'CVE',
    'CZK',
    'DJF',
    'DKK',
    'DOP',
    'DZD',
    'EGP',
    'ERN',
    'ETB',
    'EUR',
    'FJD',
    'FKP',
    'GBP',
    'GEL',
    'GHS',
    'GIP',
    'GMD',
    'GNF',
    'GTQ',
    'GYD',
    'HKD',
    'HNL',
    'HRK',
    'HTG',
    'HUF',
    'IDR',
    'ILS',
    'INR',
    'IQD',
    'IRR',
    'ISK',
    'JMD',
    'JOD',
    'JPY',
    'KES',
    'KGS',
    'KHR',
    'KMF',
    'KPW',
    'KRW',
    'KWD',
    'KYD',
    'KZT',
    'LAK',
    'LBP',
    'LKR',
    'LRD',
    'LSL',
    'LYD',
    'MAD',
    'MDL',
    'MGA',
    'MKD',
    'MMK',
    'MNT',
    'MOP',
    'MRO',
    'MUR',
    'MVR',
    'MWK',
    'MXN',
    'MYR',
    'MZN',
    'NAD',
    'NGN',
    'NIO',
    'NOK',
    'NPR',
    'NZD',
    'OMR',
    'PAB',
    'PEN',
    'PGK',
    'PHP',
    'PKR',
    'PLN',
    'PYG',
    'QAR',
    'RON',
    'RSD',
    'RUB',
    'RWF',
    'SAR',
    'SBD',
    'SCR',
    'SDG',
    'SEK',
    'SGD',
    'SHP',
    'SLL',
    'SOS',
    'SRD',
    'SSP',
    'STD',
    'SYP',
    'SZL',
    'THB',
    'TJS',
    'TMT',
    'TND',
    'TOP',
    'TRY',
    'TTD',
    'TWD',
    'TZS',
    'UAH',
    'UGX',
    'USD',
    'UYU',
    'UZS',
    'VEF',
    'VND',
    'VUV',
    'WST',
    'XAF',
    'XCD',
    'XOF',
    'XPF',
    'YER',
    'ZAR',
    'ZMW',
    'ZWL'
);


ALTER TYPE public.currency_code OWNER TO postgres;

--
-- Name: rate_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.rate_type AS ENUM (
    'cash',
    'cashless',
    'payment_cards',
    'visa',
    'mastercard'
);


ALTER TYPE public.rate_type OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: banks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.banks (
    id integer NOT NULL,
    host character varying(150),
    name character varying(150),
    country_code public.country_code,
    currency_code public.currency_code,
    country_name character varying(100),
    currency_name character varying(30),
    headquarters text,
    comment text,
    website text,
    enabled boolean DEFAULT false NOT NULL
);


ALTER TABLE public.banks OWNER TO postgres;

--
-- Name: banks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.banks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.banks_id_seq OWNER TO postgres;

--
-- Name: banks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.banks_id_seq OWNED BY public.banks.id;


--
-- Name: countries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.countries (
    id integer NOT NULL,
    iso public.country_code NOT NULL,
    iso3 character varying(3),
    iso_numeric integer,
    fips character varying(2),
    name character varying(100),
    capital character varying(100),
    population integer,
    continent character varying(2),
    tld character varying(3),
    currency_code public.currency_code,
    currency_name character varying(100),
    phone character varying(30),
    languages character varying(150),
    name_ru text,
    name_es text,
    name_de text,
    name_fr text,
    currency_name_ru character varying(100),
    currency_name_es character varying(100),
    currency_name_de character varying(100),
    currency_name_fr character varying(100),
    currency_symbol character varying(30),
    currency_num_code integer
);


ALTER TABLE public.countries OWNER TO postgres;

--
-- Name: countries_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.countries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.countries_id_seq OWNER TO postgres;

--
-- Name: countries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.countries_id_seq OWNED BY public.countries.id;


--
-- Name: rates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rates (
    id integer NOT NULL,
    bank_id integer,
    foreign_currency public.currency_code NOT NULL,
    base_currency public.currency_code NOT NULL,
    buy_rate numeric NOT NULL,
    sell_rate numeric NOT NULL,
    rate_type public.rate_type,
    invalid_value boolean,
    created_on timestamp with time zone NOT NULL
);


ALTER TABLE public.rates OWNER TO postgres;

--
-- Name: rates_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rates_id_seq OWNER TO postgres;

--
-- Name: rates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rates_id_seq OWNED BY public.rates.id;


--
-- Name: rb; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rb (
    host text,
    name text,
    website text,
    headquarters text,
    is_bank text,
    has_rates text,
    country text,
    err text
);


ALTER TABLE public.rb OWNER TO postgres;

--
-- Name: requests; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.requests (
    bank_id integer,
    col1 text,
    col2 text,
    col3 text,
    col4 text,
    err text
);


ALTER TABLE public.requests OWNER TO postgres;

--
-- Name: banks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banks ALTER COLUMN id SET DEFAULT nextval('public.banks_id_seq'::regclass);


--
-- Name: countries id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.countries ALTER COLUMN id SET DEFAULT nextval('public.countries_id_seq'::regclass);


--
-- Name: rates id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rates ALTER COLUMN id SET DEFAULT nextval('public.rates_id_seq'::regclass);


--
-- Data for Name: banks; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.banks VALUES (2186, 'danskebank.co.uk', 'Northern Bank Limitedtrading as Danske Bank UK', 'IE', 'EUR', 'Ireland', 'Euro', 'Belfast, Northern Ireland', NULL, 'https://danskebank.co.uk/personal/help/currency-converter', false);
INSERT INTO public.banks VALUES (1777, 'www.mbbru.ru', 'Mir Business Bank', 'RU', 'RUB', 'Russia', 'Russian Ruble', 'Moscow, Russia', NULL, 'https://www.mbbru.ru/legal/legal-conversion-operations/', false);
INSERT INTO public.banks VALUES (1741, 'open.ru', 'Bank Otkritie Financial Corporation', 'RU', 'RUB', 'Russia', 'Russian Ruble', 'Moscow, Russia', NULL, 'https://open.ru', true);
INSERT INTO public.banks VALUES (3362, 'demirbank.kg', 'CJSC “Demir Kyrgyz International Bank”', 'KG', 'KGS', 'Kyrgyzstan', 'Som', 'Bishkek, Kyrgyzstan', NULL, 'https://demirbank.kg/en', true);
INSERT INTO public.banks VALUES (1875, 'www.ibg.gr', 'Investment Bank of Greece', 'GR', 'EUR', 'Greece', 'Euro', 'Athens, Greece', NULL, 'http://www.ibg.gr', false);
INSERT INTO public.banks VALUES (2734, 'www.rcibs.com', 'RCI Banque SA', 'FR', 'EUR', 'France', 'Euro', 'Paris, France[2]', NULL, 'https://www.rcibs.com/en', false);
INSERT INTO public.banks VALUES (2735, 'www.nsandi.com', 'National Savings and Investments', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', '1 Drummond Gate, London SW1V 2QX', NULL, 'http://www.nsandi.com', false);
INSERT INTO public.banks VALUES (2736, 'religare.com', 'Religare Enterprises Limited.', 'IN', 'INR', 'India', 'Indian Rupee', 'New Delhi, India', NULL, 'http://religare.com', false);
INSERT INTO public.banks VALUES (2737, 'www.britannia.co.uk', 'Britannia Building Society', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Leek, Staffordshire, United Kingdom', NULL, 'http://www.britannia.co.uk', false);
INSERT INTO public.banks VALUES (2738, 'smth.jp', 'Sumitomo Mitsui Trust Holdings, Inc.三井住友トラスト・ホールディングス株式会社', 'JP', 'JPY', 'Japan', 'Yen', 'Tokyo, Japan', NULL, 'http://smth.jp/en', false);
INSERT INTO public.banks VALUES (2739, 'www.bancodichiavari.it', 'Banco di Chiavari e della Riviera Ligure', 'IT', 'EUR', 'Italy', 'Euro', 'Chiavari, Italy', NULL, 'http://www.bancodichiavari.it', false);
INSERT INTO public.banks VALUES (2740, 'www.tsb.co.nz', 'TSB', 'NZ', 'NZD', 'New Zealand', 'New Zealand Dollar', 'New Plymouth, New Zealand', NULL, 'http://www.tsb.co.nz/', false);
INSERT INTO public.banks VALUES (2741, 'www.keba.com', 'Keba AG', 'AT', 'EUR', 'Austria', 'Euro', 'Linz, Austria', NULL, 'http://www.keba.com/', false);
INSERT INTO public.banks VALUES (2742, 'www.peoples.com', 'People''s United Financial, Inc.', 'US', 'USD', 'United States', 'US Dollar', 'Bridgeport, Connecticut, USA', NULL, 'http://www.peoples.com/', false);
INSERT INTO public.banks VALUES (2743, 'www.kbc.com', 'KBC Group N.V.', 'BE', 'EUR', 'Belgium', 'Euro', 'Brussels, Belgium', NULL, 'http://www.kbc.com/', false);
INSERT INTO public.banks VALUES (2744, 'www.mbandt.com', 'MBT Financial Corp.', 'US', 'USD', 'United States', 'US Dollar', 'Monroe, Michigan', NULL, 'https://www.mbandt.com/', false);
INSERT INTO public.banks VALUES (2745, 'www.active.ai', 'Active Intelligence Pte Ltd (Active.Ai)', 'SG', 'SGD', 'Singapore', 'Singapore Dollar', 'Singapore, Singapore', NULL, 'https://www.active.ai', false);
INSERT INTO public.banks VALUES (2746, 'www.wipo.int', 'World Intellectual Property Organization', 'CH', 'CHF', 'Switzerland', 'Swiss Franc', 'Geneva, Switzerland', NULL, 'http://www.wipo.int/portal/en/index.html', false);
INSERT INTO public.banks VALUES (2747, 'finam.ru', 'FINAM Holdings', 'RU', 'RUB', 'Russia', 'Russian Ruble', 'Moscow, Russia', NULL, 'http://finam.ru', false);
INSERT INTO public.banks VALUES (2748, 'banaskantha.gujarat.gov.in', 'Banaskantha district', 'IN', 'INR', 'India', 'Indian Rupee', 'Palanpur', NULL, 'http://banaskantha.gujarat.gov.in', false);
INSERT INTO public.banks VALUES (2749, 'www.moelis.com', 'Moelis & Company', 'US', 'USD', 'United States', 'US Dollar', '399 Park AvenueNew York, New York, United States', NULL, 'http://www.moelis.com', false);
INSERT INTO public.banks VALUES (2750, 'www.samba.com', 'Samba Financial Group SJSC', 'SA', 'SAR', 'Saudi Arabia', 'Saudi Riyal', 'Riyadh, Saudi Arabia', NULL, 'https://www.samba.com', false);
INSERT INTO public.banks VALUES (2751, 'www.paysafe.com', 'Paysafe Group Limited', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'London, UK', NULL, 'https://www.paysafe.com/', false);
INSERT INTO public.banks VALUES (2752, 'www.comac.cc', 'Commercial Aircraft Corporation of China, Ltd.', 'CN', 'CNY', 'China', 'Yuan Renminbi', 'Shanghai, China', NULL, 'http://www.comac.cc', false);
INSERT INTO public.banks VALUES (2753, 'www.roth.com', 'Roth Capital Partners, LLC', 'US', 'USD', 'United States', 'US Dollar', 'California, USA', NULL, 'http://www.roth.com/', false);
INSERT INTO public.banks VALUES (2754, 'www.riversbirs.gov.ng', 'Rivers State Internal Revenue Service', 'NG', 'NGN', 'Nigeria', 'Naira', '22 William Jumbo Street, Old GRA, Port Harcourt', NULL, 'http://www.riversbirs.gov.ng/', false);
INSERT INTO public.banks VALUES (2755, 'www.homestreet.com', 'HomeStreet Inc.', 'US', 'USD', 'United States', 'US Dollar', '601 Union StreetSeattle, Washington, United States', NULL, 'https://www.homestreet.com//', false);
INSERT INTO public.banks VALUES (2756, 'ibamoscow.ru', 'IBA-Moscow', 'RU', 'RUB', 'Russia', 'Russian Ruble', 'Moscow, Russia', NULL, 'http://ibamoscow.ru/', false);
INSERT INTO public.banks VALUES (2757, 'www.bunq.com', 'bunq', 'NL', 'EUR', 'Netherlands', 'Euro', 'Naritaweg 131-133, 1043 BS, Amsterdam, Netherlands', NULL, 'https://www.bunq.com', false);
INSERT INTO public.banks VALUES (2758, 'www.bm.ru', 'Bank of Moscow', 'RU', 'RUB', 'Russia', 'Russian Ruble', 'Moscow, Russia', NULL, 'http://www.bm.ru/en', false);
INSERT INTO public.banks VALUES (2759, 'www.cls-group.com', 'CLS Group Holdings AG', 'US', 'USD', 'United States', 'US Dollar', 'New York', NULL, 'http://www.cls-group.com', false);
INSERT INTO public.banks VALUES (2760, 'www.bank-maskan.ir', 'Bank Maskan', 'IR', 'IRR', 'Iran', 'Iranian Rial', 'Tehran, Iran', NULL, 'http://www.bank-maskan.ir', false);
INSERT INTO public.banks VALUES (2761, 'www.maersk.com', 'A.P. Møller – Mærsk A/S', 'DK', 'DKK', 'Denmark', 'Danish Krone', 'Copenhagen, Denmark', NULL, 'http://www.maersk.com', false);
INSERT INTO public.banks VALUES (2762, 'www.usbank.com', 'U.S. Bancorp', 'US', 'USD', 'United States', 'US Dollar', 'US Bancorp Center, Minneapolis, Minnesota, United States', NULL, 'https://www.usbank.com/', false);
INSERT INTO public.banks VALUES (2763, 'www.lgt.com', 'LGT Group', 'LI', 'CHF', 'Liechtenstein', 'Swiss Franc', 'Vaduz, Liechtenstein', NULL, 'https://www.lgt.com', false);
INSERT INTO public.banks VALUES (2764, 'www.bcf.ch', 'Banque Cantonale de Fribourg', 'CH', 'CHF', 'Switzerland', 'Swiss Franc', 'Fribourg , Switzerland ', NULL, 'http://www.bcf.ch', false);
INSERT INTO public.banks VALUES (2765, 'honeywell.com', 'Honeywell International Inc.', 'US', 'USD', 'United States', 'US Dollar', 'Charlotte, North Carolina, United States', NULL, 'http://honeywell.com', false);
INSERT INTO public.banks VALUES (2766, 'www.unicreditbanca.it', 'UniCredit Banca', 'IT', 'EUR', 'Italy', 'Euro', 'Palazzo Magnani, Bologna, Italy', NULL, 'http://www.unicreditbanca.it', false);
INSERT INTO public.banks VALUES (2768, 'www.mackenzieinvestments.com', 'Mackenzie Investments', 'CA', 'CAD', 'Canada', 'Canadian Dollar', 'Toronto, Ontario, Canada', NULL, 'http://www.mackenzieinvestments.com/', false);
INSERT INTO public.banks VALUES (2769, 'www.RateSetter.com', 'RateSetter', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'London, United Kingdom', NULL, 'https://www.RateSetter.com/', false);
INSERT INTO public.banks VALUES (2770, 'transferwise.com', 'TransferWise Limited', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'London, United Kingdom', NULL, 'https://transferwise.com', false);
INSERT INTO public.banks VALUES (2771, 'bloomberg.com', 'Bloomberg L.P', 'US', 'USD', 'United States', 'US Dollar', 'Bloomberg Tower731 Lexington Avenue, New York City, New York, U.S.', NULL, 'http://bloomberg.com', false);
INSERT INTO public.banks VALUES (2772, 'nhb.org.in', 'National Housing Board', 'IN', 'INR', 'India', 'Indian Rupee', 'New Delhi, India [1]', NULL, 'http://nhb.org.in/', false);
INSERT INTO public.banks VALUES (2773, 'www.bisa.com', 'Banco BISA S.A.', 'BO', 'BOB', 'Bolivia', 'Boliviano', 'La Paz, Bolivia', NULL, 'https://www.bisa.com', false);
INSERT INTO public.banks VALUES (2774, 'www.commsec.com.au', 'Commonwealth Securities (CommSec)', 'AU', 'AUD', 'Australia', 'Australian Dollar', 'Sydney, Australia', NULL, 'http://www.commsec.com.au', false);
INSERT INTO public.banks VALUES (2775, 'www.cafonline.org', 'Charities Aid Foundation', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Kings Hill, Kent, UK', NULL, 'http://www.cafonline.org', false);
INSERT INTO public.banks VALUES (2776, 'www.banquemisr.com', 'Banque Misr S.A.E.بنك مصر ش.م.م.', 'EG', 'EGP', 'Egypt', 'Egyptian Pound', 'Cairo, Egypt', NULL, 'http://www.banquemisr.com/', false);
INSERT INTO public.banks VALUES (2777, 'www.cam.es', 'Caja de Ahorros del Mediterráneo', 'ES', 'EUR', 'Spain', 'Euro', 'Alicante, Spain', NULL, 'http://www.cam.es', false);
INSERT INTO public.banks VALUES (2778, 'www.aktia.fi', 'Aktia Bank plc', 'FI', 'EUR', 'Finland', 'Euro', 'Helsinki, Finland', NULL, 'http://www.aktia.fi', false);
INSERT INTO public.banks VALUES (2779, 'www.oceanbank.com', 'Ocean Bank', 'US', 'USD', 'United States', 'US Dollar', '780 NW 42nd AvenueMiami, Florida, United States', NULL, 'http://www.oceanbank.com/', false);
INSERT INTO public.banks VALUES (2780, 'www.bov.com', 'Bank of Valletta p.l.c.', 'MT', 'EUR', 'Malta', 'Euro', 'BOV Centre, Triq il-Kanun, Santa Venera SVR 9030, Malta', NULL, 'http://www.bov.com', false);
INSERT INTO public.banks VALUES (2781, 'raiffeisen.ch', 'Raiffeisen Switzerland', 'CH', 'CHF', 'Switzerland', 'Swiss Franc', 'St. Gallen, Switzerland', NULL, 'http://raiffeisen.ch', false);
INSERT INTO public.banks VALUES (1948, 'arkada.ua', 'Arkada Bank', 'UA', 'UAH', 'Ukraine', 'Hryvnia', 'Kiev, Ukraine', NULL, 'http://arkada.ua/', false);
INSERT INTO public.banks VALUES (1970, 'www.telenor.com', 'Telenor ASA', 'NO', 'NOK', 'Norway', 'Norwegian Krone', 'Fornebu, Norway', NULL, 'http://www.telenor.com', false);
INSERT INTO public.banks VALUES (2767, 'amravati.nic.in', 'Amravati district', 'IN', 'INR', 'India', 'Indian Rupee', 'Amravati', NULL, 'http://amravati.nic.in', false);
INSERT INTO public.banks VALUES (2019, 'www.absa.co.za', 'Absa Bank', 'ZA', 'ZAR', 'South Africa', 'Rand', 'South Africa', NULL, 'http://www.absa.co.za', false);
INSERT INTO public.banks VALUES (3140, 'www.bper.it', 'BPER Banca', 'IT', 'EUR', 'Italy', 'Euro', 'Modena, Italy', NULL, 'http://www.bper.it', false);
INSERT INTO public.banks VALUES (1700, 'www.metbank.co.zw', 'Metbank', 'ZW', 'ZWL', 'Zimbabwe', 'Zimbabwe Dollar', 'Harare, Zimbabwe', NULL, 'http://www.metbank.co.zw/', false);
INSERT INTO public.banks VALUES (1701, 'www.ibar.az', 'International Bank of Azerbaijan', 'AZ', 'AZN', 'Azerbaijan', 'Azerbaijanian Manat', 'Baku, Azerbaijan', NULL, 'http://www.ibar.az', false);
INSERT INTO public.banks VALUES (2069, 'www.aibank.co.il', 'Arab Israel Bank', 'IL', 'ILS', 'Israel', 'New Israeli Sheqel', 'Israel', NULL, 'http://www.aibank.co.il', false);
INSERT INTO public.banks VALUES (1674, 'www.nbp.pl', 'Narodowy Bank Polski[1]', 'PL', 'PLN', 'Poland', 'Zloty', 'Warsaw', NULL, 'http://www.nbp.pl', false);
INSERT INTO public.banks VALUES (1675, 'www.tbb.org.tr', 'Banks Association of Turkey', 'TR', 'TRY', 'Turkey', 'Turkish Lira', 'Istanbul', NULL, 'http://www.tbb.org.tr', false);
INSERT INTO public.banks VALUES (1676, 'www.lombardmalta.com', 'Lombard Bank Malta Plc', 'MT', 'EUR', 'Malta', 'Euro', '67, Republic Street, Valletta, Malta', NULL, 'http://www.lombardmalta.com', false);
INSERT INTO public.banks VALUES (1677, 'www.expat.hsbc.com', 'HSBC Bank International Limited', 'JE', 'GBP', 'Jersey', 'Pound Sterling', 'Saint Helier, Jersey, Channel Islands', NULL, 'https://www.expat.hsbc.com/', false);
INSERT INTO public.banks VALUES (1678, 'www.dtbafrica.com', 'Diamond Trust Bank Group', 'KE', 'KES', 'Kenya', 'Kenyan Shilling', 'DTB CentreMombasa RoadNairobi, Kenya', NULL, 'http://www.dtbafrica.com/', false);
INSERT INTO public.banks VALUES (1679, 'hsbc.co.uk', 'HSBC Bank plc', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'London, United Kingdom (Global)
Birmingham, United Kingdom (UK)', NULL, 'http://hsbc.co.uk/', false);
INSERT INTO public.banks VALUES (1680, 'www.nsbonline.com', 'Newtown Savings Bank', 'US', 'USD', 'United States', 'US Dollar', 'Newtown, Connecticut', NULL, 'https://www.nsbonline.com/', false);
INSERT INTO public.banks VALUES (1681, 'www.mkb.ru', 'Credit Bank of Moscow', 'RU', 'RUB', 'Russia', 'Russian Ruble', 'Moscow, Russia', NULL, 'http://www.mkb.ru/', false);
INSERT INTO public.banks VALUES (1682, 'www.depfa.com', 'DEPFA Bank plc', 'IE', 'EUR', 'Ireland', 'Euro', 'Dublin, Ireland', NULL, 'http://www.depfa.com', false);
INSERT INTO public.banks VALUES (1683, 'www.hsbc.com.eg', 'HSBC Bank Egypt S.A.E.', 'EG', 'EGP', 'Egypt', 'Egyptian Pound', 'Cairo, Egypt', NULL, 'http://www.hsbc.com.eg/', false);
INSERT INTO public.banks VALUES (1684, 'www.kb.cz', 'Komerční banka a.s.', 'CZ', 'CZK', 'Czechia', 'Czech Koruna', 'Prague, Czech Republic', NULL, 'http://www.kb.cz', false);
INSERT INTO public.banks VALUES (1685, 'www.aval.ua', 'Raiffeisen Bank Aval', 'UA', 'UAH', 'Ukraine', 'Hryvnia', 'Kyiv, Ukraine', NULL, 'https://www.aval.ua/en/', false);
INSERT INTO public.banks VALUES (1686, 'www.iib.int', 'International Investment Bank', 'HU', 'HUF', 'Hungary', 'Forint', 'Budapest, Hungary', NULL, 'https://www.iib.int/en', false);
INSERT INTO public.banks VALUES (1687, 'www.gefa.de', 'GEFA Bank GmbH', 'DE', 'EUR', 'Germany', 'Euro', 'Wuppertal', NULL, 'http://www.gefa.de/', false);
INSERT INTO public.banks VALUES (1688, 'www.nabard.org', 'National Bank for Agriculture and Rural Development', 'IN', 'INR', 'India', 'Indian Rupee', 'Mumbai, 
India[2]', NULL, 'http://www.nabard.org/', false);
INSERT INTO public.banks VALUES (1689, 'www.jb.com.bd', 'Janata Bank Limited', 'BD', 'BDT', 'Bangladesh', 'Taka', 'Dhaka, Bangladesh', NULL, 'http://www.jb.com.bd/', false);
INSERT INTO public.banks VALUES (1690, 'citi.com', 'Citibank, N. A.', 'US', 'USD', 'United States', 'US Dollar', 'New York City, New York', NULL, 'http://citi.com', false);
INSERT INTO public.banks VALUES (1691, 'www.pbb.com.ph', 'Philippine Business Bank', 'PH', 'PHP', 'Philippines', 'Philippine Peso', 'Caloocan, Philippines', NULL, 'http://www.pbb.com.ph', false);
INSERT INTO public.banks VALUES (1692, 'www.rzb.at', 'Raiffeisen Zentralbank', 'AT', 'EUR', 'Austria', 'Euro', 'Vienna, Austria', NULL, 'http://www.rzb.at/', false);
INSERT INTO public.banks VALUES (1693, 'www.cbhb.com.cn', 'China Bohai Bank', 'CN', 'CNY', 'China', 'Yuan Renminbi', '218 Haihe East Road, Hedong District, Tianjin, China', NULL, 'http://www.cbhb.com.cn', false);
INSERT INTO public.banks VALUES (1694, 'www.tbi.com.iq', 'Trade Bank of Iraq', 'IQ', 'IQD', 'Iraq', 'Iraqi Dinar', 'Building 11, Al-Rasheed Street,
Baghdad, Iraq', NULL, 'http://www.tbi.com.iq', false);
INSERT INTO public.banks VALUES (1695, 'www.bstdb.org', 'Black Sea Trade and Development Bank', 'GR', 'EUR', 'Greece', 'Euro', 'Thessaloniki, Greece', NULL, 'http://www.bstdb.org', false);
INSERT INTO public.banks VALUES (1696, 'www.boq.com.au', 'Bank of Queensland Limited', 'AU', 'AUD', 'Australia', 'Australian Dollar', 'Brisbane, Queensland, Australia', NULL, 'http://www.boq.com.au/', false);
INSERT INTO public.banks VALUES (1715, 'jak.se', 'JAK Medlemsbank', 'SE', 'SEK', 'Sweden', 'Swedish Krona', 'Skövde, Sweden', NULL, 'http://jak.se/', false);
INSERT INTO public.banks VALUES (1767, 'www.zuno.eu', 'ZUNO BANK AG', 'AT', 'EUR', 'Austria', 'Euro', 'Vienna, Austria', NULL, 'http://www.zuno.eu', false);
INSERT INTO public.banks VALUES (1939, 'unity.co.uk', 'Unity Trust Bank', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Birmingham ', NULL, 'http://unity.co.uk', false);
INSERT INTO public.banks VALUES (2323, 'www.tbcbank.ge', 'TBC Bank', 'GE', 'GEL', 'Georgia', 'Lari', 'Tbilisi, Georgia', NULL, 'http://www.tbcbank.ge', false);
INSERT INTO public.banks VALUES (3096, 'www.unicreditgroup.eu', 'UniCredit S.p.A.', 'IT', 'EUR', 'Italy', 'Euro', 'Milan, Italy', NULL, 'http://www.unicreditgroup.eu', false);
INSERT INTO public.banks VALUES (3252, 'www.munichre.com', 'Munich Re Group', 'DE', 'EUR', 'Germany', 'Euro', 'Munich, Germany', NULL, 'https://www.munichre.com/', false);
INSERT INTO public.banks VALUES (3291, 'www.challengerlimited.com', 'Challenger Limited', 'EG', 'EGP', 'Egypt', 'Egyptian Pound', 'Heliopolis Cairo, Egypt', NULL, 'http://www.challengerlimited.com', false);
INSERT INTO public.banks VALUES (3292, 'ing.com', 'ING Groep N.V.', 'NL', 'EUR', 'Netherlands', 'Euro', 'Amsterdam, Netherlands', NULL, 'http://ing.com', false);
INSERT INTO public.banks VALUES (3293, 'www.popso.it', 'Banca Popolare di Sondrio', 'IT', 'EUR', 'Italy', 'Euro', 'Sondrio, Italy', NULL, 'http://www.popso.it', false);
INSERT INTO public.banks VALUES (3294, 'www.liberty.co.ke', 'Liberty Life', 'KE', 'KES', 'Kenya', 'Kenyan Shilling', 'Liberty House, Nairobi, Kenya', NULL, 'http://www.liberty.co.ke/', false);
INSERT INTO public.banks VALUES (3295, 'www.ge.com', 'General Electric Company', 'US', 'USD', 'United States', 'US Dollar', 'Boston, Massachusetts, U.S.', NULL, 'https://www.ge.com/', false);
INSERT INTO public.banks VALUES (3296, 'www.sparkasse.at', 'Allgemeine Sparkasse Oberosterreich', 'AT', 'EUR', 'Austria', 'Euro', 'Linz, Austria', NULL, 'https://www.sparkasse.at/oberoesterreich/privatkunden', false);
INSERT INTO public.banks VALUES (3297, 'www.samint.co.za', 'South African Mint', 'ZA', 'ZAR', 'South Africa', 'Rand', 'Centurion, Gauteng, South Africa', NULL, 'http://www.samint.co.za', false);
INSERT INTO public.banks VALUES (3298, 'www.morganstanley.com', 'Morgan Stanley', 'FK', 'FKP', 'Falkland Islands', 'Falkland Islands Pound', 'Morgan Stanley BuildingNew York City, New York, U.S.', NULL, 'https://www.morganstanley.com', false);
INSERT INTO public.banks VALUES (3299, 'ismailindustries.com.pk', 'Ismail Industries Limited', 'PK', 'PKR', 'Pakistan', 'Pakistan Rupee', 'Pakistan', NULL, 'http://ismailindustries.com.pk', false);
INSERT INTO public.banks VALUES (3300, 'www.circuitcity.com', 'Circuit City Corporation', 'US', 'USD', 'United States', 'US Dollar', 'Richmond, Virginia, United States', NULL, 'http://www.circuitcity.com/', false);
INSERT INTO public.banks VALUES (3301, 'www.bancadicreditosardo.it', 'Banca di Credito Sardo', 'IT', 'EUR', 'Italy', 'Euro', 'Cagliari, Sardinia, Italy', NULL, 'http://www.bancadicreditosardo.it/', false);
INSERT INTO public.banks VALUES (3302, 'pnc.com', 'The PNC Financial Services Group, Inc.', 'US', 'USD', 'United States', 'US Dollar', 'Tower at PNC PlazaPittsburgh, Pennsylvania, U.S.', NULL, 'http://pnc.com', false);
INSERT INTO public.banks VALUES (3303, 'www.postfinance.ch', 'PostFinance', 'CH', 'CHF', 'Switzerland', 'Swiss Franc', 'Bern, Switzerland', NULL, 'https://www.postfinance.ch/', false);
INSERT INTO public.banks VALUES (3304, 'www.marstons.co.uk', 'Marston''s plc', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Wolverhampton, West Midlands, England', NULL, 'http://www.marstons.co.uk/', false);
INSERT INTO public.banks VALUES (3305, 'www.bcee.lu', 'Banque et Caisse d''Épargne de l''État', 'LU', 'EUR', 'Luxembourg', 'Euro', 'Luxembourg City, Luxembourg', NULL, 'http://www.bcee.lu/', false);
INSERT INTO public.banks VALUES (3306, 'utpma.com', 'Utah Property Management Associates', 'US', 'USD', 'United States', 'US Dollar', 'Salt Lake City, Utah, United States', NULL, 'https://utpma.com/', false);
INSERT INTO public.banks VALUES (3307, 'www.nomura.com', 'Nomura Holdings, Inc.', 'JP', 'JPY', 'Japan', 'Yen', '1-9-1, Nihonbashi, Chuo, Tokyo, Japan', NULL, 'http://www.nomura.com', false);
INSERT INTO public.banks VALUES (3308, 'www.halifax.co.uk', 'Halifax', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'The Halifax Building Halifax, West Yorkshire, UK', NULL, 'http://www.halifax.co.uk', false);
INSERT INTO public.banks VALUES (3309, 'singpost.com', 'Singapore Post Limited', 'SG', 'SGD', 'Singapore', 'Singapore Dollar', 'Geylang, Singapore', NULL, 'http://singpost.com', false);
INSERT INTO public.banks VALUES (3310, 'www.bankofbaghdad.com', 'Bank of Baghdad', 'IQ', 'IQD', 'Iraq', 'Iraqi Dinar', 'Baghdad, Iraq', NULL, 'http://www.bankofbaghdad.com', false);
INSERT INTO public.banks VALUES (3311, 'www.bbva.com.ar', 'BBVA Argentina', 'AR', 'ARS', 'Argentina', 'Argentine Peso', 'Buenos Aires, Argentina', NULL, 'https://www.bbva.com.ar', false);
INSERT INTO public.banks VALUES (3312, 'www.advansgroup.com', 'Advans Banque Congo S.A.', 'CD', 'CDF', 'Democratic Republic of the Congo', 'Congolese Franc', 'Avenue du Bas Congo, N°4, Kinshasa, DRC', NULL, 'http://www.advansgroup.com/', false);
INSERT INTO public.banks VALUES (3313, 'www.oakhillcapital.com', 'Oak Hill Capital Management, LLC', 'US', 'USD', 'United States', 'US Dollar', '65 East 55th StreetNew York City, United States', NULL, 'http://www.oakhillcapital.com', false);
INSERT INTO public.banks VALUES (1702, 'www.uobgroup.com', 'United Overseas Bank Limited', 'SG', 'SGD', 'Singapore', 'Singapore Dollar', 'UOB Plaza, 80 Raffles Place, Singapore 048624', NULL, 'http://www.uobgroup.com', false);
INSERT INTO public.banks VALUES (2289, 'www.agranibank.org', 'Agrani Bank Limited', 'BD', 'BDT', 'Bangladesh', 'Taka', 'Dhaka, Bangladesh', NULL, 'http://www.agranibank.org', false);
INSERT INTO public.banks VALUES (2391, 'alfabank.ru', 'Alfa Bank JSC', 'RU', 'RUB', 'Russia', 'Russian Ruble', 'Moscow, Russia', NULL, 'http://alfabank.ru', false);
INSERT INTO public.banks VALUES (1714, 'www.mendesgans.com', 'Bank Mendes Gans', 'NL', 'EUR', 'Netherlands', 'Euro', 'Amsterdam, Netherlands', NULL, 'http://www.mendesgans.com/', false);
INSERT INTO public.banks VALUES (3280, 'www.Reverta.lv', 'Reverta AS', 'LV', 'EUR', 'Latvia', 'Euro', 'Riga, Latvia', NULL, 'http://www.Reverta.lv', false);
INSERT INTO public.banks VALUES (3315, 'www.hellerehrman.com', 'Heller Ehrman LLP', 'US', 'USD', 'United States', 'US Dollar', 'San Francisco, California', NULL, 'http://www.hellerehrman.com/', false);
INSERT INTO public.banks VALUES (1703, 'www.dkb.de', 'Deutsche Kreditbank', 'DE', 'EUR', 'Germany', 'Euro', 'Berlin', NULL, 'http://www.dkb.de/', false);
INSERT INTO public.banks VALUES (1704, 'www.dtbt.dtbafrica.com', 'Diamond Trust Bank (Tanzania) Limited', 'TZ', 'TZS', 'Tanzania', 'Tanzanian Shilling', '9th floor Harbor View Towers Dar es Salaam, Tanzania', NULL, 'http://www.dtbt.dtbafrica.com/', false);
INSERT INTO public.banks VALUES (1705, 'www.fgb.ae', 'First Abu Dhabi Bank PJSC', 'AE', 'AED', 'United Arab Emirates', 'UAE Dirham', 'Abu Dhabi, UAE', NULL, 'http://www.fgb.ae/', false);
INSERT INTO public.banks VALUES (1706, 'www.nbg.gov.ge', 'National Bank of Georgia', 'GE', 'GEL', 'Georgia', 'Lari', 'Public Service Hall', NULL, 'http://www.nbg.gov.ge/', false);
INSERT INTO public.banks VALUES (1707, 'www.boad.org', 'West African Development Bank', 'TG', 'XOF', 'Togo', 'CFA Franc BCEAO', 'Lomé, Togo', NULL, 'http://www.boad.org/en', false);
INSERT INTO public.banks VALUES (1708, 'www.snv.no', 'SpareBank 1 Nordvest', 'NO', 'NOK', 'Norway', 'Norwegian Krone', 'Kristiansund, Norway', NULL, 'http://www.snv.no', false);
INSERT INTO public.banks VALUES (1709, 'pkb.gov.bd', 'Probashi Kallyan Bank', 'BD', 'BDT', 'Bangladesh', 'Taka', 'Dhaka, Bangladesh', NULL, 'http://pkb.gov.bd', false);
INSERT INTO public.banks VALUES (1710, 'www.bgfi.com', 'BGFIBank Group', 'GA', 'XAF', 'Gabon', 'CFA Franc BEAC', 'Libreville, Gabon', NULL, 'http://www.bgfi.com/en/', false);
INSERT INTO public.banks VALUES (1711, 'www.stb.com.mk', 'Stopanska banka', 'MK', 'MKD', 'Macedonia', 'Denar', 'Skopje, Republic of Macedonia', NULL, 'http://www.stb.com.mk', false);
INSERT INTO public.banks VALUES (1712, 'www.aminib.com', 'Amin Investment Bank', 'IR', 'IRR', 'Iran', 'Iranian Rial', 'Tehran, Iran', NULL, 'http://www.aminib.com/', false);
INSERT INTO public.banks VALUES (1713, 'www.posb.com.sg', 'POSB Bank', 'SG', 'SGD', 'Singapore', 'Singapore Dollar', 'Singapore', NULL, 'http://www.posb.com.sg', false);
INSERT INTO public.banks VALUES (1716, 'tangerine.ca', 'Tangerine Bank', 'CA', 'CAD', 'Canada', 'Canadian Dollar', 'Toronto, Ontario, Canada', NULL, 'http://tangerine.ca', false);
INSERT INTO public.banks VALUES (1717, 'www.cdb.com.cn', 'China Development Bank', 'CN', 'CNY', 'China', 'Yuan Renminbi', 'Beijing, People''s Republic of China', NULL, 'http://www.cdb.com.cn/', false);
INSERT INTO public.banks VALUES (1718, 'bnd.nd.gov', 'Bank of North Dakota', 'US', 'USD', 'United States', 'US Dollar', 'Bismarck, North Dakota, United States', NULL, 'https://bnd.nd.gov', false);
INSERT INTO public.banks VALUES (1719, 'www.ccb.com', 'China Construction Bank', 'CN', 'CNY', 'China', 'Yuan Renminbi', 'Beijing, China', NULL, 'http://www.ccb.com/en/home/index.html', false);
INSERT INTO public.banks VALUES (1720, 'www.rcbcy.com', 'RCB Bank', 'CY', 'EUR', 'Cyprus', 'Euro', 'Limassol, Cyprus', NULL, 'http://www.rcbcy.com/', false);
INSERT INTO public.banks VALUES (1721, 'www.ikb.de', 'IKB Deutsche Industriebank AG', 'DE', 'EUR', 'Germany', 'Euro', 'Düsseldorf, Germany', NULL, 'http://www.ikb.de', false);
INSERT INTO public.banks VALUES (1722, 'www.ablmm.com', 'Innwa Bank Limited', 'MM', 'MMK', 'Myanmar', 'Kyat', 'Kyauktada Township, Yangon, Myanmar (Burma)', NULL, 'http://www.ablmm.com', false);
INSERT INTO public.banks VALUES (1723, 'www.baiduri.com.bn', 'Baiduri Bank', 'BN', 'BND', 'Brunei', 'Brunei Dollar', 'Kiarong, Brunei', NULL, 'http://www.baiduri.com.bn/', false);
INSERT INTO public.banks VALUES (1724, 'www.pocztowy.pl', 'Bank Pocztowy', 'PL', 'PLN', 'Poland', 'Zloty', 'ul. Jagiellońska 17, 85-959 Bydgoszcz, Poland', NULL, 'http://www.pocztowy.pl', false);
INSERT INTO public.banks VALUES (1725, 'tiib.com', 'Tadhamon International Islamic Bank', 'YE', 'YER', 'Yemen', 'Yemeni Rial', 'Sana''a, Yemen', NULL, 'http://tiib.com/', false);
INSERT INTO public.banks VALUES (1726, 'www.gls.de', 'GLS Bank', 'DE', 'EUR', 'Germany', 'Euro', 'Bochum, Germany', NULL, 'https://www.gls.de/', false);
INSERT INTO public.banks VALUES (1727, 'www.gsb.or.th', 'Government Savings Bank', 'TH', 'THB', 'Thailand', 'Baht', '470 Phaholyothin Road, Samsennai, Phaya Thai, Bangkok 10400, Thailand', NULL, 'http://www.gsb.or.th/', false);
INSERT INTO public.banks VALUES (1728, 'www.hsbc.cl', 'HSBC Bank (Chile)', 'CL', 'CLP', 'Chile', 'Chilean Peso', 'Santiago, Chile', NULL, 'http://www.hsbc.cl/', false);
INSERT INTO public.banks VALUES (1729, 'psbindia.com', 'Punjab & Sind Bank', 'IN', 'INR', 'India', 'Indian Rupee', 'Rajendra Place New Delhi, India', NULL, 'https://psbindia.com', false);
INSERT INTO public.banks VALUES (1730, 'www.bsi.si', 'Bank of SloveniaBanka Slovenije (in Slovene)', 'SI', 'EUR', 'Slovenia', 'Euro', 'Ljubljana', NULL, 'http://www.bsi.si', false);
INSERT INTO public.banks VALUES (1731, 'cba.ca', 'Canadian Bankers Association', 'CA', 'CAD', 'Canada', 'Canadian Dollar', 'Commerce Court West30th floor199 Bay StreetToronto', NULL, 'https://cba.ca/', false);
INSERT INTO public.banks VALUES (1732, 'www.bk.mufg.jp', 'MUFG Bank, Ltd.株式会社三菱UFJ銀行', 'JP', 'JPY', 'Japan', 'Yen', 'Chiyoda, Tokyo (Marunouchi 2-7-1, Chiyoda-ku, Tokyo, 100-8388, Japan), Japan', NULL, 'http://www.bk.mufg.jp/english/', false);
INSERT INTO public.banks VALUES (1733, 'www.iob.in', 'Indian Overseas Bank', 'IN', 'INR', 'India', 'Indian Rupee', 'Chennai, Tamil Nadu, India', NULL, 'https://www.iob.in', false);
INSERT INTO public.banks VALUES (1734, 'nbe.gov.et', 'National Bank of Ethiopiaየኢትዮጵያ ብሔራዊ ባንክ', 'ET', 'ETB', 'Ethiopia', 'Ethiopian Birr', 'Addis Ababa, Ethiopia', NULL, 'http://nbe.gov.et', false);
INSERT INTO public.banks VALUES (1735, 'www.ktb.co.th', 'Krung Thai Bank', 'TH', 'THB', 'Thailand', 'Baht', 'Wattana, Bangkok, Thailand[2]', NULL, 'http://www.ktb.co.th/', false);
INSERT INTO public.banks VALUES (1736, 'www.zanaco.co.zm', 'Zambia National Commercial Bank', 'ZM', 'ZMW', 'Zambia', 'Zambian Kwacha', 'Lusaka, Zambia', NULL, 'http://www.zanaco.co.zm/', false);
INSERT INTO public.banks VALUES (1737, 'www.bsb.bw', 'Botswana Savings Bank', 'BW', 'BWP', 'Botswana', 'Pula', 'Gaborone, Botswana', NULL, 'http://www.bsb.bw/', false);
INSERT INTO public.banks VALUES (1738, 'www.watrust.com', 'Washington Trust Bank', 'US', 'USD', 'United States', 'US Dollar', 'Spokane, Washington', NULL, 'https://www.watrust.com/', false);
INSERT INTO public.banks VALUES (1739, 'www.fcb.com.ph', 'First Consolidated Bank', 'PH', 'PHP', 'Philippines', 'Philippine Peso', 'CPG North Avenue, Taloto District, Tagbilaran City, Bohol', NULL, 'http://www.fcb.com.ph', false);
INSERT INTO public.banks VALUES (1740, 'www.ebcfx.com', 'Exchange Bank of Canada', 'CA', 'CAD', 'Canada', 'Canadian Dollar', 'Toronto, Ontario, Canada', NULL, 'http://www.ebcfx.com', false);
INSERT INTO public.banks VALUES (1742, 'www.ahliunited.com', 'Ahli United Bank', 'BH', 'BHD', 'Bahrain', 'Bahraini Dinar', 'Manama, Bahrain', NULL, 'https://www.ahliunited.com', false);
INSERT INTO public.banks VALUES (1743, 'www.nibc.com', 'NIBC Bank N.V.', 'NL', 'EUR', 'Netherlands', 'Euro', 'The Hague, Netherlands', NULL, 'http://www.nibc.com', false);
INSERT INTO public.banks VALUES (1744, 'www.bancomoc.mz', 'Bank of MozambiqueBanco de Moçambique', 'MZ', 'MZN', 'Mozambique', 'Mozambique Metical', '1695 Avenida 25 de Setembro, Maputo', NULL, 'http://www.bancomoc.mz', false);
INSERT INTO public.banks VALUES (1745, 'www.kotak.com', 'Kotak Mahindra Bank Ltd.', 'IN', 'INR', 'India', 'Indian Rupee', 'Mumbai, Maharashtra, India', NULL, 'http://www.kotak.com/', false);
INSERT INTO public.banks VALUES (1746, 'www.posb.co.zw', 'People''s Own Savings Bank', 'ZW', 'ZWL', 'Zimbabwe', 'Zimbabwe Dollar', 'Harare, Zimbabwe', NULL, 'http://www.posb.co.zw/', false);
INSERT INTO public.banks VALUES (1747, 'www.banque-comores.km', 'Central Bank of the ComorosBanque Centrale des Comores (BCC)', 'KM', 'KMF', 'Comoros', 'Comoro Franc', 'Moroni, Comoros', NULL, 'http://www.banque-comores.km', false);
INSERT INTO public.banks VALUES (1748, 'n26.com', 'N26 Bank GmbH', 'DE', 'EUR', 'Germany', 'Euro', 'Klosterstraße 66, 10179, Berlin, Germany', NULL, 'https://n26.com/en-de', false);
INSERT INTO public.banks VALUES (1749, 'www.cathaybk.com.tw', 'Cathay United Bank', 'TW', 'TWD', 'Taiwan', 'New Taiwan Dollar', 'Taipei, Taiwan', NULL, 'https://www.cathaybk.com.tw/', false);
INSERT INTO public.banks VALUES (1750, 'krungsri.com', 'Bank of Ayudhya PCL', 'TH', 'THB', 'Thailand', 'Baht', '1222 Rama III Rd, Yan Nawa, Bangkok 10120', NULL, 'http://krungsri.com', false);
INSERT INTO public.banks VALUES (1751, 'www.boamerrouge.com', 'Bank of Africa (Red Sea)', 'DJ', 'DJF', 'Djibouti', 'Djibouti Franc', 'Place Lagarde, Djibouti', NULL, 'https://www.boamerrouge.com/', false);
INSERT INTO public.banks VALUES (1752, 'www.nbsmw.com', 'NBS Bank', 'MW', 'MWK', 'Malawi', 'Kwacha', 'Blantyre, Malawi', NULL, 'http://www.nbsmw.com/', false);
INSERT INTO public.banks VALUES (1753, 'web.ubot.com.tw', 'Union Bank of Taiwan', 'TW', 'TWD', 'Taiwan', 'New Taiwan Dollar', 'Taiwan', NULL, 'http://web.ubot.com.tw/english/index.asp', false);
INSERT INTO public.banks VALUES (1754, 'www.zkb.ch', 'Zurich Cantonal Bank', 'CH', 'CHF', 'Switzerland', 'Swiss Franc', 'Bahnhofstrasse 9 Zurich8010 Switzerland', NULL, 'https://www.zkb.ch/en', false);
INSERT INTO public.banks VALUES (1755, 'www.investrustbank.com', 'Investrust Bank', 'ZM', 'ZMW', 'Zambia', 'Zambian Kwacha', 'Lusaka ', NULL, 'http://www.investrustbank.com/', false);
INSERT INTO public.banks VALUES (1756, 'www.erstegroup.com', 'Erste Group Bank AG', 'AT', 'EUR', 'Austria', 'Euro', 'Vienna, Austria', NULL, 'http://www.erstegroup.com', false);
INSERT INTO public.banks VALUES (1757, 'www.szcb.com', 'Shenzhen Commercial Bank', 'CN', 'CNY', 'China', 'Yuan Renminbi', 'Shenzhen, China', NULL, 'http://www.szcb.com/', false);
INSERT INTO public.banks VALUES (1758, 'www.ffb.com', 'First Fidelity Bank', 'US', 'USD', 'United States', 'US Dollar', 'Oklahoma City, Oklahoma, United States', NULL, 'https://www.ffb.com/', false);
INSERT INTO public.banks VALUES (1759, 'www.psbc.com', 'Postal Savings Bank of China', 'CN', 'CNY', 'China', 'Yuan Renminbi', 'No. 3 Financial Street, Xicheng District, Beijing, PRC', NULL, 'http://www.psbc.com', false);
INSERT INTO public.banks VALUES (1760, 'hangseng.com', 'Hang Seng Bank Limited', 'HK', 'HKD', 'Hong Kong', 'Hong Kong Dollar', 'Hang Seng Bank Headquarters Building, Central, Hong Kong', NULL, 'http://hangseng.com', false);
INSERT INTO public.banks VALUES (1761, 'www.mybsn.com.my', 'Bank Simpanan Nasional', 'MY', 'MYR', 'Malaysia', 'Malaysian Ringgit', 'Kuala Lumpur, Malaysia', NULL, 'https://www.mybsn.com.my/', false);
INSERT INTO public.banks VALUES (1762, 'www.citystatesavings.com', 'Citystate Savings Bank', 'PH', 'PHP', 'Philippines', 'Philippine Peso', 'Pasig City, Philippines (Citystate Centre )', NULL, 'http://www.citystatesavings.com', false);
INSERT INTO public.banks VALUES (1763, 'www.faib.com', 'First American International Bank', 'US', 'USD', 'United States', 'US Dollar', 'Brooklyn, New York City,New York, United States', NULL, 'http://www.faib.com', false);
INSERT INTO public.banks VALUES (1764, 'www.habibmetro.com', 'Habib Metropolitan Bank', 'PK', 'PKR', 'Pakistan', 'Pakistan Rupee', 'Karachi, Pakistan', NULL, 'http://www.habibmetro.com', false);
INSERT INTO public.banks VALUES (1765, 'www.bca.co.id', 'PT Bank Central Asia Tbk.', 'ID', 'IDR', 'Indonesia', 'Rupiah', 'Jakarta, Indonesia', NULL, 'http://www.bca.co.id/', false);
INSERT INTO public.banks VALUES (1766, 'www.nfb.mw', 'New Finance Bank Limited', 'MW', 'MWK', 'Malawi', 'Kwacha', 'Lilongwe, Malawi', NULL, 'http://www.nfb.mw/', false);
INSERT INTO public.banks VALUES (1768, 'www.cbk.gov.kw', 'Central Bank of Kuwait', 'KW', 'KWD', 'Kuwait', 'Kuwaiti Dinar', 'Kuwait City', NULL, 'http://www.cbk.gov.kw/', false);
INSERT INTO public.banks VALUES (1769, 'www.arvest.com', 'Arvest Bank', 'US', 'USD', 'United States', 'US Dollar', 'Bentonville, Arkansas', NULL, 'https://www.arvest.com/', false);
INSERT INTO public.banks VALUES (1770, 'www.jsafrasarasin.ch', 'Bank J. Safra Sarasin Ltd', 'CH', 'CHF', 'Switzerland', 'Swiss Franc', 'Basel , Switzerland ', NULL, 'http://www.jsafrasarasin.ch/', false);
INSERT INTO public.banks VALUES (1771, 'www.triodos.com', 'Triodos Bank N.V.', 'NL', 'EUR', 'Netherlands', 'Euro', 'Zeist, Netherlands', NULL, 'https://www.triodos.com/', false);
INSERT INTO public.banks VALUES (1772, 'www.tsb.co.uk', 'TSB Bank plc', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Edinburgh, Scotland, UK', NULL, 'http://www.tsb.co.uk', false);
INSERT INTO public.banks VALUES (1773, 'www.adbc.com.cn', 'Agricultural Development Bank of China', 'CN', 'CNY', 'China', 'Yuan Renminbi', 'Beijing (headquarter), China', NULL, 'http://www.adbc.com.cn/', false);
INSERT INTO public.banks VALUES (1774, 'rbi.org.in', 'Reserve Bank of India (RBI)', 'IN', 'INR', 'India', 'Indian Rupee', 'Mumbai, Maharashtra, India', NULL, 'https://rbi.org.in', false);
INSERT INTO public.banks VALUES (1775, 'www.cbg.com.gh', 'Consolidated Bank Ghana', 'GH', 'GHS', 'Ghana', 'Ghana Cedi', 'Accra, Ghana', NULL, 'https://www.cbg.com.gh/', false);
INSERT INTO public.banks VALUES (1776, 'www.nib.int', 'Nordic Investment Bank', 'FI', 'EUR', 'Finland', 'Euro', 'Helsinki, Finland', NULL, 'http://www.nib.int', false);
INSERT INTO public.banks VALUES (1778, 'www.nbp.com.pk', 'National Bank of Pakistan', 'PK', 'PKR', 'Pakistan', 'Pakistan Rupee', 'Karachi Pakistan', NULL, 'http://www.nbp.com.pk/', false);
INSERT INTO public.banks VALUES (1779, 'www.bdo.com.ph', 'BDO Unibank, Inc.', 'PH', 'PHP', 'Philippines', 'Philippine Peso', 'Makati, Philippines (BDO Corporate Center)', NULL, 'http://www.bdo.com.ph', false);
INSERT INTO public.banks VALUES (1780, 'www.ujjivansfb.in', 'Ujjivan Small Finance Bank', 'IN', 'INR', 'India', 'Indian Rupee', 'Bangalore, Karnataka, India', NULL, 'https://www.ujjivansfb.in', false);
INSERT INTO public.banks VALUES (1781, 'www.frbatlanta.org', 'Federal Reserve Bank of Atlanta', 'GE', 'GEL', 'Georgia', 'Lari', '1000 Peachtree St NE Atlanta, Georgia, USA', NULL, 'https://www.frbatlanta.org/', false);
INSERT INTO public.banks VALUES (1782, 'www.mudra.org.in', 'Micro Units Development and Refinance Agency (MUDRA) Bank', 'IN', 'INR', 'India', 'Indian Rupee', 'mumbai', NULL, 'http://www.mudra.org.in/', false);
INSERT INTO public.banks VALUES (1783, 'www.bri.co.id', 'PT Bank Rakyat Indonesia (Persero) Tbk.', 'ID', 'IDR', 'Indonesia', 'Rupiah', 'Jakarta, Indonesia', NULL, 'http://www.bri.co.id/', false);
INSERT INTO public.banks VALUES (1784, 'www.spv.no', 'Sparebanken Vest', 'NO', 'NOK', 'Norway', 'Norwegian Krone', 'Bergen, Norway', NULL, 'http://www.spv.no', false);
INSERT INTO public.banks VALUES (1785, 'www.kaupthing.com', 'Kaupþing banki hf.', 'IS', 'ISK', 'Iceland', 'Iceland Krona', 'Reykjavík, Iceland', NULL, 'http://www.kaupthing.com/', false);
INSERT INTO public.banks VALUES (1786, 'fsiblbd.com', 'First Security Islami Bank Limited', 'BD', 'BDT', 'Bangladesh', 'Taka', 'Dhaka, Bangladesh', NULL, 'http://fsiblbd.com', false);
INSERT INTO public.banks VALUES (1787, 'www.ziraat.com.tr', 'T.C. Ziraat Bankası A.Ş.', 'TR', 'TRY', 'Turkey', 'Turkish Lira', 'Ulus, Çankaya, Ankara', NULL, 'http://www.ziraat.com.tr', false);
INSERT INTO public.banks VALUES (1788, 'www.bna.com.ar', 'Bank of the Argentine Nation', 'AR', 'ARS', 'Argentina', 'Argentine Peso', 'Buenos Aires, Argentina', NULL, 'http://www.bna.com.ar', false);
INSERT INTO public.banks VALUES (1789, 'www.bcentral.cl', 'Central Bank of Chile', 'CL', 'CLP', 'Chile', 'Chilean Peso', 'Agustinas 1180, Santiago, Chile', NULL, 'http://www.bcentral.cl', false);
INSERT INTO public.banks VALUES (1790, 'www.bsl.gov.sl', 'Bank of Sierra Leone', 'SL', 'SLL', 'Sierra Leone', 'Leone', 'Freetown, Sierra Leone', NULL, 'http://www.bsl.gov.sl/', false);
INSERT INTO public.banks VALUES (1791, 'www.sparhafen.ch', 'Bank Sparhafen Zürich', 'CH', 'CHF', 'Switzerland', 'Swiss Franc', 'Fraumünsterstrasse 21, CH-8001 Zurich, Switzerland', NULL, 'https://www.sparhafen.ch', false);
INSERT INTO public.banks VALUES (1792, 'www.swnbk.com', 'Southwestern National Bank', 'US', 'USD', 'United States', 'US Dollar', 'Houston, Texas', NULL, 'http://www.swnbk.com', false);
INSERT INTO public.banks VALUES (1793, 'www.bportugal.pt', 'Bank of PortugalBanco de Portugal', 'PT', 'EUR', 'Portugal', 'Euro', 'Lisbon, Portugal', NULL, 'http://www.bportugal.pt', false);
INSERT INTO public.banks VALUES (1794, 'www.abr.ru', 'Bank Rossiya', 'RU', 'RUB', 'Russia', 'Russian Ruble', 'Saint Petersburg, Russia', NULL, 'http://www.abr.ru/', false);
INSERT INTO public.banks VALUES (1795, 'www.shawbrook.co.uk', 'Shawbrook Bank Limited', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Brentwood, England, UK', NULL, 'http://www.shawbrook.co.uk', false);
INSERT INTO public.banks VALUES (1796, 'www.mblbd.com', 'Mercantile Bank Limited', 'BD', 'BDT', 'Bangladesh', 'Taka', 'Dhaka, Bangladesh', NULL, 'http://www.mblbd.com', false);
INSERT INTO public.banks VALUES (1797, 'www.cib.hu', 'CIB Bank', 'HU', 'HUF', 'Hungary', 'Forint', 'Budapest, Hungary', NULL, 'http://www.cib.hu/', false);
INSERT INTO public.banks VALUES (1798, 'www.fnbsb.com', 'First National Bank South Dakota', 'US', 'USD', 'United States', 'US Dollar', 'Yankton, South Dakota, United States', NULL, 'http://www.fnbsb.com/', false);
INSERT INTO public.banks VALUES (1799, 'www.absa.co.ug', 'Absa Bank Uganda Limited', 'UG', 'UGX', 'Uganda', 'Uganda Shilling', 'Kampala, Uganda', NULL, 'https://www.absa.co.ug/', false);
INSERT INTO public.banks VALUES (1800, 'www.clearviewfcu.org', 'Clearview Federal Credit Union', 'US', 'USD', 'United States', 'US Dollar', 'Moon Township, Pennsylvania', NULL, 'http://www.clearviewfcu.org', false);
INSERT INTO public.banks VALUES (1801, 'www.bsbrodnica.pl', 'Bank Spółdzielczy w Brodnicy', 'PL', 'PLN', 'Poland', 'Zloty', 'ul. Kamionka 27, Brodnica, Poland', NULL, 'https://www.bsbrodnica.pl', false);
INSERT INTO public.banks VALUES (1802, 'www.rbv.rs', 'Metals-banka a.d. Novi Sad', 'RS', 'RSD', 'Serbia', 'Serbian Dinar', 'Novi Sad, Serbia', NULL, 'http://www.rbv.rs', false);
INSERT INTO public.banks VALUES (1803, 'ibar.ge', 'Joint Stock Company "International Bank of Azerbaijan - Georgia"', 'GE', 'GEL', 'Georgia', 'Lari', 'Tbilisi, Georgia', NULL, 'http://ibar.ge', false);
INSERT INTO public.banks VALUES (1804, 'www.bvr.de', 'Bundesverband der Deutschen Volksbanken und Raiffeisenbanken e. V. (BVR)', 'DE', 'EUR', 'Germany', 'Euro', 'Berlin, Germany[1]', NULL, 'http://www.bvr.de', false);
INSERT INTO public.banks VALUES (1805, 'www.helaba.com', 'Helaba - Landesbank Hessen-Thüringen', 'DE', 'EUR', 'Germany', 'Euro', 'Frankfurt and Erfurt, Germany', NULL, 'http://www.helaba.com', false);
INSERT INTO public.banks VALUES (1806, 'www.straumur.com', 'Straumur Investment Bank hf.', 'IS', 'ISK', 'Iceland', 'Iceland Krona', 'Reykjavík, Iceland', NULL, 'http://www.straumur.com/', false);
INSERT INTO public.banks VALUES (1807, 'lbbw.de', 'Landesbank Baden-Württemberg', 'DE', 'EUR', 'Germany', 'Euro', 'Stuttgart, Germany', NULL, 'http://lbbw.de', false);
INSERT INTO public.banks VALUES (1808, 'bcblbd.com', 'Bangladesh Commerce Bank Limited', 'BD', 'BDT', 'Bangladesh', 'Taka', 'Dhaka, Bangladesh', NULL, 'http://bcblbd.com//', false);
INSERT INTO public.banks VALUES (1809, 'www.boe.gov.er', 'Bank of Eritrea', 'ER', 'ERN', 'Eritrea', 'Nakfa', 'Asmara, Maekel, Eritrea', NULL, 'http://www.boe.gov.er', false);
INSERT INTO public.banks VALUES (1810, 'sc.com', 'Standard Chartered Bank', 'BD', 'BDT', 'Bangladesh', 'Taka', '67 Gulshan Avenue, Dhaka, Bangladesh', NULL, 'http://sc.com/bd', false);
INSERT INTO public.banks VALUES (1811, 'www.fcmb.com', 'First City Monument Bank Ltd (FCMB)', 'NG', 'NGN', 'Nigeria', 'Naira', 'Lagos Island, Lagos, Lagos State, Nigeria', NULL, 'http://www.fcmb.com', false);
INSERT INTO public.banks VALUES (1812, 'www.bnb.bg', 'Bulgarian National BankБългарска народна банкаBalgarska narodna banka', 'BG', 'BGN', 'Bulgaria', 'Bulgarian Lev', 'Sofia', NULL, 'http://www.bnb.bg/?toLang=_EN', false);
INSERT INTO public.banks VALUES (1813, 'www.pbz.hr', 'Privredna banka Zagreb d.d.', 'HR', 'HRK', 'Croatia', 'Kuna', 'Zagreb, Croatia', NULL, 'http://www.pbz.hr', false);
INSERT INTO public.banks VALUES (1814, 'www.bcb.bm', 'Bermuda Commercial Bank', 'BM', 'BMD', 'Bermuda', 'Bermudian Dollar', 'Hamilton, Bermuda', NULL, 'http://www.bcb.bm', false);
INSERT INTO public.banks VALUES (1815, 'www.bop.com.pk', 'Bank of Punjab', 'PK', 'PKR', 'Pakistan', 'Pakistan Rupee', 'Lahore , Pakistan', NULL, 'http://www.bop.com.pk', false);
INSERT INTO public.banks VALUES (1816, 'www.sampath.lk', 'Sampath Bank PLC', 'LK', 'LKR', 'Sri Lanka', 'Sri Lanka Rupee', 'Colombo 02, Sri Lanka', NULL, 'https://www.sampath.lk', false);
INSERT INTO public.banks VALUES (1817, 'adbl.gov.np', 'Agricultural Development Bank Limited', 'NP', 'NPR', 'Nepal', 'Nepalese Rupee', 'Ramshah Path, Kathmandu', NULL, 'http://adbl.gov.np', false);
INSERT INTO public.banks VALUES (1818, 'www.sab.sachsen.de', 'Development Bank of Saxony', 'DE', 'EUR', 'Germany', 'Euro', 'Leipzig, Saxony, Germany', NULL, 'http://www.sab.sachsen.de/en/index.jsp', false);
INSERT INTO public.banks VALUES (1819, 'www.chbank.com', 'Chong Hing Bank', 'HK', 'HKD', 'Hong Kong', 'Hong Kong Dollar', 'Hong Kong', NULL, 'http://www.chbank.com/', false);
INSERT INTO public.banks VALUES (1820, 'www.nbv.vu', 'National Bank of Vanuatu', 'VU', 'VUV', 'Vanuatu', 'Vatu', 'Port Vila, Vanuatu', NULL, 'http://www.nbv.vu/', false);
INSERT INTO public.banks VALUES (1821, 'www.boaghana.com', 'Bank of Africa Ghana Limited', 'GH', 'GHS', 'Ghana', 'Ghana Cedi', 'Accra, Ghana', NULL, 'http://www.boaghana.com', false);
INSERT INTO public.banks VALUES (1822, 'www.tinkoff.ru', 'Tinkoff Bank', 'RU', 'RUB', 'Russia', 'Russian Ruble', 'Moscow, Russia', NULL, 'https://www.tinkoff.ru/', false);
INSERT INTO public.banks VALUES (1823, 'www.varengold.de', 'Varengold Bank', 'DE', 'EUR', 'Germany', 'Euro', 'Hamburg, Germany', NULL, 'https://www.varengold.de/', false);
INSERT INTO public.banks VALUES (1824, 'www.kardan.ir', 'Kardan Investment Bank', 'IR', 'IRR', 'Iran', 'Iranian Rial', 'Tehran, Iran', NULL, 'http://www.kardan.ir/', false);
INSERT INTO public.banks VALUES (1825, 'www.nbcb.cn', 'Bank of Ningbo', 'CN', 'CNY', 'China', 'Yuan Renminbi', 'Ningbo, China', NULL, 'http://www.nbcb.cn', false);
INSERT INTO public.banks VALUES (1826, 'www.washingtonfederal.com', 'WaFd Bank (Formerly Washington Federal, Inc.)', 'US', 'USD', 'United States', 'US Dollar', 'Seattle, Washington, United States', NULL, 'https://www.washingtonfederal.com/', false);
INSERT INTO public.banks VALUES (1827, 'www.voban.co.rs', 'Vojvođanska banka', 'RS', 'RSD', 'Serbia', 'Serbian Dinar', 'Novi Sad, Serbia', NULL, 'https://www.voban.co.rs/', false);
INSERT INTO public.banks VALUES (1828, 'www.bsi.ir', 'Bank Saderat Iran', 'IR', 'IRR', 'Iran', 'Iranian Rial', 'Bank Saderat Tower, 43 Somayeh Avenue, Tehran, Iran', NULL, 'http://www.bsi.ir/', false);
INSERT INTO public.banks VALUES (1829, 'www.citadele.lv', 'Banka Citadele AS', 'LV', 'EUR', 'Latvia', 'Euro', 'Riga, Latvia', NULL, 'http://www.citadele.lv', false);
INSERT INTO public.banks VALUES (1830, 'en.fhb.hu', 'FHB Mortgage Bank Nyrt.', 'HU', 'HUF', 'Hungary', 'Forint', 'Budapest, Hungary', NULL, 'http://en.fhb.hu/fhb-bank', false);
INSERT INTO public.banks VALUES (1831, 'www.cbi.iq', 'Central Bank of Iraqالبنك المركزي العراقي', 'IQ', 'IQD', 'Iraq', 'Iraqi Dinar', 'Baghdad, Iraq', NULL, 'http://www.cbi.iq', false);
INSERT INTO public.banks VALUES (1832, 'www.seb.lt', 'AB SEB Bankas', 'LT', 'EUR', 'Lithuania', 'Euro', 'Vilnius , Lithuania ', NULL, 'http://www.seb.lt', false);
INSERT INTO public.banks VALUES (1833, 'navyzebra.com', 'BankCard Services', 'US', 'USD', 'United States', 'US Dollar', '21281 Western Ave, Torrance, California, U.S.', NULL, 'http://navyzebra.com', false);
INSERT INTO public.banks VALUES (1834, 'www.cbe.org.eg', 'Central Bank of Egyptالبنك المركزي المصري', 'EG', 'EGP', 'Egypt', 'Egyptian Pound', 'Cairo', NULL, 'http://www.cbe.org.eg/en/Pages/default.aspx', false);
INSERT INTO public.banks VALUES (1835, 'www.ablv.com', 'ABLV Bank, AS', 'LV', 'EUR', 'Latvia', 'Euro', 'Riga, Latvia', NULL, 'http://www.ablv.com', false);
INSERT INTO public.banks VALUES (1836, 'www.nbc.ca', 'National Bank of Canada', 'CA', 'CAD', 'Canada', 'Canadian Dollar', 'Montreal, Quebec, Canada', NULL, 'http://www.nbc.ca', false);
INSERT INTO public.banks VALUES (1837, 'www.bim.ir', 'Bank of Industry and Mine', 'IR', 'IRR', 'Iran', 'Iranian Rial', 'Tehran, Iran', NULL, 'http://www.bim.ir', false);
INSERT INTO public.banks VALUES (1838, 'www.bph.pl', 'Bank BPH Spółka Akcyjna', 'PL', 'PLN', 'Poland', 'Zloty', 'Gdańsk, Poland', NULL, 'https://www.bph.pl/pl/', false);
INSERT INTO public.banks VALUES (1839, 'bta.kz', 'BTA Bank JSC', 'KZ', 'KZT', 'Kazakhstan', 'Tenge', 'Almaty, Kazakhstan', NULL, 'http://bta.kz', false);
INSERT INTO public.banks VALUES (1840, 'jamiiborabank.co.ke', 'Jamii Bora Bank', 'KE', 'KES', 'Kenya', 'Kenyan Shilling', 'Nairobi, Kenya', NULL, 'http://jamiiborabank.co.ke/', false);
INSERT INTO public.banks VALUES (1841, 'www.cbonline.co.uk', 'Clydesdale Bank plcBanca Dail Chluaidh', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Glasgow, Scotland, UK', NULL, 'http://www.cbonline.co.uk', false);
INSERT INTO public.banks VALUES (1842, 'www.gib.com', 'Gulf International Bank', 'BH', 'BHD', 'Bahrain', 'Bahraini Dinar', 'Manama, Bahrain', NULL, 'http://www.gib.com/', false);
INSERT INTO public.banks VALUES (1843, 'www.sparda.de', 'Deutsche Kreditbank', 'DE', 'EUR', 'Germany', 'Euro', 'Frankfurt am Main, Germany', NULL, 'http://www.sparda.de', false);
INSERT INTO public.banks VALUES (1844, 'www.zabg.co.zw', 'Allied Bank Zimbabwe Limited', 'ZW', 'ZWL', 'Zimbabwe', 'Zimbabwe Dollar', 'Harare, Zimbabwe', NULL, 'http://www.zabg.co.zw/', false);
INSERT INTO public.banks VALUES (1845, 'www.sinopac.com', 'Bank SinoPac永豐金融控股股份有限公司', 'TW', 'TWD', 'Taiwan', 'New Taiwan Dollar', 'Taiwan', NULL, 'http://www.sinopac.com/', false);
INSERT INTO public.banks VALUES (1846, 'ubgb.in', 'Uttar Bihar Gramin Bank', 'IN', 'INR', 'India', 'Indian Rupee', 'Muzaffarpur, India', NULL, 'http://ubgb.in/', false);
INSERT INTO public.banks VALUES (1847, 'en.bgk.pl', 'Bank Gospodarstwa Krajowego', 'PL', 'PLN', 'Poland', 'Zloty', 'Aleje Jerozolimskie 7Warsaw, Poland', NULL, 'http://en.bgk.pl', false);
INSERT INTO public.banks VALUES (1848, 'gnb.pl', 'Getin Noble Bank', 'PL', 'PLN', 'Poland', 'Zloty', 'ul. Przyokopowa 33, 01-208, Warsaw, Poland', NULL, 'http://gnb.pl/', false);
INSERT INTO public.banks VALUES (1849, 'fbme.com', 'FBME BANK', 'TZ', 'TZS', 'Tanzania', 'Tanzanian Shilling', 'Dar es Salaam, Tanzania', NULL, 'http://fbme.com', false);
INSERT INTO public.banks VALUES (1850, 'www.shengjingbank.com.cn', 'Shengjing Bank', 'CN', 'CNY', 'China', 'Yuan Renminbi', 'People''s Republic of China ', NULL, 'http://www.shengjingbank.com.cn', false);
INSERT INTO public.banks VALUES (1851, 'www.smn.no', 'SpareBank 1 SMN', 'NO', 'NOK', 'Norway', 'Norwegian Krone', 'Trondheim, Norway', NULL, 'http://www.smn.no', false);
INSERT INTO public.banks VALUES (1852, 'www.jbic.go.jp', 'Japan Bank for International Cooperation', 'JP', 'JPY', 'Japan', 'Yen', 'Tokyo, Japan', NULL, 'https://www.jbic.go.jp/en/', false);
INSERT INTO public.banks VALUES (1853, 'www.uobusa.com', 'United Orient Bank', 'CN', 'CNY', 'China', 'Yuan Renminbi', 'Chinatown, ManhattanNew York City, New York, U.S.', NULL, 'http://www.uobusa.com', false);
INSERT INTO public.banks VALUES (1854, 'www.nordea.no', 'Nordea Bank Norge ASA', 'NO', 'NOK', 'Norway', 'Norwegian Krone', 'Oslo, Norway', NULL, 'http://www.nordea.no/', false);
INSERT INTO public.banks VALUES (1855, 'www.tmb.in', 'Tamilnad Mercantile Bank Ltd', 'IN', 'INR', 'India', 'Indian Rupee', 'Thoothukudi, Tamil Nadu, India', NULL, 'http://www.tmb.in/', false);
INSERT INTO public.banks VALUES (1856, 'www.mmftb.com', 'Myanma Foreign Trade Bank', 'MM', 'MMK', 'Myanmar', 'Kyat', 'No. 80-86, Mahabandoola Garden Street, Kyauktada Township, Yangon, Myanmar', NULL, 'http://www.mmftb.com', false);
INSERT INTO public.banks VALUES (1857, 'www.bma.com.af', 'Bank-e-Millie Afghan', 'AF', 'AFN', 'Afghanistan', 'Afghani', 'Ebn-e-Sina Rd, Kabul, Afghanistan', NULL, 'http://www.bma.com.af', false);
INSERT INTO public.banks VALUES (1858, 'english.mp.is', 'MP banki hf.', 'IS', 'ISK', 'Iceland', 'Iceland Krona', 'Reykjavik, Iceland', NULL, 'http://english.mp.is/', false);
INSERT INTO public.banks VALUES (1859, 'aib.ie', 'Allied Irish Banks, p.l.c.', 'IE', 'EUR', 'Ireland', 'Euro', 'Ballsbridge, Dublin, Ireland', NULL, 'https://aib.ie/', false);
INSERT INTO public.banks VALUES (1860, 'www.mercantile.co.il', 'Mercantile Discount Bank Ltd.', 'IL', 'ILS', 'Israel', 'New Israeli Sheqel', 'Kirya Tower, Tel Aviv, Israel', NULL, 'https://www.mercantile.co.il/', false);
INSERT INTO public.banks VALUES (1861, 'www.raiffeisen.ro', 'Raiffeisen Bank', 'RO', 'RON', 'Romania', 'Romanian Leu', 'Bucharest, Romania', NULL, 'http://www.raiffeisen.ro', false);
INSERT INTO public.banks VALUES (1862, 'www.hsbc.com.tr', 'HSBC Bank A.Ş.', 'TR', 'TRY', 'Turkey', 'Turkish Lira', 'Istanbul, Turkey', NULL, 'http://www.hsbc.com.tr/', false);
INSERT INTO public.banks VALUES (1863, 'www.abchina.com', 'Agricultural Bank of China', 'CN', 'CNY', 'China', 'Yuan Renminbi', 'Beijing, China', NULL, 'http://www.abchina.com', false);
INSERT INTO public.banks VALUES (1864, 'www.saharabank.com.ly', 'Sahara Bank', 'LY', 'LYD', 'Libya', 'Libyan Dinar', 'Tripoli ', NULL, 'http://www.saharabank.com.ly/', false);
INSERT INTO public.banks VALUES (1865, 'www.qib.com.qa', 'Qatar Islamic Bank (Q.P.S.C)', 'QA', 'QAR', 'Qatar', 'Qatari Rial', 'Doha, Qatar', NULL, 'https://www.qib.com.qa', false);
INSERT INTO public.banks VALUES (1866, 'www.zaba.hr', 'Zagrebačka banka d.d.', 'HR', 'HRK', 'Croatia', 'Kuna', 'Trg bana Josipa Jelačića 10 [1], Croatia', NULL, 'http://www.zaba.hr/', false);
INSERT INTO public.banks VALUES (1867, 'www.bcm.mr', 'Central Bank of Mauritaniaالبنك المركزي الموريتاني', 'MR', 'MRO', 'Mauritania', 'Ouguiya', 'Nouakchott', NULL, 'http://www.bcm.mr', false);
INSERT INTO public.banks VALUES (1868, 'www.girobankltd.com', 'Giro Commercial Bank', 'KE', 'KES', 'Kenya', 'Kenyan Shilling', 'Nairobi, Kenya', NULL, 'http://www.girobankltd.com', false);
INSERT INTO public.banks VALUES (1869, 'www.cbn.gov.ng', 'Central Bank of Nigeria', 'NG', 'NGN', 'Nigeria', 'Naira', 'Abuja, FCT, Nigeria', NULL, 'http://www.cbn.gov.ng', false);
INSERT INTO public.banks VALUES (1870, 'www.bni.co.id', 'Bank Negara Indonesia', 'ID', 'IDR', 'Indonesia', 'Rupiah', 'Wisma 46Jakarta, Indonesia', NULL, 'http://www.bni.co.id/', false);
INSERT INTO public.banks VALUES (1871, 'eabr.org', 'Eurasian Development Bank', 'KZ', 'KZT', 'Kazakhstan', 'Tenge', 'Almaty, Kazakhstan', NULL, 'https://eabr.org', false);
INSERT INTO public.banks VALUES (1872, 'www.dcb.co.tz', 'Dar es Salaam Community Bank', 'TZ', 'TZS', 'Tanzania', 'Tanzanian Shilling', 'Dar es Salaam, Tanzania', NULL, 'http://www.dcb.co.tz/', false);
INSERT INTO public.banks VALUES (1873, 'www.mnb.hu', 'Magyar Nemzeti Bank', 'HU', 'HUF', 'Hungary', 'Forint', 'Liberty Square, Budapest, Hungary', NULL, 'http://www.mnb.hu/en', false);
INSERT INTO public.banks VALUES (1874, 'www.abs.ch', 'Alternative Bank Schweiz (ABS)', 'CH', 'CHF', 'Switzerland', 'Swiss Franc', 'Olten, Switzerland', NULL, 'https://www.abs.ch/en', false);
INSERT INTO public.banks VALUES (1876, 'www.cncbinternational.com', 'CITIC Bank International Limited', 'HK', 'HKD', 'Hong Kong', 'Hong Kong Dollar', 'Hong Kong', NULL, 'https://www.cncbinternational.com/', false);
INSERT INTO public.banks VALUES (1877, 'www.mizuhocbk.com', 'Mizuho Corporate Bank, Ltd.', 'JP', 'JPY', 'Japan', 'Yen', 'Tokyo, Japan', NULL, 'http://www.mizuhocbk.com/', false);
INSERT INTO public.banks VALUES (1878, 'www.cfxbank.co.zw', 'CFX Bank', 'ZW', 'ZWL', 'Zimbabwe', 'Zimbabwe Dollar', 'Harare, Zimbabwe', NULL, 'http://www.cfxbank.co.zw', false);
INSERT INTO public.banks VALUES (1879, 'www.alpha.gr', 'Alpha Bank A.E.Αλφα Τράπεζα Α.Ε.', 'GR', 'EUR', 'Greece', 'Euro', 'Athens, Greece', NULL, 'http://www.alpha.gr/page/default.asp?id=4&la=2', false);
INSERT INTO public.banks VALUES (1880, 'www.tgh.na', 'Trustco Bank Namibia Ltd.', 'NA', 'NAD', 'Namibia', 'Namibia Dollar', 'Ongwediva, Namibia', NULL, 'https://www.tgh.na/our-profile/banking/', false);
INSERT INTO public.banks VALUES (1881, 'www.ybonline.co.uk', 'Yorkshire Bank', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Leeds, England', NULL, 'http://www.ybonline.co.uk', false);
INSERT INTO public.banks VALUES (1882, 'www.snn.no', 'Sparebanken Nord-Norge', 'NO', 'NOK', 'Norway', 'Norwegian Krone', 'Tromsø, Norway', NULL, 'http://www.snn.no', false);
INSERT INTO public.banks VALUES (1883, 'www.seylan.lk', 'Seylan Bank PLC', 'LK', 'LKR', 'Sri Lanka', 'Sri Lanka Rupee', 'Colombo, Sri Lanka', NULL, 'http://www.seylan.lk', false);
INSERT INTO public.banks VALUES (1884, 'www.bibessen.de', 'Bank im Bistum Essen eG', 'DE', 'EUR', 'Germany', 'Euro', 'Essen, Germany', NULL, 'http://www.bibessen.de/', false);
INSERT INTO public.banks VALUES (1885, 'www.mbank.pl', 'mBank SA', 'PL', 'PLN', 'Poland', 'Zloty', 'Poland', NULL, 'http://www.mbank.pl', false);
INSERT INTO public.banks VALUES (1886, 'www.ucpb.com', 'United Coconut Planters Bank (UCPB)', 'PH', 'PHP', 'Philippines', 'Philippine Peso', 'Makati, Philippines', NULL, 'https://www.ucpb.com', false);
INSERT INTO public.banks VALUES (1887, 'www.bgzbnpparibas.pl', 'Bank BGŻ BNP Paribas', 'PL', 'PLN', 'Poland', 'Zloty', 'Warsaw, Poland', NULL, 'http://www.bgzbnpparibas.pl', false);
INSERT INTO public.banks VALUES (1888, 'www.bancaditalia.it', 'Bank of ItalyBanca d''Italia', 'IT', 'EUR', 'Italy', 'Euro', 'Palazzo Koch, Rome, Italy', NULL, 'http://www.bancaditalia.it/homepage/index.html', false);
INSERT INTO public.banks VALUES (1889, 'www.ecb.europa.eu', 'European Central Bank', 'DE', 'EUR', 'Germany', 'Euro', 'Ostend district, Frankfurt, Germany', NULL, 'https://www.ecb.europa.eu', false);
INSERT INTO public.banks VALUES (1890, 'www.nbf.ae', 'National Bank of Fujairah', 'AE', 'AED', 'United Arab Emirates', 'UAE Dirham', 'Hamad Bin Abdullah Street, PO Box 887
Al Fujairah Building, Khalid Bin Waleed Street, PO Box
            2979, Dubai, Fujairah, United Arab Emirates
        ', NULL, 'https://www.nbf.ae/en', false);
INSERT INTO public.banks VALUES (1891, 'www.smbc.co.jp', 'Sumitomo Mitsui Banking Corporation', 'JP', 'JPY', 'Japan', 'Yen', 'Chiyoda-ku, Tokyo, Japan', NULL, 'https://www.smbc.co.jp/global/', false);
INSERT INTO public.banks VALUES (1892, 'www.kenanga.com.my', 'Kenanga Investment Bank Berhad', 'MY', 'MYR', 'Malaysia', 'Malaysian Ringgit', 'Kenanga Tower237 Jalan Tun Razak, Kuala Lumpur, Malaysia', NULL, 'http://www.kenanga.com.my/', false);
INSERT INTO public.banks VALUES (1893, 'www.kentreliance.co.uk', 'OneSavings Bank plc trading as Kent Reliance', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Chatham, Kent, United Kingdom', NULL, 'http://www.kentreliance.co.uk', false);
INSERT INTO public.banks VALUES (1894, 'www.africanalliance.com', 'African Alliance Investment Bank', 'ZA', 'ZAR', 'South Africa', 'Rand', 'Johannesburg, South Africa', NULL, 'http://www.africanalliance.com/', false);
INSERT INTO public.banks VALUES (1895, 'www.hlb.com.my', 'Hong Leong Bank Berhad', 'MY', 'MYR', 'Malaysia', 'Malaysian Ringgit', 'Menara Hong Leong, No.6, Jalan Damanlela, Bukit Damansara, 50490, Kuala Lumpur, Malaysia
        ', NULL, 'http://www.hlb.com.my', false);
INSERT INTO public.banks VALUES (1896, 'www.cbnco.com', 'Canadian Bank Note Company, Limited', 'CA', 'CAD', 'Canada', 'Canadian Dollar', 'Ottawa, Ontario, Canada', NULL, 'http://www.cbnco.com/', false);
INSERT INTO public.banks VALUES (1897, 'www.santander.de', 'Santander Consumer Bank AG', 'DE', 'EUR', 'Germany', 'Euro', 'Mönchengladbach, Germany', NULL, 'http://www.santander.de/', false);
INSERT INTO public.banks VALUES (1898, 'www.bacb.co.uk', 'British Arab Commercial Bank PLC', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'London, England, UK', NULL, 'http://www.bacb.co.uk', false);
INSERT INTO public.banks VALUES (1899, 'www.stlouisfed.org', 'Federal Reserve Bank of St. Louis', 'US', 'USD', 'United States', 'US Dollar', 'Broadway and Locust StreetSt. Louis, Missouri, USA', NULL, 'https://www.stlouisfed.org/', false);
INSERT INTO public.banks VALUES (1900, 'www.nbs.sk', 'National Bank of SlovakiaNárodná banka Slovenska', 'SK', 'EUR', 'Slovakia', 'Euro', 'Bratislava', NULL, 'http://www.nbs.sk', false);
INSERT INTO public.banks VALUES (1901, 'www.emiratesnbd.com', 'Emirates NBD Bank PJSC', 'AE', 'AED', 'United Arab Emirates', 'UAE Dirham', 'Emirates NBD (Head Office building) Baniyas Road Deira in Dubai, United Arab Emirates
        ', NULL, 'http://www.emiratesnbd.com', false);
INSERT INTO public.banks VALUES (1902, 'www.dime.com', 'Dime Community Bank', 'US', 'USD', 'United States', 'US Dollar', 'Brooklyn, New York, United States', NULL, 'https://www.dime.com/', false);
INSERT INTO public.banks VALUES (1903, 'www.hsbc.com.br', 'HSBC Bank Brasil S.A. - Banco Múltiplo', 'BR', 'BRL', 'Brazil', 'Brazilian Real', 'Curitiba, Brazil', NULL, 'http://www.hsbc.com.br/', false);
INSERT INTO public.banks VALUES (1904, 'www.sdb.com.cn', 'Shenzhen Development Bank', 'CN', 'CNY', 'China', 'Yuan Renminbi', 'Shenzhen, China', NULL, 'http://www.sdb.com.cn/website/page/files/wcms/SDB/primary/en/InvestorRelations/', false);
INSERT INTO public.banks VALUES (1905, 'db.com', 'Deutsche Bank AG', 'DE', 'EUR', 'Germany', 'Euro', 'Deutsche Bank Twin TowersFrankfurt, Germany', NULL, 'http://db.com', false);
INSERT INTO public.banks VALUES (1906, 'nibl.com.np', 'Nepal Investment Bank Limited', 'NP', 'NPR', 'Nepal', 'Nepalese Rupee', 'Durbar Marg Kathmandu, Nepal', NULL, 'http://nibl.com.np', false);
INSERT INTO public.banks VALUES (1907, 'www.airdriesavingsbank.com', 'Airdrie Savings Bank', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Airdrie, Scotland, UK', NULL, 'http://www.airdriesavingsbank.com', false);
INSERT INTO public.banks VALUES (1908, 'www.muamalat.com.my', 'Bank Muamalat Malaysia Berhadبڠك معاملة مليسيا', 'MY', 'MYR', 'Malaysia', 'Malaysian Ringgit', 'Kuala Lumpur, Malaysia, Malaysia', NULL, 'http://www.muamalat.com.my/', false);
INSERT INTO public.banks VALUES (1909, 'www.boc-ins.cn', 'Bank of China Insurance Company Limited', 'CN', 'CNY', 'China', 'Yuan Renminbi', 'Beijing, China', NULL, 'http://www.boc-ins.cn', false);
INSERT INTO public.banks VALUES (1910, 'www.abl.com', 'Allied Bank Limited', 'PK', 'PKR', 'Pakistan', 'Pakistan Rupee', 'Lahore, Pakistan', NULL, 'http://www.abl.com', false);
INSERT INTO public.banks VALUES (1911, 'www.ghana.accessbankplc.com', 'Access Bank (Ghana) PLC', 'GH', 'GHS', 'Ghana', 'Ghana Cedi', 'Accra, Ghana', NULL, 'https://www.ghana.accessbankplc.com/', false);
INSERT INTO public.banks VALUES (1912, 'www.hpb.hr', 'Hrvatska poštanska banka PLC', 'HR', 'HRK', 'Croatia', 'Kuna', 'Jurišićeva ulica 4, Zagreb, Croatia', NULL, 'https://www.hpb.hr/en', false);
INSERT INTO public.banks VALUES (1913, 'www.bspb.ru', 'PJSC Bank Saint Petersburg', 'RU', 'RUB', 'Russia', 'Russian Ruble', 'Saint Petersburg, Russia', NULL, 'http://www.bspb.ru/', false);
INSERT INTO public.banks VALUES (1914, 'www.mahagramin.in', 'Maharashtra Gramin Bank', 'IN', 'INR', 'India', 'Indian Rupee', 'Aurangabad, India', NULL, 'https://www.mahagramin.in/', false);
INSERT INTO public.banks VALUES (1915, 'www.cba.co.tz', 'Commercial Bank of Africa (Tanzania)', 'TZ', 'TZS', 'Tanzania', 'Tanzanian Shilling', 'Amani Place, Ohio Street, Dar es Salaam, Tanzania', NULL, 'http://www.cba.co.tz/', false);
INSERT INTO public.banks VALUES (1916, 'www.tcmb.gov.tr', 'Central Bank of the Republic of TurkeyTürkiye Cumhuriyet Merkez Bankası', 'TR', 'TRY', 'Turkey', 'Turkish Lira', 'Ankara, Turkey', NULL, 'http://www.tcmb.gov.tr', false);
INSERT INTO public.banks VALUES (1917, 'www.oenb.at', 'Oesterreichische Nationalbank', 'AT', 'EUR', 'Austria', 'Euro', 'Vienna', NULL, 'https://www.oenb.at', false);
INSERT INTO public.banks VALUES (1918, 'www.homecredit.ru', 'Home Credit & Finance Bank', 'RU', 'RUB', 'Russia', 'Russian Ruble', 'Moscow, Russia', NULL, 'http://www.homecredit.ru', false);
INSERT INTO public.banks VALUES (1919, 'www.natwest.com', 'National Westminster Bank Plc', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', '250 Bishopsgate, London, E1 6AJ', NULL, 'http://www.natwest.com', false);
INSERT INTO public.banks VALUES (1920, 'www.hsbc.pl', 'HSBC Bank Polska S.A.', 'PL', 'PLN', 'Poland', 'Zloty', 'Warsaw, Poland', NULL, 'http://www.hsbc.pl', false);
INSERT INTO public.banks VALUES (1921, 'www.newyorkfed.org', 'Federal Reserve Bank of New York', 'US', 'USD', 'United States', 'US Dollar', 'Federal Reserve Bank of New York BuildingNew York, New York, USA', NULL, 'http://www.newyorkfed.org', false);
INSERT INTO public.banks VALUES (1922, 'www.chicagofed.org', 'Federal Reserve Bank of Chicago', 'US', 'USD', 'United States', 'US Dollar', '230 S LaSalle StreetChicago, IL, USA', NULL, 'https://www.chicagofed.org/', false);
INSERT INTO public.banks VALUES (1923, 'www.sbp.org.pk', 'State Bank of Pakistanبینک دَولتِ پاکِستان', 'PK', 'PKR', 'Pakistan', 'Pakistan Rupee', 'Karachi, Pakistan', NULL, 'http://www.sbp.org.pk', false);
INSERT INTO public.banks VALUES (1924, 'www.bnz.co.nz', 'Bank of New Zealand', 'NZ', 'NZD', 'New Zealand', 'New Zealand Dollar', 'Auckland, New Zealand', NULL, 'http://www.bnz.co.nz', false);
INSERT INTO public.banks VALUES (1925, 'www.unicredit.ro', 'UniCredit Bank', 'RO', 'RON', 'Romania', 'Romanian Leu', 'Bucharest, Romania', NULL, 'https://www.unicredit.ro/', false);
INSERT INTO public.banks VALUES (1926, 'www.bcb.gob.bo', 'Central Bank of BoliviaBanco Central de Bolivia (in Spanish)', 'BO', 'BOB', 'Bolivia', 'Boliviano', 'La Paz, Bolivia', NULL, 'http://www.bcb.gob.bo', false);
INSERT INTO public.banks VALUES (1927, 'www.bmce-intl.co.uk', 'BMCE Bank International Plc.', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'LondonUnited Kingdom', NULL, 'http://www.bmce-intl.co.uk/', false);
INSERT INTO public.banks VALUES (1928, 'www.cavmont.com.zm', 'Cavmont Bank Limited', 'ZM', 'ZMW', 'Zambia', 'Zambian Kwacha', '2374 Thabo Mbeki Road, Lusaka, Zambia', NULL, 'http://www.cavmont.com.zm/', false);
INSERT INTO public.banks VALUES (1929, 'rbb.com.np', 'Rastriya Banijya Bank (RBB)', 'NP', 'NPR', 'Nepal', 'Nepalese Rupee', 'Singha Durbar Plaza, Kathmandu, Nepal', NULL, 'http://rbb.com.np', false);
INSERT INTO public.banks VALUES (1930, 'www.sebgroup.com', 'Skandinaviska Enskilda Banken AB', 'SE', 'SEK', 'Sweden', 'Swedish Krona', 'Stockholm, Sweden', NULL, 'http://www.sebgroup.com', false);
INSERT INTO public.banks VALUES (1931, 'www.aiib.org', 'Asian Infrastructure Investment Bank', 'CN', 'CNY', 'China', 'Yuan Renminbi', 'Beijing, China', NULL, 'http://www.aiib.org', false);
INSERT INTO public.banks VALUES (1932, 'www.ahli.com', 'Jordan Ahli Bank', 'JO', 'JOD', 'Jordan', 'Jordanian Dinar', 'Queen Noor Street, Shemesani, Amman, Jordan', NULL, 'http://www.ahli.com/', false);
INSERT INTO public.banks VALUES (1933, 'www.hsbc.ca', 'HSBC Bank Canada', 'GE', 'GEL', 'Georgia', 'Lari', '885 West Georgia StreetVancouver, British ColumbiaV6C 3E9', NULL, 'http://www.hsbc.ca/', false);
INSERT INTO public.banks VALUES (1934, 'www.asbhawaii.com', 'American Savings Bank', 'US', 'USD', 'United States', 'US Dollar', 'Honolulu, Hawaii, United States', NULL, 'http://www.asbhawaii.com', false);
INSERT INTO public.banks VALUES (1935, 'www.glkb.ch', 'Glarner Kantonalbank', 'CH', 'CHF', 'Switzerland', 'Swiss Franc', 'Glarus, Switzerland', NULL, 'http://www.glkb.ch/', false);
INSERT INTO public.banks VALUES (1936, 'www.hsbc.com.tw', 'HSBC Bank (Taiwan) Limited滙豐(台灣)商業銀行股份有限公司', 'TW', 'TWD', 'Taiwan', 'New Taiwan Dollar', 'Taipei, Taiwan', NULL, 'http://www.hsbc.com.tw/', false);
INSERT INTO public.banks VALUES (1937, 'www.bkt.com.al', 'Banka Kombëtare Tregtare (BKT)', 'AL', 'ALL', 'Albania', 'Lek', 'Tirana, Albania', NULL, 'http://www.bkt.com.al/', false);
INSERT INTO public.banks VALUES (1938, 'www.comdirect.de', 'comdirect bank Aktiengesellschaft', 'DE', 'EUR', 'Germany', 'Euro', 'Quickborn, Germany', NULL, 'https://www.comdirect.de/', false);
INSERT INTO public.banks VALUES (1940, 'www.firsthorizon.com', 'First Horizon Bank', 'US', 'USD', 'United States', 'US Dollar', 'Memphis, Tennessee, United States', NULL, 'https://www.firsthorizon.com', false);
INSERT INTO public.banks VALUES (1941, 'bpi.com.ph', 'Bank of the Philippine Islands', 'PH', 'PHP', 'Philippines', 'Philippine Peso', 'Makati, Philippines', NULL, 'http://bpi.com.ph', false);
INSERT INTO public.banks VALUES (1942, 'www.imb.com', 'IndyMac Bank', 'US', 'USD', 'United States', 'US Dollar', 'Pasadena, California, United States', NULL, 'http://www.imb.com/', false);
INSERT INTO public.banks VALUES (1943, 'www.richmondfed.org', 'Federal Reserve Bank of Richmond', 'US', 'USD', 'United States', 'US Dollar', '701 E Byrd St Richmond, Virginia, USA', NULL, 'https://www.richmondfed.org/', false);
INSERT INTO public.banks VALUES (1944, 'ke.ncbagroup.com', 'NCBA Bank Kenya Plc', 'KE', 'KES', 'Kenya', 'Kenyan Shilling', 'Nairobi, Kenya', NULL, 'https://ke.ncbagroup.com/', false);
INSERT INTO public.banks VALUES (1945, 'www.eadb.org', 'East African Development Bank', 'UG', 'UGX', 'Uganda', 'Uganda Shilling', '4 Nile Avenue, Kampala, Uganda', NULL, 'http://www.eadb.org/', false);
INSERT INTO public.banks VALUES (1946, 'www.teb.com.tr', 'Türk Ekonomi Bankası A.Ş.', 'TR', 'TRY', 'Turkey', 'Turkish Lira', 'Istanbul, Turkey', NULL, 'http://www.teb.com.tr', false);
INSERT INTO public.banks VALUES (1947, 'www.raiffeisen.ru', 'Raiffeisenbank', 'RU', 'RUB', 'Russia', 'Russian Ruble', 'Moscow, Russia', NULL, 'http://www.raiffeisen.ru', false);
INSERT INTO public.banks VALUES (1949, 'www.marquettesavings.com', 'Marquette Savings Bank', 'US', 'USD', 'United States', 'US Dollar', 'Erie, Pennsylvania, United States', NULL, 'https://www.marquettesavings.com', false);
INSERT INTO public.banks VALUES (1950, 'www.hnb.hr', 'Croatian National BankHrvatska narodna banka', 'HR', 'HRK', 'Croatia', 'Kuna', 'Trg hrvatskih velikana 3Zagreb', NULL, 'http://www.hnb.hr', false);
INSERT INTO public.banks VALUES (1951, 'www.bcr.gob.sv', 'Central Reserve Bank of El SalvadorBanco Central de La reserva federal us de El Salvador', 'SV', 'USD', 'El Salvador', 'US Dollar', 'San Salvador', NULL, 'http://www.bcr.gob.sv', false);
INSERT INTO public.banks VALUES (1952, 'www.banque-centrale.dj', 'Central Bank of Djiboutiالبنك المركزي الجيبوتي', 'DJ', 'DJF', 'Djibouti', 'Djibouti Franc', 'Djibouti', NULL, 'http://www.banque-centrale.dj', false);
INSERT INTO public.banks VALUES (1953, 'www.cbo.gov.om', 'Central Bank of Omanالبنك المركزي العماني', 'OM', 'OMR', 'Oman', 'Rial Omani', 'Ruwi', NULL, 'https://www.cbo.gov.om/', false);
INSERT INTO public.banks VALUES (1954, 'aryavart-rrb.com', 'Aryavart Bank', 'IN', 'INR', 'India', 'Indian Rupee', 'Lucknow, India', NULL, 'http://aryavart-rrb.com/', false);
INSERT INTO public.banks VALUES (1955, 'www.cmbchina.com', 'China Merchants Bank Company Limited 招商银行股份有限公司', 'CN', 'CNY', 'China', 'Yuan Renminbi', 'Futian District, Shenzhen, Guangdong, China', NULL, 'http://www.cmbchina.com//', false);
INSERT INTO public.banks VALUES (1956, 'www.fnbtanzania.co.tz', 'First National Bank Tanzania', 'TZ', 'TZS', 'Tanzania', 'Tanzanian Shilling', 'Dar-es-Salaam, Tanzania', NULL, 'https://www.fnbtanzania.co.tz/', false);
INSERT INTO public.banks VALUES (1957, 'www.bcra.gov.ar', 'Central Bank of the Argentine RepublicBanco Central de la República Argentina', 'AR', 'ARS', 'Argentina', 'Argentine Peso', 'Buenos Aires', NULL, 'https://www.bcra.gov.ar', false);
INSERT INTO public.banks VALUES (1958, 'sjiblbd.com', 'Shahjalal Islami Bank Limited', 'BD', 'BDT', 'Bangladesh', 'Taka', 'Dhaka, Bangladesh', NULL, 'http://sjiblbd.com/', false);
INSERT INTO public.banks VALUES (1959, 'www.frbsf.org', 'Federal Reserve Bank of San Francisco', 'US', 'USD', 'United States', 'US Dollar', '101 Market Street San Francisco, California, USA', NULL, 'http://www.frbsf.org', false);
INSERT INTO public.banks VALUES (1960, 'gnty.com', 'Guaranty Bank & Trust', 'US', 'USD', 'United States', 'US Dollar', 'Addison, Texas[1], USA', NULL, 'http://gnty.com', false);
INSERT INTO public.banks VALUES (1961, 'www.cbs.gov.ws', 'Central Bank of Samoa', 'WS', 'WST', 'Samoa', 'Tala', 'Apia, Samoa', NULL, 'http://www.cbs.gov.ws', false);
INSERT INTO public.banks VALUES (1962, 'www.boarwanda.com', 'Bank of Africa Rwanda Limited', 'RW', 'RWF', 'Rwanda', 'Rwanda Franc', 'Kigali, Rwanda', NULL, 'http://www.boarwanda.com/', false);
INSERT INTO public.banks VALUES (1963, 'www.openbank.es', 'Open Bank, S.A.', 'ES', 'EUR', 'Spain', 'Euro', 'Madrid, Spain', NULL, 'https://www.openbank.es/en', false);
INSERT INTO public.banks VALUES (1964, 'www.fwbl.com.pk', 'First Women Bank Limited', 'PK', 'PKR', 'Pakistan', 'Pakistan Rupee', 'Principal office Karachi, Pakistan', NULL, 'http://www.fwbl.com.pk/', false);
INSERT INTO public.banks VALUES (1965, 'bisb.com', 'Bahrain Islamic Bank', 'BH', 'BHD', 'Bahrain', 'Bahraini Dinar', 'Al Salam Tower, Building 722, Road 1708, Block 317, Manama, Bahrain', NULL, 'http://bisb.com', false);
INSERT INTO public.banks VALUES (1966, 'www.cgbchina.com.cn', 'China Guangfa Bank', 'CN', 'CNY', 'China', 'Yuan Renminbi', 'Guangzhou, Guangdong,People''s Republic of China', NULL, 'http://www.cgbchina.com.cn/', false);
INSERT INTO public.banks VALUES (1967, 'www.unb.com', 'Union National Bank', 'AE', 'AED', 'United Arab Emirates', 'UAE Dirham', 'Abu Dhabi, United Arab Emirates', NULL, 'https://www.unb.com', false);
INSERT INTO public.banks VALUES (1968, 'www.eestipank.ee', 'Bank of EstoniaEesti Pank', 'EE', 'EUR', 'Estonia', 'Euro', 'Tallinn', NULL, 'https://www.eestipank.ee/', false);
INSERT INTO public.banks VALUES (1969, 'www.nbg.gr', 'National Bank of Greece S.A.Εθνική Τράπεζα της Ελλάδος Α.Ε.', 'GR', 'EUR', 'Greece', 'Euro', 'Aiolou 86, Athens, Greece[1]', NULL, 'http://www.nbg.gr', false);
INSERT INTO public.banks VALUES (1971, 'www.japantrustee.co.jp', 'Japan Trustee Services Bank, Ltd.日本トラスティ・サービス信託銀行株式会社', 'JP', 'JPY', 'Japan', 'Yen', 'Chuo, Tokyo, Japan', NULL, 'http://www.japantrustee.co.jp', false);
INSERT INTO public.banks VALUES (1972, 'www.exim.go.th', 'Export–Import Bank of Thailand', 'TH', 'THB', 'Thailand', 'Baht', 'EXIM Building, 1193 Phaholyothin Road, Samsen Nai, Phaya Thai, Bangkok 10400[1], Thailand
        ', NULL, 'http://www.exim.go.th/en/home/index.aspx', false);
INSERT INTO public.banks VALUES (1973, 'erhcb.com', 'Housing and Commerce Bank', 'ER', 'ERN', 'Eritrea', 'Nakfa', 'Asmara, Eritrea', NULL, 'https://erhcb.com/', false);
INSERT INTO public.banks VALUES (1974, 'www.alahli.com', 'The National Commercial Bankالبنك الأهلي التجاري', 'SA', 'SAR', 'Saudi Arabia', 'Saudi Riyal', 'Jeddah, Saudi Arabia', NULL, 'http://www.alahli.com', false);
INSERT INTO public.banks VALUES (1975, 'www.rbinternational.com', 'Raiffeisen Bank International A.G.', 'AT', 'EUR', 'Austria', 'Euro', 'Vienna, Austria', NULL, 'http://www.rbinternational.com', false);
INSERT INTO public.banks VALUES (1976, 'www.banxico.org.mx', 'Bank of MexicoBanco de México', 'MX', 'MXN', 'Mexico', 'Mexican Peso', 'Mexico City, Mexico', NULL, 'http://www.banxico.org.mx', false);
INSERT INTO public.banks VALUES (1977, 'abk.eahli.com', 'Al Ahli Bank of Kuwait', 'KW', 'KWD', 'Kuwait', 'Kuwaiti Dinar', 'Safat Square, Ahmad Al Jaber Street, PO Box 1387, Safat, Kuwait City, Kuwait', NULL, 'https://abk.eahli.com', false);
INSERT INTO public.banks VALUES (1978, 'guardian-bank.com', 'Guardian Bank', 'KE', 'KES', 'Kenya', 'Kenyan Shilling', 'Nairobi, Kenya', NULL, 'http://guardian-bank.com', false);
INSERT INTO public.banks VALUES (1979, 'www.cbsl.gov.lk', 'Central Bank of Sri Lankaශ්‍රී ලංකා මහ බැංකුවஇலங்கை மத்திய வங்கி', 'LK', 'LKR', 'Sri Lanka', 'Sri Lanka Rupee', 'Colombo', NULL, 'http://www.cbsl.gov.lk', false);
INSERT INTO public.banks VALUES (1980, 'www.unionsavings.com', 'Union Savings Bank', 'US', 'USD', 'United States', 'US Dollar', 'Danbury, Connecticut', NULL, 'https://www.unionsavings.com/', false);
INSERT INTO public.banks VALUES (1981, 'rbc.com', '
Royal Bank of Canada
Banque Royale du Canada', 'CA', 'CAD', 'Canada', 'Canadian Dollar', 'Montreal, Quebec, Canada Toronto, Ontario, Canada[2]', NULL, 'http://rbc.com', false);
INSERT INTO public.banks VALUES (1982, 'www.bmoharris.com', 'BMO Harris Bank, N.A.', 'US', 'USD', 'United States', 'US Dollar', 'Chicago, Illinois, United States', NULL, 'https://www.bmoharris.com', false);
INSERT INTO public.banks VALUES (1983, 'nrb.org.np', 'Nepal Rastra Bankनेपाल राष्ट्र बैंक', 'NP', 'NPR', 'Nepal', 'Nepalese Rupee', 'Baluwatar, Kathmandu', NULL, 'http://nrb.org.np', false);
INSERT INTO public.banks VALUES (1984, 'www.nordea.dk', 'Nordea Bank Danmark A/S', 'DK', 'DKK', 'Denmark', 'Danish Krone', 'Copenhagen, Denmark', NULL, 'http://www.nordea.dk', false);
INSERT INTO public.banks VALUES (1985, 'www.capitalsource.com', 'CapitalSource, a division of Pacific Western Bank', 'US', 'USD', 'United States', 'US Dollar', 'Los Angeles, California', NULL, 'http://www.capitalsource.com/', false);
INSERT INTO public.banks VALUES (1986, 'a-bank.jp', 'The Aomori Bank, Ltd. 株式会社青森銀行', 'JP', 'JPY', 'Japan', 'Yen', 'Aomori, Japan (October 1, 1943)', NULL, 'http://a-bank.jp', false);
INSERT INTO public.banks VALUES (1987, 'www.hsbc.ae', 'HSBC Bank Middle East Limited', 'JE', 'GBP', 'Jersey', 'Pound Sterling', 'Saint Helier, Jersey, Channel Islands', NULL, 'http://www.hsbc.ae/', false);
INSERT INTO public.banks VALUES (1988, 'www.ocb.com.vn', 'Orient Commercial Joint Stock Bank (OCB)', 'VN', 'VND', 'Vietnam', 'Dong', '45 Le Duan Boulevard, District 1, Hochiminh City, Vietnam', NULL, 'https://www.ocb.com.vn/en/foreign-currency-exchange-1.html', false);
INSERT INTO public.banks VALUES (1989, 'www.apgb.in', 'Andhra Pragathi Grameena Bank', 'IN', 'INR', 'India', 'Indian Rupee', 'Kadapa, India', NULL, 'http://www.apgb.in/', false);
INSERT INTO public.banks VALUES (1990, 'www.evrofinance.ru', 'OJSC Evrofinance Mosnarbank', 'RU', 'RUB', 'Russia', 'Russian Ruble', 'Moscow, Russia', NULL, 'http://www.evrofinance.ru/', false);
INSERT INTO public.banks VALUES (1991, 'www.auroracommercial.com', 'Aurora Bank', 'US', 'USD', 'United States', 'US Dollar', 'Brandywine Building, 1000 West Street, Wilmington, Delaware, U.S.', NULL, 'http://www.auroracommercial.com/', false);
INSERT INTO public.banks VALUES (1992, 'www.transcapital.com', 'Joint Stock Bank “Transcapitalbank”', 'RU', 'RUB', 'Russia', 'Russian Ruble', 'Russia, Moscow and regions', NULL, 'http://www.transcapital.com', false);
INSERT INTO public.banks VALUES (1993, 'www.kebhana.com', 'Korean Exchange Bank / KEB', 'KR', 'KRW', 'South Korea', 'South Korean Won', 'Seoul, Republic of Korea (South) + overseas branches', NULL, 'https://www.kebhana.com/', false);
INSERT INTO public.banks VALUES (1994, 'www.tblbd.com', 'Trust Bank Limited', 'BD', 'BDT', 'Bangladesh', 'Taka', 'Shadhinota Tower, Bir Srestha Shahid Jahangir Gate, Dhaka Cantonment, Dhaka, Bangladesh
        ', NULL, 'http://www.tblbd.com/', false);
INSERT INTO public.banks VALUES (1995, 'www.minneapolisfed.org', 'Federal Reserve Bank of Minneapolis', 'US', 'USD', 'United States', 'US Dollar', '90 Hennepin AvenueMinneapolis, Minnesota, USA', NULL, 'https://www.minneapolisfed.org/', false);
INSERT INTO public.banks VALUES (1996, 'www.dbj.jp', 'Development Bank of Japan Inc.', 'JP', 'JPY', 'Japan', 'Yen', 'Tokyo, Japan', NULL, 'http://www.dbj.jp/en/index.html', false);
INSERT INTO public.banks VALUES (1997, 'www.bcci.info', 'Bank of Credit and Commerce International (BCCI)', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Karachi & London', NULL, 'http://www.bcci.info/', false);
INSERT INTO public.banks VALUES (1998, 'www.cimbanque.com', 'CIM Bank (CIM Banque)', 'CH', 'CHF', 'Switzerland', 'Swiss Franc', 'Geneva, Switzerland', NULL, 'https://www.cimbanque.com', false);
INSERT INTO public.banks VALUES (1999, 'www.citynationalcm.com', 'City National Bank of Florida', 'US', 'USD', 'United States', 'US Dollar', 'Miami, Florida', NULL, 'http://www.citynationalcm.com', false);
INSERT INTO public.banks VALUES (2000, 'www.mebkenya.com', 'Middle East Bank Kenya', 'KE', 'KES', 'Kenya', 'Kenyan Shilling', 'Mebank TowerMilimani StreetNairobi, Kenya', NULL, 'http://www.mebkenya.com/', false);
INSERT INTO public.banks VALUES (2001, 'www.getinbank.pl', 'Getin Bank', 'PL', 'PLN', 'Poland', 'Zloty', 'Warsaw , Poland ', NULL, 'https://www.getinbank.pl/', false);
INSERT INTO public.banks VALUES (2002, 'www.laiki.com', 'Cyprus Popular Bank Public Co. Ltd', 'CY', 'EUR', 'Cyprus', 'Euro', 'Nicosia, Cyprus', NULL, 'http://www.laiki.com/', false);
INSERT INTO public.banks VALUES (2003, 'www.daoheng.com', 'Dao Heng Bank Group Limited', 'HK', 'HKD', 'Hong Kong', 'Hong Kong Dollar', 'Hong Kong', NULL, 'http://www.daoheng.com', false);
INSERT INTO public.banks VALUES (2004, 'mycitizensfirst.com', 'Citizens First Bank', 'US', 'USD', 'United States', 'US Dollar', 'The Villages, Florida', NULL, 'http://mycitizensfirst.com', false);
INSERT INTO public.banks VALUES (2005, 'www.nordea.pl', 'Nordea Bank Polska S.A.', 'PL', 'PLN', 'Poland', 'Zloty', 'Gdynia, Poland', NULL, 'http://www.nordea.pl', false);
INSERT INTO public.banks VALUES (2006, 'www.bankmaspion.co.id', 'PT Bank Maspion Indonesia Tbk', 'ID', 'IDR', 'Indonesia', 'Rupiah', 'Surabaya, Indonesia', NULL, 'http://www.bankmaspion.co.id/', false);
INSERT INTO public.banks VALUES (2007, 'www.key.com', 'KeyBank', 'US', 'USD', 'United States', 'US Dollar', 'Cleveland, Ohio, USA', NULL, 'http://www.key.com/', false);
INSERT INTO public.banks VALUES (2008, 'cbr.ru', 'Bank of RussiaБанк России', 'RU', 'RUB', 'Russia', 'Russian Ruble', '12 Neglinnaya str., Moscow, Russian Federation', NULL, 'http://cbr.ru/', false);
INSERT INTO public.banks VALUES (2009, 'www.rbsinternational.com', 'The Royal Bank of Scotland International Limited', 'JE', 'GBP', 'Jersey', 'Pound Sterling', 'Jersey, Channel Islands', NULL, 'http://www.rbsinternational.com/', false);
INSERT INTO public.banks VALUES (2106, 'www.finbank.co.bi', 'FinBank Burundi', 'BI', 'BIF', 'Burundi', 'Burundi Franc', 'Bujumbura, Burundi', NULL, 'http://www.finbank.co.bi/', false);
INSERT INTO public.banks VALUES (2010, 'www.bnm.md', 'National Bank of MoldovaBanca Naţională a Moldovei (in Romanian)', 'MD', 'MDL', 'Moldova', 'Moldovan Leu', 'Chişinău', NULL, 'http://www.bnm.md/', false);
INSERT INTO public.banks VALUES (2011, 'www.dfcugroup.com', 'DFCU Bank', 'UG', 'UGX', 'Uganda', 'Uganda Shilling', '26 Kyaddondo RoadNakasero, Kampala, Uganda', NULL, 'http://www.dfcugroup.com', false);
INSERT INTO public.banks VALUES (2012, 'www.gdb-pur.com', 'Government Development Bank for Puerto Rico', 'PR', 'USD', 'Puerto Rico', 'US Dollar', 'San Juan, Puerto Rico', NULL, 'http://www.gdb-pur.com', false);
INSERT INTO public.banks VALUES (2013, 'www.standardchartered.co.kr', 'Standard Chartered Bank Korea Limited', 'KR', 'KRW', 'South Korea', 'South Korean Won', 'Seoul, South Korea', NULL, 'http://www.standardchartered.co.kr', false);
INSERT INTO public.banks VALUES (2014, 'www.nepalsbi.com.np', 'Nepal SBI Bank Limited', 'NP', 'NPR', 'Nepal', 'Nepalese Rupee', 'Kesharmahal[2], Kathmandu, Nepal', NULL, 'http://www.nepalsbi.com.np', false);
INSERT INTO public.banks VALUES (2015, 'www.stgeorge.com.au', 'St.George Bank', 'AU', 'AUD', 'Australia', 'Australian Dollar', 'Sydney, New South Wales, Australia', NULL, 'http://www.stgeorge.com.au/', false);
INSERT INTO public.banks VALUES (2016, 'nab.com.au', 'National Australia Bank Limited', 'AU', 'AUD', 'Australia', 'Australian Dollar', '700 Bourke StreetDocklands, Melbourne, Australia', NULL, 'http://nab.com.au/', false);
INSERT INTO public.banks VALUES (2017, 'www.reb-iraq.com', 'Real Estate Bank of Iraq', 'IQ', 'IQD', 'Iraq', 'Iraqi Dinar', 'Baghdad, Iraq', NULL, 'http://www.reb-iraq.com', false);
INSERT INTO public.banks VALUES (2018, 'www.acba.am', 'ACBA Credit Agricole Bank', 'AM', 'AMD', 'Armenia', 'Armenian Dram', 'Yerevan, Armenia', NULL, 'https://www.acba.am/', false);
INSERT INTO public.banks VALUES (2020, 'www.bdc.ca', 'Business Development Bank of Canada', 'CA', 'CAD', 'Canada', 'Canadian Dollar', 'Place Ville Marie Montreal, Quebec, Canada', NULL, 'https://www.bdc.ca/', false);
INSERT INTO public.banks VALUES (2021, 'nbb.be', 'National Bank of Belgium Nationale Bank van België (in Dutch)Banque nationale de Belgique (in French)
        ', 'BE', 'EUR', 'Belgium', 'Euro', 'Brussels', NULL, 'http://nbb.be', false);
INSERT INTO public.banks VALUES (2022, 'www.ucb.com.bd', 'United Commercial Bank Ltd', 'BD', 'BDT', 'Bangladesh', 'Taka', 'Dhaka, Bangladesh', NULL, 'http://www.ucb.com.bd', false);
INSERT INTO public.banks VALUES (3317, 'www.uni.ca', 'Caisse populaire acadienne ltée', 'CA', 'CAD', 'Canada', 'Canadian Dollar', 'Caraquet, New Brunswick, Canada', NULL, 'https://www.uni.ca/en/', false);
INSERT INTO public.banks VALUES (2023, 'www.mcb.mu', 'The Mauritius Commercial Bank Ltd', 'MU', 'MUR', 'Mauritius', 'Mauritius Rupee', '9-15, Sir William Newton Street, Port Louis, Mauritius', NULL, 'http://www.mcb.mu/', false);
INSERT INTO public.banks VALUES (2024, 'www.barclays.co.tz', 'Barclays Bank of Tanzania Limited', 'TZ', 'TZS', 'Tanzania', 'Tanzanian Shilling', 'Barclay''s House, Ohio Street, Kivukoni, Dar es Salaam, Tanzania', NULL, 'http://www.barclays.co.tz/', false);
INSERT INTO public.banks VALUES (2025, 'www.santander.pl', 'Santander Bank Polska SA', 'PL', 'PLN', 'Poland', 'Zloty', 'Warsaw, Poland', NULL, 'https://www.santander.pl/', false);
INSERT INTO public.banks VALUES (2026, 'www.banguat.gob.gt', 'Bank of GuatemalaBanco de Guatemala', 'GT', 'GTQ', 'Guatemala', 'Quetzal', 'Guatemala City, Guatemala, Guatemala', NULL, 'http://www.banguat.gob.gt', false);
INSERT INTO public.banks VALUES (2027, 'www.ukb.ch', 'Urner Kantonalbank (URKB)', 'CH', 'CHF', 'Switzerland', 'Swiss Franc', 'Bahnhofstrasse 1 Altdorf6460 Switzerland', NULL, 'http://www.ukb.ch', false);
INSERT INTO public.banks VALUES (2028, 'www.cibc.com', 'CIBC FirstCaribbeanInternational Bank', 'BB', 'BBD', 'Barbados', 'Barbados Dollar', 'Warrens, Barbados', NULL, 'http://www.cibc.com/fcib/', false);
INSERT INTO public.banks VALUES (2029, 'www.kvb.co.in', 'The Karur Vysya Bank Limited', 'IN', 'INR', 'India', 'Indian Rupee', 'Karur, Tamil Nadu', NULL, 'https://www.kvb.co.in/', false);
INSERT INTO public.banks VALUES (2030, 'www.db.com', 'Deutsche Bank', 'IT', 'EUR', 'Italy', 'Euro', '3 Piazza del Calendario, Milan, Italy', NULL, 'https://www.db.com/italia', false);
INSERT INTO public.banks VALUES (2031, 'www.essexsavings.com', 'Essex Savings Bank', 'US', 'USD', 'United States', 'US Dollar', 'Essex, Connecticut', NULL, 'https://www.essexsavings.com/', false);
INSERT INTO public.banks VALUES (2032, 'www.mbca.co.zw', 'Nedbank Zimbabwe Limited', 'ZW', 'ZWL', 'Zimbabwe', 'Zimbabwe Dollar', 'Harare, Zimbabwe', NULL, 'http://www.mbca.co.zw/', false);
INSERT INTO public.banks VALUES (2033, 'www.bdb-bh.com', 'Bahrain Development Bank B.S.C.', 'BH', 'BHD', 'Bahrain', 'Bahraini Dinar', 'Manama, Bahrain', NULL, 'http://www.bdb-bh.com/', false);
INSERT INTO public.banks VALUES (2034, 'www.eskhata.com', 'Bank Eskhata', 'TJ', 'TJS', 'Tajikistan', 'Somoni', 'Khujand, Tajikistan', NULL, 'http://www.eskhata.com/en', false);
INSERT INTO public.banks VALUES (2035, 'www.banqueatlantique.net', 'Atlantic Bank Group', 'TG', 'XOF', 'Togo', 'CFA Franc BCEAO', 'Lome, Togo', NULL, 'http://www.banqueatlantique.net/', false);
INSERT INTO public.banks VALUES (2036, 'www.maib.md', 'Moldova Agroindbank', 'MD', 'MDL', 'Moldova', 'Moldovan Leu', 'Chișinău, Republic of Moldova', NULL, 'http://www.maib.md', false);
INSERT INTO public.banks VALUES (2037, 'www.cbar.az', 'Central Bank of the Republic of AzerbaijanAzərbaycan Respublikasının Mərkəzi Bankı', 'AZ', 'AZN', 'Azerbaijan', 'Azerbaijanian Manat', 'Baku', NULL, 'http://www.cbar.az', false);
INSERT INTO public.banks VALUES (2038, 'solvehungertoday.org', 'Northern Illinois Food Bank', 'US', 'USD', 'United States', 'US Dollar', '273 Dearborn CourtGeneva, IL 60134United States', NULL, 'https://solvehungertoday.org', false);
INSERT INTO public.banks VALUES (2039, 'www.fbtonline.com', 'First Bank & Trust', 'US', 'USD', 'United States', 'US Dollar', 'New Orleans, Louisiana, USA', NULL, 'http://www.fbtonline.com/', false);
INSERT INTO public.banks VALUES (2040, 'www.hokugin.co.jp', 'The Hokuriku Bank, Ltd', 'JP', 'JPY', 'Japan', 'Yen', 'Toyama, Toyama, Japan', NULL, 'http://www.hokugin.co.jp', false);
INSERT INTO public.banks VALUES (2041, 'www.dbe.com.et', 'Development Bank of Ethiopia', 'ET', 'ETB', 'Ethiopia', 'Ethiopian Birr', 'Addis Ababa, Ethiopia', NULL, 'http://www.dbe.com.et/', false);
INSERT INTO public.banks VALUES (2042, 'www.emporiki.gr', 'Commercial Bank of GreeceΕμπορική Τράπεζα της Ελλάδας', 'GR', 'EUR', 'Greece', 'Euro', 'Athens, Greece', NULL, 'http://www.emporiki.gr/', false);
INSERT INTO public.banks VALUES (2043, 'www.cmbc.com.cn', 'China Minsheng Banking Corporation Limited 中国民生银行股份有限公司', 'CN', 'CNY', 'China', 'Yuan Renminbi', 'Beijing, China', NULL, 'http://www.cmbc.com.cn/', false);
INSERT INTO public.banks VALUES (2044, 'www.sbdanbury.com', 'Savings Bank of Danbury', 'US', 'USD', 'United States', 'US Dollar', 'Danbury, Connecticut', NULL, 'https://www.sbdanbury.com/', false);
INSERT INTO public.banks VALUES (2045, 'www.nsb.lk', 'National Savings Bank', 'LK', 'LKR', 'Sri Lanka', 'Sri Lanka Rupee', 'Colombo, Sri Lanka', NULL, 'http://www.nsb.lk', false);
INSERT INTO public.banks VALUES (2046, 'www.us.hsbc.com', 'HSBC Bank USA, N.A. HSBC USA Inc.', 'US', 'USD', 'United States', 'US Dollar', '452 Fifth Avenue, New York City, New York, USA', NULL, 'http://www.us.hsbc.com/', false);
INSERT INTO public.banks VALUES (2047, 'sbsu.com', 'State Bank of Southern Utah', 'US', 'USD', 'United States', 'US Dollar', 'Cedar City, Utah, United States', NULL, 'https://sbsu.com', false);
INSERT INTO public.banks VALUES (2048, 'www.safra.com', 'Safra National Bank of New York', 'US', 'USD', 'United States', 'US Dollar', 'New York City, United States', NULL, 'http://www.safra.com', false);
INSERT INTO public.banks VALUES (2049, 'www.tnbl.co.ke', 'Transnational Bank', 'KE', 'KES', 'Kenya', 'Kenyan Shilling', 'Nairobi, Kenya', NULL, 'http://www.tnbl.co.ke/', false);
INSERT INTO public.banks VALUES (2050, 'en.qdccb.com', 'Bank of Qingdao Co. Ltd', 'CN', 'CNY', 'China', 'Yuan Renminbi', 'Qingdao, China', NULL, 'http://en.qdccb.com/index.shtml', false);
INSERT INTO public.banks VALUES (2051, 'www.banquecentrale.gov.sy', 'Central Bank of SyriaMasrif Suriat Almarkazi', 'SY', 'SYP', 'Syria', 'Syrian Pound', 'Damascus, Syria', NULL, 'http://www.banquecentrale.gov.sy/', false);
INSERT INTO public.banks VALUES (2052, 'www.bsp.com.pg', 'Bank South Pacific Limited', 'PG', 'PGK', 'Papua New Guinea', 'Kina', 'Port Moresby, Papua New Guinea', NULL, 'http://www.bsp.com.pg', false);
INSERT INTO public.banks VALUES (2053, 'www.bostonfed.org', 'Federal Reserve Bank of Boston', 'US', 'USD', 'United States', 'US Dollar', 'Federal Reserve Bank Building600 Atlantic Avenue Boston , Massachusetts, USA', NULL, 'https://www.bostonfed.org/', false);
INSERT INTO public.banks VALUES (2054, 'www.jkb.com', 'Jordan Kuwait Bank', 'JO', 'JOD', 'Jordan', 'Jordanian Dinar', 'Amman, Jordan', NULL, 'http://www.jkb.com/', false);
INSERT INTO public.banks VALUES (2055, 'www.onlinecub.net', 'City Union Bank Limited', 'IN', 'INR', 'India', 'Indian Rupee', 'Kumbakonam, Tamil Nadu, India', NULL, 'https://www.onlinecub.net/', false);
INSERT INTO public.banks VALUES (2056, 'www.westpac.com.au', 'Westpac Banking Corporation', 'AU', 'AUD', 'Australia', 'Australian Dollar', 'Westpac Place, Sydney', NULL, 'http://www.westpac.com.au/', false);
INSERT INTO public.banks VALUES (2057, 'www.belfius.com', 'Belfius Bank and Insurance', 'BE', 'EUR', 'Belgium', 'Euro', 'Place Charles Rogier 11, 1210 Saint-Josse-ten-Noode, Belgium', NULL, 'http://www.belfius.com/', false);
INSERT INTO public.banks VALUES (2058, 'www.dallasfed.org', 'Federal Reserve Bank of Dallas', 'US', 'USD', 'United States', 'US Dollar', '2200 N. Pearl St. Dallas, Texas, USA', NULL, 'https://www.dallasfed.org/', false);
INSERT INTO public.banks VALUES (2059, 'www.onebank.com.bd', 'ONE Bank Limited', 'BD', 'BDT', 'Bangladesh', 'Taka', 'Dhaka, Bangladesh', NULL, 'http://www.onebank.com.bd/', false);
INSERT INTO public.banks VALUES (2060, 'www.bde.es', 'Bank of SpainBanco de España', 'ES', 'EUR', 'Spain', 'Euro', 'Bank of Spain Building, Calle de Alcalá, Madrid', NULL, 'http://www.bde.es', false);
INSERT INTO public.banks VALUES (2061, 'www.kfw.de', 'KfW', 'DE', 'EUR', 'Germany', 'Euro', 'Frankfurt, Germany', NULL, 'https://www.kfw.de/', false);
INSERT INTO public.banks VALUES (2062, 'www.fnbna.com', 'First National Bank of North Arkansas', 'US', 'USD', 'United States', 'US Dollar', '305-307 Public Square, Berryville, 72616 Arkansas, United States', NULL, 'http://www.fnbna.com', false);
INSERT INTO public.banks VALUES (2063, 'www.dos.gov.bd', 'Bank and Financial Institutions Division', 'BD', 'BDT', 'Bangladesh', 'Taka', 'Dhaka, Bangladesh', NULL, 'https://www.dos.gov.bd', false);
INSERT INTO public.banks VALUES (2064, 'www.zm.barclaysafrica.com', 'Barclays Bank of Zambia', 'ZM', 'ZMW', 'Zambia', 'Zambian Kwacha', 'Lusaka, Zambia', NULL, 'https://www.zm.barclaysafrica.com/', false);
INSERT INTO public.banks VALUES (2065, 'www.adb.org', 'Asian Development Bank', 'PH', 'PHP', 'Philippines', 'Philippine Peso', 'Ortigas CenterMandaluyong, Metro Manila, Philippines', NULL, 'http://www.adb.org', false);
INSERT INTO public.banks VALUES (2066, 'www.bbr.bg', 'Bulgarian Development Bank', 'BG', 'BGN', 'Bulgaria', 'Bulgarian Lev', 'Sofia, Bulgaria', NULL, 'http://www.bbr.bg/', false);
INSERT INTO public.banks VALUES (2067, 'bankofjordan.com', 'Bank of Jordan', 'JO', 'JOD', 'Jordan', 'Jordanian Dinar', 'Amman, Jordan', NULL, 'http://bankofjordan.com/', false);
INSERT INTO public.banks VALUES (2068, 'www.bdeac.org', 'Development Bank of the Central African States', 'CG', 'XAF', 'Republic of the Congo', 'CFA Franc BEAC', 'Brazzaville, Republic of the Congo', NULL, 'https://www.bdeac.org', false);
INSERT INTO public.banks VALUES (2070, 'www.goldenbank-na.com', 'Golden Bank, N.A.', 'US', 'USD', 'United States', 'US Dollar', 'Houston, Texas', NULL, 'https://www.goldenbank-na.com/', false);
INSERT INTO public.banks VALUES (2071, 'bankaust.com.au', 'Bank Australia', 'AU', 'AUD', 'Australia', 'Australian Dollar', 'Kew, Victoria, Australia', NULL, 'http://bankaust.com.au/', false);
INSERT INTO public.banks VALUES (2072, 'www.erstebank.rs', 'Erste Bank', 'RS', 'RSD', 'Serbia', 'Serbian Dinar', 'Novi Sad, Serbia', NULL, 'http://www.erstebank.rs', false);
INSERT INTO public.banks VALUES (2073, 'www.judo.bank', 'Judo Bank', 'AU', 'AUD', 'Australia', 'Australian Dollar', 'Melbourne, Australia', NULL, 'https://www.judo.bank', false);
INSERT INTO public.banks VALUES (2074, 'www.merkur-bank.de', 'Merkur Bank KGaA', 'DE', 'EUR', 'Germany', 'Euro', 'Munich', NULL, 'https://www.merkur-bank.de/', false);
INSERT INTO public.banks VALUES (2075, 'www.stanbicbank.co.ug', 'Stanbic Bank Uganda Limited', 'UG', 'UGX', 'Uganda', 'Uganda Shilling', 'Kampala, Uganda', NULL, 'http://www.stanbicbank.co.ug', false);
INSERT INTO public.banks VALUES (2076, 'www.inecobank.am', 'InecoBank CJSC', 'AM', 'AMD', 'Armenia', 'Armenian Dram', 'Yerevan, Armenia', NULL, 'https://www.inecobank.am', false);
INSERT INTO public.banks VALUES (2077, 'www.dartbank.com', 'The Dart Bank', 'US', 'USD', 'United States', 'US Dollar', 'Mason, Michigan', NULL, 'https://www.dartbank.com/', false);
INSERT INTO public.banks VALUES (2078, 'www.bankofsouthsudan.org', 'Bank of South Sudan', 'SS', 'SSP', 'South Sudan', 'South Sudanese Pound', 'Juba, South Sudan', NULL, 'http://www.bankofsouthsudan.org', false);
INSERT INTO public.banks VALUES (2079, 'www.paducahbank.com', 'The Paducah Bank and Trust Company', 'US', 'USD', 'United States', 'US Dollar', 'Paducah, Kentucky, United States', NULL, 'http://www.paducahbank.com', false);
INSERT INTO public.banks VALUES (2080, 'www.ndbbank.com', 'National Development Bank PLC', 'LK', 'LKR', 'Sri Lanka', 'Sri Lanka Rupee', 'Colombo 02, Sri Lanka', NULL, 'https://www.ndbbank.com', false);
INSERT INTO public.banks VALUES (2081, 'www.standardbankbd.com', 'Standard Bank Limited Bangladesh', 'BD', 'BDT', 'Bangladesh', 'Taka', 'Dhaka, Bangladesh', NULL, 'http://www.standardbankbd.com/', false);
INSERT INTO public.banks VALUES (2082, 'www.alpenbank.com', 'AlpenBank', 'AT', 'EUR', 'Austria', 'Euro', 'Innsbruck, Austria', NULL, 'http://www.alpenbank.com/', false);
INSERT INTO public.banks VALUES (2083, 'www.bankofcanada.ca', 'Bank of CanadaBanque du Canada', 'CA', 'CAD', 'Canada', 'Canadian Dollar', 'Ottawa, Ontario, Canada', NULL, 'http://www.bankofcanada.ca', false);
INSERT INTO public.banks VALUES (2084, 'www.africanbank.co.za', 'African Bank', 'ZA', 'ZAR', 'South Africa', 'Rand', '59 16th Road, Midrand Johannesburg, South Africa', NULL, 'http://www.africanbank.co.za/', false);
INSERT INTO public.banks VALUES (2085, 'www.shimantobank.com', 'Shimanto Bank Limited', 'BD', 'BDT', 'Bangladesh', 'Taka', 'Dhaka, Bangladesh', NULL, 'http://www.shimantobank.com/', false);
INSERT INTO public.banks VALUES (2086, 'www.hoernerbank.de', 'Hoerner Bank', 'DE', 'EUR', 'Germany', 'Euro', 'Oststraße 77, 74072 Heilbronn, Germany', NULL, 'https://www.hoernerbank.de', false);
INSERT INTO public.banks VALUES (2145, 'www.mkbbank.hu', 'MKB Bank', 'HU', 'HUF', 'Hungary', 'Forint', 'Budapest, Hungary', NULL, 'http://www.mkbbank.hu/', false);
INSERT INTO public.banks VALUES (2087, 'www.1stvalleybank.com', '1st Valley Bank', 'PH', 'PHP', 'Philippines', 'Philippine Peso', 'Baroy, Lanao del Norte, Philippines', NULL, 'http://www.1stvalleybank.com', false);
INSERT INTO public.banks VALUES (2088, 'www.edekabank.de', 'Edekabank AG', 'DE', 'EUR', 'Germany', 'Euro', 'Hamburg, Germany', NULL, 'http://www.edekabank.de/', false);
INSERT INTO public.banks VALUES (2089, 'dzbank.com', 'DZ Bank AG', 'DE', 'EUR', 'Germany', 'Euro', 'Frankfurt, Germany', NULL, 'http://dzbank.com', false);
INSERT INTO public.banks VALUES (2090, 'pnbank.com.au', 'P&N Bank', 'AU', 'AUD', 'Australia', 'Australian Dollar', 'Perth, Australia', NULL, 'http://pnbank.com.au', false);
INSERT INTO public.banks VALUES (2091, 'www.ameriabank.am', 'Ameriabank', 'AM', 'AMD', 'Armenia', 'Armenian Dram', 'Yerevan, Armenia', NULL, 'http://www.ameriabank.am', false);
INSERT INTO public.banks VALUES (2092, 'www.unionbankng.com', 'Union Bank of Nigeria', 'NG', 'NGN', 'Nigeria', 'Naira', '36 Marina, Lagos Island, Lagos, Lagos State, Nigeria', NULL, 'http://www.unionbankng.com', false);
INSERT INTO public.banks VALUES (2093, 'www.eximbank-km.com', 'Exim Bank (Comoros)', 'KM', 'KMF', 'Comoros', 'Comoro Franc', 'Moroni, Comoros', NULL, 'https://www.eximbank-km.com/', false);
INSERT INTO public.banks VALUES (2094, 'www.dekabank.az', 'DekaBank', 'AZ', 'AZN', 'Azerbaijan', 'Azerbaijanian Manat', 'Baku, Azerbaijan', NULL, 'http://www.dekabank.az/?/', false);
INSERT INTO public.banks VALUES (2095, 'www.alrayanbank.co.uk', 'Al Rayan Bank PLC', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Birmingham and London, UK', NULL, 'http://www.alrayanbank.co.uk', false);
INSERT INTO public.banks VALUES (2096, 'www.sberbank.at', 'Sberbank Europe Group', 'AT', 'EUR', 'Austria', 'Euro', 'Vienna, Austria', NULL, 'http://www.sberbank.at', false);
INSERT INTO public.banks VALUES (2097, 'www.hellobank.com', 'Hello bank!', 'FR', 'EUR', 'France', 'Euro', 'Paris', NULL, 'http://www.hellobank.com/', false);
INSERT INTO public.banks VALUES (2098, 'www.sabanknote.co.za', 'South African Bank Note Company', 'ZA', 'ZAR', 'South Africa', 'Rand', 'Pretoria, Gauteng', NULL, 'http://www.sabanknote.co.za', false);
INSERT INTO public.banks VALUES (2099, 'www.nrbbankbd.com', 'NRB Bank', 'BD', 'BDT', 'Bangladesh', 'Taka', 'Dhaka, Bangladesh', NULL, 'http://www.nrbbankbd.com', false);
INSERT INTO public.banks VALUES (2100, 'newbridgebank.com', 'NewBridge Bank', 'US', 'USD', 'United States', 'US Dollar', 'Greensboro, North Carolina, USA', NULL, 'http://newbridgebank.com', false);
INSERT INTO public.banks VALUES (2101, 'www.bankofscotland.co.uk', 'Bank of Scotland plcBank o ScotlandBanca na h-Alba', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'The Mound, Edinburgh, Scotland, United Kingdom', NULL, 'http://www.bankofscotland.co.uk', false);
INSERT INTO public.banks VALUES (2102, 'www.volksbank-bi-gt.de', 'Volksbank Bielefeld-Gütersloh eG', 'DE', 'EUR', 'Germany', 'Euro', 'Gütersloh, Germany[1]', NULL, 'http://www.volksbank-bi-gt.de/', false);
INSERT INTO public.banks VALUES (2103, 'sberbank-cib.ru', 'Sberbank CIB', 'RU', 'RUB', 'Russia', 'Russian Ruble', 'Moscow, Russia', NULL, 'http://sberbank-cib.ru/index_eng.jsp', false);
INSERT INTO public.banks VALUES (2104, 'primebank.com.bd', 'Prime Bank', 'BD', 'BDT', 'Bangladesh', 'Taka', 'Dhaka, Bangladesh', NULL, 'http://primebank.com.bd', false);
INSERT INTO public.banks VALUES (2105, 'bankacredins.com', 'Credins Bank', 'AL', 'ALL', 'Albania', 'Lek', 'Tirana', NULL, 'http://bankacredins.com/', false);
INSERT INTO public.banks VALUES (2107, 'www.ingbank.pl', 'ING Bank Śląski SA', 'PL', 'PLN', 'Poland', 'Zloty', 'Katowice, Poland', NULL, 'http://www.ingbank.pl', false);
INSERT INTO public.banks VALUES (2108, 'www.michinokubank.co.jp', 'Michinoku Bank', 'JP', 'JPY', 'Japan', 'Yen', 'Aomori, Japan', NULL, 'http://www.michinokubank.co.jp/', false);
INSERT INTO public.banks VALUES (2109, 'www.cbbank.com.mm', 'CB Bank', 'MM', 'MMK', 'Myanmar', 'Kyat', 'Yangon, Myanmar', NULL, 'http://www.cbbank.com.mm', false);
INSERT INTO public.banks VALUES (2110, 'www.ffaprivatebank.com', 'FFA Private Bank', 'LB', 'LBP', 'Lebanon', 'Lebanese Pound', 'Beirut, Lebanon', NULL, 'http://www.ffaprivatebank.com', false);
INSERT INTO public.banks VALUES (2111, 'www.kantonalbank.ch', 'Association of Swiss Cantonal Banks', 'CH', 'CHF', 'Switzerland', 'Swiss Franc', 'Basel, Switzerland', NULL, 'https://www.kantonalbank.ch', false);
INSERT INTO public.banks VALUES (2112, 'www.texasfirst.bank', 'Texas First Bank', 'US', 'USD', 'United States', 'US Dollar', 'Texas City, Texas, USA', NULL, 'https://www.texasfirst.bank', false);
INSERT INTO public.banks VALUES (2113, 'www.meezanbank.com', 'Meezan Bank Limited', 'PK', 'PKR', 'Pakistan', 'Pakistan Rupee', 'Karachi, Pakistan', NULL, 'http://www.meezanbank.com/', false);
INSERT INTO public.banks VALUES (2114, 'www.targobank.de', 'Targobank AG', 'DE', 'EUR', 'Germany', 'Euro', 'Düsseldorf', NULL, 'http://www.targobank.de/', false);
INSERT INTO public.banks VALUES (2115, 'www.bankotsar.co.il', 'Bank Otsar Ha-Hayal', 'IL', 'ILS', 'Israel', 'New Israeli Sheqel', 'Ramat Gan ', NULL, 'http://www.bankotsar.co.il', false);
INSERT INTO public.banks VALUES (2116, 'www.manulifebank.ca', 'Manulife Bank of CanadaBanque Manuvie du Canada', 'CA', 'CAD', 'Canada', 'Canadian Dollar', 'Waterloo, Ontario, Canada', NULL, 'https://www.manulifebank.ca', false);
INSERT INTO public.banks VALUES (2117, 'www.enterprisebankfl.com', 'Enterprise Bank', 'US', 'USD', 'United States', 'US Dollar', 'North Palm Beach, Florida, USA', NULL, 'http://www.enterprisebankfl.com/', false);
INSERT INTO public.banks VALUES (2118, 'www.qnbbank.com', 'QNB Bank', 'US', 'USD', 'United States', 'US Dollar', 'Quakertown, Pennsylvania', NULL, 'http://www.qnbbank.com/', false);
INSERT INTO public.banks VALUES (2119, 'www.hindujabank.com', 'Hinduja Bank (Switzerland) Ltd', 'CH', 'CHF', 'Switzerland', 'Swiss Franc', 'Geneva, Switzerland', NULL, 'http://www.hindujabank.com/', false);
INSERT INTO public.banks VALUES (2120, 'www.splitskabanka.hr', 'Splitska banka d.d.', 'HR', 'HRK', 'Croatia', 'Kuna', 'Split, Croatia', NULL, 'http://www.splitskabanka.hr/', false);
INSERT INTO public.banks VALUES (2121, 'www.riksbank.se', 'Sveriges Riksbank', 'SE', 'SEK', 'Sweden', 'Swedish Krona', 'Brunkebergstorg 11103 37 Stockholm Sweden', NULL, 'http://www.riksbank.se', false);
INSERT INTO public.banks VALUES (2122, 'www.salaamsombank.com', 'Salaam Somali Bank', 'SO', 'SOS', 'Somalia', 'Somali Shilling', 'Mogadishu, Somalia', NULL, 'http://www.salaamsombank.com', false);
INSERT INTO public.banks VALUES (2287, 'www.abbank.rw', 'AB Bank Rwanda', 'RW', 'RWF', 'Rwanda', 'Rwanda Franc', 'Kigali, Rwanda', NULL, 'http://www.abbank.rw/', false);
INSERT INTO public.banks VALUES (2123, 'www.bank-of-tianjin.com', 'Bank of Tianjin Co. Ltd', 'CN', 'CNY', 'China', 'Yuan Renminbi', 'Tianjin, China', NULL, 'http://www.bank-of-tianjin.com', false);
INSERT INTO public.banks VALUES (2124, 'www.riyadbank.com', 'Riyad Bank', 'SA', 'SAR', 'Saudi Arabia', 'Saudi Riyal', 'Riyadh, Saudi Arabia[1]', NULL, 'http://www.riyadbank.com', false);
INSERT INTO public.banks VALUES (2125, 'www.aekbank.ch', 'AEK Bank 1826', 'CH', 'CHF', 'Switzerland', 'Swiss Franc', 'Hofstettenstrasse 2, CH-3602 Thun, Switzerland', NULL, 'https://www.aekbank.ch', false);
INSERT INTO public.banks VALUES (2126, 'www.alawwalbank.com', 'Saudi Hollandi Bank (Alawwal Bank)', 'SA', 'SAR', 'Saudi Arabia', 'Saudi Riyal', 'Riyadh, Saudi Arabia', NULL, 'https://www.alawwalbank.com/en/personal', false);
INSERT INTO public.banks VALUES (2127, 'www.dsbbank.nl', 'DSB Bank NV', 'NL', 'EUR', 'Netherlands', 'Euro', 'Wognum, Netherlands', NULL, 'http://www.dsbbank.nl', false);
INSERT INTO public.banks VALUES (2128, 'www.sbmbank.co.ke', 'SBM Bank Kenya Limited', 'KE', 'KES', 'Kenya', 'Kenyan Shilling', 'Nairobi, Kenya', NULL, 'http://www.sbmbank.co.ke', false);
INSERT INTO public.banks VALUES (2129, 'www.denizbank.com', 'DenizBank A.Ş.', 'TR', 'TRY', 'Turkey', 'Turkish Lira', 'Şişli, Istanbul, Turkey', NULL, 'http://www.denizbank.com/', false);
INSERT INTO public.banks VALUES (2130, 'www.accessbank.az', 'AccessBank', 'AZ', 'AZN', 'Azerbaijan', 'Azerbaijanian Manat', 'Baku, Azerbaijan', NULL, 'http://www.accessbank.az/en', false);
INSERT INTO public.banks VALUES (2131, 'www.apbank.jp', 'AP Bank', 'JP', 'JPY', 'Japan', 'Yen', 'Tokyo, Japan', NULL, 'http://www.apbank.jp', false);
INSERT INTO public.banks VALUES (2132, 'www.cairointernationalbank.co.ug', 'Cairo International Bank Limited', 'UG', 'UGX', 'Uganda', 'Uganda Shilling', 'Plot 30 Kampala RoadKampala, Uganda', NULL, 'http://www.cairointernationalbank.co.ug', false);
INSERT INTO public.banks VALUES (2133, 'www.crossriverbank.com', 'Cross River Bank', 'JE', 'GBP', 'Jersey', 'Pound Sterling', 'Fort Lee, New Jersey, U.S.', NULL, 'http://www.crossriverbank.com', false);
INSERT INTO public.banks VALUES (2134, 'www.thatsmybank.com', 'First Northern Bank', 'US', 'USD', 'United States', 'US Dollar', 'Dixon, California', NULL, 'http://www.thatsmybank.com/', false);
INSERT INTO public.banks VALUES (2135, 'halkbank.rs', 'Halkbank', 'RS', 'RSD', 'Serbia', 'Serbian Dinar', 'Belgrade, Serbia', NULL, 'http://halkbank.rs', false);
INSERT INTO public.banks VALUES (2136, 'www.aloqabank.uz', 'Aloqabank Алокабанк', 'UZ', 'UZS', 'Uzbekistan', 'Uzbekistan Sum', 'Tashkent, Uzbekistan', NULL, 'http://www.aloqabank.uz', false);
INSERT INTO public.banks VALUES (2137, 'www.kingdom.bank', 'Kingdom Bank Limited', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Ruddington, Nottingham, United Kingdom', NULL, 'https://www.kingdom.bank', false);
INSERT INTO public.banks VALUES (2138, 'www.husbanken.no', 'Norwegian State Housing Bank', 'NO', 'NOK', 'Norway', 'Norwegian Krone', 'Drammen, Norway', NULL, 'http://www.husbanken.no', false);
INSERT INTO public.banks VALUES (2139, 'www.natbank.co.mw', 'National Bank of Malawi', 'MW', 'MWK', 'Malawi', 'Kwacha', 'Blantyre, Malawi', NULL, 'http://www.natbank.co.mw/', false);
INSERT INTO public.banks VALUES (2140, 'www.aliorbank.pl', 'Alior Bank SA', 'PL', 'PLN', 'Poland', 'Zloty', 'Warsaw, Poland', NULL, 'http://www.aliorbank.pl', false);
INSERT INTO public.banks VALUES (2141, 'www.atbank.eu', 'Amsterdam Trade Bank N.V. (ATB)', 'NL', 'EUR', 'Netherlands', 'Euro', 'Amsterdam, Netherlands', NULL, 'http://www.atbank.eu/', false);
INSERT INTO public.banks VALUES (2142, 'jyskebank.com', 'Jyske Bank A/S', 'DK', 'DKK', 'Denmark', 'Danish Krone', 'Silkeborg, Denmark', NULL, 'http://jyskebank.com/en', false);
INSERT INTO public.banks VALUES (2143, 'fsbank.com', 'First Security Bank', 'US', 'USD', 'United States', 'US Dollar', 'Searcy, Arkansas, USA', NULL, 'http://fsbank.com', false);
INSERT INTO public.banks VALUES (2144, 'www.psbank.ru', 'Promsvyazbank', 'RU', 'RUB', 'Russia', 'Russian Ruble', 'Moscow , Russia ', NULL, 'http://www.psbank.ru/', false);
INSERT INTO public.banks VALUES (2146, 'www.kredobank.com.ua', 'PJSC "KredoBank"', 'UA', 'UAH', 'Ukraine', 'Hryvnia', 'Lviv, Ukraine', NULL, 'http://www.kredobank.com.ua/', false);
INSERT INTO public.banks VALUES (2147, 'amicusbank.ca', 'Amicus Bank', 'CA', 'CAD', 'Canada', 'Canadian Dollar', 'Toronto, Ontario', NULL, 'http://amicusbank.ca', false);
INSERT INTO public.banks VALUES (2148, 'www.trobank.com', 'Tropical Bank', 'UG', 'UGX', 'Uganda', 'Uganda Shilling', 'Kampala, Uganda', NULL, 'http://www.trobank.com/', false);
INSERT INTO public.banks VALUES (2149, 'www.bankwest.com.au', 'Bankwest', 'AU', 'AUD', 'Australia', 'Australian Dollar', 'Bankwest Place, Perth, Western Australia[1][2]', NULL, 'http://www.bankwest.com.au/', false);
INSERT INTO public.banks VALUES (2150, 'www.afrasiabank.com', 'AfrAsia Bank Limited', 'MU', 'MUR', 'Mauritius', 'Mauritius Rupee', 'Bowen Square10 Dr. Ferriere Street Port Louis, Mauritius', NULL, 'http://www.afrasiabank.com/en', false);
INSERT INTO public.banks VALUES (2151, 'www.overseasfilipinobank.gov.ph', 'Overseas Filipino Bank', 'PH', 'PHP', 'Philippines', 'Philippine Peso', 'Manila, Philippines', NULL, 'http://www.overseasfilipinobank.gov.ph', false);
INSERT INTO public.banks VALUES (2152, 'royalbusinessbankusa.com', 'Tomato Bank', 'US', 'USD', 'United States', 'US Dollar', 'Los Angeles County, California', NULL, 'https://royalbusinessbankusa.com', false);
INSERT INTO public.banks VALUES (2153, 'rasheedbank.gov.iq', 'Rasheed Bank', 'IQ', 'IQD', 'Iraq', 'Iraqi Dinar', 'Baghdad, Iraq', NULL, 'http://rasheedbank.gov.iq', false);
INSERT INTO public.banks VALUES (2154, 'www.tzbank.com', 'Bank of Taizhou 台州银行', 'CN', 'CNY', 'China', 'Yuan Renminbi', 'Taizhou, Zhejiang, China', NULL, 'http://www.tzbank.com', false);
INSERT INTO public.banks VALUES (2155, 'www.czbank.com', 'China Zheshang Bank', 'CN', 'CNY', 'China', 'Yuan Renminbi', 'Hangzhou, Zhejiang Province, China', NULL, 'http://www.czbank.com/', false);
INSERT INTO public.banks VALUES (2156, 'www.oakwoodbank.com', 'Oakwood Bank', 'US', 'USD', 'United States', 'US Dollar', 'Oakwood, Texas', NULL, 'https://www.oakwoodbank.com/', false);
INSERT INTO public.banks VALUES (2157, 'www.refah-bank.ir', 'Refah Bank', 'IR', 'IRR', 'Iran', 'Iranian Rial', 'Tehran, Iran', NULL, 'http://www.refah-bank.ir/', false);
INSERT INTO public.banks VALUES (2158, 'www.raiffeisenbank.rs', 'Raiffeisen banka Beograd', 'RS', 'RSD', 'Serbia', 'Serbian Dinar', 'Belgrade, Serbia', NULL, 'http://www.raiffeisenbank.rs', false);
INSERT INTO public.banks VALUES (2159, 'www.apsbank.com.mt', 'APS Bank', 'MT', 'EUR', 'Malta', 'Euro', 'Birkirkara, Malta', NULL, 'https://www.apsbank.com.mt/', false);
INSERT INTO public.banks VALUES (2160, 'www.orient-bank.com', 'Orient Bank', 'UG', 'UGX', 'Uganda', 'Uganda Shilling', 'Kampala, Uganda', NULL, 'http://www.orient-bank.com/', false);
INSERT INTO public.banks VALUES (2161, 'www.citibank.co.kr', 'Citibank Korea', 'KR', 'KRW', 'South Korea', 'South Korean Won', 'Seoul, South Korea', NULL, 'http://www.citibank.co.kr/', false);
INSERT INTO public.banks VALUES (2162, 'www.bankofhollandny.com', 'Bank of Holland', 'US', 'USD', 'United States', 'US Dollar', 'Holland, New York, United States', NULL, 'http://www.bankofhollandny.com/', false);
INSERT INTO public.banks VALUES (2163, 'en.bank-day.ir', 'Day Bank', 'IR', 'IRR', 'Iran', 'Iranian Rial', 'Tehran, Iran', NULL, 'http://en.bank-day.ir/', false);
INSERT INTO public.banks VALUES (2164, 'www.rblbank.com', 'RBL Bank', 'IN', 'INR', 'India', 'Indian Rupee', 'Mumbai, Maharashtra, India', NULL, 'https://www.rblbank.com/', false);
INSERT INTO public.banks VALUES (2165, 'www.bankrate.com', 'Bankrate, LLC', 'US', 'USD', 'United States', 'US Dollar', 'New York City, New York, U.S.', NULL, 'http://www.bankrate.com', false);
INSERT INTO public.banks VALUES (2166, 'www.sparebanken-hedmark.no', 'Sparebanken Hedmark', 'NO', 'NOK', 'Norway', 'Norwegian Krone', 'Hamar, Norway', NULL, 'http://www.sparebanken-hedmark.no', false);
INSERT INTO public.banks VALUES (2167, 'www.dskbank.bg', 'DSK Bank', 'BG', 'BGN', 'Bulgaria', 'Bulgarian Lev', 'Sofia, Bulgaria', NULL, 'http://www.dskbank.bg', false);
INSERT INTO public.banks VALUES (2168, 'www.keytradebank.be', 'Keytrade Bank', 'BE', 'EUR', 'Belgium', 'Euro', 'Brussels, Belgium', NULL, 'https://www.keytradebank.be/', false);
INSERT INTO public.banks VALUES (2169, 'www.handelsbanken.com', 'Svenska Handelsbanken AB', 'SE', 'SEK', 'Sweden', 'Swedish Krona', 'Stockholm, Sweden', NULL, 'http://www.handelsbanken.com/', false);
INSERT INTO public.banks VALUES (2170, 'premierbankltd.com', 'Premier Bank Limited', 'BD', 'BDT', 'Bangladesh', 'Taka', 'Dhaka, Bangladesh', NULL, 'http://premierbankltd.com/pbl', false);
INSERT INTO public.banks VALUES (2171, 'sbacbank.com', 'South Bangla Agriculture and Commerce Bank Limited', 'BD', 'BDT', 'Bangladesh', 'Taka', 'Dhaka, Bangladesh', NULL, 'http://sbacbank.com', false);
INSERT INTO public.banks VALUES (2172, 'www.equitablebank.ca', 'Equitable Bank', 'CA', 'CAD', 'Canada', 'Canadian Dollar', 'Canada ', NULL, 'https://www.equitablebank.ca/', false);
INSERT INTO public.banks VALUES (2173, 'www.gulfafricanbank.com', 'Gulf African Bank', 'KE', 'KES', 'Kenya', 'Kenyan Shilling', 'Nairobi, Kenya', NULL, 'http://www.gulfafricanbank.com/', false);
INSERT INTO public.banks VALUES (2174, 'www.citibank.ru', 'Citibank Russia', 'RU', 'RUB', 'Russia', 'Russian Ruble', 'Moscow, Russia', NULL, 'http://www.citibank.ru', false);
INSERT INTO public.banks VALUES (2175, 'www.lebaneseswissbank.com', 'Lebanese Swiss Bank', 'LB', 'LBP', 'Lebanon', 'Lebanese Pound', 'Emile Edde Street,Hamra, Beirut, Lebanon Swiftcode:LEBSLBBX', NULL, 'http://www.lebaneseswissbank.com', false);
INSERT INTO public.banks VALUES (2176, 'www.maybank.com', 'Malayan Banking Berhad', 'MY', 'MYR', 'Malaysia', 'Malaysian Ringgit', 'Menara MaybankKuala Lumpur, Malaysia', NULL, 'http://www.maybank.com', false);
INSERT INTO public.banks VALUES (2177, 'www.ideabank.pl', 'Idea Bank', 'PL', 'PLN', 'Poland', 'Zloty', 'ul. Przyokopowa 33, Warsaw, Poland', NULL, 'https://www.ideabank.pl/', false);
INSERT INTO public.banks VALUES (2797, 'www.ppcb.com.kh', 'PPCBank', 'KH', 'KHR', 'Cambodia', 'Riel', 'Phnom Penh, Cambodia', NULL, 'http://www.ppcb.com.kh', false);
INSERT INTO public.banks VALUES (2178, 'www.caixabank.com', 'CaixaBank, S.A.', 'ES', 'EUR', 'Spain', 'Euro', 'Valencia, Spain', NULL, 'http://www.caixabank.com/index_en.html', false);
INSERT INTO public.banks VALUES (2179, 'www.bankmuscat.com', 'Bank Muscat', 'OM', 'OMR', 'Oman', 'Rial Omani', 'Muscat, Oman', NULL, 'http://www.bankmuscat.com/', false);
INSERT INTO public.banks VALUES (2180, 'www.siddharthabank.com', 'Siddhartha Bank', 'NP', 'NPR', 'Nepal', 'Nepalese Rupee', 'Hattisar, Kathmandu', NULL, 'http://www.siddharthabank.com', false);
INSERT INTO public.banks VALUES (2181, 'www.vikingbank.ru', 'Viking Bank', 'RU', 'RUB', 'Russia', 'Russian Ruble', 'Saint Petersburg, Russia', NULL, 'http://www.vikingbank.ru', false);
INSERT INTO public.banks VALUES (2182, 'www.thebanker.com', 'The Banker', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', '1 Southwark Bridge London SE1 9HL England', NULL, 'http://www.thebanker.com/', false);
INSERT INTO public.banks VALUES (2183, 'www.texasstatebank.net', 'Texas State Bank', 'US', 'USD', 'United States', 'US Dollar', 'Joaquin, Texas', NULL, 'http://www.texasstatebank.net', false);
INSERT INTO public.banks VALUES (2184, 'www.hnbbank.bank', 'The Honesdale National Bank', 'US', 'USD', 'United States', 'US Dollar', 'Honesdale, Pennsylvania', NULL, 'https://www.hnbbank.bank/', false);
INSERT INTO public.banks VALUES (2185, 'www.bidvestbank.co.za', 'Bidvest Bank Limited', 'ZA', 'ZAR', 'South Africa', 'Rand', 'Braamfontein, Johannesburg, South Africa', NULL, 'http://www.bidvestbank.co.za/', false);
INSERT INTO public.banks VALUES (2187, 'www.tatrabanka.sk', 'Tatra banka, a.s.', 'SK', 'EUR', 'Slovakia', 'Euro', 'Bratislava, Slovakia', NULL, 'http://www.tatrabanka.sk', false);
INSERT INTO public.banks VALUES (2188, 'banknorwegian.no', 'Bank Norwegian AS', 'NO', 'NOK', 'Norway', 'Norwegian Krone', 'Fornebu, Norway', NULL, 'http://banknorwegian.no', false);
INSERT INTO public.banks VALUES (2189, 'www.patriabank.ro', 'Patria Bank S.A.', 'RO', 'RON', 'Romania', 'Romanian Leu', 'Bucharest, Romania', NULL, 'https://www.patriabank.ro/', false);
INSERT INTO public.banks VALUES (2190, 'antwerpdiamondbank.com', 'Antwerp Diamond Bank', 'BE', 'EUR', 'Belgium', 'Euro', 'Antwerp, Belgium', NULL, 'http://antwerpdiamondbank.com', false);
INSERT INTO public.banks VALUES (2191, 'www.kyotobank.co.jp', 'Bank of Kyoto, Ltd.', 'JP', 'JPY', 'Japan', 'Yen', 'Shimogyo-ku, Kyoto, Japan', NULL, 'http://www.kyotobank.co.jp/', false);
INSERT INTO public.banks VALUES (2192, 'www.unicreditbulbank.bg', 'UniCredit Bulbank', 'BG', 'BGN', 'Bulgaria', 'Bulgarian Lev', 'Sofia, Bulgaria', NULL, 'http://www.unicreditbulbank.bg', false);
INSERT INTO public.banks VALUES (2193, 'www.meghnabank.com.bd', 'Meghna Bank Limited', 'BD', 'BDT', 'Bangladesh', 'Taka', 'Dhaka, Bangladesh', NULL, 'http://www.meghnabank.com.bd/mbl/index.php/', false);
INSERT INTO public.banks VALUES (2194, 'diamondbank.com', 'Diamond Bank Plc.', 'NG', 'NGN', 'Nigeria', 'Naira', 'Victoria Island, Lagos, Lagos State, Nigeria[2]', NULL, 'http://diamondbank.com', false);
INSERT INTO public.banks VALUES (2195, 'www.inlandbank.com', 'Inland Bank & Trust', 'US', 'USD', 'United States', 'US Dollar', 'Oak Brook, Illinois', NULL, 'http://www.inlandbank.com', false);
INSERT INTO public.banks VALUES (2196, 'www.icicibank.com', 'ICICI Bank Limited', 'IN', 'INR', 'India', 'Indian Rupee', 'ICICI Bank Towers, Bandra Kurla complex, Mumbai, India[1]', NULL, 'http://www.icicibank.com/', false);
INSERT INTO public.banks VALUES (2197, 'www.hdfcbank.com', 'HDFC Bank Limited', 'IN', 'INR', 'India', 'Indian Rupee', 'Mumbai, Maharashtra, India', NULL, 'https://www.hdfcbank.com/', false);
INSERT INTO public.banks VALUES (2198, 'sberbank.com', 'PJSC Sberbank', 'RU', 'RUB', 'Russia', 'Russian Ruble', 'Moscow, Russia', NULL, 'http://sberbank.com', false);
INSERT INTO public.banks VALUES (2199, 'www.ibjbank.co.jp', 'Industrial Bank of Japan', 'JP', 'JPY', 'Japan', 'Yen', '1-3-3 Marunouchi', NULL, 'http://www.ibjbank.co.jp', false);
INSERT INTO public.banks VALUES (2200, 'www.stanbicbank.com.gh', 'Stanbic Bank', 'ZA', 'ZAR', 'South Africa', 'Rand', 'South Africa, Johannesburg', NULL, 'https://www.stanbicbank.com.gh/', false);
INSERT INTO public.banks VALUES (2201, 'www.rakbank.ae', 'RAKBANK', 'AE', 'AED', 'United Arab Emirates', 'UAE Dirham', 'Ras Al-Khaimah, United Arab Emirates', NULL, 'http://www.rakbank.ae', false);
INSERT INTO public.banks VALUES (2202, 'www.adabank.com.tr', 'Adabank A.Ş.', 'TR', 'TRY', 'Turkey', 'Turkish Lira', 'Mecidiyeköy, Istanbul, Turkey', NULL, 'http://www.adabank.com.tr/', false);
INSERT INTO public.banks VALUES (2262, 'www.odishabank.in', 'Odisha Gramya Bank', 'IN', 'INR', 'India', 'Indian Rupee', 'Bhubaneswar, India', NULL, 'http://www.odishabank.in/', false);
INSERT INTO public.banks VALUES (2203, 'www.wemabank.com', 'Wema Bank Plc.', 'NG', 'NGN', 'Nigeria', 'Naira', '54 Marina, Lagos Island Lagos State, Nigeria', NULL, 'http://www.wemabank.com', false);
INSERT INTO public.banks VALUES (2204, 'ghbank.co.th', 'GH Bank', 'TH', 'THB', 'Thailand', 'Baht', 'Huai Khwang District, Bangkok, Thailand', NULL, 'http://ghbank.co.th/', false);
INSERT INTO public.banks VALUES (2256, 'www.rsb-bank.ru', 'Russtroybank Русстройбанк', 'RU', 'RUB', 'Russia', 'Russian Ruble', 'Moscow, Russia', NULL, 'http://www.rsb-bank.ru', false);
INSERT INTO public.banks VALUES (2205, 'unionbank.com', 'MUFG Union Bank, N.A.', 'US', 'USD', 'United States', 'US Dollar', '1251 Avenue of the AmericasNew York City United States[1]', NULL, 'http://unionbank.com', false);
INSERT INTO public.banks VALUES (2206, 'www.communitybankbd.com', 'Community Bank Bangladesh Limited', 'BD', 'BDT', 'Bangladesh', 'Taka', 'Dhaka, Bangladesh', NULL, 'http://www.communitybankbd.com/', false);
INSERT INTO public.banks VALUES (2207, 'www.wegagenbanksc.com', 'Wegagen Bank', 'ET', 'ETB', 'Ethiopia', 'Ethiopian Birr', 'Addis Ababa', NULL, 'https://www.wegagenbanksc.com/', false);
INSERT INTO public.banks VALUES (2208, 'ansarvdpbank.gov.bd', 'Ansar-VDP Unnayan Bank', 'BD', 'BDT', 'Bangladesh', 'Taka', 'Dhaka, Bangladesh', NULL, 'http://ansarvdpbank.gov.bd', false);
INSERT INTO public.banks VALUES (2209, 'soneribank.com', 'Soneri Bank Limited', 'PK', 'PKR', 'Pakistan', 'Pakistan Rupee', 'Karachi, Sindh, Pakistan', NULL, 'http://soneribank.com', false);
INSERT INTO public.banks VALUES (2210, 'www.genealogybank.com', 'GenealogyBank', 'US', 'USD', 'United States', 'US Dollar', 'Naples, Florida', NULL, 'https://www.genealogybank.com/', false);
INSERT INTO public.banks VALUES (2211, 'halkbank.gov.tm', 'Halk Bank', 'TM', 'TMT', 'Turkmenistan', 'Turkmenistan New Manat', 'Ashgabat', NULL, 'http://halkbank.gov.tm/', false);
INSERT INTO public.banks VALUES (2212, 'www.kapitalbank.az', 'Kapital Bank', 'AZ', 'AZN', 'Azerbaijan', 'Azerbaijanian Manat', 'Azerbaijan, Baku', NULL, 'http://www.kapitalbank.az/?/', false);
INSERT INTO public.banks VALUES (2213, 'www.veteransbank.com.ph', 'Philippine Veterans Bank', 'PH', 'PHP', 'Philippines', 'Philippine Peso', 'Makati, Philippines', NULL, 'http://www.veteransbank.com.ph', false);
INSERT INTO public.banks VALUES (2214, 'www.e-gulfbank.com', 'Gulf Bank', 'KW', 'KWD', 'Kuwait', 'Kuwaiti Dinar', 'Kuwait City, Kuwait', NULL, 'http://www.e-gulfbank.com/', false);
INSERT INTO public.banks VALUES (2215, 'fcmbank.com.mt', 'FCM Bank Limited', 'MT', 'EUR', 'Malta', 'Euro', 'St. Julian''s[1], Malta', NULL, 'https://fcmbank.com.mt/', false);
INSERT INTO public.banks VALUES (2216, 'www.orointbank.com', 'Oromia International Bank', 'ET', 'ETB', 'Ethiopia', 'Ethiopian Birr', 'Addis Ababa, Ethiopia', NULL, 'http://www.orointbank.com', false);
INSERT INTO public.banks VALUES (2217, 'www.lloydsbank.com', 'Lloyds Bank plc', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', '25 Gresham Street, London, United Kingdom', NULL, 'http://www.lloydsbank.com', false);
INSERT INTO public.banks VALUES (2218, 'www.abcthebank.com', 'African Banking Corporation Limited', 'KE', 'KES', 'Kenya', 'Kenyan Shilling', 'ABC Bank House, Woodvale Grove, Westlands, Nairobi, Kenya', NULL, 'http://www.abcthebank.com/', false);
INSERT INTO public.banks VALUES (2219, 'www.centrevillebank.com', 'Centreville Bank', 'US', 'USD', 'United States', 'US Dollar', 'West Warwick, Rhode Island, United States', NULL, 'http://www.centrevillebank.com/', false);
INSERT INTO public.banks VALUES (2220, 'devbank.com', 'Development Bank of Kenya', 'KE', 'KES', 'Kenya', 'Kenyan Shilling', 'Loita Street, Nairobi, Kenya', NULL, 'http://devbank.com/', false);
INSERT INTO public.banks VALUES (2221, 'bankofkhartoum.com', 'Bank of Khartoum', 'SD', 'SDG', 'Sudan', 'Sudanese Pound', 'Khartoum', NULL, 'http://bankofkhartoum.com/', false);
INSERT INTO public.banks VALUES (2222, 'eurobank.pl', 'Euro Bank', 'PL', 'PLN', 'Poland', 'Zloty', 'ul. św. Mikołaja 72,
50-126, Wroclaw, Poland', NULL, 'https://eurobank.pl/', false);
INSERT INTO public.banks VALUES (2223, 'www.probank.gr', 'PROBANK', 'GR', 'EUR', 'Greece', 'Euro', 'Athens, Greece', NULL, 'http://www.probank.gr/', false);
INSERT INTO public.banks VALUES (2224, 'www.bankofindia.co.in', 'Bank of India', 'IN', 'INR', 'India', 'Indian Rupee', 'Mumbai, India', NULL, 'https://www.bankofindia.co.in/', false);
INSERT INTO public.banks VALUES (2225, 'web.entbankng.com', 'Enterprise Bank Limited', 'NG', 'NGN', 'Nigeria', 'Naira', '143 Ahmadu Bello Way Victoria Island, Lagos, Nigeria', NULL, 'http://web.entbankng.com/', false);
INSERT INTO public.banks VALUES (2226, 'www.yesbank.in', 'Yes Bank Limited', 'IN', 'INR', 'India', 'Indian Rupee', 'Mumbai, Maharashtra, India.', NULL, 'https://www.yesbank.in', false);
INSERT INTO public.banks VALUES (2227, 'www.utbankghana.com', 'UT Bank', 'GH', 'GHS', 'Ghana', 'Ghana Cedi', 'Accra, Ghana', NULL, 'http://www.utbankghana.com/', false);
INSERT INTO public.banks VALUES (2228, 'www.citynatbank.com', 'City National Bank of New Jersey', 'JE', 'GBP', 'Jersey', 'Pound Sterling', '900 Broad StreetNewark, New Jersey', NULL, 'http://www.citynatbank.com', false);
INSERT INTO public.banks VALUES (2229, 'www.danskebank.ie', 'Danske Bank', 'IE', 'EUR', 'Ireland', 'Euro', 'Dublin, Ireland', NULL, 'http://www.danskebank.ie/', false);
INSERT INTO public.banks VALUES (2230, 'www.bankia.com', 'Bankia S.A.', 'ES', 'EUR', 'Spain', 'Euro', 'Madrid and Valencia, Spain', NULL, 'http://www.bankia.com', false);
INSERT INTO public.banks VALUES (2231, 'www.bundesbank.de', 'Deutsche Bundesbank', 'DE', 'EUR', 'Germany', 'Euro', 'Frankfurt, Hesse, Germany', NULL, 'https://www.bundesbank.de/', false);
INSERT INTO public.banks VALUES (2232, 'www.awashbank.com', 'Awash International Bank', 'ET', 'ETB', 'Ethiopia', 'Ethiopian Birr', 'Addis Ababa', NULL, 'http://www.awashbank.com', false);
INSERT INTO public.banks VALUES (2233, 'www.rosbank.ru', 'Rosbank', 'RU', 'RUB', 'Russia', 'Russian Ruble', 'Moscow, Russia', NULL, 'http://www.rosbank.ru/en/', false);
INSERT INTO public.banks VALUES (2234, 'www.iwbank.it', 'IWBank S.p.A.', 'IT', 'EUR', 'Italy', 'Euro', 'Milan, Italy', NULL, 'http://www.iwbank.it/', false);
INSERT INTO public.banks VALUES (2235, 'renasantbank.com', 'Renasant Bank', 'US', 'USD', 'United States', 'US Dollar', 'Tupelo, Mississippi, USA', NULL, 'http://renasantbank.com', false);
INSERT INTO public.banks VALUES (2236, 'www.masterbank.ru', 'Master Bank', 'RU', 'RUB', 'Russia', 'Russian Ruble', 'Russia', NULL, 'http://www.masterbank.ru/', false);
INSERT INTO public.banks VALUES (2237, 'www.eximbankindia.in', 'Export-Import Bank of India', 'IN', 'INR', 'India', 'Indian Rupee', 'Mumbai, India[1]', NULL, 'http://www.eximbankindia.in/', false);
INSERT INTO public.banks VALUES (2238, 'www.beobank.be', 'beObank nv/SA/AG', 'BE', 'EUR', 'Belgium', 'Euro', 'Brussels ', NULL, 'https://www.beobank.be/', false);
INSERT INTO public.banks VALUES (2239, 'www.pacificglobalbank.com', 'Pacific Global Bank', 'US', 'USD', 'United States', 'US Dollar', 'Chicago', NULL, 'http://www.pacificglobalbank.com', false);
INSERT INTO public.banks VALUES (2240, 'www.norges-bank.no', 'Norges Bank', 'NO', 'NOK', 'Norway', 'Norwegian Krone', 'Oslo', NULL, 'http://www.norges-bank.no', false);
INSERT INTO public.banks VALUES (2241, 'www.dvbbank.com', 'DVB Bank SE', 'DE', 'EUR', 'Germany', 'Euro', 'Frankfurt, Germany', NULL, 'https://www.dvbbank.com/', false);
INSERT INTO public.banks VALUES (2242, 'www.bankhausbauer.de', 'Bankhaus Bauer', 'DE', 'EUR', 'Germany', 'Euro', 'Stuttgart, Germany', NULL, 'http://www.bankhausbauer.de/', false);
INSERT INTO public.banks VALUES (2243, 'www.belizebank.com', 'Belize Bank', 'BZ', 'BZD', 'Belize', 'Belize Dollar', 'Belize', NULL, 'http://www.belizebank.com/', false);
INSERT INTO public.banks VALUES (2244, 'www.ubank.com.au', 'UBank', 'AU', 'AUD', 'Australia', 'Australian Dollar', 'Sydney, Australia', NULL, 'https://www.ubank.com.au', false);
INSERT INTO public.banks VALUES (2245, 'www.reisebank.de', 'Reisebank AG', 'DE', 'EUR', 'Germany', 'Euro', 'Frankfurt, Germany', NULL, 'http://www.reisebank.de/', false);
INSERT INTO public.banks VALUES (2246, 'www.dollar.bank', 'Dollar Bank', 'US', 'USD', 'United States', 'US Dollar', 'Pittsburgh, Pennsylvania', NULL, 'https://www.dollar.bank', false);
INSERT INTO public.banks VALUES (2247, 'www.rbcbank.com', 'RBC Bank (Georgia), N.A.', 'US', 'USD', 'United States', 'US Dollar', 'Raleigh , United States of America ', NULL, 'http://www.rbcbank.com/', false);
INSERT INTO public.banks VALUES (2248, 'www.urwegobank.com', 'Urwego Bank Plc', 'RW', 'RWF', 'Rwanda', 'Rwanda Franc', 'Kigali, Rwanda', NULL, 'http://www.urwegobank.com', false);
INSERT INTO public.banks VALUES (2249, 'sonybank.net', 'Sony Bank, Inc.', 'JP', 'JPY', 'Japan', 'Yen', 'Nishikichō, Tokyo, Japan', NULL, 'http://sonybank.net/', false);
INSERT INTO public.banks VALUES (2250, 'www.easternbank.com', 'Eastern Bank', 'US', 'USD', 'United States', 'US Dollar', 'Boston, Massachusetts, U.S.', NULL, 'https://www.easternbank.com/', false);
INSERT INTO public.banks VALUES (2251, 'www.bankofbeirut.com', 'Bank of Beirut S.A.L', 'LB', 'LBP', 'Lebanon', 'Lebanese Pound', 'Beirut, Lebanon', NULL, 'http://www.bankofbeirut.com', false);
INSERT INTO public.banks VALUES (2252, 'persiabank.co.uk', 'Persia International Bank', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'London , United Kingdom', NULL, 'http://persiabank.co.uk/', false);
INSERT INTO public.banks VALUES (2253, 'dutchbanglabank.com', 'Dutch-Bangla Bank Limited', 'BD', 'BDT', 'Bangladesh', 'Taka', 'Dhaka, Bangladesh', NULL, 'http://dutchbanglabank.com', false);
INSERT INTO public.banks VALUES (2254, 'www.georgiabankandtrust.com', 'Georgia Bank & Trust Company', 'GE', 'GEL', 'Georgia', 'Lari', 'Augusta, Georgia', NULL, 'http://www.georgiabankandtrust.com', false);
INSERT INTO public.banks VALUES (2255, 'www.broadwayfederalbank.com', 'Broadway Federal Bank', 'US', 'USD', 'United States', 'US Dollar', 'Los Angeles, California', NULL, 'http://www.broadwayfederalbank.com/', false);
INSERT INTO public.banks VALUES (2257, 'www.asnbank.nl', 'ASN Bank', 'NL', 'EUR', 'Netherlands', 'Euro', 'The Hague, Netherlands', NULL, 'http://www.asnbank.nl', false);
INSERT INTO public.banks VALUES (2258, 'www.bankmillennium.pl', 'Bank Millennium SA', 'PL', 'PLN', 'Poland', 'Zloty', 'Warsaw, Poland', NULL, 'https://www.bankmillennium.pl', false);
INSERT INTO public.banks VALUES (2259, 'www.metabank.com', 'MetaBank', 'US', 'USD', 'United States', 'US Dollar', 'Sioux Falls, South Dakota, U.S.', NULL, 'https://www.metabank.com', false);
INSERT INTO public.banks VALUES (2260, 'www.muenchner-bank.de', 'Münchner Bank eG', 'DE', 'EUR', 'Germany', 'Euro', 'Munich, Germany', NULL, 'http://www.muenchner-bank.de/', false);
INSERT INTO public.banks VALUES (2261, 'www.faisalbank.com.eg', 'Faisal Islamic Bank of Egypt', 'EG', 'EGP', 'Egypt', 'Egyptian Pound', 'Cairo, Egypt', NULL, 'http://www.faisalbank.com.eg/', false);
INSERT INTO public.banks VALUES (2263, 'www.ilbank.gov.tr', 'İlbank A.Ş.', 'TR', 'TRY', 'Turkey', 'Turkish Lira', 'Ulus, Çankaya, Ankara', NULL, 'http://www.ilbank.gov.tr/', false);
INSERT INTO public.banks VALUES (2264, 'www.amalbank.com.gh', 'AmalBank', 'GH', 'GHS', 'Ghana', 'Ghana Cedi', 'Accra, Ghana', NULL, 'http://www.amalbank.com.gh', false);
INSERT INTO public.banks VALUES (2265, 'hodgebank.co.uk', 'Hodge Bank', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Cardiff, Wales, United Kingdom', NULL, 'http://hodgebank.co.uk', false);
INSERT INTO public.banks VALUES (2266, 'www.amenbank.com.tn', 'Amen Bank', 'TN', 'TND', 'Tunisia', 'Tunisian Dinar', 'Tunis, Tunisia', NULL, 'http://www.amenbank.com.tn/', false);
INSERT INTO public.banks VALUES (2267, 'www.capitalbankghana.com', 'Capital Bank Ghana Limited', 'GH', 'GHS', 'Ghana', 'Ghana Cedi', 'Accra', NULL, 'http://www.capitalbankghana.com', false);
INSERT INTO public.banks VALUES (2268, 'www.yamagatabank.co.jp', 'The Yamagata Bank, Ltd', 'JP', 'JPY', 'Japan', 'Yen', 'Yamagata, Yamagata, Japan', NULL, 'http://www.yamagatabank.co.jp/', false);
INSERT INTO public.banks VALUES (2269, 'www.marsbank.com', 'Mars Bank', 'US', 'USD', 'United States', 'US Dollar', 'Mars, Pennsylvania, U.S.', NULL, 'http://www.marsbank.com', false);
INSERT INTO public.banks VALUES (2270, 'www.kwftbank.com', 'Kenya Women Microfinance Bank', 'KE', 'KES', 'Kenya', 'Kenyan Shilling', 'Nairobi, Kenya', NULL, 'http://www.kwftbank.com/', false);
INSERT INTO public.banks VALUES (2271, 'www.postbank.de', 'Postbank – eine Niederlassung der DB Privat- und Firmenkundenbank AG', 'DE', 'EUR', 'Germany', 'Euro', 'Bonn, Germany', NULL, 'https://www.postbank.de', false);
INSERT INTO public.banks VALUES (2272, 'www.equitybank.cd', 'Equity Bank Congo', 'CD', 'CDF', 'Democratic Republic of the Congo', 'Congolese Franc', 'Kinshasa, Democratic Republic of the Congo', NULL, 'https://www.equitybank.cd/', false);
INSERT INTO public.banks VALUES (2273, 'www.vietcombank.com.vn', 'Joint Stock Commercial Bank for Foreign Trade of Vietnam', 'VN', 'VND', 'Vietnam', 'Dong', 'Hanoi, Vietnam', NULL, 'http://www.vietcombank.com.vn/', false);
INSERT INTO public.banks VALUES (2274, 'www.indianbank.in', 'Indian Bank', 'IN', 'INR', 'India', 'Indian Rupee', 'Chennai, India', NULL, 'https://www.indianbank.in', false);
INSERT INTO public.banks VALUES (2275, 'www.fonbank.com.tr', 'Birleşik Fon Bankası A.Ş.', 'TR', 'TRY', 'Turkey', 'Turkish Lira', 'Esentepe, Istanbul, Turkey', NULL, 'http://www.fonbank.com.tr/', false);
INSERT INTO public.banks VALUES (2276, 'www.pax-bank.de', 'Pax-Bank eG', 'DE', 'EUR', 'Germany', 'Euro', 'Cologne', NULL, 'http://www.pax-bank.de/', false);
INSERT INTO public.banks VALUES (2277, 'www.psbank.com.ph', 'Philippine Savings Bank', 'PH', 'PHP', 'Philippines', 'Philippine Peso', 'Makati, Philippines', NULL, 'https://www.psbank.com.ph', false);
INSERT INTO public.banks VALUES (2278, 'www.bank.lv', 'Bank of Latvia(Latvian: Latvijas Banka)', 'LV', 'EUR', 'Latvia', 'Euro', 'Riga', NULL, 'http://www.bank.lv/', false);
INSERT INTO public.banks VALUES (2279, 'broadway.bank', 'Broadway Bank', 'US', 'USD', 'United States', 'US Dollar', 'San Antonio, Texas', NULL, 'https://broadway.bank', false);
INSERT INTO public.banks VALUES (2280, 'www.babylonbank-iq.com', 'Babylon Bankمصرف بابل', 'IQ', 'IQD', 'Iraq', 'Iraqi Dinar', 'Baghdad, Iraq', NULL, 'http://www.babylonbank-iq.com', false);
INSERT INTO public.banks VALUES (2281, 'www.frankfurter-volksbank.de', 'Frankfurter Volksbank eG', 'DE', 'EUR', 'Germany', 'Euro', 'Frankfurt, Germany[1]', NULL, 'http://www.frankfurter-volksbank.de/', false);
INSERT INTO public.banks VALUES (2282, 'www.unicreditbank.rs', 'UniCredit Bank Serbia', 'RS', 'RSD', 'Serbia', 'Serbian Dinar', 'Belgrade, Serbia', NULL, 'https://www.unicreditbank.rs', false);
INSERT INTO public.banks VALUES (2283, 'www.sbsbank.co.nz', 'SBS Bank', 'NZ', 'NZD', 'New Zealand', 'New Zealand Dollar', 'Head office based in Invercargill, New Zealand', NULL, 'https://www.sbsbank.co.nz/', false);
INSERT INTO public.banks VALUES (2284, 'allahabadbank.in', 'Allahabad Bank', 'IN', 'INR', 'India', 'Indian Rupee', 'Kolkata, India', NULL, 'http://allahabadbank.in', false);
INSERT INTO public.banks VALUES (2285, 'www.pnbbanka.eu', 'JSC PNB Banka', 'LV', 'EUR', 'Latvia', 'Euro', 'Latvia, Riga', NULL, 'http://www.pnbbanka.eu', false);
INSERT INTO public.banks VALUES (2286, 'www.finabank.com', 'Fina Bank Group', 'KE', 'KES', 'Kenya', 'Kenyan Shilling', 'Nairobi, Kenya', NULL, 'http://www.finabank.com', false);
INSERT INTO public.banks VALUES (2288, 'www.vbsmutualbank.co.za', 'VBS Mutual Bank', 'ZA', 'ZAR', 'South Africa', 'Rand', 'Rivonia, Johannesburg, South Africa', NULL, 'https://www.vbsmutualbank.co.za/', false);
INSERT INTO public.banks VALUES (2290, 'www.abacusbank.com', 'Abacus Federal Savings Bank', 'JE', 'GBP', 'Jersey', 'Pound Sterling', 'New York, New Jersey, and Pennsylvania', NULL, 'http://www.abacusbank.com/', false);
INSERT INTO public.banks VALUES (2291, 'finecobank.com', 'FinecoBank', 'IT', 'EUR', 'Italy', 'Euro', 'Milan , Italy ', NULL, 'https://finecobank.com', false);
INSERT INTO public.banks VALUES (2292, 'www.dubaibank.co.ke', 'Dubai Bank Kenya', 'KE', 'KES', 'Kenya', 'Kenyan Shilling', 'Nairobi, Kenya', NULL, 'http://www.dubaibank.co.ke/', false);
INSERT INTO public.banks VALUES (2293, 'www.sainthelenabank.com', 'Bank of St. Helena Ltd', 'SH', 'SHP', 'Saint Helena', 'Saint Helena Pound', 'Market Street, Jamestown, Saint Helena', NULL, 'http://www.sainthelenabank.com', false);
INSERT INTO public.banks VALUES (2294, 'www.keralagbank.com', 'Kerala Gramin Bank', 'IN', 'INR', 'India', 'Indian Rupee', 'Malappuram, Kerala, India', NULL, 'http://www.keralagbank.com/', false);
INSERT INTO public.banks VALUES (2295, 'www.citibank.ae', 'Citibank N.A., United Arab Emirates', 'AE', 'AED', 'United Arab Emirates', 'UAE Dirham', 'Citibank U.A.E. Al Wasl BranchDubai United Arab Emirates', NULL, 'https://www.citibank.ae', false);
INSERT INTO public.banks VALUES (2296, 'www.bracbank.com', 'BRAC Bank Limited', 'BD', 'BDT', 'Bangladesh', 'Taka', '220/B Gulshan Tejgaon Link Road, Dhaka 1208 Dhaka, Bangladesh', NULL, 'http://www.bracbank.com/', false);
INSERT INTO public.banks VALUES (2297, 'kitsapbank.com', 'Kitsap Bank', 'US', 'USD', 'United States', 'US Dollar', 'Port Orchard, Washington, United States', NULL, 'http://kitsapbank.com', false);
INSERT INTO public.banks VALUES (2298, 'www.netbank.hu', 'MagNet Bank', 'HU', 'HUF', 'Hungary', 'Forint', 'Budapest, Hungary', NULL, 'https://www.netbank.hu/en/', false);
INSERT INTO public.banks VALUES (2299, 'newkabulbank.af', 'New Kabul Bank', 'AF', 'AFN', 'Afghanistan', 'Afghani', 'Kabul, Afghanistan', NULL, 'http://newkabulbank.af/', false);
INSERT INTO public.banks VALUES (2300, 'www.budapestbank.hu', 'Budapest Bank', 'HU', 'HUF', 'Hungary', 'Forint', 'Váci út 193., Budapest, Hungary', NULL, 'https://www.budapestbank.hu', false);
INSERT INTO public.banks VALUES (2301, 'www.ificbankbd.com', 'IFIC Bank Limited', 'BD', 'BDT', 'Bangladesh', 'Taka', 'Dhaka, Bangladesh', NULL, 'http://www.ificbankbd.com/', false);
INSERT INTO public.banks VALUES (2302, 'www.equitasbank.com', 'Equitas Small Finance Bank', 'IN', 'INR', 'India', 'Indian Rupee', 'Phase-II, 4th Floor, Spencer Plaza, No-769, Anna Salai, Chennai, India', NULL, 'https://www.equitasbank.com', false);
INSERT INTO public.banks VALUES (2303, 'www.azerturkbank.az', 'Azer-Turk Bank', 'AZ', 'AZN', 'Azerbaijan', 'Azerbaijanian Manat', 'Baku, Azerbaijan', NULL, 'http://www.azerturkbank.az', false);
INSERT INTO public.banks VALUES (2304, 'www.librabank.ro', 'Libra Bank', 'RO', 'RON', 'Romania', 'Romanian Leu', 'Bucharest, Romania', NULL, 'http://www.librabank.ro', false);
INSERT INTO public.banks VALUES (2305, 'karnatakabank.com', 'Karnataka Bank Limited', 'IN', 'INR', 'India', 'Indian Rupee', 'Mangaluru, Karnataka, India', NULL, 'https://karnatakabank.com', false);
INSERT INTO public.banks VALUES (2306, 'www.bankaudigroup.com', 'Bank Audi S.A.L.', 'LB', 'LBP', 'Lebanon', 'Lebanese Pound', 'Beirut, Lebanon', NULL, 'http://www.bankaudigroup.com', false);
INSERT INTO public.banks VALUES (2307, 'www.creditbank.co.ke', 'Credit Bank', 'KE', 'KES', 'Kenya', 'Kenyan Shilling', 'Nairobi, Kenya', NULL, 'http://www.creditbank.co.ke/', false);
INSERT INTO public.banks VALUES (2308, 'www.nationsbank.com', 'NationsBank', 'US', 'USD', 'United States', 'US Dollar', 'Charlotte, North Carolina, United States', NULL, 'http://www.nationsbank.com', false);
INSERT INTO public.banks VALUES (2356, 'www.rodovidbank.com', 'OJSC "Rodovid Bank"', 'UA', 'UAH', 'Ukraine', 'Hryvnia', 'Kyiv, Ukraine', NULL, 'http://www.rodovidbank.com/', false);
INSERT INTO public.banks VALUES (2309, 'www.centralbankbahamas.com', 'Central Bank of The Bahamas', 'BS', 'BSD', 'Bahamas', 'Bahamian Dollar', 'Nassau', NULL, 'http://www.centralbankbahamas.com', false);
INSERT INTO public.banks VALUES (2310, 'www.consorsbank.de', 'Consorsbank', 'DE', 'EUR', 'Germany', 'Euro', 'Nürnberg', NULL, 'http://www.consorsbank.de/', false);
INSERT INTO public.banks VALUES (2311, 'clarienbank.com', 'Clarien Bank Limited', 'BM', 'BMD', 'Bermuda', 'Bermudian Dollar', 'Hamilton, Bermuda', NULL, 'https://clarienbank.com/', false);
INSERT INTO public.banks VALUES (2312, 'www.bmwbank.de', 'BMW Bank GmbH', 'DE', 'EUR', 'Germany', 'Euro', 'Munich', NULL, 'http://www.bmwbank.de/', false);
INSERT INTO public.banks VALUES (2313, 'www.postbank.ir', 'Post Bank of Iran', 'IR', 'IRR', 'Iran', 'Iranian Rial', 'Tehran, Iran', NULL, 'http://www.postbank.ir/', false);
INSERT INTO public.banks VALUES (2314, 'www.dresdner-bank.com', 'Dresdner Bank AG', 'DE', 'EUR', 'Germany', 'Euro', 'Frankfurt, Germany', NULL, 'http://www.dresdner-bank.com/', false);
INSERT INTO public.banks VALUES (2315, 'beneficialstatebank.com', 'Beneficial State Bank', 'US', 'USD', 'United States', 'US Dollar', 'Oakland, California, United States', NULL, 'http://beneficialstatebank.com', false);
INSERT INTO public.banks VALUES (2316, 'www.christopherandbanks.com', 'Christopher & Banks', 'US', 'USD', 'United States', 'US Dollar', 'Plymouth, Minnesota, United States', NULL, 'http://www.christopherandbanks.com', false);
INSERT INTO public.banks VALUES (2317, 'azizibank.com', 'Azizizi Bank', 'AF', 'AFN', 'Afghanistan', 'Afghani', 'Ankara Square, Opp Turkish Embassy, Main Road, Kabul, Afghanistan', NULL, 'http://azizibank.com', false);
INSERT INTO public.banks VALUES (2318, 'www.agribank-ly.org', 'Libyan Agricultural Bank', 'LY', 'LYD', 'Libya', 'Libyan Dinar', '52, Omar El Mokhtar Street, Tripoli, Libya', NULL, 'http://www.agribank-ly.org/', false);
INSERT INTO public.banks VALUES (2319, 'www.eurocitybank.de', 'Eurocity Bank AG', 'DE', 'EUR', 'Germany', 'Euro', 'Frankfurt, Germany', NULL, 'http://www.eurocitybank.de/', false);
INSERT INTO public.banks VALUES (2320, 'www.smgbank.com', 'South Malabar Gramin Bank', 'IN', 'INR', 'India', 'Indian Rupee', 'Malappuram, Kerala, India', NULL, 'http://www.smgbank.com/', false);
INSERT INTO public.banks VALUES (2321, 'www.clickbank.com', 'ClickBank', 'US', 'USD', 'United States', 'US Dollar', 'United States', NULL, 'http://www.clickbank.com/', false);
INSERT INTO public.banks VALUES (2322, 'en.deltabank.com.ua', 'Delta Bank', 'UA', 'UAH', 'Ukraine', 'Hryvnia', 'Kiev, Ukraine', NULL, 'http://en.deltabank.com.ua/', false);
INSERT INTO public.banks VALUES (2324, 'www.warka-bank.com', 'Warka Bank for Investment & Finance', 'IQ', 'IQD', 'Iraq', 'Iraqi Dinar', 'Baghdad, Iraq', NULL, 'http://www.warka-bank.com', false);
INSERT INTO public.banks VALUES (2325, 'www.sozialbank.de', 'Bank für Sozialwirtschaft AG', 'DE', 'EUR', 'Germany', 'Euro', 'Cologne and Berlin, Germany[2]', NULL, 'http://www.sozialbank.de/', false);
INSERT INTO public.banks VALUES (2326, 'www.anadolubank.com.tr', 'Anadolubank A.Ş.', 'TR', 'TRY', 'Turkey', 'Turkish Lira', 'Umraniye, Istanbul, Turkey', NULL, 'http://www.anadolubank.com.tr/', false);
INSERT INTO public.banks VALUES (2327, 'www.bealbank.com', 'Beal Bank', 'US', 'USD', 'United States', 'US Dollar', 'Plano, Texas', NULL, 'https://www.bealbank.com/', false);
INSERT INTO public.banks VALUES (2328, 'www.bankunited.com', 'BankUnited, Inc.', 'US', 'USD', 'United States', 'US Dollar', 'Miami Lakes, Florida, United States', NULL, 'http://www.bankunited.com/', false);
INSERT INTO public.banks VALUES (2329, 'www.rabobank.com', 'Coöperatieve Rabobank U.A.', 'NL', 'EUR', 'Netherlands', 'Euro', 'Rabotoren, Utrecht, Netherlands', NULL, 'http://www.rabobank.com', false);
INSERT INTO public.banks VALUES (2330, 'www.iombank.com', 'The Royal Bank of Scotland International Limited trading as Isle of Man Bank', 'IM', 'GBP', 'Isle of Man', 'Pound Sterling', 'Douglas, Isle of Man', NULL, 'http://www.iombank.com/', false);
INSERT INTO public.banks VALUES (2331, 'www.eximbank.com.tw', 'Export–Import Bank of the Republic of China', 'TW', 'TWD', 'Taiwan', 'New Taiwan Dollar', 'Taipei, Taiwan', NULL, 'http://www.eximbank.com.tw/en-us/Pages/default.aspx', false);
INSERT INTO public.banks VALUES (2332, 'www.americanmomentum.bank', 'American Momentum Bank [1]', 'US', 'USD', 'United States', 'US Dollar', 'College Station, Texas, United States [3]', NULL, 'https://www.americanmomentum.bank/', false);
INSERT INTO public.banks VALUES (2333, 'www.altabank.com', 'Altabank', 'US', 'USD', 'United States', 'US Dollar', '33 East Main StreetAmerican Fork, UtahUnited States', NULL, 'https://www.altabank.com/', false);
INSERT INTO public.banks VALUES (2334, 'www.firstwestroads.bank', 'First Westroads Bank', 'US', 'USD', 'United States', 'US Dollar', 'Omaha, Nebraska, United States', NULL, 'https://www.firstwestroads.bank/', false);
INSERT INTO public.banks VALUES (2335, 'www.eximbank-dj.com', 'Exim Bank (Djibouti) S. A', 'DJ', 'DJF', 'Djibouti', 'Djibouti Franc', 'Djibouti City, Djibouti', NULL, 'http://www.eximbank-dj.com/', false);
INSERT INTO public.banks VALUES (2336, 'www.al-bank.dk', 'Arbejdernes Landsbank', 'DK', 'DKK', 'Denmark', 'Danish Krone', 'Vesterbrogade 5, Copenhagen, Denmark', NULL, 'https://www.al-bank.dk', false);
INSERT INTO public.banks VALUES (2337, 'ccbank.co.uk', 'Cambridge & Counties Bank Ltd.', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Charnwood Court, 5B New Walk, Leicester, Leicestershire', NULL, 'http://ccbank.co.uk/', false);
INSERT INTO public.banks VALUES (2338, 'www.home.amalgamatedbank.com', 'Amalgamated Bank', 'US', 'USD', 'United States', 'US Dollar', '275 Seventh Avenue, New York City, New York, U.S.', NULL, 'https://www.home.amalgamatedbank.com/', false);
INSERT INTO public.banks VALUES (2339, 'www.metrobankonline.co.uk', 'Metro Bank plc', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'London, United Kingdom', NULL, 'http://www.metrobankonline.co.uk/', false);
INSERT INTO public.banks VALUES (2340, 'www.volksbank-neckartal.de', 'Volksbank Neckartal eG', 'DE', 'EUR', 'Germany', 'Euro', 'Eberbach, Germany[1]', NULL, 'http://www.volksbank-neckartal.de/', false);
INSERT INTO public.banks VALUES (2341, 'www.gibintbank.gi', 'Gibraltar International Bank', 'GI', 'GIP', 'Gibraltar', 'Gibraltar Pound', 'Gibraltar International Bank Ltd, Ince''s House, 310 Main Street, Gibraltar, GX11 1AA
        ', NULL, 'https://www.gibintbank.gi', false);
INSERT INTO public.banks VALUES (2342, 'www.keystonebankng.com', 'Keystone Bank Limited', 'NG', 'NGN', 'Nigeria', 'Naira', 'Victoria Island, Lagos, Lagos State, Nigeria', NULL, 'http://www.keystonebankng.com/', false);
INSERT INTO public.banks VALUES (2343, 'pdccbank.com', 'Pune District Central Co-Operative Bank Ltd. Pune
 पुणे जिल्हा मध्यवर्ती सहकारी बँक पुणे', 'IN', 'INR', 'India', 'Indian Rupee', 'Pune , Maharashtra, India', NULL, 'http://pdccbank.com', false);
INSERT INTO public.banks VALUES (2344, 'www.bankofmelbourne.com.au', 'Bank of Melbourne', 'AU', 'AUD', 'Australia', 'Australian Dollar', 'Melbourne, Australia', NULL, 'http://www.bankofmelbourne.com.au/', false);
INSERT INTO public.banks VALUES (2345, 'www.banken.gl', 'GrønlandsBANKEN A/S', 'GL', 'DKK', 'Greenland', 'Danish Krone', 'Nuuk, Greenland', NULL, 'https://www.banken.gl/en', false);
INSERT INTO public.banks VALUES (2346, 'www.womensbank.co.tz', 'Tanzania Women''s Bank Limited', 'TZ', 'TZS', 'Tanzania', 'Tanzanian Shilling', 'Dar es Salaam, Tanzania', NULL, 'http://www.womensbank.co.tz/', false);
INSERT INTO public.banks VALUES (2347, 'www.norisbank.de', 'Norisbank GmbH', 'DE', 'EUR', 'Germany', 'Euro', 'Bonn, Germany[1]', NULL, 'http://www.norisbank.de/', false);
INSERT INTO public.banks VALUES (2348, 'islamibankbd.com', 'Islami Bank Bangladesh Ltd.', 'BD', 'BDT', 'Bangladesh', 'Taka', 'Islami Bank Tower 40, Dilkusha C/A, Dhaka - 1000, Bangladesh', NULL, 'http://islamibankbd.com', false);
INSERT INTO public.banks VALUES (2349, 'www.RepublicBank.com', 'Republic Bank & Trust Company', 'US', 'USD', 'United States', 'US Dollar', 'Louisville, Kentucky, United States', NULL, 'http://www.RepublicBank.com', false);
INSERT INTO public.banks VALUES (2350, 'www.accessbank.co.tz', 'AccessBank Tanzania Limited', 'TZ', 'TZS', 'Tanzania', 'Tanzanian Shilling', 'Dar es Salaam, Tanzania', NULL, 'http://www.accessbank.co.tz/', false);
INSERT INTO public.banks VALUES (2351, 'www.krishibank.org.bd', 'Bangladesh Krishi Bank', 'BD', 'BDT', 'Bangladesh', 'Taka', 'Dhaka, Bangladesh', NULL, 'http://www.krishibank.org.bd/', false);
INSERT INTO public.banks VALUES (2352, 'www.imbank.co.tz', 'I&M Bank Tanzania Limited', 'TZ', 'TZS', 'Tanzania', 'Tanzanian Shilling', 'Dar es Salaam, Tanzania', NULL, 'http://www.imbank.co.tz/', false);
INSERT INTO public.banks VALUES (2353, 'www.bankalhabib.com', 'Bank AL Habib Limited', 'PK', 'PKR', 'Pakistan', 'Pakistan Rupee', 'Multan & Karachi, Pakistan', NULL, 'https://www.bankalhabib.com/', false);
INSERT INTO public.banks VALUES (2354, 'www.pashabank.ge', 'PASHA Bank Georgia', 'GE', 'GEL', 'Georgia', 'Lari', 'Tbilisi, Georgia', NULL, 'http://www.pashabank.ge', false);
INSERT INTO public.banks VALUES (2355, 'www.psd-bank.de', 'PSD Bank', 'DE', 'EUR', 'Germany', 'Euro', 'Bonn, Germany', NULL, 'http://www.psd-bank.de', false);
INSERT INTO public.banks VALUES (2357, 'www.dhanbank.com', 'Dhanlaxmi Bank', 'IN', 'INR', 'India', 'Indian Rupee', 'Thrissur, Kerala, India', NULL, 'https://www.dhanbank.com', false);
INSERT INTO public.banks VALUES (2358, 'www.combanketh.et', 'Commercial Bank of Ethiopia', 'ET', 'ETB', 'Ethiopia', 'Ethiopian Birr', 'Addis Ababa, Ethiopia', NULL, 'http://www.combanketh.et', false);
INSERT INTO public.banks VALUES (2359, 'www.trustbank.com.gh', 'The Trust Bank', 'GH', 'GHS', 'Ghana', 'Ghana Cedi', 'Accra, Ghana', NULL, 'http://www.trustbank.com.gh/', false);
INSERT INTO public.banks VALUES (2360, 'www.bramerbank.mu', 'Bramer Banking Corporation Limited', 'MU', 'MUR', 'Mauritius', 'Mauritius Rupee', 'Port Louis, Mauritius', NULL, 'http://www.bramerbank.mu/', false);
INSERT INTO public.banks VALUES (2361, 'www.acledabank.com.kh', 'ACLEDA Bank Plc.', 'KH', 'KHR', 'Cambodia', 'Riel', 'Phnom Penh, Cambodia', NULL, 'http://www.acledabank.com.kh', false);
INSERT INTO public.banks VALUES (2362, 'www.efirstbank.com', 'FirstBank Holding Company', 'US', 'USD', 'United States', 'US Dollar', 'Lakewood, Colorado, United States', NULL, 'https://www.efirstbank.com/', false);
INSERT INTO public.banks VALUES (2363, 'www.providusbank.com', 'Providus Bank Limited', 'NG', 'NGN', 'Nigeria', 'Naira', '724 Adetokunbo Ademola Street, Victoria Island, Lagos, Lagos State, Nigeria', NULL, 'https://www.providusbank.com/', false);
INSERT INTO public.banks VALUES (2364, 'www.maubank.mu', 'MauBank Ltd', 'MU', 'MUR', 'Mauritius', 'Mauritius Rupee', '25 Bank Street, Ebene CyberCity, Mauritius', NULL, 'http://www.maubank.mu/', false);
INSERT INTO public.banks VALUES (2365, 'www.postbank.co.ug', 'PostBank Uganda', 'UG', 'UGX', 'Uganda', 'Uganda Shilling', '4 - 6 Nkrumah RoadKampala, Uganda', NULL, 'http://www.postbank.co.ug/', false);
INSERT INTO public.banks VALUES (2366, 'www.aikbanka.rs', 'AIK Banka', 'RS', 'RSD', 'Serbia', 'Serbian Dinar', 'Bulevar Mihaila Pupina 115đ, Belgrade, Serbia', NULL, 'http://www.aikbanka.rs/', false);
INSERT INTO public.banks VALUES (2367, 'www.rawbank.cd', 'Rawbank', 'CD', 'CDF', 'Democratic Republic of the Congo', 'Congolese Franc', 'Kinshasa, Democratic Republic of the Congo', NULL, 'http://www.rawbank.cd/', false);
INSERT INTO public.banks VALUES (2368, 'www.FootageBank.com', 'FootageBank', 'US', 'USD', 'United States', 'US Dollar', 'Los Angeles, California, United States', NULL, 'http://www.FootageBank.com/', false);
INSERT INTO public.banks VALUES (2369, 'finbank.com.ng', 'FinBank', 'NG', 'NGN', 'Nigeria', 'Naira', 'Lagos, Lagos State, Nigeria', NULL, 'http://finbank.com.ng/', false);
INSERT INTO public.banks VALUES (2370, 'www.turkbank.com.tr', 'Türk Ticaret Bankası', 'TR', 'TRY', 'Turkey', 'Turkish Lira', 'Istanbul, Turkey', NULL, 'http://www.turkbank.com.tr/', false);
INSERT INTO public.banks VALUES (2371, 'www.degussa-bank.de', 'Degussa Bank', 'DE', 'EUR', 'Germany', 'Euro', 'Frankfurt, Germany[1]', NULL, 'http://www.degussa-bank.de/', false);
INSERT INTO public.banks VALUES (2372, 'www.fmbankva.com', 'F&M Bank', 'US', 'USD', 'United States', 'US Dollar', 'Timberville, VA, United States', NULL, 'https://www.fmbankva.com', false);
INSERT INTO public.banks VALUES (2373, 'www.banksaudara.com', 'PT Bank Himpunan Saudara 1906 TBK', 'ID', 'IDR', 'Indonesia', 'Rupiah', 'Bandung, Indonesia', NULL, 'http://www.banksaudara.com/', false);
INSERT INTO public.banks VALUES (2374, 'nationaldiaperbanknetwork.org', 'National Diaper Bank Network', 'US', 'USD', 'United States', 'US Dollar', '155 East StreetNew Haven, Connecticut', NULL, 'http://nationaldiaperbanknetwork.org', false);
INSERT INTO public.banks VALUES (2375, 'www.kfw-ipex-bank.de', 'KfW IPEX-Bank GmbH', 'DE', 'EUR', 'Germany', 'Euro', 'Frankfurt, Germany[1]', NULL, 'http://www.kfw-ipex-bank.de/', false);
INSERT INTO public.banks VALUES (2376, 'www.frieslandbank.nl', 'Friesland Bank N.V.', 'NL', 'EUR', 'Netherlands', 'Euro', 'Leeuwarden, Netherlands', NULL, 'http://www.frieslandbank.nl/', false);
INSERT INTO public.banks VALUES (2377, 'eihbank.de', 'Iranian-European Bank', 'DE', 'EUR', 'Germany', 'Euro', 'Hamburg, Germany', NULL, 'http://eihbank.de', false);
INSERT INTO public.banks VALUES (2378, 'www.accessbank.com.lr', 'AccessBank Liberia', 'LR', 'LRD', 'Liberia', 'Liberian Dollar', '20th Street, SinkorMonrovia, Liberia', NULL, 'http://www.accessbank.com.lr', false);
INSERT INTO public.banks VALUES (2379, 'www.mainstreetbanklimited.com', 'Mainstreet Bank Limited', 'NG', 'NGN', 'Nigeria', 'Naira', 'Lagos, Nigeria', NULL, 'http://www.mainstreetbanklimited.com/', false);
INSERT INTO public.banks VALUES (2380, 'www.privatebank.citibank.com', 'Citi Private Bank', 'US', 'USD', 'United States', 'US Dollar', 'New York ', NULL, 'https://www.privatebank.citibank.com/', false);
INSERT INTO public.banks VALUES (2381, 'www.gatecity.bank', 'Gate City Bank', 'US', 'USD', 'United States', 'US Dollar', 'Fargo, North Dakota, United States', NULL, 'https://www.gatecity.bank/', false);
INSERT INTO public.banks VALUES (2382, 'www.moodybank.com', 'Moody National Bank', 'US', 'USD', 'United States', 'US Dollar', 'Galveston, Texas, U.S.', NULL, 'http://www.moodybank.com/', false);
INSERT INTO public.banks VALUES (2383, 'www.mgbank.co.in', 'Madhyanchal Gramin Bank', 'IN', 'INR', 'India', 'Indian Rupee', 'Sagar, Madhya Pradesh, India', NULL, 'http://www.mgbank.co.in', false);
INSERT INTO public.banks VALUES (2384, 'www.centralbank.gov.ye', 'Central Bank of Yemenالبنك المركزي اليمني', 'YE', 'YER', 'Yemen', 'Yemeni Rial', 'Aden', NULL, 'http://www.centralbank.gov.ye/', false);
INSERT INTO public.banks VALUES (2385, 'www.umweltbank.de', 'Umweltbank AG', 'DE', 'EUR', 'Germany', 'Euro', 'Nuremberg, Germany', NULL, 'https://www.umweltbank.de/', false);
INSERT INTO public.banks VALUES (2386, 'www.securetrustbank.com', 'Secure Trust Bank PLC', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Solihull, United Kingdom', NULL, 'https://www.securetrustbank.com', false);
INSERT INTO public.banks VALUES (2387, 'www.hsbcprivatebank.com', 'HSBC Private Banking Holdings (Suisse) S.A.', 'CH', 'CHF', 'Switzerland', 'Swiss Franc', 'Geneva, Switzerland', NULL, 'http://www.hsbcprivatebank.com/', false);
INSERT INTO public.banks VALUES (2388, 'www.nationalomanbank.world', 'National Bank of Oman', 'OM', 'OMR', 'Oman', 'Rial Omani', 'Muscat Oman', NULL, 'https://www.nationalomanbank.world', false);
INSERT INTO public.banks VALUES (2389, 'liberty-bank.com', 'Liberty Bank', 'US', 'USD', 'United States', 'US Dollar', 'Middletown, Connecticut, United States', NULL, 'https://liberty-bank.com', false);
INSERT INTO public.banks VALUES (2390, 'www.auswidebank.com.au', 'Auswide Bank', 'AU', 'AUD', 'Australia', 'Australian Dollar', 'Bundaberg, Australia', NULL, 'http://www.auswidebank.com.au', false);
INSERT INTO public.banks VALUES (2392, 'www.azaniabank.co.tz', 'Azania Bank', 'TZ', 'TZS', 'Tanzania', 'Tanzanian Shilling', 'Dar-es-Salaam, Tanzania', NULL, 'http://www.azaniabank.co.tz/', false);
INSERT INTO public.banks VALUES (2393, 'www.kumaribank.com', 'Kumari Bank कुमारी बैंक लिमिटेड', 'NP', 'NPR', 'Nepal', 'Nepalese Rupee', 'Tangal Kathmandu, Nepal', NULL, 'http://www.kumaribank.com/', false);
INSERT INTO public.banks VALUES (2394, 'www.bandhanbank.com', 'Bandhan Bank', 'IN', 'INR', 'India', 'Indian Rupee', 'Kolkata, West Bengal, India.', NULL, 'http://www.bandhanbank.com/', false);
INSERT INTO public.banks VALUES (2395, 'www.farmerbank.com.tw', 'Farmers Bank of China[1]', 'TW', 'TWD', 'Taiwan', 'New Taiwan Dollar', '85 NanKing East Road, Section 2, Taipei, Taiwan', NULL, 'http://www.farmerbank.com.tw/', false);
INSERT INTO public.banks VALUES (2396, 'www.banktencate.com', 'Bank Ten Cate & Cie. N.V.', 'NL', 'EUR', 'Netherlands', 'Euro', 'Amsterdam, Netherlands', NULL, 'https://www.banktencate.com', false);
INSERT INTO public.banks VALUES (2397, 'www.nedbankgroup.co.za', 'Nedbank Group Limited', 'ZA', 'ZAR', 'South Africa', 'Rand', 'Sandton, South Africa', NULL, 'http://www.nedbankgroup.co.za/', false);
INSERT INTO public.banks VALUES (2398, 'www.josbank.com', 'Jos. A. Bank', 'US', 'USD', 'United States', 'US Dollar', 'Fremont, California, U.S.', NULL, 'http://www.josbank.com/', false);
INSERT INTO public.banks VALUES (2399, 'www.investmentbank.barclays.com', 'Barclays Investment Bank', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'London, United Kingdom', NULL, 'https://www.investmentbank.barclays.com', false);
INSERT INTO public.banks VALUES (2400, 'www.bellbanks.com', 'Bell Bank', 'US', 'USD', 'United States', 'US Dollar', 'Fargo, North Dakota, U.S.', NULL, 'https://www.bellbanks.com/', false);
INSERT INTO public.banks VALUES (2401, 'www.pbgbank.com', 'PASCHIM BANGA GRAMIN BANK(PBGB)', 'IN', 'INR', 'India', 'Indian Rupee', 'Howrah, West Bengal, India', NULL, 'http://www.pbgbank.com', false);
INSERT INTO public.banks VALUES (2402, 'www.bthbank.com', 'BTH Bank', 'US', 'USD', 'United States', 'US Dollar', 'Quitman, Texas', NULL, 'http://www.bthbank.com/', false);
INSERT INTO public.banks VALUES (2403, 'www.bankaustria.at', 'UniCredit Bank Austria AG', 'AT', 'EUR', 'Austria', 'Euro', 'Vienna, Austria', NULL, 'http://www.bankaustria.at/', false);
INSERT INTO public.banks VALUES (2404, 'www.unionbankph.com', 'Union Bank of the Philippines, Inc.', 'PH', 'PHP', 'Philippines', 'Philippine Peso', 'Pasig, Philippines', NULL, 'http://www.unionbankph.com', false);
INSERT INTO public.banks VALUES (2405, 'www.alternatifbank.com.tr', 'Alternatifbank A.Ş.', 'TR', 'TRY', 'Turkey', 'Turkish Lira', 'Istanbul, Turkey', NULL, 'https://www.alternatifbank.com.tr', false);
INSERT INTO public.banks VALUES (2406, 'www.baaderbank.de', 'Baader Bank AG', 'DE', 'EUR', 'Germany', 'Euro', 'Unterschleißheim, Germany', NULL, 'http://www.baaderbank.de', false);
INSERT INTO public.banks VALUES (2407, 'www.creditbankofalbania.al', 'Credit Bank of Albania', 'AL', 'ALL', 'Albania', 'Lek', 'Tirana', NULL, 'http://www.creditbankofalbania.al/', false);
INSERT INTO public.banks VALUES (2408, 'www.applebank.com', 'Apple Bank for Savings', 'US', 'USD', 'United States', 'US Dollar', 'Manhasset, New York', NULL, 'https://www.applebank.com/', false);
INSERT INTO public.banks VALUES (2409, 'www.tmbbank.com', 'TMB Bank', 'TH', 'THB', 'Thailand', 'Baht', 'Chatuchak, Bangkok, Thailand', NULL, 'http://www.tmbbank.com', false);
INSERT INTO public.banks VALUES (2410, 'www.postbank.bg', 'Bulgarian Postbank(legally known as Eurobank Bulgaria AD)', 'BG', 'BGN', 'Bulgaria', 'Bulgarian Lev', 'Sofia, Bulgaria', NULL, 'http://www.postbank.bg/', false);
INSERT INTO public.banks VALUES (2411, 'bankhapoalim.com', 'Bank Hapoalim B.M.', 'IL', 'ILS', 'Israel', 'New Israeli Sheqel', 'Tel Aviv, Israel', NULL, 'http://bankhapoalim.com', false);
INSERT INTO public.banks VALUES (2412, 'bankofgeorgia.ge', 'Bank of Georgia', 'GE', 'GEL', 'Georgia', 'Lari', 'Tbilisi, Georgia', NULL, 'http://bankofgeorgia.ge', false);
INSERT INTO public.banks VALUES (2413, 'www.bankofflorida.com', 'Bank of Florida Corporation', 'US', 'USD', 'United States', 'US Dollar', 'Naples, Florida', NULL, 'http://www.bankofflorida.com/', false);
INSERT INTO public.banks VALUES (2414, 'www.4thebank.com', 'The Bank of Edwardsville', 'US', 'USD', 'United States', 'US Dollar', '330 West Vandalia Street, Edwardsville, 62025 Illinois, United States', NULL, 'https://www.4thebank.com', false);
INSERT INTO public.banks VALUES (2415, 'www.iwatebank.co.jp', 'The Bank of Iwate Co Ltd 岩手銀行', 'JP', 'JPY', 'Japan', 'Yen', 'Morioka, Iwate, Japan', NULL, 'http://www.iwatebank.co.jp', false);
INSERT INTO public.banks VALUES (2416, 'www.nmgbank.com', 'North Malabar Gramin Bank', 'IN', 'INR', 'India', 'Indian Rupee', 'Kannur, Kerala, India', NULL, 'http://www.nmgbank.com/', false);
INSERT INTO public.banks VALUES (2417, 'www.unibank.az', 'Unibank', 'AZ', 'AZN', 'Azerbaijan', 'Azerbaijanian Manat', '55, Rashid Behbudov Street, Baku, AZ 1014, Azerbaijan', NULL, 'http://www.unibank.az', false);
INSERT INTO public.banks VALUES (2418, 'www.alliancebank.com.my', 'Alliance Bank Malaysia Berhad', 'MY', 'MYR', 'Malaysia', 'Malaysian Ringgit', 'Kuala Lumpur, Malaysia', NULL, 'http://www.alliancebank.com.my/', false);
INSERT INTO public.banks VALUES (2419, 'www.starlingbank.com', 'Starling Bank Ltd', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'London,United Kingdom', NULL, 'http://www.starlingbank.com', false);
INSERT INTO public.banks VALUES (2420, 'www.pandyangramabank.in', 'Tamil Nadu Grama Bank', 'IN', 'INR', 'India', 'Indian Rupee', 'Virudhunagar, Tamil Nadu, India', NULL, 'http://www.pandyangramabank.in/', false);
INSERT INTO public.banks VALUES (2421, 'www.nmbbank.co.tz', 'NMB Bank Plc', 'TZ', 'TZS', 'Tanzania', 'Tanzanian Shilling', 'Dar es Salaam, Tanzania', NULL, 'https://www.nmbbank.co.tz/', false);
INSERT INTO public.banks VALUES (2422, 'www.bankofbaroda.ug', 'Bank of Baroda Uganda Limited', 'UG', 'UGX', 'Uganda', 'Uganda Shilling', '18 Kampala RoadKampala, Uganda', NULL, 'http://www.bankofbaroda.ug/', false);
INSERT INTO public.banks VALUES (2423, 'www.bankcomm.com', 'Bank of Communications Limited交通银行股份有限公司', 'CN', 'CNY', 'China', 'Yuan Renminbi', 'Shanghai, People''s Republic of China', NULL, 'http://www.bankcomm.com/', false);
INSERT INTO public.banks VALUES (2424, 'www.thinkbank.com', 'Think Mutual Bank', 'US', 'USD', 'United States', 'US Dollar', 'Rochester, Minnesota, United States', NULL, 'https://www.thinkbank.com/', false);
INSERT INTO public.banks VALUES (2476, 'bankershealthcaregroup.com', 'Bankers Healthcare Group', 'US', 'USD', 'United States', 'US Dollar', 'Davie, Florida', NULL, 'https://bankershealthcaregroup.com', false);
INSERT INTO public.banks VALUES (2425, 'www.cotabank.com.tw', 'COTA Commercial Bank 三信商業銀行', 'TW', 'TWD', 'Taiwan', 'New Taiwan Dollar', '59 Shihfu Road, Central District, Taichung, Taiwan', NULL, 'http://www.cotabank.com.tw/', false);
INSERT INTO public.banks VALUES (2426, 'www.bankofbaroda.com', 'Bank of Baroda', 'IN', 'INR', 'India', 'Indian Rupee', 'Vadodara, Gujarat, India[1]', NULL, 'https://www.bankofbaroda.com/', false);
INSERT INTO public.banks VALUES (2427, 'www.left-bank.com', 'Left Bank Books', 'US', 'USD', 'United States', 'US Dollar', 'St. Louis, Missouri, United States', NULL, 'http://www.left-bank.com/', false);
INSERT INTO public.banks VALUES (2428, 'www.herringbank.com', 'Herring Bank', 'US', 'USD', 'United States', 'US Dollar', 'Amarillo, Texas, United States', NULL, 'http://www.herringbank.com', false);
INSERT INTO public.banks VALUES (2429, 'www.piraeusbank.rs', 'Piraeus Bank Beograd', 'RS', 'RSD', 'Serbia', 'Serbian Dinar', 'Belgrade, Serbia', NULL, 'http://www.piraeusbank.rs', false);
INSERT INTO public.banks VALUES (2430, 'ctznbank.com', 'Citizens Bank International Limited', 'NP', 'NPR', 'Nepal', 'Nepalese Rupee', 'Narayanhiti Path, Kathmandu-44600, Kathmandu, Nepal', NULL, 'http://ctznbank.com', false);
INSERT INTO public.banks VALUES (2431, 'www.fubonbank.com.hk', 'Fubon Bank (Hong Kong) Limited 富邦銀行(香港)有限公司', 'HK', 'HKD', 'Hong Kong', 'Hong Kong Dollar', 'Hong Kong', NULL, 'http://www.fubonbank.com.hk/web/html/index_e.html', false);
INSERT INTO public.banks VALUES (2432, 'www.centralbankofindia.co.in', 'Central Bank of India', 'IN', 'INR', 'India', 'Indian Rupee', 'Mumbai, Maharashtra, India', NULL, 'https://www.centralbankofindia.co.in/', false);
INSERT INTO public.banks VALUES (2433, 'www.lfbank.ly', 'Libyan Foreign Bankالمصرف الليبي الخارجي‎', 'LY', 'LYD', 'Libya', 'Libyan Dinar', 'Tripoli Dat El Imad Administrative Complex, Libya', NULL, 'http://www.lfbank.ly/', false);
INSERT INTO public.banks VALUES (2434, 'www.centurybank.com.np', 'Century Bank Limited', 'NP', 'NPR', 'Nepal', 'Nepalese Rupee', 'Putalisadak, Kathmandu', NULL, 'http://www.centurybank.com.np', false);
INSERT INTO public.banks VALUES (2435, 'nabilbank.com', 'Nabil Bank Limitedनबिल बैंक लिमिटेड', 'NP', 'NPR', 'Nepal', 'Nepalese Rupee', 'Nabil Center, Durbarmarg, Kathmandu, Nepal', NULL, 'http://nabilbank.com', false);
INSERT INTO public.banks VALUES (2436, 'www.uibbank.com', 'United International Bank', 'US', 'USD', 'United States', 'US Dollar', 'New York City, New York, U.S.', NULL, 'http://www.uibbank.com', false);
INSERT INTO public.banks VALUES (2437, 'www.kvgbank.com', 'Karnataka Vikas Grameena Bank', 'IN', 'INR', 'India', 'Indian Rupee', 'Dharwad, Karnataka, India', NULL, 'http://www.kvgbank.com', false);
INSERT INTO public.banks VALUES (2438, 'www.greatwesternbank.com', 'Great Western Bank', 'US', 'USD', 'United States', 'US Dollar', 'Sioux Falls, South Dakota, United States', NULL, 'https://www.greatwesternbank.com/', false);
INSERT INTO public.banks VALUES (2439, 'bankofbaroda.co.tz', 'Bank of Baroda Tanzania Limited', 'TZ', 'TZS', 'Tanzania', 'Tanzanian Shilling', '139/42 Ohio Road at Sokoine Drive, Dar es Salaam, Tanzania', NULL, 'http://bankofbaroda.co.tz/', false);
INSERT INTO public.banks VALUES (2440, 'www.dhbbank.com', 'Demir-Halk Bank (Nederland) N.V.', 'NL', 'EUR', 'Netherlands', 'Euro', 'Rotterdam, Netherlands', NULL, 'http://www.dhbbank.com', false);
INSERT INTO public.banks VALUES (2441, 'www.agrobank.com.my', 'Agrobank (Bank Pertanian Malaysia Berhad)', 'MY', 'MYR', 'Malaysia', 'Malaysian Ringgit', 'Leboh Pasar Besar, Peti Surat 10815, 50726 Kuala Lumpur, Malaysia', NULL, 'http://www.agrobank.com.my', false);
INSERT INTO public.banks VALUES (2442, 'www.ibankunited.com', 'United Commercial Bank', 'US', 'USD', 'United States', 'US Dollar', 'San Francisco, California, U.S.', NULL, 'http://www.ibankunited.com', false);
INSERT INTO public.banks VALUES (2443, 'www.landbank.com', 'Land Bank of the Philippines', 'PH', 'PHP', 'Philippines', 'Philippine Peso', 'Malate, Manila, Philippines', NULL, 'http://www.landbank.com', false);
INSERT INTO public.banks VALUES (2444, 'www.atabank.com', 'AtaBank', 'AZ', 'AZN', 'Azerbaijan', 'Azerbaijanian Manat', 'Baku, Azerbaijan', NULL, 'http://www.atabank.com/?lang=en', false);
INSERT INTO public.banks VALUES (2445, 'www.leftbankpictures.co.uk', 'Left Bank Pictures', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'London, England', NULL, 'https://www.leftbankpictures.co.uk/', false);
INSERT INTO public.banks VALUES (2446, 'bankislam.com.my', 'Bank Islam Malaysia Berhad', 'MY', 'MYR', 'Malaysia', 'Malaysian Ringgit', 'Level 32, Menara Bank Islam, No. 22, Jalan Perak, 50450 Kuala Lumpur, Malaysia', NULL, 'http://bankislam.com.my', false);
INSERT INTO public.banks VALUES (2447, 'www.standardbank.com', 'Standard Bank Group Limited', 'ZA', 'ZAR', 'South Africa', 'Rand', 'Standard Bank Centre, Johannesburg, South Africa', NULL, 'http://www.standardbank.com/', false);
INSERT INTO public.banks VALUES (2448, 'www.bankofmaharashtra.in', 'Bank of Maharashtra बैंक ऑफ महाराष्ट्र', 'IN', 'INR', 'India', 'Indian Rupee', '1501, Lokmangal, Shivajinagar, Pune India', NULL, 'http://www.bankofmaharashtra.in', false);
INSERT INTO public.banks VALUES (2449, 'www.nurolbank.com.tr', 'Nurol Bank', 'TR', 'TRY', 'Turkey', 'Turkish Lira', 'Maslak, Beşiktaş, Istanbul, Turkey', NULL, 'http://www.nurolbank.com.tr/', false);
INSERT INTO public.banks VALUES (2450, 'www.zenithbank.com', 'Zenith Bank Plc', 'NG', 'NGN', 'Nigeria', 'Naira', 'Zenith Heights, Plot 84, Ajose Adeogun street, Victoria Island, Lagos, Lagos State, Nigeria
        ', NULL, 'https://www.zenithbank.com/', false);
INSERT INTO public.banks VALUES (2451, 'www.prabhubank.com', 'Prabhu Bank', 'NP', 'NPR', 'Nepal', 'Nepalese Rupee', 'Babarmahal, Kathmandu', NULL, 'http://www.prabhubank.com/', false);
INSERT INTO public.banks VALUES (2452, 'www.bankgaborone.co.bw', 'Bank Gaborone Limited', 'BW', 'BWP', 'Botswana', 'Pula', 'Gaborone, Botswana', NULL, 'http://www.bankgaborone.co.bw', false);
INSERT INTO public.banks VALUES (2453, 'idea-bank.ro', 'Idea Bank', 'RO', 'RON', 'Romania', 'Romanian Leu', 'Bucharest, Romania', NULL, 'https://idea-bank.ro/', false);
INSERT INTO public.banks VALUES (2454, 'www.central-bank.org.tt', 'Central Bank of Trinidad and Tobago', 'ES', 'EUR', 'Spain', 'Euro', 'Port of Spain', NULL, 'http://www.central-bank.org.tt', false);
INSERT INTO public.banks VALUES (2455, 'www.uttarabank-bd.com', 'Uttara Bank Limited', 'BD', 'BDT', 'Bangladesh', 'Taka', 'Dhaka, Bangladesh', NULL, 'http://www.uttarabank-bd.com/', false);
INSERT INTO public.banks VALUES (2456, 'www.sindhbankltd.com', 'Sindh Bank Limited', 'PK', 'PKR', 'Pakistan', 'Pakistan Rupee', 'Karachi, Pakistan', NULL, 'http://www.sindhbankltd.com/', false);
INSERT INTO public.banks VALUES (2457, 'www.artsakhbank.com', 'Artsakhbank', 'AM', 'AMD', 'Armenia', 'Armenian Dram', 'Yerevan, Armenia', NULL, 'http://www.artsakhbank.com/', false);
INSERT INTO public.banks VALUES (2458, 'www.alhilalbank.ae', 'al hilal bank', 'AE', 'AED', 'United Arab Emirates', 'UAE Dirham', 'Abu Dhabi, UAE', NULL, 'http://www.alhilalbank.ae/', false);
INSERT INTO public.banks VALUES (2459, 'www.ibank.co.th', 'Islamic Bank of Thailand (iBank)', 'TH', 'THB', 'Thailand', 'Baht', 'Watthana, Bangkok10110[1], Thailand', NULL, 'http://www.ibank.co.th/2010/en/main/', false);
INSERT INTO public.banks VALUES (2460, 'www.aareal-bank.com', 'Aareal Bank AG', 'DE', 'EUR', 'Germany', 'Euro', 'Wiesbaden, Germany', NULL, 'http://www.aareal-bank.com/en/', false);
INSERT INTO public.banks VALUES (2461, 'scotiabank.com', 'The Bank of Nova Scotia', 'CA', 'CAD', 'Canada', 'Canadian Dollar', 'Toronto, Ontario, Canada[1]', NULL, 'http://scotiabank.com/', false);
INSERT INTO public.banks VALUES (2462, 'www.banknordik.com', 'BankNordik P/F', 'FO', 'DKK', 'Faroe Islands', 'Danish Krone', 'Tórshavn, Faroe Islands', NULL, 'http://www.banknordik.com', false);
INSERT INTO public.banks VALUES (2463, 'info.agribank.com', 'AgriBank, FCB', 'US', 'USD', 'United States', 'US Dollar', 'St. Paul, Minnesota', NULL, 'http://info.agribank.com', false);
INSERT INTO public.banks VALUES (2464, 'www.firstsomalibank.com', 'First Somali Bank', 'SO', 'SOS', 'Somalia', 'Somali Shilling', 'Mogadishu, Somalia', NULL, 'http://www.firstsomalibank.com', false);
INSERT INTO public.banks VALUES (2465, 'www.exportbank.com.ph', 'Export and Industry Bank', 'PH', 'PHP', 'Philippines', 'Philippine Peso', 'Makati, Philippines', NULL, 'http://www.exportbank.com.ph', false);
INSERT INTO public.banks VALUES (2466, 'www.bankrakyat.com.my', 'Bank Kerjasama Rakyat Malaysia Berhad (Bank Rakyat)', 'MY', 'MYR', 'Malaysia', 'Malaysian Ringgit', 'Menara Kembar Bank Rakyat, Jalan Rakyat, Kuala Lumpur, Malaysia', NULL, 'https://www.bankrakyat.com.my', false);
INSERT INTO public.banks VALUES (2467, 'www.bankbsu.ch', 'Bank BSU', 'CH', 'CHF', 'Switzerland', 'Swiss Franc', 'Bankstrasse 21, 8610 Uster, Switzerland', NULL, 'https://www.bankbsu.ch', false);
INSERT INTO public.banks VALUES (2468, 'www.mkombozibank.com', 'Mkombozi Commercial Bank', 'TZ', 'TZS', 'Tanzania', 'Tanzanian Shilling', 'Dar es Salaam, Tanzania', NULL, 'http://www.mkombozibank.com/', false);
INSERT INTO public.banks VALUES (2469, 'www.kombank.com', 'Komercijalna banka', 'RS', 'RSD', 'Serbia', 'Serbian Dinar', 'Svetog Save 14, Belgrade, Serbia', NULL, 'http://www.kombank.com', false);
INSERT INTO public.banks VALUES (2470, 'group.softbank', 'SoftBank Group Corp.', 'JP', 'JPY', 'Japan', 'Yen', 'Tokyo Shiodome Building, Minato-ku, Tokyo, Japan', NULL, 'https://group.softbank/en/', false);
INSERT INTO public.banks VALUES (2471, 'rw.equitybankgroup.com', 'Equity Bank Rwanda Limited', 'RW', 'RWF', 'Rwanda', 'Rwanda Franc', 'Kigali Reinsurance PlazaKigali, Rwanda', NULL, 'https://rw.equitybankgroup.com/', false);
INSERT INTO public.banks VALUES (2472, 'www.bankhall.org', 'Friends of Bank Hall (formerly the Bank Hall Action Group)', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Bretherton, United Kingdom', NULL, 'http://www.bankhall.org', false);
INSERT INTO public.banks VALUES (2473, 'www.castell-bank.de', 'Fürstlich Castell''sche Bank', 'DE', 'EUR', 'Germany', 'Euro', 'Marktplatz 1, 97070, Würzburg, Germany', NULL, 'https://www.castell-bank.de', false);
INSERT INTO public.banks VALUES (2474, 'www.bankwindhoek.com.na', 'Bank Windhoek', 'NA', 'NAD', 'Namibia', 'Namibia Dollar', 'Windhoek, Namibia', NULL, 'http://www.bankwindhoek.com.na', false);
INSERT INTO public.banks VALUES (2475, 'www.chasebankkenya.co.ke', 'Chase Bank Kenya Limited', 'KE', 'KES', 'Kenya', 'Kenyan Shilling', 'Nairobi, Kenya', NULL, 'http://www.chasebankkenya.co.ke/', false);
INSERT INTO public.banks VALUES (2477, 'www.attijariwafabank.com', 'Attijariwafa bank', 'MA', 'MAD', 'Morocco', 'Moroccan Dirham', '20 000 Casablanca2, Bd Moulay Youssef, Morocco', NULL, 'http://www.attijariwafabank.com/', false);
INSERT INTO public.banks VALUES (2478, 'www.tbibank.bg', 'TBI Bank', 'BG', 'BGN', 'Bulgaria', 'Bulgarian Lev', '52-54, Dimitar Hadzhikotsev Street, Lozenets District, Sofia, Bulgaria', NULL, 'https://www.tbibank.bg/en', false);
INSERT INTO public.banks VALUES (2479, 'www.sterlingbankasia.com', 'Sterling Bank of Asia', 'PH', 'PHP', 'Philippines', 'Philippine Peso', 'San Juan, Metro Manila, Philippines', NULL, 'http://www.sterlingbankasia.com', false);
INSERT INTO public.banks VALUES (2480, 'www.centralbankmalta.org', 'Central Bank of MaltaBank Ċentrali ta’ Malta', 'MT', 'EUR', 'Malta', 'Euro', 'Binja Laparelli, St James’s Counterguard, Valletta', NULL, 'https://www.centralbankmalta.org', false);
INSERT INTO public.banks VALUES (2481, 'www.onewestbank.com', 'OneWest Bank, N.A.', 'US', 'USD', 'United States', 'US Dollar', 'Pasadena, California, US', NULL, 'https://www.onewestbank.com', false);
INSERT INTO public.banks VALUES (2482, 'www.fidelitybank.com.gh', 'Fidelity Bank', 'GH', 'GHS', 'Ghana', 'Ghana Cedi', 'Accra,', NULL, 'http://www.fidelitybank.com.gh', false);
INSERT INTO public.banks VALUES (2483, 'www.eximbankbd.com', 'Export-Import Bank of Bangladesh', 'BD', 'BDT', 'Bangladesh', 'Taka', 'Dhaka, Bangladesh', NULL, 'http://www.eximbankbd.com/', false);
INSERT INTO public.banks VALUES (2484, 'ficobank.com.ph', 'First Isabela Cooperative Bank', 'PH', 'PHP', 'Philippines', 'Philippine Peso', 'Maharlika Hwy., Minante 1, Cauayan City, Isabela, Philippines', NULL, 'http://ficobank.com.ph', false);
INSERT INTO public.banks VALUES (2485, 'centralbank.ie', 'Central Bank of IrelandBanc Ceannais na hÉireann', 'IE', 'EUR', 'Ireland', 'Euro', 'New Wapping StreetNorth Wall QuayDublinD01 F7X3Ireland', NULL, 'http://centralbank.ie', false);
INSERT INTO public.banks VALUES (2486, 'www.corusbank.com', 'Corus Bankshares Inc.', 'US', 'USD', 'United States', 'US Dollar', 'Chicago, IL, United States', NULL, 'http://www.corusbank.com', false);
INSERT INTO public.banks VALUES (2487, 'apobank.de', 'Deutsche Apotheker- und Ärztebank eG (Apobank)', 'DE', 'EUR', 'Germany', 'Euro', 'Düsseldorf, Germany', NULL, 'http://apobank.de/', false);
INSERT INTO public.banks VALUES (2488, 'www.dekabank.de', 'DekaBank', 'DE', 'EUR', 'Germany', 'Euro', 'Frankfurt am Main, Germany', NULL, 'http://www.dekabank.de/db/en/index.jsp', false);
INSERT INTO public.banks VALUES (2489, 'www.canadiabank.com.kh', 'Canadia Bank PLC. Cambodia', 'KH', 'KHR', 'Cambodia', 'Riel', 'Phnom Penh, Cambodia', NULL, 'http://www.canadiabank.com.kh', false);
INSERT INTO public.banks VALUES (2490, 'www.pochtabank.ru', 'Pochta Bank', 'RU', 'RUB', 'Russia', 'Russian Ruble', 'Moscow, Russia', NULL, 'https://www.pochtabank.ru', false);
INSERT INTO public.banks VALUES (2491, 'www.bangkokbank.com', 'Bangkok Bank ธนาคารกรุงเทพ', 'TH', 'THB', 'Thailand', 'Baht', 'Bang Rak, Bangkok[1], Thailand', NULL, 'http://www.bangkokbank.com/', false);
INSERT INTO public.banks VALUES (2492, 'www.firstcapitalbank.co.mw', 'First Capital Bank', 'MW', 'MWK', 'Malawi', 'Kwacha', 'Blantyre, Malawi', NULL, 'http://www.firstcapitalbank.co.mw/', false);
INSERT INTO public.banks VALUES (2493, 'fivestarbank.com', 'Five Star Bank', 'US', 'USD', 'United States', 'US Dollar', 'Roseville, California, United States', NULL, 'http://fivestarbank.com', false);
INSERT INTO public.banks VALUES (2582, 'banesco.com', 'Banesco Banco Universal S.A.', 'VE', 'VEF', 'Venezuela', 'Bolivar', 'Caracas, Venezuela', NULL, 'http://banesco.com', false);
INSERT INTO public.banks VALUES (2494, 'www.qnbfinansbank.com', 'QNB Finansbank A.Ş.', 'TR', 'TRY', 'Turkey', 'Turkish Lira', 'Büyükdere Avenue, Levent, Istanbul, Turkey', NULL, 'http://www.qnbfinansbank.com/', false);
INSERT INTO public.banks VALUES (2495, 'www.tejaratbank.ir', 'Tejarat Bank', 'IR', 'IRR', 'Iran', 'Iranian Rial', 'Tehran, Iran', NULL, 'http://www.tejaratbank.ir/', false);
INSERT INTO public.banks VALUES (2496, 'www.volksbank.it', 'Volksbank – Banca Popolare', 'IT', 'EUR', 'Italy', 'Euro', 'Bolzano, South Tyrol, Italy', NULL, 'https://www.volksbank.it/de/', false);
INSERT INTO public.banks VALUES (2497, 'www.dukascopy.com', 'Dukascopy Bank SA', 'CH', 'CHF', 'Switzerland', 'Swiss Franc', 'Geneva, Switzerland', NULL, 'https://www.dukascopy.com', false);
INSERT INTO public.banks VALUES (2498, 'www.bankofscotlandinternational.com', 'Bank of Scotland International', 'JE', 'GBP', 'Jersey', 'Pound Sterling', 'St Helier, Jersey, Channel Islands', NULL, 'http://www.bankofscotlandinternational.com/home/home.asp', false);
INSERT INTO public.banks VALUES (2499, 'www.daishi-bank.co.jp', 'The Daishi Bank', 'JP', 'JPY', 'Japan', 'Yen', '1071-1 Shichiban-cho, Higashiborimae-dori, Niigata, Niigata Prefecture, Japan', NULL, 'https://www.daishi-bank.co.jp/english', false);
INSERT INTO public.banks VALUES (2500, 'www.southeastbank.com.bd', 'Southeast Bank Limited', 'BD', 'BDT', 'Bangladesh', 'Taka', 'Dhaka, Bangladesh', NULL, 'http://www.southeastbank.com.bd', false);
INSERT INTO public.banks VALUES (2501, 'www.canarabank.com', 'Canara Bank', 'IN', 'INR', 'India', 'Indian Rupee', 'Bangalore, Karnataka, India', NULL, 'http://www.canarabank.com', false);
INSERT INTO public.banks VALUES (2502, 'www.accessbank.tj', 'AccessBank Tajikistan', 'TJ', 'TJS', 'Tajikistan', 'Somoni', 'Dushanbe, Tajikistan', NULL, 'http://www.accessbank.tj/en', false);
INSERT INTO public.banks VALUES (2503, 'www.armswissbank.am', 'ArmSwissBank CJSC', 'AM', 'AMD', 'Armenia', 'Armenian Dram', 'Yerevan, Armenia', NULL, 'http://www.armswissbank.am', false);
INSERT INTO public.banks VALUES (2504, 'www.creditonebank.com', 'Credit One Bank', 'US', 'USD', 'United States', 'US Dollar', '585 Pilot Road, Las Vegas, Nevada, 89119 U.S.[1]', NULL, 'http://www.creditonebank.com/', false);
INSERT INTO public.banks VALUES (2505, 'www.77bank.co.jp', 'The 77 Bank Ltd 七十七銀行', 'JP', 'JPY', 'Japan', 'Yen', 'Sendai, Japan (December 1878)', NULL, 'http://www.77bank.co.jp/', false);
INSERT INTO public.banks VALUES (2506, 'www.ccbank.bg', 'Central Cooperative Bank Plc.Централна кооперативна банка АД', 'BG', 'BGN', 'Bulgaria', 'Bulgarian Lev', 'Sofia, Bulgaria', NULL, 'http://www.ccbank.bg/en/', false);
INSERT INTO public.banks VALUES (2507, 'www.fibank.bg', 'First Investment Bank Първа инвестиционна банка', 'BG', 'BGN', 'Bulgaria', 'Bulgarian Lev', 'Sofia, Bulgaria', NULL, 'http://www.fibank.bg/en', false);
INSERT INTO public.banks VALUES (2508, 'www.apeksbank.com.ua', 'PJSC «APEKS-BANK» ПАТ «АПЕКС-БАНК»', 'UA', 'UAH', 'Ukraine', 'Hryvnia', 'Kiev, Ukraine', NULL, 'http://www.apeksbank.com.ua', false);
INSERT INTO public.banks VALUES (2509, 'alternabank.ca', 'Alterna Bank', 'CA', 'CAD', 'Canada', 'Canadian Dollar', 'Ottawa , Canada ', NULL, 'http://alternabank.ca', false);
INSERT INTO public.banks VALUES (2510, 'www.newomnibank.com', 'New Omni Bank n.a.', 'US', 'USD', 'United States', 'US Dollar', 'Alhambra, California
 asset = $182.9 million USD Return on assets = 0.92 Return on equity =
            8.48
        ', NULL, 'http://www.newomnibank.com/', false);
INSERT INTO public.banks VALUES (2511, 'www.springbankplc.com', 'Spring Bank Plc.', 'NG', 'NGN', 'Nigeria', 'Naira', '143 Ahmadu Bello Way Victoria Island, Lagos, Nigeria', NULL, 'http://www.springbankplc.com/', false);
INSERT INTO public.banks VALUES (2512, 'www.certusbank.com', 'CertusBank, N.A.', 'US', 'USD', 'United States', 'US Dollar', 'Greenville, South Carolina, U.S.', NULL, 'https://www.certusbank.com/', false);
INSERT INTO public.banks VALUES (2513, 'bankandclients.com', 'Bank and Clients plc', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'London (Registered Office), United Kingdom', NULL, 'http://bankandclients.com/', false);
INSERT INTO public.banks VALUES (2514, 'ke.equitybankgroup.com', 'Equity Bank Kenya Limited', 'KE', 'KES', 'Kenya', 'Kenyan Shilling', '9th Floor, Equity CentreHospital Road, Upper HillNairobi, Kenya', NULL, 'https://ke.equitybankgroup.com/', false);
INSERT INTO public.banks VALUES (2515, 'www.landbank.com.tw', 'Land Bank of Taiwan Co., Ltd.', 'TW', 'TWD', 'Taiwan', 'New Taiwan Dollar', 'Zhongzheng, Taipei, Taiwan', NULL, 'https://www.landbank.com.tw/En', false);
INSERT INTO public.banks VALUES (2516, 'www.agribank.com.vn', 'Vietnam Bank for Agriculture and Rural Development', 'VN', 'VND', 'Vietnam', 'Dong', 'Ba Dinh District, Hanoi, Vietnam', NULL, 'http://www.agribank.com.vn', false);
INSERT INTO public.banks VALUES (2517, 'www.sevenbank.co.jp', 'Seven Bank, Ltd.株式会社セブン銀行', 'JP', 'JPY', 'Japan', 'Yen', 'Marunouchi, Chiyoda, Tokyo, Japan', NULL, 'http://www.sevenbank.co.jp/intlcard/index2.html', false);
INSERT INTO public.banks VALUES (2518, 'www.oschadbank.ua', 'State Savings Bank of Ukraine (Ukrainian: Ощадбанк України)', 'UA', 'UAH', 'Ukraine', 'Hryvnia', 'Kiev, Ukraine', NULL, 'http://www.oschadbank.ua/', false);
INSERT INTO public.banks VALUES (2519, 'www.bankmandiri.co.id', 'PT Bank Mandiri (Persero) Tbk.', 'ID', 'IDR', 'Indonesia', 'Rupiah', 'Jakarta, Indonesia', NULL, 'http://www.bankmandiri.co.id/index_en.asp', false);
INSERT INTO public.banks VALUES (2520, 'www.ctfoodbank.org', 'Connecticut Food Bank', 'US', 'USD', 'United States', 'US Dollar', 'Wallingford,_Connecticut, Connecticut', NULL, 'http://www.ctfoodbank.org/', false);
INSERT INTO public.banks VALUES (2521, 'www.cebbank.com', 'China Everbright Bank', 'CN', 'CNY', 'China', 'Yuan Renminbi', 'China Everbright Center, 25 Taipingqiao Avenue, Xicheng District, Beijing, China', NULL, 'http://www.cebbank.com', false);
INSERT INTO public.banks VALUES (2522, 'www.bankalfalah.com', 'Bank Alfalah Limited', 'PK', 'PKR', 'Pakistan', 'Pakistan Rupee', 'Karachi, Pakistan', NULL, 'http://www.bankalfalah.com', false);
INSERT INTO public.banks VALUES (2523, 'www.dnsbank.in', 'Dombivli Nagari Sahakari Bank Ltd.', 'IN', 'INR', 'India', 'Indian Rupee', 'Dombivli Nagari Sahakari Bank Ltd.
Scheduled Bank, "Madhukunj", P-52, M.I.D.C., Kalyan
            Shil Road, Sonarpada,, Dombivli (East), Thane, India
        ', NULL, 'http://www.dnsbank.in', false);
INSERT INTO public.banks VALUES (2524, 'www.bankofgreece.gr', 'Bank of GreeceΤράπεζα της Ελλάδος', 'GR', 'EUR', 'Greece', 'Euro', 'Athens', NULL, 'https://www.bankofgreece.gr/', false);
INSERT INTO public.banks VALUES (2525, 'firstalliancebankzambia.com', 'First Alliance Bank Zambia Limited', 'ZM', 'ZMW', 'Zambia', 'Zambian Kwacha', 'Lusaka, Zambia', NULL, 'http://firstalliancebankzambia.com/', false);
INSERT INTO public.banks VALUES (2526, 'www.gatehousebank.com', 'Gatehouse Bank PLC', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Mayfair, London, United Kingdom', NULL, 'http://www.gatehousebank.com', false);
INSERT INTO public.banks VALUES (2527, 'www.mizuhobank.com', 'Mizuho Bank, Ltd.', 'JP', 'JPY', 'Japan', 'Yen', 'Otemachi, Chiyoda-ku, Tokyo, Japan', NULL, 'http://www.mizuhobank.com/', false);
INSERT INTO public.banks VALUES (2528, 'eng.wooribank.com', 'Woori Bank 우리은행', 'KR', 'KRW', 'South Korea', 'South Korean Won', 'Hoehyeon-dong, Jung-gu, Seoul, South Korea', NULL, 'http://eng.wooribank.com', false);
INSERT INTO public.banks VALUES (2529, 'www.agvbank.co.in', 'Assam Gramin Vikash Bank', 'IN', 'INR', 'India', 'Indian Rupee', 'Guwahati, Assam, India', NULL, 'http://www.agvbank.co.in/', false);
INSERT INTO public.banks VALUES (2530, 'www.bankm.co.tz.', 'Bank M', 'TZ', 'TZS', 'Tanzania', 'Tanzanian Shilling', 'Dar es Salaam, Tanzania', NULL, 'http://www.bankm.co.tz.', false);
INSERT INTO public.banks VALUES (2531, 'www.unicreditbank.ru', 'UniCredit Bank', 'RU', 'RUB', 'Russia', 'Russian Ruble', 'Moscow, Russia', NULL, 'http://www.unicreditbank.ru', false);
INSERT INTO public.banks VALUES (2532, 'co-operativebank.co.uk', 'The Co-operative Bank plc', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', '1 Balloon StreetManchester, United Kingdom', NULL, 'http://co-operativebank.co.uk', false);
INSERT INTO public.banks VALUES (2533, 'www.royalbank.co.zw', 'Royal Bank Zimbabwe', 'ZW', 'ZWL', 'Zimbabwe', 'Zimbabwe Dollar', 'Harare, Zimbabwe', NULL, 'http://www.royalbank.co.zw/', false);
INSERT INTO public.banks VALUES (2534, 'sonalibank.com.bd', 'Sonali Bank Limited', 'BD', 'BDT', 'Bangladesh', 'Taka', 'Motijheel, Dhaka, Bangladesh', NULL, 'http://sonalibank.com.bd', false);
INSERT INTO public.banks VALUES (2535, 'www.tiranabank.al', 'Tirana Bank', 'AL', 'ALL', 'Albania', 'Lek', 'Tirana, Albania', NULL, 'http://www.tiranabank.al/', false);
INSERT INTO public.banks VALUES (2536, 'www.centralbank.ae', 'Central Bank of the United Arab Emiratesمصرف الإمارات العربية المتحدة المركزي (in Arabic)', 'AE', 'AED', 'United Arab Emirates', 'UAE Dirham', 'Bainunah Street, Al Bateen Area, PO Box 854, Abu Dhabi, United Arab Emirates[clarification
            needed]
        ', NULL, 'https://www.centralbank.ae/en', false);
INSERT INTO public.banks VALUES (2537, 'www.bankofengland.co.uk', 'Governor and Company of the Bank of England', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Threadneedle StreetLondon, EC2England, United Kingdom', NULL, 'https://www.bankofengland.co.uk', false);
INSERT INTO public.banks VALUES (2538, 'preferredbank.com', 'Preferred Bank', 'US', 'USD', 'United States', 'US Dollar', 'Los Angeles County, California and Orange County, California', NULL, 'http://preferredbank.com', false);
INSERT INTO public.banks VALUES (2539, 'www.nationalbanken.dk', 'Danmarks Nationalbank', 'DK', 'DKK', 'Denmark', 'Danish Krone', 'Havnegade 5, Copenhagen', NULL, 'http://www.nationalbanken.dk', false);
INSERT INTO public.banks VALUES (2540, 'www.spks.dk', 'Sparekassen Sjælland (About)', 'DK', 'DKK', 'Denmark', 'Danish Krone', 'Holbæk, Denmark', NULL, 'https://www.spks.dk/', false);
INSERT INTO public.banks VALUES (2541, 'www.pekao.com.pl', 'Bank Pekao S.A.', 'PL', 'PLN', 'Poland', 'Zloty', 'Warsaw, Poland', NULL, 'http://www.pekao.com.pl', false);
INSERT INTO public.banks VALUES (2542, 'www.bou.or.ug', 'Bank of UgandaBenki Kuu ya Uganda', 'UG', 'UGX', 'Uganda', 'Uganda Shilling', 'Kampala, Uganda', NULL, 'https://www.bou.or.ug/bou/home.html', false);
INSERT INTO public.banks VALUES (2543, 'www.americanexpress.com', 'The American Express Company', 'US', 'USD', 'United States', 'US Dollar', '200 Vesey Street, New York City, New York, United States', NULL, 'https://www.americanexpress.com/', false);
INSERT INTO public.banks VALUES (2544, 'www.kd-bank.de', 'Bank für Kirche und Diakonie', 'DE', 'EUR', 'Germany', 'Euro', 'Dortmund, Germany', NULL, 'http://www.kd-bank.de/', false);
INSERT INTO public.banks VALUES (2545, 'www.ptinews.com', 'The Press Trust of India Ltd.', 'IN', 'INR', 'India', 'Indian Rupee', 'PTI Building, 4, Parliament Street, New Delhi, India[2]', NULL, 'http://www.ptinews.com', false);
INSERT INTO public.banks VALUES (2546, 'www.scb.co.th', 'The Siam Commercial Bank Public Company Limited', 'TH', 'THB', 'Thailand', 'Baht', 'SCB Park Plaza, Chatuchak, Bangkok, Thailand', NULL, 'https://www.scb.co.th/en/about-us.html', false);
INSERT INTO public.banks VALUES (2547, 'www.carnegie.se', 'Carnegie Investment Bank', 'SE', 'SEK', 'Sweden', 'Swedish Krona', 'Stockholm, Sweden', NULL, 'http://www.carnegie.se/', false);
INSERT INTO public.banks VALUES (2548, 'www.cbt.tm', 'Central Bank of TurkmenistanTürkmenistanyň Merkezi Banky', 'TM', 'TMT', 'Turkmenistan', 'Turkmenistan New Manat', 'Bitarap Turkmenistan avenue 36, Ashgabat, Turkmenistan', NULL, 'http://www.cbt.tm', false);
INSERT INTO public.banks VALUES (2549, 'www.americanpremierbank.com', 'American Premier Bank', 'US', 'USD', 'United States', 'US Dollar', 'Arcadia, California', NULL, 'http://www.americanpremierbank.com', false);
INSERT INTO public.banks VALUES (2550, 'www.santanderbank.com', 'Santander Bank, N. A.', 'US', 'USD', 'United States', 'US Dollar', '75 State StreetBoston, Massachusetts, 02109 U.S.', NULL, 'http://www.santanderbank.com', false);
INSERT INTO public.banks VALUES (2551, 'www.forchtgroup.com', 'Forcht Group of Kentucky', 'US', 'USD', 'United States', 'US Dollar', 'Lexington, Kentucky and Corbin, Kentucky, United States', NULL, 'http://www.forchtgroup.com/', false);
INSERT INTO public.banks VALUES (2552, 'www.robinsonsbank.com.ph', 'Robinsons Bank Corporation', 'PH', 'PHP', 'Philippines', 'Philippine Peso', 'Quezon City, Philippines', NULL, 'https://www.robinsonsbank.com.ph', false);
INSERT INTO public.banks VALUES (2553, 'www.sparebankstiftelsen.no', 'Sparebankstiftelsen DNB', 'NO', 'NOK', 'Norway', 'Norwegian Krone', 'Oslo, Norway', NULL, 'http://www.sparebankstiftelsen.no', false);
INSERT INTO public.banks VALUES (2554, 'www.fonplata.org', 'Plata Basin Financial Development Fund', 'BO', 'BOB', 'Bolivia', 'Boliviano', 'Avenida San Martín #155, barrio Equipetrol, edificio Ambassador Business Center Piso 3Santa Cruz
            de la SierraBolivia
        ', NULL, 'http://www.fonplata.org', false);
INSERT INTO public.banks VALUES (2555, 'www.robinhood.com', 'Robinhood Markets Inc.', 'US', 'USD', 'United States', 'US Dollar', 'Menlo Park, California, United States', NULL, 'https://www.robinhood.com/', false);
INSERT INTO public.banks VALUES (2556, 'www.co-operativebankinggroup.co.uk', 'Co-operative Banking Group', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'CIS Tower, Manchester, United Kingdom', NULL, 'http://www.co-operativebankinggroup.co.uk', false);
INSERT INTO public.banks VALUES (2557, 'www.dubuquebank.com', 'Dubuque Bank and Trust Company', 'US', 'USD', 'United States', 'US Dollar', 'Dubuque, Iowa, United States', NULL, 'http://www.dubuquebank.com/', false);
INSERT INTO public.banks VALUES (2558, 'www.royalbank.az', 'Royal Bank', 'AZ', 'AZN', 'Azerbaijan', 'Azerbaijanian Manat', 'Baku, Azerbaijan', NULL, 'http://www.royalbank.az/new/view/default.phtml?lang=en', false);
INSERT INTO public.banks VALUES (2559, 'www.cbd.ae', 'Commercial Bank of Dubaiبنك دبي التجاري', 'AE', 'AED', 'United Arab Emirates', 'UAE Dirham', 'Dubai, United Arab Emirates', NULL, 'https://www.cbd.ae', false);
INSERT INTO public.banks VALUES (2560, 'www.tdautofinance.com', 'TD Auto Finance', 'US', 'USD', 'United States', 'US Dollar', 'Farmington Hills, Michigan', NULL, 'https://www.tdautofinance.com', false);
INSERT INTO public.banks VALUES (2561, 'www.amegybank.com', 'Amegy Bank of Texas', 'US', 'USD', 'United States', 'US Dollar', 'Houston, Texas', NULL, 'http://www.amegybank.com', false);
INSERT INTO public.banks VALUES (2562, 'www.republicghana.com', 'Republic Bank (Ghana) Limited', 'GH', 'GHS', 'Ghana', 'Ghana Cedi', 'Accra, Ghana', NULL, 'https://www.republicghana.com/', false);
INSERT INTO public.banks VALUES (2563, 'www.landsbankinn.is', 'Landsbankinn hf', 'IS', 'ISK', 'Iceland', 'Iceland Krona', 'Reykjavík, Iceland', NULL, 'http://www.landsbankinn.is/', false);
INSERT INTO public.banks VALUES (2564, 'www.cbj.gov.jo', 'Central Bank of Jordanالبنك المركزي الاردني', 'JO', 'JOD', 'Jordan', 'Jordanian Dinar', 'Amman', NULL, 'http://www.cbj.gov.jo', false);
INSERT INTO public.banks VALUES (2565, 'www.cbc.gov.tw', 'Central Bank of the Republic of China (Taiwan).mw-parser-output .nobold{font-weight:normal}中央銀行', 'TW', 'TWD', 'Taiwan', 'New Taiwan Dollar', 'Zhongzheng, Taipei', NULL, 'http://www.cbc.gov.tw/mp2.html', false);
INSERT INTO public.banks VALUES (2566, 'www.crediteuropebank.com', 'Credit Europe Bank N.V.', 'NL', 'EUR', 'Netherlands', 'Euro', 'Amsterdam, Netherlands', NULL, 'http://www.crediteuropebank.com', false);
INSERT INTO public.banks VALUES (2567, 'www.ernakulam.nic.in', 'Ernakulam district', 'IN', 'INR', 'India', 'Indian Rupee', 'Kakkanad', NULL, 'http://www.ernakulam.nic.in', false);
INSERT INTO public.banks VALUES (2568, 'www.duncanlawrie.com', 'Duncan Lawrie Ltd', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Belgravia, London, England, UK', NULL, 'http://www.duncanlawrie.com', false);
INSERT INTO public.banks VALUES (2569, 'www.ca-cib.com', 'Crédit Agricole CIB', 'FR', 'EUR', 'France', 'Euro', 'Paris, France', NULL, 'http://www.ca-cib.com', false);
INSERT INTO public.banks VALUES (2570, 'feedingamerica.org', 'Feeding America', 'US', 'USD', 'United States', 'US Dollar', '35 East WackerChicago, Illinois', NULL, 'http://feedingamerica.org', false);
INSERT INTO public.banks VALUES (2571, 'www.lankaclear.lk', 'Sri Lanka Interbank Payment System (SLIPS)', 'LK', 'LKR', 'Sri Lanka', 'Sri Lanka Rupee', 'Colombo, Sri Lanka', NULL, 'http://www.lankaclear.lk', false);
INSERT INTO public.banks VALUES (2572, 'www.kbzbank.com', 'Kanbawza Bank', 'MM', 'MMK', 'Myanmar', 'Kyat', 'Yangon, Myanmar', NULL, 'http://www.kbzbank.com', false);
INSERT INTO public.banks VALUES (2573, 'www.rothschildandco.com', 'Rothschild & Co', 'FR', 'EUR', 'France', 'Euro', 'Paris, FranceLondon, England', NULL, 'http://www.rothschildandco.com/', false);
INSERT INTO public.banks VALUES (2574, 'www.greenbank.com', 'Green Bancorp, Inc.', 'US', 'USD', 'United States', 'US Dollar', 'Houston, Texas', NULL, 'https://www.greenbank.com/', false);
INSERT INTO public.banks VALUES (2575, 'www.bitfinex.com', 'Bitfinex, Inc.', 'HK', 'HKD', 'Hong Kong', 'Hong Kong Dollar', 'Hong Kong', NULL, 'https://www.bitfinex.com', false);
INSERT INTO public.banks VALUES (2576, 'www.nbs.ws', 'National Bank of Samoa', 'WS', 'WST', 'Samoa', 'Tala', 'Apia, Samoa', NULL, 'http://www.nbs.ws/', false);
INSERT INTO public.banks VALUES (2577, 'www.sbp.co.in', 'State Bank of Patiala', 'IN', 'INR', 'India', 'Indian Rupee', 'Head Office, The Mall, Patiala 147 002 India', NULL, 'http://www.sbp.co.in/', false);
INSERT INTO public.banks VALUES (2578, 'www.realtor.com', 'Realtor.com', 'US', 'USD', 'United States', 'US Dollar', '3315 Scott Blvd., Santa Clara, California, United States', NULL, 'https://www.realtor.com', false);
INSERT INTO public.banks VALUES (2579, 'www.uralsib.com', 'Uralsib', 'RU', 'RUB', 'Russia', 'Russian Ruble', 'Moscow, Russia', NULL, 'http://www.uralsib.com/', false);
INSERT INTO public.banks VALUES (2580, 'freetrade.io', 'Freetrade Ltd', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'London, United Kingdom', NULL, 'http://freetrade.io', false);
INSERT INTO public.banks VALUES (2581, 'www.bancofcal.com', 'Banc of California, Inc.', 'US', 'USD', 'United States', 'US Dollar', 'Santa Ana, California', NULL, 'http://www.bancofcal.com', false);
INSERT INTO public.banks VALUES (2583, 'www.berenberg.de', 'Joh. Berenberg, Gossler & Co.', 'DE', 'EUR', 'Germany', 'Euro', 'Hamburg, Germany', NULL, 'http://www.berenberg.de/', false);
INSERT INTO public.banks VALUES (2584, 'www.apacer.com', 'Apacer Technology Inc.宇瞻科技股份有限公司', 'TW', 'TWD', 'Taiwan', 'New Taiwan Dollar', 'Tucheng, New Taipei, Taiwan', NULL, 'http://www.apacer.com', false);
INSERT INTO public.banks VALUES (2585, 'www.schwab.com', 'The Charles Schwab Corporation', 'US', 'USD', 'United States', 'US Dollar', 'San Francisco, California, U.S.', NULL, 'https://www.schwab.com/', false);
INSERT INTO public.banks VALUES (2586, 'www.williamblair.com', 'William Blair & Company', 'US', 'USD', 'United States', 'US Dollar', '150 North Riverside Plaza, Chicago, Illinois, United States', NULL, 'http://www.williamblair.com', false);
INSERT INTO public.banks VALUES (2587, 'www.pzu.pl', 'Powszechny Zakład Ubezpieczeń Spółka Akcyjna', 'PL', 'PLN', 'Poland', 'Zloty', 'Warsaw, Poland', NULL, 'http://www.pzu.pl', false);
INSERT INTO public.banks VALUES (2588, 'gabar.org', 'State Bar of Georgia', 'GE', 'GEL', 'Georgia', 'Lari', 'Atlanta, Georgia', NULL, 'http://gabar.org', false);
INSERT INTO public.banks VALUES (2589, 'www.bcr.md', 'BCR Chișinău', 'MD', 'MDL', 'Moldova', 'Moldovan Leu', 'Chisinau, Republic of Moldova', NULL, 'http://www.bcr.md', false);
INSERT INTO public.banks VALUES (2590, 'burnleysavingsandloans.co.uk', 'Burnley Savings and Loans (BSAL)', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Burnley, England', NULL, 'http://burnleysavingsandloans.co.uk', false);
INSERT INTO public.banks VALUES (2591, 'firstcapitalbank.co.zw', 'First Capital Bank Limited', 'ZW', 'ZWL', 'Zimbabwe', 'Zimbabwe Dollar', 'Harare, Zimbabwe', NULL, 'https://firstcapitalbank.co.zw/', false);
INSERT INTO public.banks VALUES (2592, 'b2b.dab-bank.de', 'DAB BNP Paribas', 'DE', 'EUR', 'Germany', 'Euro', 'Munich, Germany', NULL, 'http://b2b.dab-bank.de/', false);
INSERT INTO public.banks VALUES (2593, 'mobikwik.com', 'MobiKwik', 'IN', 'INR', 'India', 'Indian Rupee', 'Gurgaon, India', NULL, 'http://mobikwik.com', false);
INSERT INTO public.banks VALUES (2594, 'www.associatedbank.com', 'Associated Banc-Corp', 'US', 'USD', 'United States', 'US Dollar', 'Green Bay, Wisconsin, United States', NULL, 'http://www.associatedbank.com', false);
INSERT INTO public.banks VALUES (2595, 'www.bancasassari.it', 'Banco di Sardegna S.p.A.', 'IT', 'EUR', 'Italy', 'Euro', 'Sassari, Italy', NULL, 'http://www.bancasassari.it', false);
INSERT INTO public.banks VALUES (2596, 'veb.ru', 'VEB.RF', 'RU', 'RUB', 'Russia', 'Russian Ruble', 'Moscow, Russia', NULL, 'http://veb.ru/en', false);
INSERT INTO public.banks VALUES (2597, 'alliancebernstein.com', 'AllianceBernstein Holding L.P.', 'US', 'USD', 'United States', 'US Dollar', 'Nashville, Tennessee', NULL, 'http://alliancebernstein.com', false);
INSERT INTO public.banks VALUES (2598, 'www.worldjewishcongress.org', 'World Jewish Congress', 'US', 'USD', 'United States', 'US Dollar', 'New York City, United States', NULL, 'http://www.worldjewishcongress.org', false);
INSERT INTO public.banks VALUES (2599, 'www.bancopastor.es', 'Banco Popular Pastor, S.A.', 'ES', 'EUR', 'Spain', 'Euro', 'A Coruña, Spain', NULL, 'http://www.bancopastor.es', false);
INSERT INTO public.banks VALUES (2600, 'www.mbna.co.uk', 'MBNA', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Chester, United Kingdom', NULL, 'https://www.mbna.co.uk/', false);
INSERT INTO public.banks VALUES (2601, 'Nationwide.com', 'Nationwide Mutual Insurance Company', 'US', 'USD', 'United States', 'US Dollar', 'One Nationwide PlazaColumbus, Ohio, U.S.', NULL, 'http://Nationwide.com/', false);
INSERT INTO public.banks VALUES (2602, 'www.seforall.org', 'Sustainable Energy for All
', 'AT', 'EUR', 'Austria', 'Euro', 'Vienna, Austria', NULL, 'http://www.seforall.org', false);
INSERT INTO public.banks VALUES (2603, 'www.pwc.com', 'PwC', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'London, United Kingdom[2]', NULL, 'https://www.pwc.com/', false);
INSERT INTO public.banks VALUES (2604, 'www.equitablepcib.com', 'Equitable PCI Bank, Inc.', 'PH', 'PHP', 'Philippines', 'Philippine Peso', 'Makati, Philippines', NULL, 'http://www.equitablepcib.com', false);
INSERT INTO public.banks VALUES (2605, 'www.mercadolibre.com', 'Mercado Libre, Inc.', 'AR', 'ARS', 'Argentina', 'Argentine Peso', 'Buenos Aires, Argentina', NULL, 'https://www.mercadolibre.com/', false);
INSERT INTO public.banks VALUES (2606, 'www.jobbank.gc.ca', 'Job Bank', 'CA', 'CAD', 'Canada', 'Canadian Dollar', 'Gatineau, Canada', NULL, 'http://www.jobbank.gc.ca', false);
INSERT INTO public.banks VALUES (2607, 'www.dyerandblair.com', 'Dyer & Blair Investment Bank Limited', 'KE', 'KES', 'Kenya', 'Kenyan Shilling', '7th Floor , Goodman Towers,Waiyaki WayNairobi, Kenya', NULL, 'http://www.dyerandblair.com', false);
INSERT INTO public.banks VALUES (2608, 'www.vtbcapital.com', 'VTB Capital', 'RU', 'RUB', 'Russia', 'Russian Ruble', 'Moscow, Russia', NULL, 'http://www.vtbcapital.com', false);
INSERT INTO public.banks VALUES (2609, 'www.bancodesio.it', 'Banco Desio', 'IT', 'EUR', 'Italy', 'Euro', 'Desio, Italy', NULL, 'http://www.bancodesio.it', false);
INSERT INTO public.banks VALUES (2610, 'www.thg.com', 'The Hut Group', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Manchester Airport, Manchester, United Kingdom', NULL, 'http://www.thg.com/', false);
INSERT INTO public.banks VALUES (2611, 'www.businessdailyafrica.com', 'Business Daily Africa', 'KE', 'KES', 'Kenya', 'Kenyan Shilling', 'Nairobi, Kenya', NULL, 'http://www.businessdailyafrica.com', false);
INSERT INTO public.banks VALUES (2612, 'www.ifc.org', 'International Finance Corporation', 'US', 'USD', 'United States', 'US Dollar', 'Washington, D.C., U.S.', NULL, 'http://www.ifc.org/', false);
INSERT INTO public.banks VALUES (2613, 'bittrex.com', 'Bittrex', 'US', 'USD', 'United States', 'US Dollar', 'Seattle, Washington, United States[1]', NULL, 'http://bittrex.com', false);
INSERT INTO public.banks VALUES (2614, 'www.westernunion.com', 'The Western Union Company', 'US', 'USD', 'United States', 'US Dollar', 'Denver, Colorado, United States', NULL, 'http://www.westernunion.com', false);
INSERT INTO public.banks VALUES (2615, 'www.bancacrasti.it', 'Cassa di Risparmio di Asti', 'IT', 'EUR', 'Italy', 'Euro', '23 Piazza Libertà, Asti, Italy', NULL, 'https://www.bancacrasti.it', false);
INSERT INTO public.banks VALUES (2616, 'www.tmz.com', 'TMZ', 'US', 'USD', 'United States', 'US Dollar', '13031 West Jefferson BoulevardLos Angeles, California', NULL, 'http://www.tmz.com/', false);
INSERT INTO public.banks VALUES (2617, 'fivebelow.com', 'Five Below', 'US', 'USD', 'United States', 'US Dollar', 'Philadelphia, Pennsylvania, United States', NULL, 'http://fivebelow.com', false);
INSERT INTO public.banks VALUES (2618, 'visa.com', 'Visa Inc.', 'US', 'USD', 'United States', 'US Dollar', 'Foster City,[1] California, United States', NULL, 'https://visa.com', false);
INSERT INTO public.banks VALUES (2619, 'www.bancopopular.es', 'Banco Popular Español S.A.', 'ES', 'EUR', 'Spain', 'Euro', 'Madrid, Spain', NULL, 'http://www.bancopopular.es', false);
INSERT INTO public.banks VALUES (2620, 'jndata.dk', 'JN Data A/S', 'DK', 'DKK', 'Denmark', 'Danish Krone', 'Silkeborg, Denmark', NULL, 'http://jndata.dk', false);
INSERT INTO public.banks VALUES (2621, 'www.allianz.com', 'Allianz SE', 'DE', 'EUR', 'Germany', 'Euro', 'Munich, Germany', NULL, 'http://www.allianz.com/', false);
INSERT INTO public.banks VALUES (2622, 'www.nurol.com.tr', 'Nurol Holding A.Ş.', 'TR', 'TRY', 'Turkey', 'Turkish Lira', 'Istanbul , Turkey ', NULL, 'http://www.nurol.com.tr', false);
INSERT INTO public.banks VALUES (2623, 'blme.com', 'BLME', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'London, United Kingdom', NULL, 'http://blme.com', false);
INSERT INTO public.banks VALUES (2624, 'bmo.com', 'Bank of MontrealBanque de Montréal', 'CA', 'CAD', 'Canada', 'Canadian Dollar', 'Montreal, Quebec, Canada', NULL, 'http://bmo.com', false);
INSERT INTO public.banks VALUES (2625, 'www.ritcap.co.uk', 'RIT Capital Partners plc', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'London, UK', NULL, 'http://www.ritcap.co.uk', false);
INSERT INTO public.banks VALUES (2626, 'www.banksdih.com', 'Banks DIH Ltd.', 'GY', 'GYD', 'Guyana', 'Guyana Dollar', 'Georgetown, Guyana', NULL, 'http://www.banksdih.com/', false);
INSERT INTO public.banks VALUES (2627, 'www.medirect.com.mt', 'MeDirect Malta', 'MT', 'EUR', 'Malta', 'Euro', 'The Centre, Tigné Point, Sliema, Malta', NULL, 'http://www.medirect.com.mt', false);
INSERT INTO public.banks VALUES (2628, 'www.gruppomps.it', 'Banca Monte dei Paschi di Siena S.p.A.', 'IT', 'EUR', 'Italy', 'Euro', 'Siena, Italy', NULL, 'https://www.gruppomps.it', false);
INSERT INTO public.banks VALUES (2629, 'www.maxlifeinsurance.com', 'Max Life Insurance Company Limited', 'IN', 'INR', 'India', 'Indian Rupee', 'New Delhi', NULL, 'https://www.maxlifeinsurance.com/', false);
INSERT INTO public.banks VALUES (2630, 'www.muz.de', 'MZ Motorenwerke Zschopau GmbH, former MZ Motorrad- und Zweiradwerk GmbH', 'DE', 'EUR', 'Germany', 'Euro', 'Zschopau, Germany', NULL, 'http://www.muz.de', false);
INSERT INTO public.banks VALUES (2631, 'www.mint.com', 'Mint.com', 'US', 'USD', 'United States', 'US Dollar', 'Mountain View, California, United States', NULL, 'http://www.mint.com/', false);
INSERT INTO public.banks VALUES (2632, 'www.themobilestore.in', 'The MobileStore', 'IN', 'INR', 'India', 'Indian Rupee', 'Mumbai, India', NULL, 'http://www.themobilestore.in', false);
INSERT INTO public.banks VALUES (2633, 'www.ebchina.com', 'China Everbright Group', 'CN', 'CNY', 'China', 'Yuan Renminbi', 'Beijing, China', NULL, 'http://www.ebchina.com', false);
INSERT INTO public.banks VALUES (2634, 'www.blackeaglefund.org', 'Black Eagle Litigation Fund', 'KY', 'KYD', 'Cayman Islands', 'Cayman Islands Dollar', 'Cayman Islands', NULL, 'http://www.blackeaglefund.org/', false);
INSERT INTO public.banks VALUES (2635, 'www.arcandor.com', 'Arcandor AG', 'DE', 'EUR', 'Germany', 'Euro', 'Essen, Germany', NULL, 'http://www.arcandor.com', false);
INSERT INTO public.banks VALUES (2636, 'www.metrolyrics.com', 'MetroLyrics', 'CA', 'CAD', 'Canada', 'Canadian Dollar', 'Vancouver, British Columbia, Canada', NULL, 'http://www.metrolyrics.com/', false);
INSERT INTO public.banks VALUES (2637, 'nanded.nic.in', 'Nanded district', 'IN', 'INR', 'India', 'Indian Rupee', 'Nanded', NULL, 'http://nanded.nic.in', false);
INSERT INTO public.banks VALUES (2638, 'www.rbfcu.org', 'Randolph-Brooks Federal Credit Union', 'US', 'USD', 'United States', 'US Dollar', 'United States of America ', NULL, 'http://www.rbfcu.org', false);
INSERT INTO public.banks VALUES (2639, 'www.bancaakros.it', 'Banca Akros', 'IT', 'EUR', 'Italy', 'Euro', 'Milan, Italy', NULL, 'https://www.bancaakros.it/', false);
INSERT INTO public.banks VALUES (2640, 'www.baloise.com', 'Bâloise Holding AG', 'CH', 'CHF', 'Switzerland', 'Swiss Franc', 'Basel, Switzerland', NULL, 'https://www.baloise.com/en/home.html', false);
INSERT INTO public.banks VALUES (2641, 'www.fibsudan.com', 'Faisal Islamic Bank of Sudan', 'SD', 'SDG', 'Sudan', 'Sudanese Pound', 'Khartoum, Sudan', NULL, 'http://www.fibsudan.com/', false);
INSERT INTO public.banks VALUES (2642, 'www.nation.co.ke', 'Daily Nation', 'KE', 'KES', 'Kenya', 'Kenyan Shilling', 'Nairobi, Kenya', NULL, 'http://www.nation.co.ke', false);
INSERT INTO public.banks VALUES (2643, 'www.nationstrust.com', 'Nations Trust Bank PLC', 'LK', 'LKR', 'Sri Lanka', 'Sri Lanka Rupee', 'Colombo, Sri Lanka', NULL, 'http://www.nationstrust.com', false);
INSERT INTO public.banks VALUES (2644, 'www.bbsfbank.com', 'Banque Bemo Saudi Fransi', 'SY', 'SYP', 'Syria', 'Syrian Pound', 'Damascus, Syria', NULL, 'http://www.bbsfbank.com/', false);
INSERT INTO public.banks VALUES (2645, 'www.chownow.com', 'ChowNow, Inc.', 'US', 'USD', 'United States', 'US Dollar', 'Los Angeles, California, United States', NULL, 'http://www.chownow.com', false);
INSERT INTO public.banks VALUES (2646, 'www.hilltop-holdings.com', 'Hilltop Holdings Inc.', 'US', 'USD', 'United States', 'US Dollar', 'One Victory ParkDallas, Texas, US', NULL, 'http://www.hilltop-holdings.com/', false);
INSERT INTO public.banks VALUES (2647, 'ukar.co.uk', 'UK Asset Resolution Limited', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Croft Road, Crossflatts, Bingley, West Yorkshire, United Kingdom', NULL, 'http://ukar.co.uk', false);
INSERT INTO public.banks VALUES (2648, 'uttarkashi.nic.in', 'Uttarkashi district', 'IN', 'INR', 'India', 'Indian Rupee', 'Uttarkashi', NULL, 'http://uttarkashi.nic.in', false);
INSERT INTO public.banks VALUES (2649, 'desjardins.com', 'Desjardins Group', 'CA', 'CAD', 'Canada', 'Canadian Dollar', 'Levis, Quebec, Canada', NULL, 'http://desjardins.com', false);
INSERT INTO public.banks VALUES (2650, 'www.quaylemunro.com', 'Quayle Munro', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'London, England', NULL, 'http://www.quaylemunro.com', false);
INSERT INTO public.banks VALUES (2651, 'www.chsinc.com', 'CHS Inc.', 'US', 'USD', 'United States', 'US Dollar', 'Inver Grove Heights, Minnesota, United States', NULL, 'http://www.chsinc.com', false);
INSERT INTO public.banks VALUES (2652, 'www.pfr.pl', 'Polish Development Fund', 'PL', 'PLN', 'Poland', 'Zloty', 'ul. Krucza 50, Warsaw, Poland', NULL, 'http://www.pfr.pl/', false);
INSERT INTO public.banks VALUES (2653, 'www.yahoo.com', 'Yahoo!', 'US', 'USD', 'United States', 'US Dollar', 'Sunnyvale, California, U.S.', NULL, 'https://www.yahoo.com/', false);
INSERT INTO public.banks VALUES (2654, 'www.50hertz.com', '50Hertz Transmission GmbH', 'DE', 'EUR', 'Germany', 'Euro', 'Berlin, Germany', NULL, 'http://www.50hertz.com/en/', false);
INSERT INTO public.banks VALUES (2655, 'weatherbys.co.uk', 'Weatherbys', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Wellingborough, Northamptonshire, England', NULL, 'http://weatherbys.co.uk', false);
INSERT INTO public.banks VALUES (2656, 'www.artlebedev.com', 'Art. Lebedev Studio', 'RU', 'RUB', 'Russia', 'Russian Ruble', 'Moscow, Russia', NULL, 'http://www.artlebedev.com', false);
INSERT INTO public.banks VALUES (2657, 'www.bpf.it', 'Banca Popolare del Frusinate', 'IT', 'EUR', 'Italy', 'Euro', 'Frosinone, Italy', NULL, 'https://www.bpf.it', false);
INSERT INTO public.banks VALUES (2658, 'www.six-group.com', 'SIX Group Ltd.', 'CH', 'CHF', 'Switzerland', 'Swiss Franc', 'Zurich, Switzerland', NULL, 'http://www.six-group.com/', false);
INSERT INTO public.banks VALUES (2659, 'www.kni.gl', 'KNIGreenland Trade', 'GL', 'DKK', 'Greenland', 'Danish Krone', 'Sisimiut, Greenland', NULL, 'http://www.kni.gl/', false);
INSERT INTO public.banks VALUES (2660, 'www.santander.com', 'Banco Santander S.A.', 'ES', 'EUR', 'Spain', 'Euro', 'Santander, Spain', NULL, 'http://www.santander.com', false);
INSERT INTO public.banks VALUES (2661, 'www.myncb.com', 'NCB Financial Group Limited', 'JM', 'JMD', 'Jamaica', 'Jamaican Dollar', 'Kingston, Jamaica', NULL, 'http://www.myncb.com/', false);
INSERT INTO public.banks VALUES (2662, 'www.cantor.com', 'Cantor Fitzgerald, L.P.', 'US', 'USD', 'United States', 'US Dollar', 'New York City', NULL, 'http://www.cantor.com/', false);
INSERT INTO public.banks VALUES (2663, 'www.cmbwinglungbank.com', '招商永隆銀行CMB Wing Lung Bank', 'HK', 'HKD', 'Hong Kong', 'Hong Kong Dollar', '45 Des Voeux Road, Central Hong Kong', NULL, 'http://www.cmbwinglungbank.com', false);
INSERT INTO public.banks VALUES (2664, 'www.tokyostarbank.co.jp', 'The Tokyo Star Bank, Limited', 'JP', 'JPY', 'Japan', 'Yen', 'Tokyo, Japan', NULL, 'http://www.tokyostarbank.co.jp/profile/en/', false);
INSERT INTO public.banks VALUES (2665, 'www.metrobank-na.com', 'MetroCorp Bancshares, Inc.', 'US', 'USD', 'United States', 'US Dollar', 'TexasCalifornia', NULL, 'http://www.metrobank-na.com', false);
INSERT INTO public.banks VALUES (2666, 'www.banrep.gov.co', 'Bank of the RepublicBanco de la República', 'CO', 'COP', 'Colombia', 'Colombian Peso', 'Bogotá, Colombia', NULL, 'http://www.banrep.gov.co/en/', false);
INSERT INTO public.banks VALUES (2667, 'goldmansachs.com', 'The Goldman Sachs Group, Inc.', 'US', 'USD', 'United States', 'US Dollar', '200 West Street, Manhattan, New York City, U.S.', NULL, 'http://goldmansachs.com', false);
INSERT INTO public.banks VALUES (2668, 'www.jdsports.co.uk', 'JD Sports Fashion plc', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Bury , United Kingdom ', NULL, 'http://www.jdsports.co.uk', false);
INSERT INTO public.banks VALUES (2669, 'www.newvision.co.ug', 'Vision Group', 'UG', 'UGX', 'Uganda', 'Uganda Shilling', '2/4 First Street, Kampala, Uganda', NULL, 'http://www.newvision.co.ug', false);
INSERT INTO public.banks VALUES (2670, 'www.hanafn.com', 'Hana Financial Group, Inc.하나금융그룹', 'KR', 'KRW', 'South Korea', 'South Korean Won', 'Seoul, South Korea', NULL, 'http://www.hanafn.com/', false);
INSERT INTO public.banks VALUES (2671, 'www.snohetta.com', 'Snøhetta', 'NO', 'NOK', 'Norway', 'Norwegian Krone', 'Norway ', NULL, 'http://www.snohetta.com', false);
INSERT INTO public.banks VALUES (2672, 'nexi.it', 'Nexi', 'IT', 'EUR', 'Italy', 'Euro', '55 Corso Sempione, Milan, Italy[1]:16, 366(registered office)', NULL, 'http://nexi.it', false);
INSERT INTO public.banks VALUES (2673, 'banesto.es', 'Banco Español de Crédito, S.A.', 'ES', 'EUR', 'Spain', 'Euro', 'Madrid, Spain', NULL, 'http://banesto.es', false);
INSERT INTO public.banks VALUES (2674, 'www.greenhill.com', 'Greenhill', 'US', 'USD', 'United States', 'US Dollar', '300 Park Avenue (Manhattan)New York City, United States', NULL, 'http://www.greenhill.com', false);
INSERT INTO public.banks VALUES (2675, 'www.bbva.com', 'Banco Bilbao Vizcaya Argentaria, S.A.', 'ES', 'EUR', 'Spain', 'Euro', 'Bilbao and Madrid, Spain', NULL, 'http://www.bbva.com', false);
INSERT INTO public.banks VALUES (2676, 'www.yatra.com', 'Yatra', 'IN', 'INR', 'India', 'Indian Rupee', 'Gurgaon, Haryana, India', NULL, 'http://www.yatra.com', false);
INSERT INTO public.banks VALUES (2677, 'www.webank.it', 'Webank', 'IT', 'EUR', 'Italy', 'Euro', 'Milan, Italy', NULL, 'http://www.webank.it/', false);
INSERT INTO public.banks VALUES (2678, 'www.wsfsbank.com', 'Wilmington Savings Fund Society', 'US', 'USD', 'United States', 'US Dollar', 'Wilmington, Delaware, U.S.', NULL, 'http://www.wsfsbank.com', false);
INSERT INTO public.banks VALUES (2679, 'www.cix.co.uk', 'CIX Online Ltd', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Croydon, UK', NULL, 'http://www.cix.co.uk', false);
INSERT INTO public.banks VALUES (2680, 'www.ubssecurities.com', 'UBS Securities', 'CN', 'CNY', 'China', 'Yuan Renminbi', 'Beijing, China', NULL, 'http://www.ubssecurities.com', false);
INSERT INTO public.banks VALUES (2681, 'seb.lv', 'SEB banka AS', 'LV', 'EUR', 'Latvia', 'Euro', 'Riga , Latvia ', NULL, 'https://seb.lv', false);
INSERT INTO public.banks VALUES (2682, 'thinkmoney.co.uk', 'thinkmoney', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Trafford Park, Greater Manchester, UK', NULL, 'http://thinkmoney.co.uk', false);
INSERT INTO public.banks VALUES (2683, 'korba.gov.in', 'Korba district', 'IN', 'INR', 'India', 'Indian Rupee', 'Korba, Chhattisgarh', NULL, 'http://korba.gov.in/', false);
INSERT INTO public.banks VALUES (2684, 'www.gourmetpakistan.com', 'Gourmet Foods', 'PK', 'PKR', 'Pakistan', 'Pakistan Rupee', 'Lahore, Punjab, Pakistan', NULL, 'http://www.gourmetpakistan.com', false);
INSERT INTO public.banks VALUES (2685, 'www.zong.com.pk', 'CMPak Limited', 'PK', 'PKR', 'Pakistan', 'Pakistan Rupee', 'Islamabad, Pakistan', NULL, 'http://www.zong.com.pk', false);
INSERT INTO public.banks VALUES (2686, 'www.walmart.ca', 'Walmart Canada', 'CA', 'CAD', 'Canada', 'Canadian Dollar', 'Mississauga, Ontario, Canada', NULL, 'https://www.walmart.ca/', false);
INSERT INTO public.banks VALUES (2687, 'jcfco.com', 'J.C. Flowers & Companies', 'US', 'USD', 'United States', 'US Dollar', 'New York, New York, United States', NULL, 'http://jcfco.com', false);
INSERT INTO public.banks VALUES (2688, 'www.bayernlb.de', 'BayernLB', 'DE', 'EUR', 'Germany', 'Euro', 'München, Germany', NULL, 'http://www.bayernlb.de', false);
INSERT INTO public.banks VALUES (2689, 'www.homebancshares.com', 'Home BancShares, Inc.', 'US', 'USD', 'United States', 'US Dollar', 'Conway, Arkansas', NULL, 'https://www.homebancshares.com/', false);
INSERT INTO public.banks VALUES (2690, 'www.pnbmetlife.com', 'PNB MetLife India Insurance Company Limited', 'IN', 'INR', 'India', 'Indian Rupee', 'Mumbai, India', NULL, 'http://www.pnbmetlife.com', false);
INSERT INTO public.banks VALUES (2805, 'www.dskhyp.de', 'DSK Hyp AG', 'DE', 'EUR', 'Germany', 'Euro', 'Frankfurt, Germany', NULL, 'http://www.dskhyp.de/', false);
INSERT INTO public.banks VALUES (2691, 'economist.com', 'The Economist', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Westminster,London, United Kingdom', NULL, 'http://economist.com', false);
INSERT INTO public.banks VALUES (2692, 'www.AgStar.com', 'AgStar Financial Services, ACA', 'US', 'USD', 'United States', 'US Dollar', 'Mankato, Minnesota', NULL, 'http://www.AgStar.com/', false);
INSERT INTO public.banks VALUES (2693, 'creditmutuel.com', 'Crédit Mutuel', 'FR', 'EUR', 'France', 'Euro', 'Strasbourg, France', NULL, 'http://creditmutuel.com', false);
INSERT INTO public.banks VALUES (2694, 'www.youandb.co.uk', 'B', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Glasgow, Scotland', NULL, 'http://www.youandb.co.uk', false);
INSERT INTO public.banks VALUES (2695, 'www.resona-gr.co.jp', 'Resona Holdings, Inc.株式会社りそなホールディングス', 'JP', 'JPY', 'Japan', 'Yen', 'Koto, Tokyo, Japan', NULL, 'http://www.resona-gr.co.jp/holdings/english', false);
INSERT INTO public.banks VALUES (2696, 'yacenter.org', 'Young Americans Center for Financial Education', 'US', 'USD', 'United States', 'US Dollar', 'Denver, Colorado', NULL, 'http://yacenter.org', false);
INSERT INTO public.banks VALUES (2697, 'www.fh.ae', 'Finance House', 'AE', 'AED', 'United Arab Emirates', 'UAE Dirham', 'Abu Dhabi, United Arab Emirates.', NULL, 'http://www.fh.ae/', false);
INSERT INTO public.banks VALUES (2698, 'www.worldpay.com', 'Worldpay', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'London, United Kingdom', NULL, 'https://www.worldpay.com', false);
INSERT INTO public.banks VALUES (2699, 'www.vpbank.com', 'VP Bank AG', 'LI', 'CHF', 'Liechtenstein', 'Swiss Franc', 'Vaduz, Liechtenstein', NULL, 'http://www.vpbank.com', false);
INSERT INTO public.banks VALUES (2700, 'www.vakifbank.com.tr', 'Türkiye Vakıflar Bankası T.A.O.', 'TR', 'TRY', 'Turkey', 'Turkish Lira', 'Levent, Beşiktaş, Istanbul', NULL, 'http://www.vakifbank.com.tr', false);
INSERT INTO public.banks VALUES (2701, 'www.itau.com', 'Itaú Unibanco Holding S.A.', 'BR', 'BRL', 'Brazil', 'Brazilian Real', 'São Paulo, Brazil', NULL, 'http://www.itau.com/', false);
INSERT INTO public.banks VALUES (2702, 'www.adambank.com', 'Adam and Company', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Edinburgh, Scotland, UK', NULL, 'https://www.adambank.com/', false);
INSERT INTO public.banks VALUES (2703, 'www.aflcioefcu.org', 'AFL-CIO Employees Federal Credit Union', 'US', 'USD', 'United States', 'US Dollar', 'Washington D.C., United States', NULL, 'https://www.aflcioefcu.org/', false);
INSERT INTO public.banks VALUES (2704, 'www.dgbfg.co.kr', 'DGB Financial Group', 'KR', 'KRW', 'South Korea', 'South Korean Won', 'Daegu, South Korea', NULL, 'http://www.dgbfg.co.kr/jsp/EN/main/index.jsp', false);
INSERT INTO public.banks VALUES (2705, 'silkspan.com', 'SILKSPAN', 'TH', 'THB', 'Thailand', 'Baht', 'Bangkok, Thailand', NULL, 'http://silkspan.com/', false);
INSERT INTO public.banks VALUES (2706, 'www.carife.it', 'Nuova Cassa di Risparmio di Ferrara', 'IT', 'EUR', 'Italy', 'Euro', 'Ferrara, Italy', NULL, 'http://www.carife.it', false);
INSERT INTO public.banks VALUES (2707, 'www.bfc.com.ve', 'Banco Fondo Común', 'VE', 'VEF', 'Venezuela', 'Bolivar', 'Caracas, Estado Miranda, Venezuela', NULL, 'https://www.bfc.com.ve', false);
INSERT INTO public.banks VALUES (2708, 'www.leaseplan.com', 'LeasePlan', 'NL', 'EUR', 'Netherlands', 'Euro', 'Netherlands', NULL, 'https://www.leaseplan.com', false);
INSERT INTO public.banks VALUES (2709, 'gfh.com', 'GFH', 'BH', 'BHD', 'Bahrain', 'Bahraini Dinar', 'Bahrain Financial Harbour, Manama, Bahrain', NULL, 'http://gfh.com/', false);
INSERT INTO public.banks VALUES (2710, 'www.who.int', 'World Health Organization', 'CH', 'CHF', 'Switzerland', 'Swiss Franc', 'Geneva, Switzerland', NULL, 'https://www.who.int/', false);
INSERT INTO public.banks VALUES (2711, 'www.g24.org', 'Intergovernmental Group of Twenty-Four', 'US', 'USD', 'United States', 'US Dollar', 'Washington, D.C., United States', NULL, 'https://www.g24.org/', false);
INSERT INTO public.banks VALUES (2712, 'www.brd.ro', 'Banca Română pentru Dezvoltare', 'RO', 'RON', 'Romania', 'Romanian Leu', 'Bucharest, Romania', NULL, 'https://www.brd.ro', false);
INSERT INTO public.banks VALUES (2713, 'www.booking.com', 'Booking.com', 'NL', 'EUR', 'Netherlands', 'Euro', 'Amsterdam, Netherlands', NULL, 'https://www.booking.com/', false);
INSERT INTO public.banks VALUES (2714, 'alliancedata.com', 'Alliance Data Systems Corporation', 'US', 'USD', 'United States', 'US Dollar', 'Columbus, Ohio, United States', NULL, 'http://alliancedata.com', false);
INSERT INTO public.banks VALUES (2715, 'www.bca.cv', 'Banco Comercial do Atlântico', 'CV', 'CVE', 'Cape Verde', 'Cape Verde Escudo', 'Praia, Santiago, Cape Verde', NULL, 'http://www.bca.cv', false);
INSERT INTO public.banks VALUES (2716, 'airbnb.com', 'Airbnb, Inc.', 'US', 'USD', 'United States', 'US Dollar', '888 Brannan Street, San Francisco, California', NULL, 'https://airbnb.com', false);
INSERT INTO public.banks VALUES (2717, 'www.caript.it', 'Cassa di Risparmio di Pistoia e della Lucchesia', 'IT', 'EUR', 'Italy', 'Euro', '3 via Roma, Pistoia, Italy', NULL, 'http://www.caript.it', false);
INSERT INTO public.banks VALUES (2718, 'www.oskgroup.com', 'OSK Holdings Berhad', 'MY', 'MYR', 'Malaysia', 'Malaysian Ringgit', 'Kuala Lumpur, Malaysia', NULL, 'http://www.oskgroup.com/', false);
INSERT INTO public.banks VALUES (2719, 'www.dubaibank.ae', 'Dubai Bank', 'AE', 'AED', 'United Arab Emirates', 'UAE Dirham', 'Dubai, UAE', NULL, 'https://www.dubaibank.ae', false);
INSERT INTO public.banks VALUES (2720, 'www.xacbank.mn', 'XacBank', 'MN', 'MNT', 'Mongolia', 'Tugrik', 'Ulaanbataar, Mongolia', NULL, 'http://www.xacbank.mn', false);
INSERT INTO public.banks VALUES (2721, 'www.sbtpg.com', 'Santa Barbara Tax Products Group', 'US', 'USD', 'United States', 'US Dollar', 'San Diego, California', NULL, 'http://www.sbtpg.com', false);
INSERT INTO public.banks VALUES (2722, 'hdfclife.com', 'HDFC Life', 'IN', 'INR', 'India', 'Indian Rupee', 'Mumbai, India', NULL, 'http://hdfclife.com', false);
INSERT INTO public.banks VALUES (2723, 'idlc.com', 'IDLC Finance Limited', 'BD', 'BDT', 'Bangladesh', 'Taka', 'Bay''s Galleria (1st Floor), 57 Gulshan Avenue, Dhaka-1212, Bangladesh', NULL, 'http://idlc.com/', false);
INSERT INTO public.banks VALUES (2724, 'www.barclays.co.uk', 'Barclays plc', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'London, United Kingdom', NULL, 'https://www.barclays.co.uk/', false);
INSERT INTO public.banks VALUES (2725, 'svb.com', 'SVB Financial Group', 'US', 'USD', 'United States', 'US Dollar', 'Santa Clara, California', NULL, 'http://svb.com', false);
INSERT INTO public.banks VALUES (2726, 'www.ba-ca.com', 'Creditanstalt AG', 'AT', 'EUR', 'Austria', 'Euro', 'Vienna, Austria', NULL, 'http://www.ba-ca.com/', false);
INSERT INTO public.banks VALUES (2727, 'greenseal.org', 'Green Seal', 'US', 'USD', 'United States', 'US Dollar', 'Washington, DC USA', NULL, 'http://greenseal.org/', false);
INSERT INTO public.banks VALUES (2728, 'www.lycap.com', 'Lightyear Capital', 'US', 'USD', 'United States', 'US Dollar', 'New York, New York, United States', NULL, 'http://www.lycap.com', false);
INSERT INTO public.banks VALUES (2729, 'www.fonspa.it', 'Credito Fondiario', 'IT', 'EUR', 'Italy', 'Euro', 'Rome, Italy', NULL, 'http://www.fonspa.it/', false);
INSERT INTO public.banks VALUES (2730, 'www.un.org', 'United Nations Economic and Social Council', 'US', 'USD', 'United States', 'US Dollar', 'New York, United States', NULL, 'https://www.un.org/ecosoc/en/', false);
INSERT INTO public.banks VALUES (2731, 'fiducia.de', 'Fiducia IT AG', 'DE', 'EUR', 'Germany', 'Euro', 'Fiduciastr 20, 76227 Karlsruhe,Baden-Württemberg, Germany', NULL, 'http://fiducia.de', false);
INSERT INTO public.banks VALUES (2732, 'www.la-z-boy.com', 'La-Z-Boy Inc.', 'US', 'USD', 'United States', 'US Dollar', 'Monroe, Michigan, U.S.', NULL, 'http://www.la-z-boy.com/', false);
INSERT INTO public.banks VALUES (2733, 'ocwen.com', 'Ocwen Financial Corporation', 'US', 'USD', 'United States', 'US Dollar', 'West Palm Beach, Florida', NULL, 'http://ocwen.com', false);
INSERT INTO public.banks VALUES (2782, 'www.northeastbank.com', 'Northeast Bancorp', 'US', 'USD', 'United States', 'US Dollar', 'Lewiston, Maine, U.S.', NULL, 'https://www.northeastbank.com', false);
INSERT INTO public.banks VALUES (2783, 'www.bcu.gub.uy', 'Central Bank of UruguayBanco Central del Uruguay', 'UY', 'UYU', 'Uruguay', 'Peso Uruguayo', 'Montevideo', NULL, 'http://www.bcu.gub.uy', false);
INSERT INTO public.banks VALUES (2784, 'www.santander.co.uk', 'Santander UK plc', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'London, England, UK', NULL, 'http://www.santander.co.uk', false);
INSERT INTO public.banks VALUES (2785, 'www.postoffice.co.uk', 'Post Office Money', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'London', NULL, 'http://www.postoffice.co.uk/money', false);
INSERT INTO public.banks VALUES (2786, 'www.veeam.com', 'Veeam Software Group GmbH', 'CH', 'CHF', 'Switzerland', 'Swiss Franc', 'Baar, Switzerland', NULL, 'https://www.veeam.com/', false);
INSERT INTO public.banks VALUES (2787, 'www.brownshipley.com', 'Brown Shipley', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'London, England, United Kingdom', NULL, 'http://www.brownshipley.com', false);
INSERT INTO public.banks VALUES (2788, 'www.dynadot.com', 'Dynadot', 'US', 'USD', 'United States', 'US Dollar', 'San Mateo, California, USA', NULL, 'http://www.dynadot.com', false);
INSERT INTO public.banks VALUES (2789, 'www.sebalulule.co.ug', 'Sebalu & Lule', 'UG', 'UGX', 'Uganda', 'Uganda Shilling', 'East African Development Bank, Plot 4, Nile Avenue, Kampala, Uganda', NULL, 'http://www.sebalulule.co.ug/', false);
INSERT INTO public.banks VALUES (2790, 'bauknecht.eu', 'Bauknecht Hausgeräte GmbH', 'DE', 'EUR', 'Germany', 'Euro', 'Stuttgart, Germany', NULL, 'http://bauknecht.eu', false);
INSERT INTO public.banks VALUES (2791, 'www.northerntrust.com', 'Northern Trust Corporation', 'US', 'USD', 'United States', 'US Dollar', 'Chicago, Illinois, U.S.', NULL, 'https://www.northerntrust.com/', false);
INSERT INTO public.banks VALUES (2792, 'www.sovcomflot.ru', 'Sovcomflot', 'RU', 'RUB', 'Russia', 'Russian Ruble', 'Saint Petersburg', NULL, 'http://www.sovcomflot.ru', false);
INSERT INTO public.banks VALUES (2793, 'www.bil.com', 'Banque internationale à Luxembourg', 'LU', 'EUR', 'Luxembourg', 'Euro', 'Luxembourg , Luxembourg ', NULL, 'http://www.bil.com', false);
INSERT INTO public.banks VALUES (2794, 'www.Check.me', 'Check', 'ME', 'EUR', 'Montenegro', 'Euro', 'Palo Alto, California', NULL, 'http://www.Check.me/', false);
INSERT INTO public.banks VALUES (2795, 'www.aboc.com', 'Amalgamated Bank of Chicago', 'US', 'USD', 'United States', 'US Dollar', 'Chicago, IL, United States', NULL, 'https://www.aboc.com/', false);
INSERT INTO public.banks VALUES (2796, 'haveri.nic.in', 'Haveri district', 'IN', 'INR', 'India', 'Indian Rupee', 'Haveri', NULL, 'http://haveri.nic.in/', false);
INSERT INTO public.banks VALUES (2798, 'change.org', 'Change.org, Inc.', 'US', 'USD', 'United States', 'US Dollar', 'San Francisco, California, U.S.', NULL, 'http://change.org', false);
INSERT INTO public.banks VALUES (2799, 'www.ilfsindia.com', 'Infrastructure Leasing & Financial Services (IL&FS)', 'IN', 'INR', 'India', 'Indian Rupee', 'Mumbai, Maharashtra, India', NULL, 'http://www.ilfsindia.com/', false);
INSERT INTO public.banks VALUES (2800, 'www.gruppobancasella.it', 'Banca Sella Holding', 'IT', 'EUR', 'Italy', 'Euro', 'Biella, Italy', NULL, 'https://www.gruppobancasella.it', false);
INSERT INTO public.banks VALUES (2801, 'themuse.com', 'The Muse', 'US', 'USD', 'United States', 'US Dollar', 'New York City, New York, United States', NULL, 'http://themuse.com', false);
INSERT INTO public.banks VALUES (2802, 'nordion.com', 'Nordion Inc.', 'CA', 'CAD', 'Canada', 'Canadian Dollar', 'Ottawa, Ontario, Canada', NULL, 'http://nordion.com', false);
INSERT INTO public.banks VALUES (2803, 'www.tandem.co.uk', 'Tandem Money Limited', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', '123 Pentonville Road,Clerkenwell,London N1 9LZ', NULL, 'https://www.tandem.co.uk/', false);
INSERT INTO public.banks VALUES (2804, 'haworth.com', 'Haworth Inc.', 'US', 'USD', 'United States', 'US Dollar', 'Holland, Michigan, United States', NULL, 'http://haworth.com', false);
INSERT INTO public.banks VALUES (2806, 'www.fno.no', 'Finance Norway', 'NO', 'NOK', 'Norway', 'Norwegian Krone', 'Hansteens gate 2, Oslo', NULL, 'https://www.fno.no', false);
INSERT INTO public.banks VALUES (2807, 'www.arbuthnotlatham.co.uk', 'Arbuthnot Latham & Co. Ltd.', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Arbuthnot House,7 Wilson Street, London EC2M 2SN', NULL, 'http://www.arbuthnotlatham.co.uk/', false);
INSERT INTO public.banks VALUES (2808, 'bagpat.nic.in', 'Baghpat district', 'IN', 'INR', 'India', 'Indian Rupee', 'Baghpat', NULL, 'http://bagpat.nic.in/', false);
INSERT INTO public.banks VALUES (2809, 'rajgarh.nic.in', 'Rajgarh district', 'IN', 'INR', 'India', 'Indian Rupee', 'Rajgarh (Madhya Pradesh)', NULL, 'http://rajgarh.nic.in', false);
INSERT INTO public.banks VALUES (2810, 'www.gfmag.com', 'Global Finance', 'US', 'USD', 'United States', 'US Dollar', 'Manhattan, New York City, United States', NULL, 'http://www.gfmag.com', false);
INSERT INTO public.banks VALUES (2811, 'www.bnpparibasfortis.com', 'BNP Paribas Fortis', 'BE', 'EUR', 'Belgium', 'Euro', 'Brussels, Belgium', NULL, 'http://www.bnpparibasfortis.com/', false);
INSERT INTO public.banks VALUES (2812, 'www.ubp.com', 'Union Bancaire Privée', 'CH', 'CHF', 'Switzerland', 'Swiss Franc', 'Geneva, Switzerland', NULL, 'http://www.ubp.com', false);
INSERT INTO public.banks VALUES (2813, 'www.mikud4u.co.il', 'Mikud Israel Ltd.', 'IL', 'ILS', 'Israel', 'New Israeli Sheqel', 'Tel Aviv, Israel', NULL, 'http://www.mikud4u.co.il/', false);
INSERT INTO public.banks VALUES (2814, 'group.bnpparibas', 'BNP Paribas S.A.', 'FR', 'EUR', 'France', 'Euro', 'Boulevard des Italiens, Paris, France', NULL, 'https://group.bnpparibas/en/', false);
INSERT INTO public.banks VALUES (2815, 'www.nordea.com', 'Nordea Bank Abp', 'FI', 'EUR', 'Finland', 'Euro', 'Helsinki, Finland[1]', NULL, 'http://www.nordea.com/', false);
INSERT INTO public.banks VALUES (2816, 'www.gnbankghana.com', 'GN Bank', 'GH', 'GHS', 'Ghana', 'Ghana Cedi', 'Accra, Ghana', NULL, 'http://www.gnbankghana.com', false);
INSERT INTO public.banks VALUES (2817, 'www.qudosbank.com.au', 'Qudos Mutual Limited', 'AU', 'AUD', 'Australia', 'Australian Dollar', 'Mascot, Sydney, Australia', NULL, 'http://www.qudosbank.com.au', false);
INSERT INTO public.banks VALUES (2818, 'www.cpic.com.cn', 'China Pacific Insurance (Group)', 'CN', 'CNY', 'China', 'Yuan Renminbi', 'Shanghai, China', NULL, 'http://www.cpic.com.cn', false);
INSERT INTO public.banks VALUES (2819, 'www.aol.com', 'AOL', 'US', 'USD', 'United States', 'US Dollar', '770 Broadway, New York City, United States', NULL, 'https://www.aol.com/', false);
INSERT INTO public.banks VALUES (2820, 'tishmanspeyer.com', 'Tishman Speyer Properties', 'US', 'USD', 'United States', 'US Dollar', '45 Rockefeller PlazaNew York City, New York, United States', NULL, 'http://tishmanspeyer.com/', false);
INSERT INTO public.banks VALUES (2821, 'www.fiocchigfl.it', 'Fiocchi Munizioni', 'IT', 'EUR', 'Italy', 'Euro', 'Lecco, Italy', NULL, 'http://www.fiocchigfl.it', false);
INSERT INTO public.banks VALUES (2822, 'www.standard.co.uk', 'Evening Standard', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Northcliffe House, Derry Street, KensingtonLondon', NULL, 'https://www.standard.co.uk/', false);
INSERT INTO public.banks VALUES (2823, 'www.bcr.ro', 'Banca Comercialǎ Românǎ', 'RO', 'RON', 'Romania', 'Romanian Leu', 'Bucharest, Romania', NULL, 'http://www.bcr.ro', false);
INSERT INTO public.banks VALUES (2824, 'www.obracaja.es', 'Caja Madrid', 'ES', 'EUR', 'Spain', 'Euro', 'Madrid, Spain', NULL, 'http://www.obracaja.es/', false);
INSERT INTO public.banks VALUES (2825, 'www.daiwa-grp.jp', 'Daiwa Securities Group Inc.', 'JP', 'JPY', 'Japan', 'Yen', 'Tokyo, Japan', NULL, 'http://www.daiwa-grp.jp/english/', false);
INSERT INTO public.banks VALUES (2826, 'www.53.com', 'Fifth Third Bancorp', 'US', 'USD', 'United States', 'US Dollar', 'Cincinnati, Ohio, USA', NULL, 'http://www.53.com/', false);
INSERT INTO public.banks VALUES (2827, 'www.unionefiduciaria.it', 'Unione Fiduciaria', 'IT', 'EUR', 'Italy', 'Euro', '4 via Amedei, Milan, Italy', NULL, 'http://www.unionefiduciaria.it', false);
INSERT INTO public.banks VALUES (2828, 'www.kommersant.ru', 'Kommersant', 'RU', 'RUB', 'Russia', 'Russian Ruble', 'Moscow', NULL, 'http://www.kommersant.ru/', false);
INSERT INTO public.banks VALUES (2829, 'www.bancodebogota.com', 'Banco de Bogotá S.A.', 'CO', 'COP', 'Colombia', 'Colombian Peso', 'Bogotá, Colombia', NULL, 'http://www.bancodebogota.com/', false);
INSERT INTO public.banks VALUES (2830, 'thecitybank.com', 'The City Bank Limited', 'BD', 'BDT', 'Bangladesh', 'Taka', 'Dhaka, Bangladesh', NULL, 'http://thecitybank.com', false);
INSERT INTO public.banks VALUES (2831, 'www.caterallen.co.uk', 'Cater Allen Limited', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'London, England, UK', NULL, 'http://www.caterallen.co.uk', false);
INSERT INTO public.banks VALUES (2832, 'advansgroup.com', 'Advans', 'LU', 'EUR', 'Luxembourg', 'Euro', 'Luxembourg', NULL, 'http://advansgroup.com', false);
INSERT INTO public.banks VALUES (2833, 'www.adib.ae', 'Abu Dhabi Islamic Bank PJSC', 'AE', 'AED', 'United Arab Emirates', 'UAE Dirham', 'Abu Dhabi, United Arab Emirates', NULL, 'http://www.adib.ae/', false);
INSERT INTO public.banks VALUES (2834, 'www.salemfive.com', 'Salem Five', 'US', 'USD', 'United States', 'US Dollar', 'Salem, Massachusetts, United States', NULL, 'https://www.salemfive.com', false);
INSERT INTO public.banks VALUES (2835, 'www.midcapadvisors.com', 'MidCap Advisors, LLC', 'US', 'USD', 'United States', 'US Dollar', 'New York, New York, U.S.', NULL, 'http://www.midcapadvisors.com', false);
INSERT INTO public.banks VALUES (2836, 'munger.bih.nic.in', 'Munger district', 'IN', 'INR', 'India', 'Indian Rupee', 'Munger', NULL, 'http://munger.bih.nic.in', false);
INSERT INTO public.banks VALUES (2837, 'revolut.com', 'Revolut Ltd', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'London, United Kingdom', NULL, 'http://revolut.com', false);
INSERT INTO public.banks VALUES (2838, 'www.synchrony.com', 'Synchrony', 'US', 'USD', 'United States', 'US Dollar', 'Stamford, Connecticut, United States[2]', NULL, 'https://www.synchrony.com/', false);
INSERT INTO public.banks VALUES (2839, 'www.ebaclearing.eu', 'EBA Clearing S.A.S', 'FR', 'EUR', 'France', 'Euro', 'Paris, France', NULL, 'https://www.ebaclearing.eu/', false);
INSERT INTO public.banks VALUES (2840, 'www.mg.co.za', 'The Mail & Guardian', 'ZA', 'ZAR', 'South Africa', 'Rand', 'Johannesburg, Gauteng, South Africa', NULL, 'http://www.mg.co.za', false);
INSERT INTO public.banks VALUES (2841, 'khabar.kz', 'Khabar Agency', 'KZ', 'KZT', 'Kazakhstan', 'Tenge', 'Almaty', NULL, 'http://khabar.kz/', false);
INSERT INTO public.banks VALUES (2842, 'eurodw.eu', 'EuropeanDataWarehouse', 'DE', 'EUR', 'Germany', 'Euro', 'Frankfurt, Germany', NULL, 'https://eurodw.eu/', false);
INSERT INTO public.banks VALUES (2843, 'www.merckfinck.de', 'Merck Finck', 'DE', 'EUR', 'Germany', 'Euro', 'Pacellistraße 16, Munich, Germany', NULL, 'http://www.merckfinck.de/', false);
INSERT INTO public.banks VALUES (2844, 'www.euroclear.com', 'Euroclear', 'BE', 'EUR', 'Belgium', 'Euro', 'Brussels, Belgium', NULL, 'https://www.euroclear.com', false);
INSERT INTO public.banks VALUES (2845, 'www.absa.africa', 'Absa Group Limited', 'ZA', 'ZAR', 'South Africa', 'Rand', 'Johannesburg, South Africa[2]', NULL, 'https://www.absa.africa/absaafrica/', false);
INSERT INTO public.banks VALUES (2846, 'www.becu.org', 'BECU', 'US', 'USD', 'United States', 'US Dollar', 'Tukwila, Washington, United States', NULL, 'https://www.becu.org/', false);
INSERT INTO public.banks VALUES (2847, 'www.bancosardegna.it', 'Banco di Sardegna S.p.A.', 'IT', 'EUR', 'Italy', 'Euro', 'Sassari, Italy', NULL, 'http://www.bancosardegna.it/home.jlcm', false);
INSERT INTO public.banks VALUES (2848, 'www.bancacambiano.it', 'Banca di Cambiano', 'IT', 'EUR', 'Italy', 'Euro', '6 Piazza Giovanni XXIII, Castelfiorentino, Italy', NULL, 'http://www.bancacambiano.it/', false);
INSERT INTO public.banks VALUES (2849, 'www.PennyMacUSA.com', 'PennyMac Loan Services, LLC', 'US', 'USD', 'United States', 'US Dollar', 'Westlake Village, California, United States', NULL, 'https://www.PennyMacUSA.com/', false);
INSERT INTO public.banks VALUES (2850, 'www.cogebanque.co.rw', 'Compagnie Générale de Banque (Cogebanque)', 'RW', 'RWF', 'Rwanda', 'Rwanda Franc', 'Kigali, Rwanda', NULL, 'http://www.cogebanque.co.rw/', false);
INSERT INTO public.banks VALUES (2851, 'bb.com.br', 'Banco do Brasil S.A.', 'BR', 'BRL', 'Brazil', 'Brazilian Real', 'Brasília, Federal District, Brazil', NULL, 'http://bb.com.br', false);
INSERT INTO public.banks VALUES (2852, 'www.bam.it', 'Banca Agricola Mantovana', 'IT', 'EUR', 'Italy', 'Euro', '30 Corso Vittorio Emanuele II, Mantua, Italy', NULL, 'http://www.bam.it', false);
INSERT INTO public.banks VALUES (2853, 'www.sekerbank.com.tr', 'Şekerbank T.A.Ş.', 'TR', 'TRY', 'Turkey', 'Turkish Lira', 'Turkey', NULL, 'http://www.sekerbank.com.tr/en', false);
INSERT INTO public.banks VALUES (2854, 'www.eq.fi', 'eQ Bank Ltd', 'FI', 'EUR', 'Finland', 'Euro', 'Helsinki, Finland', NULL, 'https://www.eq.fi/', false);
INSERT INTO public.banks VALUES (2855, 'www.bcge.ch', 'Banque cantonale de Genève', 'CH', 'CHF', 'Switzerland', 'Swiss Franc', 'Case postale 2251 1211 Genève 2 Switzerland', NULL, 'https://www.bcge.ch', false);
INSERT INTO public.banks VALUES (2856, 'www.saudioger.com', 'Saudi Oger Limitedشركة سعودي أوجيه المحدودة', 'SA', 'SAR', 'Saudi Arabia', 'Saudi Riyal', 'Riyadh ', NULL, 'http://www.saudioger.com', false);
INSERT INTO public.banks VALUES (2857, 'www.ampcapital.com', 'AMP Capital', 'AU', 'AUD', 'Australia', 'Australian Dollar', 'Sydney, Australia', NULL, 'http://www.ampcapital.com/', false);
INSERT INTO public.banks VALUES (2858, 'federalreserve.gov', 'Federal Reserve', 'US', 'USD', 'United States', 'US Dollar', 'Eccles Building, Washington, D.C., U.S.', NULL, 'https://federalreserve.gov/', false);
INSERT INTO public.banks VALUES (2859, 'globalpaymentsinc.com', 'Global Payments Inc.', 'GE', 'GEL', 'Georgia', 'Lari', 'Three Alliance CenterAtlanta, Georgia, U.S.', NULL, 'http://globalpaymentsinc.com', false);
INSERT INTO public.banks VALUES (2860, 'www.xoom.com', 'Xoom Corporation', 'US', 'USD', 'United States', 'US Dollar', 'San Francisco, California, U.S.', NULL, 'https://www.xoom.com', false);
INSERT INTO public.banks VALUES (2861, 'www.simplii.com', 'Simplii Financial', 'CA', 'CAD', 'Canada', 'Canadian Dollar', 'Toronto, Ontario, Canada', NULL, 'https://www.simplii.com', false);
INSERT INTO public.banks VALUES (2862, 'www.koc.com.tr', 'Koç Holding A.Ş.', 'TR', 'TRY', 'Turkey', 'Turkish Lira', 'Nakkaştepe, Istanbul', NULL, 'http://www.koc.com.tr/en-us/', false);
INSERT INTO public.banks VALUES (2863, 'www.consorsfinanz.de', 'Consors Finanz BNP Paribas', 'DE', 'EUR', 'Germany', 'Euro', 'Munich', NULL, 'http://www.consorsfinanz.de/', false);
INSERT INTO public.banks VALUES (2864, 'www.nbs.rs', 'National Bank of SerbiaНародна банка СрбијеNarodna Banka Srbije', 'RS', 'RSD', 'Serbia', 'Serbian Dinar', 'Nemanjina 17, Belgrade', NULL, 'http://www.nbs.rs', false);
INSERT INTO public.banks VALUES (2865, 'www.caixa.cv', 'Caixa Económica de Cabo Verde', 'CV', 'CVE', 'Cape Verde', 'Cape Verde Escudo', 'Praia, Cape Verde', NULL, 'http://www.caixa.cv', false);
INSERT INTO public.banks VALUES (2866, 'www.tescobank.com', 'Tesco Personal Finance plc', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Edinburgh, Scotland, UK', NULL, 'http://www.tescobank.com', false);
INSERT INTO public.banks VALUES (2867, 'www.lanbusa.com', 'Los Angeles National Bank', 'US', 'USD', 'United States', 'US Dollar', 'Buena Park, California', NULL, 'http://www.lanbusa.com', false);
INSERT INTO public.banks VALUES (2868, 'www.greendot.com', 'Green Dot Corporation', 'US', 'USD', 'United States', 'US Dollar', 'Pasadena, California', NULL, 'http://www.greendot.com', false);
INSERT INTO public.banks VALUES (2869, 'comerica.com', 'Comerica Incorporated', 'US', 'USD', 'United States', 'US Dollar', 'Comerica Bank TowerDallas, Texas, U.S.', NULL, 'http://comerica.com', false);
INSERT INTO public.banks VALUES (2870, 'www.burlington.com', 'Burlington Stores, Inc.', 'JE', 'GBP', 'Jersey', 'Pound Sterling', 'Burlington, New Jersey, U.S.', NULL, 'https://www.burlington.com', false);
INSERT INTO public.banks VALUES (2871, 'www.qia.qa', 'Qatar Investment Authority', 'QA', 'QAR', 'Qatar', 'Qatari Rial', 'Doha, Qatar', NULL, 'http://www.qia.qa/', false);
INSERT INTO public.banks VALUES (2872, 'hpmandi.nic.in', 'Mandi district', 'IN', 'INR', 'India', 'Indian Rupee', 'Mandi, India', NULL, 'http://hpmandi.nic.in/', false);
INSERT INTO public.banks VALUES (2873, 'www.swissquote.com', 'Swissquote Group Holding Ltd', 'CH', 'CHF', 'Switzerland', 'Swiss Franc', 'Gland, Switzerland', NULL, 'http://www.swissquote.com', false);
INSERT INTO public.banks VALUES (2874, 'karimnagar.nic.in', 'Karimnagar district', 'IN', 'INR', 'India', 'Indian Rupee', 'Karimnagar', NULL, 'http://karimnagar.nic.in', false);
INSERT INTO public.banks VALUES (2875, 'wessexwater.co.uk', 'Wessex Water', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Bath, Somerset', NULL, 'http://wessexwater.co.uk', false);
INSERT INTO public.banks VALUES (2876, 'www.gtja.com', 'Guotai Junan Securities', 'CN', 'CNY', 'China', 'Yuan Renminbi', 'Shanghai, China', NULL, 'http://www.gtja.com', false);
INSERT INTO public.banks VALUES (2877, 'coins.ph', 'Coins.ph', 'PH', 'PHP', 'Philippines', 'Philippine Peso', 'Pasig City, Metro Manila, Philippines', NULL, 'https://coins.ph/', false);
INSERT INTO public.banks VALUES (2878, 'www.csb.co.in', 'CSB Bank Limited', 'IN', 'INR', 'India', 'Indian Rupee', 'Thrissur, Kerala, India.', NULL, 'http://www.csb.co.in/', false);
INSERT INTO public.banks VALUES (2879, 'www.standardbank.co.mw', 'Standard Bank of Malawi Limited', 'MW', 'MWK', 'Malawi', 'Kwacha', 'Limbe, Malawi', NULL, 'http://www.standardbank.co.mw/', false);
INSERT INTO public.banks VALUES (2880, 'www.bmb.co.in', 'Bharatiya Mahila Bank', 'IN', 'INR', 'India', 'Indian Rupee', 'Delhi, India', NULL, 'http://www.bmb.co.in', false);
INSERT INTO public.banks VALUES (2881, 'www.bnc.com.ve', 'Banco Nacional de Crédito C.A.', 'VE', 'VEF', 'Venezuela', 'Bolivar', 'Caracas, Venezuela', NULL, 'http://www.bnc.com.ve/', false);
INSERT INTO public.banks VALUES (2882, 'www.prosperitybankusa.com', 'Prosperity Bancshares, Inc.', 'US', 'USD', 'United States', 'US Dollar', 'Houston, Texas, United States', NULL, 'http://www.prosperitybankusa.com', false);
INSERT INTO public.banks VALUES (2883, 'www.dogusgrubu.com.tr', 'Doğuş Group', 'TR', 'TRY', 'Turkey', 'Turkish Lira', 'Istanbul, Turkey', NULL, 'https://www.dogusgrubu.com.tr', false);
INSERT INTO public.banks VALUES (2884, 'www.psk.at', 'Österreichische Postsparkasse AG', 'AT', 'EUR', 'Austria', 'Euro', 'Vienna, Austria', NULL, 'http://www.psk.at/', false);
INSERT INTO public.banks VALUES (2885, 'suncorpgroup.com.au', 'Suncorp Group', 'AU', 'AUD', 'Australia', 'Australian Dollar', 'Brisbane, Australia', NULL, 'http://suncorpgroup.com.au/', false);
INSERT INTO public.banks VALUES (2886, 'www.dinersclub.com', 'Diners Club International', 'US', 'USD', 'United States', 'US Dollar', 'Riverwoods, Illinois, United States', NULL, 'https://www.dinersclub.com/', false);
INSERT INTO public.banks VALUES (2887, 'www.freecharge.in', 'FreeCharge', 'IN', 'INR', 'India', 'Indian Rupee', 'Gurugram, India', NULL, 'https://www.freecharge.in/', false);
INSERT INTO public.banks VALUES (2888, 'www.gjensidigenor.no', 'Gjensidige NOR ASA', 'NO', 'NOK', 'Norway', 'Norwegian Krone', 'Oslo, Norway', NULL, 'http://www.gjensidigenor.no/', false);
INSERT INTO public.banks VALUES (2889, 'www2.wakefern.com', 'Wakefern Food Corporation', 'JE', 'GBP', 'Jersey', 'Pound Sterling', 'Keasbey, New Jersey, U.S.', NULL, 'http://www2.wakefern.com/', false);
INSERT INTO public.banks VALUES (2890, 'www.slsp.sk', 'Slovenská sporiteľňa, a.s.', 'SK', 'EUR', 'Slovakia', 'Euro', 'Bratislava, Slovakia', NULL, 'https://www.slsp.sk/sk/ludia', false);
INSERT INTO public.banks VALUES (2891, 'www.upcinsurance.com', 'UPC Insurance', 'US', 'USD', 'United States', 'US Dollar', 'St. Petersburg, Florida, United States', NULL, 'http://www.upcinsurance.com', false);
INSERT INTO public.banks VALUES (2892, 'www.anz.co.nz', 'ANZ New Zealand', 'NZ', 'NZD', 'New Zealand', 'New Zealand Dollar', 'Auckland, New Zealand', NULL, 'https://www.anz.co.nz/personal/', false);
INSERT INTO public.banks VALUES (2893, 'www.bbk.es', 'Bilbao Bizkaia Kutxa', 'ES', 'EUR', 'Spain', 'Euro', 'Bilbao, Spain', NULL, 'http://www.bbk.es/', false);
INSERT INTO public.banks VALUES (2894, 'www.viabcp.com', 'Banco de Crédito del Perú', 'PE', 'PEN', 'Peru', 'Nuevo Sol', 'Lima, Peru', NULL, 'http://www.viabcp.com', false);
INSERT INTO public.banks VALUES (2895, 'www.invesco.com', 'Invesco Ltd.', 'GE', 'GEL', 'Georgia', 'Lari', 'Atlanta, Georgia, U.S.', NULL, 'http://www.invesco.com', false);
INSERT INTO public.banks VALUES (2896, 'first-solution.co.uk', 'First Solution Money Transfer', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'London, England', NULL, 'http://first-solution.co.uk', false);
INSERT INTO public.banks VALUES (2897, 'www.nbctz.com', 'NBC (Tanzania) Limited', 'TZ', 'TZS', 'Tanzania', 'Tanzanian Shilling', 'Sokoine Drive, Kivukoni, Dar es Salaam, Tanzania', NULL, 'http://www.nbctz.com/', false);
INSERT INTO public.banks VALUES (2898, 'equifax.com', 'Equifax Inc.', 'GE', 'GEL', 'Georgia', 'Lari', 'Atlanta, Georgia, U.S.', NULL, 'https://equifax.com', false);
INSERT INTO public.banks VALUES (2899, 'www.kutxa.net', 'Gipuzkoa Donostia Kutxa', 'ES', 'EUR', 'Spain', 'Euro', 'San Sebastián, Basque Autonomous Community, Spain', NULL, 'http://www.kutxa.net/', false);
INSERT INTO public.banks VALUES (2900, 'www.snapdeal.com', 'Snapdeal', 'IN', 'INR', 'India', 'Indian Rupee', 'New Delhi, India', NULL, 'https://www.snapdeal.com/', false);
INSERT INTO public.banks VALUES (2901, 'www.hypovereinsbank.de', 'UniCredit Bank AG', 'DE', 'EUR', 'Germany', 'Euro', 'Munich, Germany', NULL, 'http://www.hypovereinsbank.de/', false);
INSERT INTO public.banks VALUES (2902, 'gtbank.co.ke', 'Guaranty Trust Bank (Kenya)', 'KE', 'KES', 'Kenya', 'Kenyan Shilling', 'Nairobi, Kenya', NULL, 'http://gtbank.co.ke/', false);
INSERT INTO public.banks VALUES (2903, 'www.astoriabank.com', 'Astoria Financial Corporation', 'US', 'USD', 'United States', 'US Dollar', 'Lake Success, New York', NULL, 'https://www.astoriabank.com', false);
INSERT INTO public.banks VALUES (2904, 'eastgarohills.gov.in', 'East Garo Hills district', 'IN', 'INR', 'India', 'Indian Rupee', 'Williamnagar', NULL, 'http://eastgarohills.gov.in', false);
INSERT INTO public.banks VALUES (2905, 'www.reliantbank.com', 'Reliant Bancorp', 'US', 'USD', 'United States', 'US Dollar', '1736 Carothers Parkway, Brentwood, Tennessee, United States', NULL, 'https://www.reliantbank.com/', false);
INSERT INTO public.banks VALUES (2960, 'www.avh.be', 'Ackermans & van Haaren N.V.', 'BE', 'EUR', 'Belgium', 'Euro', 'Antwerp, Belgium', NULL, 'https://www.avh.be/', false);
INSERT INTO public.banks VALUES (2906, 'www.icmai.in', 'The Institute of Cost Accountants of India', 'IN', 'INR', 'India', 'Indian Rupee', 'CMA Bhawan, 12 Sudder Street, Kolkata - 700016 India Kolkata, India', NULL, 'https://www.icmai.in', false);
INSERT INTO public.banks VALUES (2907, 'www.theonion.com', 'The Onion', 'US', 'USD', 'United States', 'US Dollar', 'Chicago, Illinois', NULL, 'https://www.theonion.com/', false);
INSERT INTO public.banks VALUES (2908, 'corp.aimia.com', 'Aimia Inc.', 'CA', 'CAD', 'Canada', 'Canadian Dollar', 'Montreal, Quebec, Canada', NULL, 'https://corp.aimia.com/', false);
INSERT INTO public.banks VALUES (2909, 'www.bbva.mx', 'BBVA México', 'MX', 'MXN', 'Mexico', 'Mexican Peso', 'Mexico City, Mexico', NULL, 'http://www.bbva.mx/', false);
INSERT INTO public.banks VALUES (2910, 'www.zopa.com', 'Zopa Limited', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Cottons Centre, Tooley Street, London, England, UK', NULL, 'https://www.zopa.com/', false);
INSERT INTO public.banks VALUES (2911, 'bhplayhouse.com', 'Beverly Hills Playhouse', 'US', 'USD', 'United States', 'US Dollar', 'Beverly Hills, California', NULL, 'http://bhplayhouse.com', false);
INSERT INTO public.banks VALUES (2912, 'www.pochta.ru', 'Russian Post', 'RU', 'RUB', 'Russia', 'Russian Ruble', 'Varshavskoye shosse 37, Moscow, Russia', NULL, 'https://www.pochta.ru/', false);
INSERT INTO public.banks VALUES (2913, 'bancagenerali.com', 'Banca Generali', 'IT', 'EUR', 'Italy', 'Euro', 'Trieste, Italy', NULL, 'http://bancagenerali.com', false);
INSERT INTO public.banks VALUES (2914, 'www.eblf.com', 'Banque Libano-Française S.A.L', 'LB', 'LBP', 'Lebanon', 'Lebanese Pound', 'Liberty Plaza building, Rome Street, Beirut, Lebanon', NULL, 'http://www.eblf.com', false);
INSERT INTO public.banks VALUES (2915, 'www.hkma.gov.hk', 'Hong Kong Monetary Authority香港金融管理局', 'HK', 'HKD', 'Hong Kong', 'Hong Kong Dollar', 'International Finance Centre, Finance Street, Central', NULL, 'http://www.hkma.gov.hk', false);
INSERT INTO public.banks VALUES (2916, 'www.rmbh.co.za', 'RMB Holdings Limited', 'ZA', 'ZAR', 'South Africa', 'Rand', 'Sandton, South Africa', NULL, 'http://www.rmbh.co.za/', false);
INSERT INTO public.banks VALUES (2917, 'www.argenta.be', 'Argenta', 'BE', 'EUR', 'Belgium', 'Euro', 'Antwerp, Belgium', NULL, 'http://www.argenta.be', false);
INSERT INTO public.banks VALUES (2918, 'www.mediaworks.co.nz', 'Mediaworks', 'NZ', 'NZD', 'New Zealand', 'New Zealand Dollar', 'Auckland, New Zealand', NULL, 'http://www.mediaworks.co.nz', false);
INSERT INTO public.banks VALUES (2919, 'pamirairways.af', 'Pamir Airways', 'AF', 'AFN', 'Afghanistan', 'Afghani', 'Kabul, Afghanistan', NULL, 'http://pamirairways.af/index-new.php', false);
INSERT INTO public.banks VALUES (2920, 'www.bancoprovincia.com.ar', 'Banco de la Provincia de Buenos Aires', 'AR', 'ARS', 'Argentina', 'Argentine Peso', 'San Martín 137Ciudad Autónoma de Buenos Aires, Argentina', NULL, 'http://www.bancoprovincia.com.ar', false);
INSERT INTO public.banks VALUES (2921, 'www.dnb.nl', 'De Nederlandsche Bank', 'NL', 'EUR', 'Netherlands', 'Euro', 'Amsterdam', NULL, 'http://www.dnb.nl', false);
INSERT INTO public.banks VALUES (2922, 'www.bpi.com', 'Bank Policy Institute', 'US', 'USD', 'United States', 'US Dollar', 'Washington, DC', NULL, 'http://www.bpi.com', false);
INSERT INTO public.banks VALUES (2923, 'www.poyry.com', 'Pöyry Oyj', 'FI', 'EUR', 'Finland', 'Euro', 'Helsinki, Finland', NULL, 'http://www.poyry.com/', false);
INSERT INTO public.banks VALUES (2924, 'www.tcfbank.com', 'TCF Financial Corporation', 'US', 'USD', 'United States', 'US Dollar', 'Detroit, Michigan, USA', NULL, 'https://www.tcfbank.com', false);
INSERT INTO public.banks VALUES (2925, 'brevillegroup.com', 'Breville Group Limited', 'AU', 'AUD', 'Australia', 'Australian Dollar', 'Alexandria, Sydney, Australia', NULL, 'https://brevillegroup.com/', false);
INSERT INTO public.banks VALUES (2926, 'cbb-bank.com', 'CBB Bancorp, Inc.', 'US', 'USD', 'United States', 'US Dollar', 'Los Angeles, California', NULL, 'http://cbb-bank.com/en', false);
INSERT INTO public.banks VALUES (2927, 'www.iciciprulife.com', 'ICICI Prudential Life Insurance Company''s', 'IN', 'INR', 'India', 'Indian Rupee', 'Mumbai, India', NULL, 'http://www.iciciprulife.com/', false);
INSERT INTO public.banks VALUES (2928, 'www.lionbank.com', 'Fidelity Southern Corporation', 'GE', 'GEL', 'Georgia', 'Lari', 'Atlanta, Georgia, U.S.', NULL, 'http://www.lionbank.com/', false);
INSERT INTO public.banks VALUES (2929, 'bancontactpayconiq.com', 'Bancontact Payconiq Company', 'BE', 'EUR', 'Belgium', 'Euro', 'Brussels, Belgium', NULL, 'http://bancontactpayconiq.com', false);
INSERT INTO public.banks VALUES (2930, 'www.cib.bnpparibas.com', 'BNP Paribas CIB', 'FR', 'EUR', 'France', 'Euro', 'France ', NULL, 'http://www.cib.bnpparibas.com', false);
INSERT INTO public.banks VALUES (2931, 'coutts.com', 'Coutts & Company', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', '440 StrandLondon, WC2United Kingdom', NULL, 'http://coutts.com', false);
INSERT INTO public.banks VALUES (2932, 'www.sds.at', 'Software Daten Service', 'AT', 'EUR', 'Austria', 'Euro', 'Vienna, Austria', NULL, 'http://www.sds.at/en/', false);
INSERT INTO public.banks VALUES (2933, 'www.winstead.com', 'Winstead PC', 'US', 'USD', 'United States', 'US Dollar', 'Dallas, Texas', NULL, 'http://www.winstead.com', false);
INSERT INTO public.banks VALUES (2934, 'www.johannus.com', 'Johannus Orgelbouw', 'NL', 'EUR', 'Netherlands', 'Euro', 'Keplerlaan 2, 6716 BS Ede, Netherlands', NULL, 'http://www.johannus.com', false);
INSERT INTO public.banks VALUES (2935, 'www.imf.org', 'International Monetary Fund', 'US', 'USD', 'United States', 'US Dollar', 'Washington, D.C. U.S.', NULL, 'https://www.imf.org/', false);
INSERT INTO public.banks VALUES (2936, 'www.ametek.com', 'AMETEK, Inc.', 'US', 'USD', 'United States', 'US Dollar', 'Berwyn, Pennsylvania, U.S.', NULL, 'http://www.ametek.com/', false);
INSERT INTO public.banks VALUES (2937, 'www.icbc.com.tr', 'ICBC Turkey', 'TR', 'TRY', 'Turkey', 'Turkish Lira', 'Maslak, Istanbul, Turkey', NULL, 'http://www.icbc.com.tr/', false);
INSERT INTO public.banks VALUES (2938, 'www.bylinebank.com', 'Byline Bancorp, Inc.', 'US', 'USD', 'United States', 'US Dollar', 'Chicago, Illinois, USA', NULL, 'https://www.bylinebank.com/', false);
INSERT INTO public.banks VALUES (2939, 'www.apmex.com', 'APMEX, Inc.', 'US', 'USD', 'United States', 'US Dollar', 'Oklahoma City, Oklahoma, United States', NULL, 'http://www.apmex.com/', false);
INSERT INTO public.banks VALUES (2940, 'www.philtrustbank.com', 'Philippine Trust Company', 'PH', 'PHP', 'Philippines', 'Philippine Peso', 'Manila, Philippines', NULL, 'http://www.philtrustbank.com/', false);
INSERT INTO public.banks VALUES (2941, 'www.evobanco.com', 'EVO Banco, S.A.U', 'ES', 'EUR', 'Spain', 'Euro', 'Madrid, Spain', NULL, 'http://www.evobanco.com/', false);
INSERT INTO public.banks VALUES (2942, 'www.izb.co.zm', 'Indo–Zambia Bank', 'ZM', 'ZMW', 'Zambia', 'Zambian Kwacha', 'Lusaka, Zambia', NULL, 'http://www.izb.co.zm', false);
INSERT INTO public.banks VALUES (2943, 'ppbi.com', 'Pacific Premier Bancorp, Inc.', 'US', 'USD', 'United States', 'US Dollar', 'Irvine, California[1]', NULL, 'http://ppbi.com', false);
INSERT INTO public.banks VALUES (2944, 'www.yetumfplc.co.tz', 'Yetu Microfinance Bank PLC', 'TZ', 'TZS', 'Tanzania', 'Tanzanian Shilling', 'Dar es Salaam, Tanzania', NULL, 'http://www.yetumfplc.co.tz/', false);
INSERT INTO public.banks VALUES (2945, 'websterbank.com', 'Webster Bank', 'US', 'USD', 'United States', 'US Dollar', 'Waterbury, Connecticut, United States', NULL, 'http://websterbank.com', false);
INSERT INTO public.banks VALUES (2946, 'www.umma-bank.com.ly', 'Umma Bank', 'LY', 'LYD', 'Libya', 'Libyan Dinar', 'Tripoli , Libya', NULL, 'http://www.umma-bank.com.ly/', false);
INSERT INTO public.banks VALUES (2947, 'pockit.com', 'Pockit', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'United Kingdom', NULL, 'http://pockit.com', false);
INSERT INTO public.banks VALUES (2948, 'www.eastwestbank.com', 'East West Bancorp, Inc.', 'US', 'USD', 'United States', 'US Dollar', 'Pasadena, California', NULL, 'http://www.eastwestbank.com', false);
INSERT INTO public.banks VALUES (2949, 'www.storebrand.com', 'Storebrand ASA', 'NO', 'NOK', 'Norway', 'Norwegian Krone', 'Lysaker, Norway', NULL, 'http://www.storebrand.com', false);
INSERT INTO public.banks VALUES (2950, 'www.aegon.com', 'Aegon N.V.', 'NL', 'EUR', 'Netherlands', 'Euro', 'The Hague, Netherlands', NULL, 'http://www.aegon.com/', false);
INSERT INTO public.banks VALUES (2951, 'www.lhv.ee', 'LHV Pank', 'EE', 'EUR', 'Estonia', 'Euro', 'Tallinn, Estonia', NULL, 'https://www.lhv.ee/en/', false);
INSERT INTO public.banks VALUES (2952, 'firsthorizon.com', 'First Horizon National Corporation', 'US', 'USD', 'United States', 'US Dollar', 'Memphis, Tennessee, USA', NULL, 'http://firsthorizon.com/', false);
INSERT INTO public.banks VALUES (2953, 'huntington.com', 'Huntington Bancshares Incorporated', 'US', 'USD', 'United States', 'US Dollar', 'Columbus, Ohio, U.S.', NULL, 'http://huntington.com', false);
INSERT INTO public.banks VALUES (2954, 'yandex.ru', 'Yandex N.V.', 'RU', 'RUB', 'Russia', 'Russian Ruble', 'ul. Lva Tolstogo, 16, Moscow, Russia, 119021', NULL, 'https://yandex.ru/', false);
INSERT INTO public.banks VALUES (2955, 'www.coca-colahellenic.com', 'Coca-Cola HBC', 'CH', 'CHF', 'Switzerland', 'Swiss Franc', 'Zug, Switzerland[1]', NULL, 'http://www.coca-colahellenic.com', false);
INSERT INTO public.banks VALUES (2956, 'www.hq.se', 'HQ AB', 'SE', 'SEK', 'Sweden', 'Swedish Krona', 'Stockholm, Sweden', NULL, 'http://www.hq.se/', false);
INSERT INTO public.banks VALUES (2957, 'www.lambdachi.org', 'Lambda Chi Alpha', 'IN', 'INR', 'India', 'Indian Rupee', '11711 N. Pennsylvania Street Suite 250Carmel, Indiana USA', NULL, 'http://www.lambdachi.org', false);
INSERT INTO public.banks VALUES (2958, 'credit-agricole.com', 'Crédit Agricole Group', 'FR', 'EUR', 'France', 'Euro', 'Montrouge, France', NULL, 'http://credit-agricole.com', false);
INSERT INTO public.banks VALUES (2959, 'www.standardmedia.co.ke', 'The Standard', 'KE', 'KES', 'Kenya', 'Kenyan Shilling', 'Nairobi, Kenya', NULL, 'http://www.standardmedia.co.ke', false);
INSERT INTO public.banks VALUES (2961, 'spcbl.org.bd', 'The Security Printing Corporation (Bangladesh) Ltd.', 'BD', 'BDT', 'Bangladesh', 'Taka', 'Gazipur, Bangladesh', NULL, 'http://spcbl.org.bd', false);
INSERT INTO public.banks VALUES (2962, 'pnbindia.in', 'Punjab National Bank', 'IN', 'INR', 'India', 'Indian Rupee', 'New Delhi, India', NULL, 'https://pnbindia.in', false);
INSERT INTO public.banks VALUES (2963, 'www.dbsa.org', 'Development Bank of Southern Africa', 'ZA', 'ZAR', 'South Africa', 'Rand', 'Johannesburg, South Africa[2]', NULL, 'http://www.dbsa.org', false);
INSERT INTO public.banks VALUES (2964, 'www.landstar.com', 'Landstar System, Inc.', 'US', 'USD', 'United States', 'US Dollar', 'Jacksonville, Florida, United States', NULL, 'http://www.landstar.com/', false);
INSERT INTO public.banks VALUES (2965, 'www.tazur.com', 'T’azur Companyشركة تآزر', 'BH', 'BHD', 'Bahrain', 'Bahraini Dinar', 'Manama, Bahrain', NULL, 'http://www.tazur.com', false);
INSERT INTO public.banks VALUES (2966, 'www.bsibank.com', 'BSI Ltd', 'CH', 'CHF', 'Switzerland', 'Swiss Franc', 'Via Magatti 2 Lugano, Switzerland', NULL, 'https://www.bsibank.com', false);
INSERT INTO public.banks VALUES (2967, 'www.rlb-tirol.at', 'Raiffeisen-Landesbank Tirol', 'AT', 'EUR', 'Austria', 'Euro', '1–7 Adamgasse, Innsbruck, Austria', NULL, 'http://www.rlb-tirol.at', false);
INSERT INTO public.banks VALUES (2968, 'www.vitra.com', 'Vitra', 'CH', 'CHF', 'Switzerland', 'Swiss Franc', 'Birsfelden, Switzerland', NULL, 'http://www.vitra.com', false);
INSERT INTO public.banks VALUES (2969, 'www.hanwha.com', 'Hanwha', 'KR', 'KRW', 'South Korea', 'South Korean Won', 'Seoul, South Korea', NULL, 'http://www.hanwha.com/', false);
INSERT INTO public.banks VALUES (2970, 'www.grawe.at', 'Grazer Wechselseitige Versicherung', 'AT', 'EUR', 'Austria', 'Euro', 'Graz, Austria', NULL, 'http://www.grawe.at/en/index.htm', false);
INSERT INTO public.banks VALUES (2971, 'www.elavon.com', 'Elavon', 'GE', 'GEL', 'Georgia', 'Lari', 'Atlanta, Georgia', NULL, 'http://www.elavon.com/', false);
INSERT INTO public.banks VALUES (2972, 'www.gensler.com', 'Gensler', 'US', 'USD', 'United States', 'US Dollar', 'San Francisco , United States of America ', NULL, 'https://www.gensler.com', false);
INSERT INTO public.banks VALUES (2973, 'www.ridgemontep.com', 'Ridgemont Equity Partners', 'US', 'USD', 'United States', 'US Dollar', 'Charlotte, North Carolina, United States', NULL, 'http://www.ridgemontep.com/', false);
INSERT INTO public.banks VALUES (2974, 'www.bancodevalencia.com', 'Banco de Valencia', 'ES', 'EUR', 'Spain', 'Euro', 'Valencia, Spain, Spain', NULL, 'http://www.bancodevalencia.com', false);
INSERT INTO public.banks VALUES (2975, 'www.cdp.it', 'Cassa Depositi e Prestiti', 'IT', 'EUR', 'Italy', 'Euro', 'Rome, Italy', NULL, 'http://www.cdp.it', false);
INSERT INTO public.banks VALUES (2976, 'www.caferico.com', 'Café Rico', 'PR', 'USD', 'Puerto Rico', 'US Dollar', 'Ponce, Puerto Rico', NULL, 'http://www.caferico.com/', false);
INSERT INTO public.banks VALUES (2977, 'www.sca.com', 'Svenska Cellulosa AB', 'SE', 'SEK', 'Sweden', 'Swedish Krona', 'Sundsvall, Sweden', NULL, 'http://www.sca.com/', false);
INSERT INTO public.banks VALUES (2978, 'www.oppenheimer.com', 'Oppenheimer Holdings', 'US', 'USD', 'United States', 'US Dollar', 'New York City, USA', NULL, 'http://www.oppenheimer.com', false);
INSERT INTO public.banks VALUES (2979, 'montecarloresort.com', 'Société des Bains de Mer et le Cercle des Étrangers à Monaco', 'MC', 'EUR', 'Monaco', 'Euro', 'Monte Carlo, Monaco', NULL, 'http://montecarloresort.com', false);
INSERT INTO public.banks VALUES (2980, 'www.ibercaja.es', 'Ibercaja Banco, S.A.', 'ES', 'EUR', 'Spain', 'Euro', 'Zaragoza, Spain', NULL, 'http://www.ibercaja.es', false);
INSERT INTO public.banks VALUES (2981, 'moga.nic.in', 'Moga District', 'IN', 'INR', 'India', 'Indian Rupee', 'Moga', NULL, 'http://moga.nic.in/', false);
INSERT INTO public.banks VALUES (2982, 'rudraprayag.nic.in', 'Rudraprayag district', 'IN', 'INR', 'India', 'Indian Rupee', 'Rudraprayag', NULL, 'http://rudraprayag.nic.in', false);
INSERT INTO public.banks VALUES (2983, 'www.finca.org', 'FINCA International', 'US', 'USD', 'United States', 'US Dollar', 'Washington, DC, United States', NULL, 'https://www.finca.org/', false);
INSERT INTO public.banks VALUES (2984, 'www.posted.co.rs', 'Poštanska štedionica', 'RS', 'RSD', 'Serbia', 'Serbian Dinar', 'Kraljice Marije 3, Belgrade, Serbia', NULL, 'http://www.posted.co.rs', false);
INSERT INTO public.banks VALUES (2985, 'www.sofitasa.com', 'Banco Sofitasa, Universal C.A', 'VE', 'VEF', 'Venezuela', 'Bolivar', 'San Cristobal, Venezuela', NULL, 'http://www.sofitasa.com', false);
INSERT INTO public.banks VALUES (2986, 'www.csas.cz', 'Česká spořitelna', 'CZ', 'CZK', 'Czechia', 'Czech Koruna', 'Prague, Czech Republic', NULL, 'http://www.csas.cz', false);
INSERT INTO public.banks VALUES (2987, 'money.yandex.ru', 'Yandex.Money', 'RU', 'RUB', 'Russia', 'Russian Ruble', 'Russia ', NULL, 'https://money.yandex.ru', false);
INSERT INTO public.banks VALUES (2988, 'www.westernjournal.com', 'The Western Journal', 'US', 'USD', 'United States', 'US Dollar', 'Phoenix, Arizona, U.S.', NULL, 'https://www.westernjournal.com', false);
INSERT INTO public.banks VALUES (2989, 'alterna.ca', 'Alterna Savings', 'CA', 'CAD', 'Canada', 'Canadian Dollar', 'Ottawa , Canada ', NULL, 'http://alterna.ca', false);
INSERT INTO public.banks VALUES (2990, 'www.bankofshanghai.com', 'Bank of Shanghai', 'CN', 'CNY', 'China', 'Yuan Renminbi', 'Shanghai, China', NULL, 'http://www.bankofshanghai.com', false);
INSERT INTO public.banks VALUES (2991, 'localfirstbank.com', 'First Bancorp', 'US', 'USD', 'United States', 'US Dollar', 'Southern Pines , United States of America ', NULL, 'https://localfirstbank.com/', false);
INSERT INTO public.banks VALUES (2992, 'intralinks.com', 'Intralinks', 'US', 'USD', 'United States', 'US Dollar', 'New York City ', NULL, 'http://intralinks.com', false);
INSERT INTO public.banks VALUES (2993, 'www.bpn.it', 'Banca Popolare di Novara', 'IT', 'EUR', 'Italy', 'Euro', 'Novara, Italy', NULL, 'http://www.bpn.it', false);
INSERT INTO public.banks VALUES (2994, 'www.bancaribe.com.ve', 'Bancaribe', 'VE', 'VEF', 'Venezuela', 'Bolivar', 'Caracas, Venezuela', NULL, 'http://www.bancaribe.com.ve/', false);
INSERT INTO public.banks VALUES (2995, 'www.swift.com', 'S.W.I.F.T. SCRL', 'BE', 'EUR', 'Belgium', 'Euro', 'La Hulpe, Belgium', NULL, 'https://www.swift.com/', false);
INSERT INTO public.banks VALUES (2996, 'www.goldsgym.com', 'Gold''s Gym International, Inc.', 'US', 'USD', 'United States', 'US Dollar', 'Dallas, Texas, U.S.', NULL, 'http://www.goldsgym.com/', false);
INSERT INTO public.banks VALUES (2997, 'www.cii.in', 'Confederation of Indian Industry', 'IN', 'INR', 'India', 'Indian Rupee', 'New Delhi, India', NULL, 'http://www.cii.in/', false);
INSERT INTO public.banks VALUES (2998, 'seic.com', 'SEI Investments Company', 'US', 'USD', 'United States', 'US Dollar', 'Oaks, Pennsylvania, United States', NULL, 'http://seic.com', false);
INSERT INTO public.banks VALUES (2999, 'www.cic.fr', 'CIC (Crédit Industriel et Commercial)', 'FR', 'EUR', 'France', 'Euro', 'Paris', NULL, 'http://www.cic.fr', false);
INSERT INTO public.banks VALUES (3000, 'www.thestreet.com', 'TheStreet, Inc.', 'US', 'USD', 'United States', 'US Dollar', '14 Wall StreetNew York City, New York, United States', NULL, 'https://www.thestreet.com/', false);
INSERT INTO public.banks VALUES (3001, 'www.tompkinsfinancial.com', 'Tompkins Financial Corporation', 'US', 'USD', 'United States', 'US Dollar', 'Ithaca, New York, United States', NULL, 'http://www.tompkinsfinancial.com/', false);
INSERT INTO public.banks VALUES (3002, 'tp-link.com', 'TP-LINK Technologies Co., Ltd.', 'CN', 'CNY', 'China', 'Yuan Renminbi', 'Shenzhen, Guangdong, China', NULL, 'http://tp-link.com', false);
INSERT INTO public.banks VALUES (3003, 'www.northamericanbancard.com', 'North American Bancard', 'US', 'USD', 'United States', 'US Dollar', 'Troy, Michigan', NULL, 'https://www.northamericanbancard.com/', false);
INSERT INTO public.banks VALUES (3004, 'www.damen.com', 'Damen Shipyards Group', 'NL', 'EUR', 'Netherlands', 'Euro', 'Gorinchem, South Holland, Netherlands', NULL, 'http://www.damen.com', false);
INSERT INTO public.banks VALUES (3005, 'www.home.saxo', 'Saxo Bank A/S', 'DK', 'DKK', 'Denmark', 'Danish Krone', 'Copenhagen, Denmark', NULL, 'https://www.home.saxo/', false);
INSERT INTO public.banks VALUES (3006, 'atwimaruralbank.com', 'Atwima Rural Bank Ltd', 'GH', 'GHS', 'Ghana', 'Ghana Cedi', 'P.O.Box KW 33 Kwadaso, Kumasi, Ghana', NULL, 'http://atwimaruralbank.com', false);
INSERT INTO public.banks VALUES (3007, 'www.rolobanca.it', 'Rolo Banca 1473', 'IT', 'EUR', 'Italy', 'Euro', 'Palazzo Magnani, 20 via Zamboni, Bologna, Italy', NULL, 'http://www.rolobanca.it', false);
INSERT INTO public.banks VALUES (3008, 'imexbank.com.ua', 'JSCB "IMEXBANK"', 'UA', 'UAH', 'Ukraine', 'Hryvnia', 'Odessa, Ukraine', NULL, 'http://imexbank.com.ua/eng', false);
INSERT INTO public.banks VALUES (3009, 'tcfbank.com', 'TCF Financial Corporation', 'US', 'USD', 'United States', 'US Dollar', 'Wayzata, MN, USA', NULL, 'http://tcfbank.com', false);
INSERT INTO public.banks VALUES (3010, 'www.wnbvernon.com', 'Waggoner National Bank of Vernon', 'US', 'USD', 'United States', 'US Dollar', 'VernonElectra, United States of America', NULL, 'http://www.wnbvernon.com', false);
INSERT INTO public.banks VALUES (3011, 'www.credem.it', 'Credito Emiliano', 'IT', 'EUR', 'Italy', 'Euro', '4 via Emilia San Pietro, Reggio Emilia, Italy', NULL, 'http://www.credem.it', false);
INSERT INTO public.banks VALUES (3012, 'www.maruha-nichiro.co.jp', 'Maruha Nichiro Corporation', 'JP', 'JPY', 'Japan', 'Yen', '2-20 3-chome, Toyosu, Koto-ku, Tokyo 135-8603, Japan', NULL, 'http://www.maruha-nichiro.co.jp/english/', false);
INSERT INTO public.banks VALUES (3013, 'www.banca121.it', 'Banca 121 S.p.A.', 'IT', 'EUR', 'Italy', 'Euro', 'Lecce, Italy', NULL, 'http://www.banca121.it', false);
INSERT INTO public.banks VALUES (3014, 'global.canon', 'Canon Inc.', 'JP', 'JPY', 'Japan', 'Yen', 'Ōta, Tokyo, Japan', NULL, 'http://global.canon/', false);
INSERT INTO public.banks VALUES (3015, 'www.nsdl.co.in', 'National Securities Depository Limited', 'IN', 'INR', 'India', 'Indian Rupee', 'Mumbai, India [1]', NULL, 'http://www.nsdl.co.in', false);
INSERT INTO public.banks VALUES (3016, 'www.pof.com', 'Plenty of Fish', 'CA', 'CAD', 'Canada', 'Canadian Dollar', 'Vancouver,British Columbia, Canada', NULL, 'http://www.pof.com', false);
INSERT INTO public.banks VALUES (3017, 'www.ubs.com', 'UBS Group AG', 'CH', 'CHF', 'Switzerland', 'Swiss Franc', '
Bahnhofstrasse 45 Zürich, Switzerland 8001
Aeschenvorstadt 1 Basel, Switzerland 4051
        ', NULL, 'https://www.ubs.com/', false);
INSERT INTO public.banks VALUES (3018, 'bancamarche.it', 'Banca AdriaticaNuova Banca delle Marche', 'IT', 'EUR', 'Italy', 'Euro', 'Jesi, Italy (de facto)Bergamo, Italy (registered office)', NULL, 'http://bancamarche.it', false);
INSERT INTO public.banks VALUES (3019, 'www.ammetlife.com', 'AmMetLife Insurance Berhad', 'MY', 'MYR', 'Malaysia', 'Malaysian Ringgit', 'Menara AmMetLifeJalan Lumut, Kuala Lumpur, Malaysia', NULL, 'http://www.ammetlife.com/', false);
INSERT INTO public.banks VALUES (3020, 'www.santander.com.br', 'Banco Santander (Brasil) S.A.', 'BR', 'BRL', 'Brazil', 'Brazilian Real', 'São Paulo, Brazil', NULL, 'http://www.santander.com.br', false);
INSERT INTO public.banks VALUES (3021, 'srikakulam.ap.nic.in', 'Srikakulam district', 'IN', 'INR', 'India', 'Indian Rupee', 'Srikakulam', NULL, 'http://srikakulam.ap.nic.in/', false);
INSERT INTO public.banks VALUES (3022, 'www.meridiancu.ca', 'Meridian Credit Union Ltd.', 'CA', 'CAD', 'Canada', 'Canadian Dollar', 'St. Catharines, Ontario and Toronto, Ontario, Canada', NULL, 'https://www.meridiancu.ca/', false);
INSERT INTO public.banks VALUES (3023, 'www.independentbank.com', 'Independent Bank Corporation', 'US', 'USD', 'United States', 'US Dollar', 'Ionia, Michigan', NULL, 'https://www.independentbank.com', false);
INSERT INTO public.banks VALUES (3024, 'www.suedwestbank.de', 'Südwestbank AG', 'DE', 'EUR', 'Germany', 'Euro', 'Stuttgart, Germany', NULL, 'https://www.suedwestbank.de/', false);
INSERT INTO public.banks VALUES (3025, 'www.shca.com', 'Swanke Hayden Connell Architects', 'US', 'USD', 'United States', 'US Dollar', 'New York City, New York, United States', NULL, 'http://www.shca.com', false);
INSERT INTO public.banks VALUES (3026, 'bmcebank.ma', 'Banque Marocaine du Commerce Extérieur', 'MA', 'MAD', 'Morocco', 'Moroccan Dirham', 'Casablanca, Morocco', NULL, 'http://bmcebank.ma/', false);
INSERT INTO public.banks VALUES (3027, 'www.steinhoffinternational.com', 'Steinhoff International Holdings N.V.', 'ZA', 'ZAR', 'South Africa', 'Rand', 'Stellenbosch, Western Cape, South Africa', NULL, 'http://www.steinhoffinternational.com/', false);
INSERT INTO public.banks VALUES (3028, 'pnfp.com', 'Pinnacle Financial Partners', 'US', 'USD', 'United States', 'US Dollar', 'The Pinnacle at Symphony PlaceNashville, Tennessee, U.S.', NULL, 'http://pnfp.com', false);
INSERT INTO public.banks VALUES (3029, 'aa.com', 'American Airlines Group Inc.', 'US', 'USD', 'United States', 'US Dollar', 'CentrePort, Fort Worth, Texas, United States[1]', NULL, 'http://aa.com', false);
INSERT INTO public.banks VALUES (3030, 'www.phonepe.com', 'PhonePe Private Limited', 'IN', 'INR', 'India', 'Indian Rupee', 'Ashford Park View, Bangalore, Karnataka, India[2]', NULL, 'https://www.phonepe.com/', false);
INSERT INTO public.banks VALUES (3031, 'www.tv-asahi.co.jp', 'TV Asahi Holdings Corporation', 'JP', 'JPY', 'Japan', 'Yen', '9-1, Roppongi Rokuchome, Minato, Tokyo, Japan', NULL, 'https://www.tv-asahi.co.jp', false);
INSERT INTO public.banks VALUES (3032, 'www.cordlife.com', 'Cordlife Group Limited', 'SG', 'SGD', 'Singapore', 'Singapore Dollar', 'Singapore', NULL, 'https://www.cordlife.com', false);
INSERT INTO public.banks VALUES (3033, 'www.harbortouch.com', 'Harbortouch Payments, LLC', 'US', 'USD', 'United States', 'US Dollar', 'Number of locations(1) In addition to Morrisville, North Carolina, US', NULL, 'http://www.harbortouch.com/', false);
INSERT INTO public.banks VALUES (3034, 'www.clericalmedical.co.uk', 'Clerical Medical Investment Group Limited', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'London, England', NULL, 'http://www.clericalmedical.co.uk', false);
INSERT INTO public.banks VALUES (3035, 'www.dfcufinancial.com', 'DFCU Financial', 'US', 'USD', 'United States', 'US Dollar', 'Dearborn, Michigan, United States', NULL, 'http://www.dfcufinancial.com', false);
INSERT INTO public.banks VALUES (3036, 'www.fult.com', 'Fulton Financial Corporation', 'US', 'USD', 'United States', 'US Dollar', 'Lancaster, Pennsylvania, USA', NULL, 'http://www.fult.com/', false);
INSERT INTO public.banks VALUES (3037, 'www.wincor-nixdorf.com', 'Wincor Nixdorf AG', 'DE', 'EUR', 'Germany', 'Euro', 'Paderborn, Ostwestfalen-Lippe, Germany', NULL, 'http://www.wincor-nixdorf.com', false);
INSERT INTO public.banks VALUES (3038, 'www.avanza.se', 'Avanza Bank Holding AB (publ.)', 'SE', 'SEK', 'Sweden', 'Swedish Krona', 'Stockholm, Sweden', NULL, 'https://www.avanza.se/start', false);
INSERT INTO public.banks VALUES (3039, 'www.stanbicbank.co.ke', 'Stanbic Holdings plc', 'KE', 'KES', 'Kenya', 'Kenyan Shilling', 'CfC Stanbic Center Chiromo Road Nairobi, Kenya', NULL, 'https://www.stanbicbank.co.ke/', false);
INSERT INTO public.banks VALUES (3040, 'www.idbz.co.zw', 'Infrastructure Development Bank of Zimbabwe', 'ZW', 'ZWL', 'Zimbabwe', 'Zimbabwe Dollar', 'IDBZ House, 99 Rotten Row, Harare, Zimbabwe', NULL, 'https://www.idbz.co.zw/', false);
INSERT INTO public.banks VALUES (3041, 'www.regions.com', 'Regions Financial Corporation', 'US', 'USD', 'United States', 'US Dollar', 'Regions CenterBirmingham, AlabamaUnited States', NULL, 'https://www.regions.com/', false);
INSERT INTO public.banks VALUES (3042, 'www.bi.is', 'Agricultural Bank of Iceland', 'IS', 'ISK', 'Iceland', 'Iceland Krona', 'Reykjavík, Iceland', NULL, 'http://www.bi.is', false);
INSERT INTO public.banks VALUES (3043, 'www.iceplc.com', 'ICE - International Currency Exchange', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'London, W1United Kingdom', NULL, 'http://www.iceplc.com', false);
INSERT INTO public.banks VALUES (3044, 'www.chongryon.com', 'General Association of Korean Residents in Japan', 'JP', 'JPY', 'Japan', 'Yen', 'of Ch''ongryŏn, Chiyoda, Tokyo', NULL, 'http://www.chongryon.com/', false);
INSERT INTO public.banks VALUES (3045, 'www.puregold.com.ph', 'Puregold', 'PH', 'PHP', 'Philippines', 'Philippine Peso', 'Ermita, Manila, Philippines', NULL, 'http://www.puregold.com.ph/', false);
INSERT INTO public.banks VALUES (3046, 'conocophillips.com', 'ConocoPhillips', 'US', 'USD', 'United States', 'US Dollar', 'Houston Energy Corridor,Houston, Texas, U.S. [2]', NULL, 'http://conocophillips.com', false);
INSERT INTO public.banks VALUES (3047, 'www.stwarchitects.com', 'Scott Tallon Walker', 'IE', 'EUR', 'Ireland', 'Euro', 'Dublin, Ireland', NULL, 'http://www.stwarchitects.com', false);
INSERT INTO public.banks VALUES (3048, 'www.nlb.si', 'NLB', 'SI', 'EUR', 'Slovenia', 'Euro', 'Ljubljana, Slovenia, Ljubljana', NULL, 'https://www.nlb.si/exchange-rates-for-individuals', false);
INSERT INTO public.banks VALUES (3049, 'www.hakluytandco.com', 'Holdingham Group Limited', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'London, United Kingdom', NULL, 'http://www.hakluytandco.com/', false);
INSERT INTO public.banks VALUES (3050, 'www.icagruppen.se', 'ICA Gruppen AB (publ)', 'SE', 'SEK', 'Sweden', 'Swedish Krona', 'Solna, Stockholm, Sweden', NULL, 'http://www.icagruppen.se/en/', false);
INSERT INTO public.banks VALUES (3051, 'www.vbank.ru', 'Vozrozhdenie Bank', 'RU', 'RUB', 'Russia', 'Russian Ruble', 'Moscow, Russia', NULL, 'http://www.vbank.ru/', false);
INSERT INTO public.banks VALUES (3052, 'corefirstbank.com', 'CoreFirst Bank & Trust', 'US', 'USD', 'United States', 'US Dollar', 'Topeka, Kansas, USA', NULL, 'http://corefirstbank.com', false);
INSERT INTO public.banks VALUES (3053, 'virginhotels.com', 'Virgin Hotels', 'US', 'USD', 'United States', 'US Dollar', 'Miami, United States', NULL, 'https://virginhotels.com/', false);
INSERT INTO public.banks VALUES (3054, 'www.aufbaubank.de', 'Thüringer Aufbaubank', 'DE', 'EUR', 'Germany', 'Euro', 'Erfurt, Germany', NULL, 'http://www.aufbaubank.de/', false);
INSERT INTO public.banks VALUES (3055, 'www.integralforex.com.tr', 'Integral Forex', 'TR', 'TRY', 'Turkey', 'Turkish Lira', 'Istanbul, Turkey', NULL, 'https://www.integralforex.com.tr', false);
INSERT INTO public.banks VALUES (3056, 'www.royalbusinessbankusa.com', 'RBB Bancorp', 'US', 'USD', 'United States', 'US Dollar', 'Los Angeles, California', NULL, 'https://www.royalbusinessbankusa.com/', false);
INSERT INTO public.banks VALUES (3057, 'www.telegraph.co.uk', 'The Daily Telegraph', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'London, England', NULL, 'https://www.telegraph.co.uk', false);
INSERT INTO public.banks VALUES (3058, 'www.veem.com', 'Veem', 'US', 'USD', 'United States', 'US Dollar', 'San Francisco, United States', NULL, 'https://www.veem.com/', false);
INSERT INTO public.banks VALUES (3059, 'www.bbbs.org', 'Big Brothers Big Sisters of America', 'US', 'USD', 'United States', 'US Dollar', 'Tampa, Florida, United States', NULL, 'http://www.bbbs.org', false);
INSERT INTO public.banks VALUES (3060, 'www.johnhancock.com', 'John Hancock Life Insurance Company, U.S.A.', 'US', 'USD', 'United States', 'US Dollar', '601 Congress StreetBoston, Massachusetts, US', NULL, 'http://www.johnhancock.com/', false);
INSERT INTO public.banks VALUES (3061, 'www.gecapital.com', 'GE Capital', 'US', 'USD', 'United States', 'US Dollar', 'Norwalk, Connecticut, United States', NULL, 'http://www.gecapital.com', false);
INSERT INTO public.banks VALUES (3062, 'www.ralcorp.com', 'Ralcorp Holdings, Inc.', 'US', 'USD', 'United States', 'US Dollar', 'Bank of America PlazaSt. Louis, Missouri, United States', NULL, 'http://www.ralcorp.com/', false);
INSERT INTO public.banks VALUES (3063, 'bwater.com', 'Bridgewater Associates LP', 'US', 'USD', 'United States', 'US Dollar', 'Westport, Connecticut, U.S.', NULL, 'http://bwater.com', false);
INSERT INTO public.banks VALUES (3064, 'tabunghaji.gov.my', 'Lembaga Tabung Haji', 'MY', 'MYR', 'Malaysia', 'Malaysian Ringgit', '201, Jalan Tun Razak, 50400 Kuala Lumpur, Malaysia', NULL, 'http://tabunghaji.gov.my', false);
INSERT INTO public.banks VALUES (3065, 'www.dss.gov.bd', 'Department of Social Services', 'BD', 'BDT', 'Bangladesh', 'Taka', 'Dhaka, Bangladesh', NULL, 'http://www.dss.gov.bd/', false);
INSERT INTO public.banks VALUES (3066, 'www.yalelock.com', 'Yale', 'US', 'USD', 'United States', 'US Dollar', 'Berlin, Connecticut, United States', NULL, 'http://www.yalelock.com', false);
INSERT INTO public.banks VALUES (3067, 'www.paralympic.org', 'International Paralympic CommitteeInternationales Paralympisches Komitee', 'DE', 'EUR', 'Germany', 'Euro', 'Bonn, Germany', NULL, 'http://www.paralympic.org/', false);
INSERT INTO public.banks VALUES (3068, 'www.cloudflare.com', 'Cloudflare, Inc.', 'US', 'USD', 'United States', 'US Dollar', 'San Francisco, California, U.S.', NULL, 'https://www.cloudflare.com/', false);
INSERT INTO public.banks VALUES (3069, 'mizuho-fg.com', 'Mizuho Financial Group, Inc.', 'JP', 'JPY', 'Japan', 'Yen', 'Marunouchi, Chiyoda, Tokyo, Japan', NULL, 'http://mizuho-fg.com', false);
INSERT INTO public.banks VALUES (3070, 'www.licindia.in', 'Life Insurance Corporation', 'IN', 'INR', 'India', 'Indian Rupee', 'Mumbai, India', NULL, 'http://www.licindia.in/', false);
INSERT INTO public.banks VALUES (3071, 'british-business-bank.co.uk', 'British Business Bank plc', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Sheffield, United Kingdom', NULL, 'https://british-business-bank.co.uk', false);
INSERT INTO public.banks VALUES (3072, 'www.hancockwhitney.com', 'Hancock Whitney Corp.', 'US', 'USD', 'United States', 'US Dollar', 'Gulfport, Mississippi, USA', NULL, 'http://www.hancockwhitney.com/', false);
INSERT INTO public.banks VALUES (3073, 'www.southernbank.com', 'Southern BancShares (N.C.), Inc.', 'US', 'USD', 'United States', 'US Dollar', 'Mount Olive, North Carolina', NULL, 'http://www.southernbank.com/', false);
INSERT INTO public.banks VALUES (3074, 'corporate.saisoncard.co.jp', 'Credit Saison Co., Ltd.', 'JP', 'JPY', 'Japan', 'Yen', 'Sunshine 60, Tokyo, Japan', NULL, 'http://corporate.saisoncard.co.jp/co.nsf/en/index.html', false);
INSERT INTO public.banks VALUES (3075, 'www.simcorp.com', 'SimCorp A/S', 'DK', 'DKK', 'Denmark', 'Danish Krone', 'Copenhagen, Denmark', NULL, 'http://www.simcorp.com/', false);
INSERT INTO public.banks VALUES (3076, 'www.union-investment.de', 'Union Asset Management Holding AG', 'DE', 'EUR', 'Germany', 'Euro', 'Frankfurt, Germany', NULL, 'http://www.union-investment.de', false);
INSERT INTO public.banks VALUES (3077, 'www.rse.rw', 'Rwanda Stock Exchange', 'RW', 'RWF', 'Rwanda', 'Rwanda Franc', 'Kigali, Rwanda', NULL, 'http://www.rse.rw/', false);
INSERT INTO public.banks VALUES (3078, 'www.eagleinvsys.com', 'Eagle Investment Systems', 'US', 'USD', 'United States', 'US Dollar', 'Wellesley, MA, United States', NULL, 'http://www.eagleinvsys.com', false);
INSERT INTO public.banks VALUES (3079, 'www.intesasanpaolo.com', 'Intesa Sanpaolo S.p.A.', 'IT', 'EUR', 'Italy', 'Euro', 'Torre Intesa Sanpaolo, Turin, Italy', NULL, 'https://www.intesasanpaolo.com', false);
INSERT INTO public.banks VALUES (3080, 'www.pcsb.com', 'PCSB Financial Corporation', 'US', 'USD', 'United States', 'US Dollar', 'Brewster, New York', NULL, 'https://www.pcsb.com/', false);
INSERT INTO public.banks VALUES (3081, 'www.aa.com', 'American Airlines, Inc.', 'US', 'USD', 'United States', 'US Dollar', 'Fort Worth, Texas, United States', NULL, 'http://www.aa.com', false);
INSERT INTO public.banks VALUES (3082, 'www.panmure.com', 'Panmure Gordon & Co. Limited.', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'London, United Kingdom', NULL, 'http://www.panmure.com', false);
INSERT INTO public.banks VALUES (3083, 'www.gulahmed.com', 'Gul Ahmed Textile Mills Ltd.', 'PK', 'PKR', 'Pakistan', 'Pakistan Rupee', 'Karachi, Pakistan', NULL, 'http://www.gulahmed.com', false);
INSERT INTO public.banks VALUES (3084, 'www.wbpr.com', 'W Holding Company', 'PR', 'USD', 'Puerto Rico', 'US Dollar', 'Mayagüez, Puerto Rico', NULL, 'http://www.wbpr.com/', false);
INSERT INTO public.banks VALUES (3085, 'www.bnl.it', 'Banca Nazionale del Lavoro S.p.A.', 'IT', 'EUR', 'Italy', 'Euro', 'Via Vittorio Veneto 119, Rome, Italy', NULL, 'https://www.bnl.it', false);
INSERT INTO public.banks VALUES (3086, 'societegenerale.com.gh', 'Société Générale (SG)', 'GH', 'GHS', 'Ghana', 'Ghana Cedi', 'Ring Road Central, Accra, Greater Accra, Ghana', NULL, 'https://societegenerale.com.gh', false);
INSERT INTO public.banks VALUES (3087, 'www.cariromagna.it', 'Cassa dei Risparmi di Forlì e della Romagna S.p.A.', 'IT', 'EUR', 'Italy', 'Euro', 'Forlì, Italy', NULL, 'http://www.cariromagna.it', false);
INSERT INTO public.banks VALUES (3088, 'www.nbbl.com.np', 'Nepal Bangladesh Bank Ltd.', 'NP', 'NPR', 'Nepal', 'Nepalese Rupee', 'Kamladi, Kathmandu, Nepal', NULL, 'http://www.nbbl.com.np/index.php', false);
INSERT INTO public.banks VALUES (3089, 'www.argentina.citibank.com', 'Citibank Argentina', 'AR', 'ARS', 'Argentina', 'Argentine Peso', 'Buenos Aires, Argentina', NULL, 'https://www.argentina.citibank.com/ARGCB/JPS/portal/Index.do', false);
INSERT INTO public.banks VALUES (3090, 'www.bncbanking.com', 'BNC Bank', 'US', 'USD', 'United States', 'US Dollar', 'High Point, North Carolina, USA', NULL, 'http://www.bncbanking.com/', false);
INSERT INTO public.banks VALUES (3091, 'www.efginternational.com', 'EFG International AG[1]', 'CH', 'CHF', 'Switzerland', 'Swiss Franc', 'Zürich, Switzerland', NULL, 'http://www.efginternational.com', false);
INSERT INTO public.banks VALUES (3092, 'www.currentbyge.com', 'GE Current, a Daintree company', 'US', 'USD', 'United States', 'US Dollar', 'Boston, Massachusetts, United States', NULL, 'http://www.currentbyge.com', false);
INSERT INTO public.banks VALUES (3093, 'www.unfcu.org', 'United Nations Federal Credit Union', 'US', 'USD', 'United States', 'US Dollar', 'Long Island City, New York, United States', NULL, 'https://www.unfcu.org', false);
INSERT INTO public.banks VALUES (3094, 'www.rwbaird.com', 'Robert W. Baird & Co. Incorporated', 'US', 'USD', 'United States', 'US Dollar', 'U.S. Bank CenterMilwaukee, WisconsinUnited States', NULL, 'http://www.rwbaird.com/', false);
INSERT INTO public.banks VALUES (3095, 'www.gbl.be', 'Groupe Bruxelles Lambert S.A. Groep Brussel Lambert N.V.', 'BE', 'EUR', 'Belgium', 'Euro', 'Brussels, Belgium', NULL, 'http://www.gbl.be/en', false);
INSERT INTO public.banks VALUES (3097, 'cms.law', 'CMS Cameron McKenna Nabarro Olswang LLP', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', '78 Cannon StreetLondonEC4N 6AFUnited Kingdom', NULL, 'https://cms.law/en/GBR/', false);
INSERT INTO public.banks VALUES (3098, 'www.banca-romaneasca.ro', 'Banca Românească', 'RO', 'RON', 'Romania', 'Romanian Leu', 'Bucharest, Romania', NULL, 'http://www.banca-romaneasca.ro', false);
INSERT INTO public.banks VALUES (3099, 'servpro.com', 'Servpro Industries, LLC', 'US', 'USD', 'United States', 'US Dollar', 'Gallatin, Tennessee, USA', NULL, 'http://servpro.com', false);
INSERT INTO public.banks VALUES (3100, 'www.gbp.ma', 'La Banque Centrale Populaire', 'MA', 'MAD', 'Morocco', 'Moroccan Dirham', 'Casablanca, Morocco', NULL, 'http://www.gbp.ma', false);
INSERT INTO public.banks VALUES (3101, 'www.kleinworthambros.com', 'Kleinwort Hambros', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'London, United Kingdom', NULL, 'http://www.kleinworthambros.com', false);
INSERT INTO public.banks VALUES (3102, 'www.dbs.com.hk', 'DBS Bank (Hong Kong) Limited', 'HK', 'HKD', 'Hong Kong', 'Hong Kong Dollar', 'Hong Kong', NULL, 'http://www.dbs.com.hk/', false);
INSERT INTO public.banks VALUES (3103, 'www.farmingtonbankct.com', 'Farmington Bank', 'US', 'USD', 'United States', 'US Dollar', 'Farmington, Connecticut, United States', NULL, 'https://www.farmingtonbankct.com/', false);
INSERT INTO public.banks VALUES (3104, 'www.softbank.com', 'SoftBank Capital', 'US', 'USD', 'United States', 'US Dollar', 'Newton, Massachusetts, United States[1]', NULL, 'http://www.softbank.com/', false);
INSERT INTO public.banks VALUES (3105, 'www.goldenwestworld.com', 'Golden West Financial', 'US', 'USD', 'United States', 'US Dollar', 'Oakland, California, USA', NULL, 'http://www.goldenwestworld.com/', false);
INSERT INTO public.banks VALUES (3106, 'www.bankmnb.com', 'Mountain National Bancshares, Inc.', 'US', 'USD', 'United States', 'US Dollar', 'Sevierville, Tennessee', NULL, 'http://www.bankmnb.com/', false);
INSERT INTO public.banks VALUES (3107, 'www.lombard.co.uk', 'Lombard North Central Plc', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Crawley, United Kingdom', NULL, 'http://www.lombard.co.uk', false);
INSERT INTO public.banks VALUES (3108, 'www.mcxindia.com', 'Multi Commodity Exchange of India Ltd', 'IN', 'INR', 'India', 'Indian Rupee', 'Mumbai, India', NULL, 'https://www.mcxindia.com/', false);
INSERT INTO public.banks VALUES (3109, 'www.johnsonbank.com', 'Johnson Financial Group, Inc.', 'US', 'USD', 'United States', 'US Dollar', 'Racine , United States of America ', NULL, 'https://www.johnsonbank.com', false);
INSERT INTO public.banks VALUES (3110, 'www.aif.org.my', 'Asian Institute of Finance Berhad', 'MY', 'MYR', 'Malaysia', 'Malaysian Ringgit', 'Kuala Lumpur, Malaysia', NULL, 'http://www.aif.org.my/', false);
INSERT INTO public.banks VALUES (3111, 'www.bannerbank.com', 'Banner Corporation', 'US', 'USD', 'United States', 'US Dollar', 'Walla Walla, Washington, United States', NULL, 'http://www.bannerbank.com', false);
INSERT INTO public.banks VALUES (3112, 'www.ugbbh.com', 'United Gulf Bank', 'BH', 'BHD', 'Bahrain', 'Bahraini Dinar', 'UGB Tower, Diplomatic Area, PO Box 5964, Manama, Bahrain', NULL, 'https://www.ugbbh.com', false);
INSERT INTO public.banks VALUES (3113, 'www.sfm-offshore.com', 'SFM Corporate Services', 'AE', 'AED', 'United Arab Emirates', 'UAE Dirham', 'Dubai, United Arab Emirates', NULL, 'http://www.sfm-offshore.com/', false);
INSERT INTO public.banks VALUES (3114, 'skipperlaug.dk', 'Københavns Skipperforening', 'DK', 'DKK', 'Denmark', 'Danish Krone', 'Copenhagen, Denmark', NULL, 'http://skipperlaug.dk/', false);
INSERT INTO public.banks VALUES (3115, 'www.popular.com', 'Popular, Inc.', 'PR', 'USD', 'Puerto Rico', 'US Dollar', 'Hato Rey, San Juan', NULL, 'http://www.popular.com', false);
INSERT INTO public.banks VALUES (3116, 'www.bcv.ch', 'Banque Cantonale Vaudoise', 'CH', 'CHF', 'Switzerland', 'Swiss Franc', 'Lausanne, Switzerland', NULL, 'http://www.bcv.ch/', false);
INSERT INTO public.banks VALUES (3117, 'www.statestreet.com', 'State Street Corporation', 'US', 'USD', 'United States', 'US Dollar', 'One Lincoln StreetBoston, Massachusetts, U.S.', NULL, 'http://www.statestreet.com', false);
INSERT INTO public.banks VALUES (3118, 'www.virginmoney.com.au', 'Virgin Money (Australia) Pty Limited', 'AU', 'AUD', 'Australia', 'Australian Dollar', 'Australia ', NULL, 'http://www.virginmoney.com.au', false);
INSERT INTO public.banks VALUES (3119, 'www.ssga.com', 'State Street Global Advisors', 'US', 'USD', 'United States', 'US Dollar', 'Boston, Massachusetts, United States', NULL, 'http://www.ssga.com', false);
INSERT INTO public.banks VALUES (3120, 'mironline.ru', 'Mir', 'RU', 'RUB', 'Russia', 'Russian Ruble', 'Russia ', NULL, 'http://mironline.ru/', false);
INSERT INTO public.banks VALUES (3121, 'www.landmarkmortgages.com', 'Landmark Mortgages Limited', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Admiral House, Harlington Way, Fleet, Hampshire, England, UK', NULL, 'http://www.landmarkmortgages.com/', false);
INSERT INTO public.banks VALUES (3122, 'equitygroupholdings.com', 'Equity Group Holdings Limited', 'KE', 'KES', 'Kenya', 'Kenyan Shilling', '9th Floor, Equity Centre Hospital Road, Upper HillNairobi, Kenya', NULL, 'https://equitygroupholdings.com/', false);
INSERT INTO public.banks VALUES (3123, 'paytm.com', 'Paytm, LLC', 'IN', 'INR', 'India', 'Indian Rupee', 'B-121, Sector 5, Noida, Uttar Pradesh, India[1]', NULL, 'https://paytm.com', false);
INSERT INTO public.banks VALUES (3124, 'www.tailoredbrands.com', 'Tailored Brands, Inc.', 'US', 'USD', 'United States', 'US Dollar', 'Houston, Texas, U.S.', NULL, 'http://www.tailoredbrands.com', false);
INSERT INTO public.banks VALUES (3125, 'www.tiaa.org', 'TIAA', 'US', 'USD', 'United States', 'US Dollar', 'Manhattan, New York City, United States', NULL, 'http://www.tiaa.org', false);
INSERT INTO public.banks VALUES (3126, 'www.bank.gov.ua', 'National Bank of UkraineНаціональний банк України', 'UA', 'UAH', 'Ukraine', 'Hryvnia', '9, Instytutska st, Kiev, 01601', NULL, 'http://www.bank.gov.ua/', false);
INSERT INTO public.banks VALUES (3127, 'statebankoftravancore.com', 'State Bank of Travancore', 'IN', 'INR', 'India', 'Indian Rupee', 'Poojappura, Thiruvananthapuram, India', NULL, 'http://statebankoftravancore.com', false);
INSERT INTO public.banks VALUES (3128, 'www.realbank.com.ph', 'The Real Bank', 'PH', 'PHP', 'Philippines', 'Philippine Peso', 'Timog Ave., Diliman, Quezon City, Philippines', NULL, 'http://www.realbank.com.ph', false);
INSERT INTO public.banks VALUES (3129, 'www.mdcp.com', 'Madison Dearborn Partners, LLC', 'US', 'USD', 'United States', 'US Dollar', 'Chicago, Illinois, United States', NULL, 'http://www.mdcp.com/', false);
INSERT INTO public.banks VALUES (3130, 'www.affinbank.com.my', 'Affin Holdings Berhad', 'MY', 'MYR', 'Malaysia', 'Malaysian Ringgit', '17th Floor, Menara Affin, 80, Jalan Raja Chulan, 50200 Kuala Lumpur, Malaysia', NULL, 'http://www.affinbank.com.my', false);
INSERT INTO public.banks VALUES (3131, 'www.axa.com', 'AXA S.A.', 'FR', 'EUR', 'France', 'Euro', '25 Avenue Matignon, Paris, France', NULL, 'https://www.axa.com', false);
INSERT INTO public.banks VALUES (3132, 'www.lfg.com', 'Lincoln National Corporation', 'US', 'USD', 'United States', 'US Dollar', 'Radnor, Pennsylvania, United States', NULL, 'http://www.lfg.com', false);
INSERT INTO public.banks VALUES (3133, 'www.almbrand.dk', 'Alm. Brand', 'DK', 'DKK', 'Denmark', 'Danish Krone', 'Copenhagen, Denmark', NULL, 'http://www.almbrand.dk/abdk/english/index.htm', false);
INSERT INTO public.banks VALUES (3134, 'www.tencent.com', 'Tencent Holdings Limited', 'CN', 'CNY', 'China', 'Yuan Renminbi', 'Tencent Binhai Mansion, Nanshan District, Shenzhen, ChinaMacau, China', NULL, 'https://www.tencent.com/en-us/index.html', false);
INSERT INTO public.banks VALUES (3135, 'www.sees.com', 'See''s Candies Shops, Inc.', 'US', 'USD', 'United States', 'US Dollar', 'South San Francisco, California, United States', NULL, 'http://www.sees.com', false);
INSERT INTO public.banks VALUES (3136, 'www.alerus.com', 'Alerus Financial Corporation', 'US', 'USD', 'United States', 'US Dollar', 'Grand Forks, North Dakota, U.S.', NULL, 'https://www.alerus.com/', false);
INSERT INTO public.banks VALUES (3137, 'www.pa.hsbc.com', 'HSBC Panama', 'PA', 'PAB', 'Panama', 'Balboa', 'Panama City, Panama', NULL, 'http://www.pa.hsbc.com/', false);
INSERT INTO public.banks VALUES (3138, 'www.smile.co.uk', 'smile', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', '1 Balloon StreetManchesterM60 4EP, United Kingdom', NULL, 'http://www.smile.co.uk/', false);
INSERT INTO public.banks VALUES (3139, 'www.icicilombard.com', 'ICICI Lombard General Insurance Company Ltd', 'IN', 'INR', 'India', 'Indian Rupee', 'Mumbai, India', NULL, 'http://www.icicilombard.com', false);
INSERT INTO public.banks VALUES (3141, 'JohnsonPublishing.com', 'Johnson Publishing Company', 'US', 'USD', 'United States', 'US Dollar', '200 S. Michigan AvenueChicago, Illinois, U.S.[1]', NULL, 'http://JohnsonPublishing.com', false);
INSERT INTO public.banks VALUES (3142, 'www.mbusa.com', 'Mercedes-Benz USA, LLC', 'GE', 'GEL', 'Georgia', 'Lari', 'Sandy Springs, Georgia, U.S.', NULL, 'http://www.mbusa.com/', false);
INSERT INTO public.banks VALUES (3143, 'www.kakaocorp.com', 'Kakao Corporation', 'KR', 'KRW', 'South Korea', 'South Korean Won', 'Jeju City, South Korea', NULL, 'http://www.kakaocorp.com', false);
INSERT INTO public.banks VALUES (3144, 'gbcib.com', 'GBC International Bank', 'US', 'USD', 'United States', 'US Dollar', 'California', NULL, 'http://gbcib.com', false);
INSERT INTO public.banks VALUES (3145, 'www.prudentialbank.com.gh', 'Prudential Bank Limited', 'GH', 'GHS', 'Ghana', 'Ghana Cedi', '8 John Hammond Street (formerly 8 Nima Avenue), Ring Road Central, Accra, Ghana', NULL, 'http://www.prudentialbank.com.gh', false);
INSERT INTO public.banks VALUES (3146, 'www.citibank.com.au', 'Citigroup Pty Limited', 'AU', 'AUD', 'Australia', 'Australian Dollar', 'Sydney, Australia', NULL, 'https://www.citibank.com.au/', false);
INSERT INTO public.banks VALUES (3147, 'www.fmbwpa.com', 'Farmers and Merchants Bank of Western PA', 'US', 'USD', 'United States', 'US Dollar', 'Kittanning, Pennsylvania, United States', NULL, 'http://www.fmbwpa.com/', false);
INSERT INTO public.banks VALUES (3148, 'www.heartland.co.nz', 'Heartland Bank Limited', 'NZ', 'NZD', 'New Zealand', 'New Zealand Dollar', 'Auckland, New Zealand', NULL, 'http://www.heartland.co.nz/', false);
INSERT INTO public.banks VALUES (3149, 'www.daimler-trucksasia.in', 'Daimler India Commercial Vehicles Pvt.Ltd.', 'IN', 'INR', 'India', 'Indian Rupee', 'Chennai, India', NULL, 'http://www.daimler-trucksasia.in', false);
INSERT INTO public.banks VALUES (3150, 'wintrust.com', 'Wintrust Financial Corporation', 'US', 'USD', 'United States', 'US Dollar', 'Rosemont, Illinois', NULL, 'http://wintrust.com', false);
INSERT INTO public.banks VALUES (3151, 'www.microsoft.com', 'Microsoft Corporation', 'US', 'USD', 'United States', 'US Dollar', 'One Microsoft Way, Redmond, Washington, US', NULL, 'http://www.microsoft.com', false);
INSERT INTO public.banks VALUES (3152, 'www.funko.com', 'Funko Inc.', 'US', 'USD', 'United States', 'US Dollar', 'Everett, Washington, U.S.', NULL, 'https://www.funko.com/', false);
INSERT INTO public.banks VALUES (3153, 'www.cartaworldwide.com', 'Carta Worldwide', 'CA', 'CAD', 'Canada', 'Canadian Dollar', 'Oakville, Ontario, Canada', NULL, 'http://www.cartaworldwide.com/', false);
INSERT INTO public.banks VALUES (3154, 'www.ml.com', 'Merrill', 'US', 'USD', 'United States', 'US Dollar', '250 Vesey StreetNew York City, New York, U.S.', NULL, 'https://www.ml.com/', false);
INSERT INTO public.banks VALUES (3155, 'the-numbers.com', 'The Numbers', 'US', 'USD', 'United States', 'US Dollar', 'Beverly Hills, California, United States', NULL, 'http://the-numbers.com', false);
INSERT INTO public.banks VALUES (3156, 'www.hdfcsec.com', 'HDFC securities', 'IN', 'INR', 'India', 'Indian Rupee', 'Mumbai, Maharashtra, India', NULL, 'http://www.hdfcsec.com/', false);
INSERT INTO public.banks VALUES (3157, 'www.citifxpro.com', 'CitiFX Pro', 'US', 'USD', 'United States', 'US Dollar', 'New York, NY, US', NULL, 'http://www.citifxpro.com/', false);
INSERT INTO public.banks VALUES (3158, 'www.flagstar.com', 'Flagstar Bancorp, Inc.', 'US', 'USD', 'United States', 'US Dollar', 'Troy, Michigan, United States', NULL, 'https://www.flagstar.com/', false);
INSERT INTO public.banks VALUES (3159, 'www.ncbi.nlm.nih.gov', 'National Center for Biotechnology Information', 'US', 'USD', 'United States', 'US Dollar', 'Bethesda, Maryland, U.S.', NULL, 'https://www.ncbi.nlm.nih.gov/', false);
INSERT INTO public.banks VALUES (3160, 'www.pcf-p.com', 'Pei Cobb Freed & Partners', 'US', 'USD', 'United States', 'US Dollar', '88 Pine StreetManhattan, NY, United States', NULL, 'http://www.pcf-p.com', false);
INSERT INTO public.banks VALUES (3161, 'financetrust.co.ug', 'Finance Trust Bank', 'UG', 'UGX', 'Uganda', 'Uganda Shilling', 'Plot 121 & 115, Block 6,Finance Trust Building,Katwe, Kampala, Uganda', NULL, 'http://financetrust.co.ug', false);
INSERT INTO public.banks VALUES (3162, 'www.equitorialtrustbank.com', 'Equitorial Trust Bank', 'NG', 'NGN', 'Nigeria', 'Naira', '1092 Adeola Odeku StreetVictoria IslandLagos, Nigeria', NULL, 'http://www.equitorialtrustbank.com/', false);
INSERT INTO public.banks VALUES (3163, 'www.metrobank.com.ph', 'Metrobank', 'PH', 'PHP', 'Philippines', 'Philippine Peso', 'Makati, Philippines', NULL, 'https://www.metrobank.com.ph/', false);
INSERT INTO public.banks VALUES (3164, 'icsid.worldbank.org', 'International Centres forSettlement of Investment Disputes', 'US', 'USD', 'United States', 'US Dollar', 'Washington, D.C., United States', NULL, 'https://icsid.worldbank.org/', false);
INSERT INTO public.banks VALUES (3165, 'www.chiantibanca.it', 'ChiantiBanca', 'IT', 'EUR', 'Italy', 'Euro', 'Monteriggioni, Italy (legal)San Casciano in Val di Pesa, Italy (general office)', NULL, 'http://www.chiantibanca.it', false);
INSERT INTO public.banks VALUES (3166, 'www.bancadelterritoriolombardo.it', 'Banca del Territorio Lombardo', 'IT', 'EUR', 'Italy', 'Euro', '12 Piazza S. Andrea, Pompiano, Italy', NULL, 'http://www.bancadelterritoriolombardo.it', false);
INSERT INTO public.banks VALUES (3167, 'www.bsa.org.uk', 'Building Societies Association', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'London, England, UK', NULL, 'https://www.bsa.org.uk', false);
INSERT INTO public.banks VALUES (3168, 'www.eika.no', 'Eika Gruppen AS', 'NO', 'NOK', 'Norway', 'Norwegian Krone', 'Oslo, Norway', NULL, 'https://www.eika.no', false);
INSERT INTO public.banks VALUES (3169, 'www.ofgbancorp.com', 'OFG Bancorp', 'PR', 'USD', 'Puerto Rico', 'US Dollar', 'San Juan, Puerto Rico', NULL, 'http://www.ofgbancorp.com/', false);
INSERT INTO public.banks VALUES (3170, 'www.vocalink.com', 'Vocalink', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Rickmansworth, United Kingdom', NULL, 'http://www.vocalink.com/', false);
INSERT INTO public.banks VALUES (3171, 'www.wilmingtontrust.com', 'Wilmington Trust', 'US', 'USD', 'United States', 'US Dollar', 'Wilmington, Delaware, U.S.', NULL, 'http://www.wilmingtontrust.com', false);
INSERT INTO public.banks VALUES (3172, 'cherkizovo.com', 'OJSC "Cherkizovo"', 'RU', 'RUB', 'Russia', 'Russian Ruble', 'Russia, Moscow', NULL, 'http://cherkizovo.com/', false);
INSERT INTO public.banks VALUES (3173, 'dieboldnixdorf.com', 'Diebold Nixdorf', 'US', 'USD', 'United States', 'US Dollar', 'Green, Ohio (North Canton mailing address), United States', NULL, 'http://dieboldnixdorf.com', false);
INSERT INTO public.banks VALUES (3174, 'www.scmholding.com', 'SCM Holdings', 'UA', 'UAH', 'Ukraine', 'Hryvnia', 'Donetsk, Ukraine', NULL, 'http://www.scmholding.com', false);
INSERT INTO public.banks VALUES (3175, 'www.bmonb.com', 'BMO Nesbitt Burns', 'CA', 'CAD', 'Canada', 'Canadian Dollar', 'Toronto, Ontario, Canada', NULL, 'http://www.bmonb.com', false);
INSERT INTO public.banks VALUES (3176, 'www.sabanci.com', 'Hacı Ömer Sabancı Holding A.Ş.', 'TR', 'TRY', 'Turkey', 'Turkish Lira', 'Istanbul, Turkey', NULL, 'https://www.sabanci.com/en', false);
INSERT INTO public.banks VALUES (3177, 'www.ibb-ag.de', 'Internationales Bankhaus Bodensee', 'DE', 'EUR', 'Germany', 'Euro', 'Friedrichshafen, Germany', NULL, 'http://www.ibb-ag.de/', false);
INSERT INTO public.banks VALUES (3178, 'www.hokkokubank.co.jp', 'Hokkoku Bank', 'JP', 'JPY', 'Japan', 'Yen', 'Kanazawa, Ishikawa, Japan', NULL, 'http://www.hokkokubank.co.jp', false);
INSERT INTO public.banks VALUES (3179, 'www.softbankcr.co.jp', 'SB Creative Corp.', 'JP', 'JPY', 'Japan', 'Yen', 'Tokyo, Japan', NULL, 'http://www.softbankcr.co.jp/en/index.html', false);
INSERT INTO public.banks VALUES (3180, 'www.bceao.int', 'Central Bank of West African StatesBanque Centrale des États de l''Afrique de l''Ouest (BCEAO) (in
            French)
        ', 'SN', 'XOF', 'Senegal', 'CFA Franc BCEAO', 'Dakar, Senegal', NULL, 'http://www.bceao.int', false);
INSERT INTO public.banks VALUES (3181, 'www.transamerica.com', 'Transamerica Corporation', 'US', 'USD', 'United States', 'US Dollar', 'Cedar Rapids, Iowa, US', NULL, 'http://www.transamerica.com', false);
INSERT INTO public.banks VALUES (3182, 'www.snpgroup.com', 'SNP Schneider-Neureither & Partner SE', 'DE', 'EUR', 'Germany', 'Euro', 'Heidelberg, Germany', NULL, 'https://www.snpgroup.com', false);
INSERT INTO public.banks VALUES (3183, 'www.op.fi', 'OP Financial Group', 'FI', 'EUR', 'Finland', 'Euro', 'Helsinki, Finland', NULL, 'http://www.op.fi', false);
INSERT INTO public.banks VALUES (3184, 'www.gjensidige.no', 'Gjensidige Forsikring ASA', 'NO', 'NOK', 'Norway', 'Norwegian Krone', 'Oslo, Norway', NULL, 'https://www.gjensidige.no', false);
INSERT INTO public.banks VALUES (3185, 'www.adyen.com', 'Adyen N.V.', 'NL', 'EUR', 'Netherlands', 'Euro', 'Amsterdam, Netherlands', NULL, 'http://www.adyen.com', false);
INSERT INTO public.banks VALUES (3186, 'www.baccredomatic.com', 'BAC Credomatic', 'CR', 'CRC', 'Costa Rica', 'Costa Rican Colon', 'San José, Costa Rica', NULL, 'https://www.baccredomatic.com/', false);
INSERT INTO public.banks VALUES (3187, 'www.payoneer.com', 'Payoneer Inc.', 'US', 'USD', 'United States', 'US Dollar', 'New York, NY United States', NULL, 'https://www.payoneer.com', false);
INSERT INTO public.banks VALUES (3188, 'pay.amazon.com', 'Amazon Pay', 'US', 'USD', 'United States', 'US Dollar', 'Seattle, Washington United States', NULL, 'https://pay.amazon.com/', false);
INSERT INTO public.banks VALUES (3189, 'www.cheltglos.co.uk', 'Cheltenham & Gloucester plc', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Barnwood, Gloucestershire, United Kingdom', NULL, 'http://www.cheltglos.co.uk', false);
INSERT INTO public.banks VALUES (3190, 'www.paccity.net', 'Pacific City Financial Corporation', 'US', 'USD', 'United States', 'US Dollar', 'Los Angeles, California', NULL, 'https://www.paccity.net/EN/Home', false);
INSERT INTO public.banks VALUES (3191, 'www.wpshealth.com', 'Wisconsin Physicians Service Insurance Corporation', 'US', 'USD', 'United States', 'US Dollar', 'Madison, Wisconsin, USA', NULL, 'http://www.wpshealth.com/index.shtml', false);
INSERT INTO public.banks VALUES (3192, 'www.juliusbaer.com', 'Julius Bär Group AG', 'CH', 'CHF', 'Switzerland', 'Swiss Franc', 'Zurich, Switzerland', NULL, 'http://www.juliusbaer.com', false);
INSERT INTO public.banks VALUES (3193, 'www.suncorp.com.au', 'Suncorp Bank', 'AU', 'AUD', 'Australia', 'Australian Dollar', 'Brisbane, Queensland, Australia', NULL, 'http://www.suncorp.com.au', false);
INSERT INTO public.banks VALUES (3194, 'www.janatabank.com.np', 'Janata Bank Nepal Limited', 'NP', 'NPR', 'Nepal', 'Nepalese Rupee', 'Naya Baneshwor, Kathmandu, Nepal', NULL, 'http://www.janatabank.com.np', false);
INSERT INTO public.banks VALUES (3195, 'www.carverbank.com', 'RegusWachovia Global Group & Co. / Carver Bancorp, Inc.', 'US', 'USD', 'United States', 'US Dollar', 'New York, United States', NULL, 'http://www.carverbank.com/', false);
INSERT INTO public.banks VALUES (3196, 'www.cbhbank.com', 'CBH Compagnie Bancaire Helvétique SA', 'CH', 'CHF', 'Switzerland', 'Swiss Franc', 'Boulevard Emile-Jaques-Dalcroze 7, Geneva, Switzerland', NULL, 'http://www.cbhbank.com/', false);
INSERT INTO public.banks VALUES (3197, 'www.alinma.com', 'Alinma Bank مصرف الإنماء', 'SA', 'SAR', 'Saudi Arabia', 'Saudi Riyal', 'Riyadh, Saudi Arabia', NULL, 'http://www.alinma.com/', false);
INSERT INTO public.banks VALUES (3198, 'www.etrade.com', 'E-Trade Financial Corporation', 'US', 'USD', 'United States', 'US Dollar', 'New York City, New York, U.S.', NULL, 'https://www.etrade.com/', false);
INSERT INTO public.banks VALUES (3199, 'www.hoh.net', 'House of Habib', 'PK', 'PKR', 'Pakistan', 'Pakistan Rupee', 'Karachi, Pakistan', NULL, 'http://www.hoh.net', false);
INSERT INTO public.banks VALUES (3200, 'www.esl.org', 'ESL Federal Credit Union', 'US', 'USD', 'United States', 'US Dollar', 'Rochester, New York', NULL, 'https://www.esl.org', false);
INSERT INTO public.banks VALUES (3201, 'www.bancodevenezuela.com', 'Banco de Venezuela', 'VE', 'VEF', 'Venezuela', 'Bolivar', 'Caracas, Venezuela', NULL, 'http://www.bancodevenezuela.com', false);
INSERT INTO public.banks VALUES (3202, 'www.metzler.com', 'B. Metzler seel. Sohn & Co.', 'DE', 'EUR', 'Germany', 'Euro', 'Frankfurt am Main, Germany', NULL, 'http://www.metzler.com/', false);
INSERT INTO public.banks VALUES (3203, 'www.ageas.com', 'Ageas SA/NV', 'BE', 'EUR', 'Belgium', 'Euro', 'Brussels, Belgium', NULL, 'http://www.ageas.com', false);
INSERT INTO public.banks VALUES (3204, 'www.ceifx.com', 'Currency Exchange International, Corp', 'US', 'USD', 'United States', 'US Dollar', 'Orlando, Florida, United States', NULL, 'http://www.ceifx.com', false);
INSERT INTO public.banks VALUES (3205, 'www.alliance-leicester.co.uk', 'Alliance & Leicester plc', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Narborough, Leicestershire, UK', NULL, 'http://www.alliance-leicester.co.uk', false);
INSERT INTO public.banks VALUES (3206, 'www.jal.co.jp', 'Japan Airlines.mw-parser-output .nobold{font-weight:normal}日本航空株式会社Nihon Kōkū Kabushiki-gaisha', 'JP', 'JPY', 'Japan', 'Yen', 'Shinagawa, Tokyo, Japan', NULL, 'https://www.jal.co.jp/en/', false);
INSERT INTO public.banks VALUES (3207, 'www.ipb.citibank.com.sg', 'Citibank International Personal Bank Singapore', 'SG', 'SGD', 'Singapore', 'Singapore Dollar', '8 Marina View Asia Square Tower 1, #21-00 Singapore 018960, Singapore, Singapore', NULL, 'https://www.ipb.citibank.com.sg', false);
INSERT INTO public.banks VALUES (3208, 'www.spirebank.co.ke', 'Spire Bank', 'KE', 'KES', 'Kenya', 'Kenyan Shilling', 'Nairobi, Kenya', NULL, 'http://www.spirebank.co.ke/', false);
INSERT INTO public.banks VALUES (3209, 'www.kaplanfinancial.co.uk', 'Kaplan Financial Ltd. (U.K.)', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Ground Floor, Palace House, 3 Cathedral Street, London, SE1 9DE England', NULL, 'http://www.kaplanfinancial.co.uk', false);
INSERT INTO public.banks VALUES (3210, 'www.thesouthgroup.com', 'The South Financial Group', 'US', 'USD', 'United States', 'US Dollar', 'Greenville, South Carolina, United States', NULL, 'http://www.thesouthgroup.com', false);
INSERT INTO public.banks VALUES (3211, 'www.mas.gov.sg', 'Monetary Authority of Singapore', 'SG', 'SGD', 'Singapore', 'Singapore Dollar', '10 Shenton Way MAS Building, Singapore 079117', NULL, 'http://www.mas.gov.sg', false);
INSERT INTO public.banks VALUES (3212, 'www.bancobpm.it', 'Banco BPM S.p.A.', 'IT', 'EUR', 'Italy', 'Euro', 'Milan, Italy(registered office)Verona, Italy(general office)', NULL, 'https://www.bancobpm.it', false);
INSERT INTO public.banks VALUES (3213, 'bndes.gov.br', 'Banco Nacional de Desenvolvimento Econômico e Social', 'BR', 'BRL', 'Brazil', 'Brazilian Real', 'Rio de Janeiro, Brazil', NULL, 'http://bndes.gov.br/english', false);
INSERT INTO public.banks VALUES (3214, 'irena.org', 'International Renewable Energy Agency', 'AE', 'AED', 'United Arab Emirates', 'UAE Dirham', 'Masdar City, United Arab Emirates', NULL, 'http://irena.org/', false);
INSERT INTO public.banks VALUES (3215, 'www.spron.is', 'Sparisjóður Reykjavíkur og nágrennis', 'IS', 'ISK', 'Iceland', 'Iceland Krona', 'Reykjavík, Iceland', NULL, 'http://www.spron.is', false);
INSERT INTO public.banks VALUES (3216, 'latitudefinancial.com.au', 'Latitude Financial Services', 'AU', 'AUD', 'Australia', 'Australian Dollar', 'Melbourne, VIC, Australia', NULL, 'http://latitudefinancial.com.au', false);
INSERT INTO public.banks VALUES (3217, 'williamsandglyn.rbs.com', 'Williams & Glyn', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Manchester (proposed HQ), United Kingdom [1]', NULL, 'https://williamsandglyn.rbs.com/', false);
INSERT INTO public.banks VALUES (3218, 'www.catalunyacaixa.com', 'CatalunyaCaixa', 'ES', 'EUR', 'Spain', 'Euro', 'Barcelona, Catalonia, Spain', NULL, 'http://www.catalunyacaixa.com', false);
INSERT INTO public.banks VALUES (3219, 'www.umpquabank.com', 'Umpqua Holdings Corporation', 'US', 'USD', 'United States', 'US Dollar', 'Portland, Oregon, United States45°30′47″N 122°40′31″W﻿ / ﻿45.51306°N 122.67528°W﻿ / 45.51306;
            -122.67528Coordinates: 45°30′47″N 122°40′31″W﻿ / ﻿45.51306°N 122.67528°W﻿ / 45.51306; -122.67528
        ', NULL, 'https://www.umpquabank.com/', false);
INSERT INTO public.banks VALUES (3220, 'www.ymobile.jp', 'Y!mobile Corporationワイモバイル株式会社', 'JP', 'JPY', 'Japan', 'Yen', 'Shiodome-building 1-9-1 Higashi-shinbashi, Minato-ku, Tokyo, Japan', NULL, 'https://www.ymobile.jp', false);
INSERT INTO public.banks VALUES (3221, 'www.okura-nikko.com', 'Okura Nikko Hotel Management Co., Ltd.', 'JP', 'JPY', 'Japan', 'Yen', 'Shinagawa, Tokyo, Japan', NULL, 'https://www.okura-nikko.com/', false);
INSERT INTO public.banks VALUES (3222, 'www.videoconindustriesltd.com', 'Videocon Industries Private Limited', 'IN', 'INR', 'India', 'Indian Rupee', 'Mumbai, India', NULL, 'http://www.videoconindustriesltd.com/', false);
INSERT INTO public.banks VALUES (3223, 'www.standardlifeaberdeen.com', 'Standard Life Aberdeen plc', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Edinburgh, Scotland, United Kingdom', NULL, 'https://www.standardlifeaberdeen.com/', false);
INSERT INTO public.banks VALUES (3224, 'stifel.com', 'Stifel Financial Corp.', 'US', 'USD', 'United States', 'US Dollar', 'St. Louis, Missouri, U.S.', NULL, 'http://stifel.com', false);
INSERT INTO public.banks VALUES (3225, 'investors.axosfinancial.com', 'Axos Financial, Inc.', 'US', 'USD', 'United States', 'US Dollar', 'San Diego, California', NULL, 'http://investors.axosfinancial.com/CorporateProfile', false);
INSERT INTO public.banks VALUES (3226, 'www.wuestenrotdirect.de', 'Wüstenrot Bank AG Pfandbriefbank', 'DE', 'EUR', 'Germany', 'Euro', 'Ludwigsburg, Germany[1]', NULL, 'http://www.wuestenrotdirect.de/', false);
INSERT INTO public.banks VALUES (3227, 'www.bpb.it', 'Banca Popolare di Bergamo', 'IT', 'EUR', 'Italy', 'Euro', '8 Piazza Vittorio Veneto, Bergamo, Italy', NULL, 'http://www.bpb.it', false);
INSERT INTO public.banks VALUES (3228, 'www.danskebank.se', 'Danske Bank', 'SE', 'SEK', 'Sweden', 'Swedish Krona', 'City Palace ', NULL, 'http://www.danskebank.se', false);
INSERT INTO public.banks VALUES (3229, 'www.umb.com', 'UMB Financial Corporation', 'US', 'USD', 'United States', 'US Dollar', 'Kansas City, Missouri, U.S.', NULL, 'http://www.umb.com/', false);
INSERT INTO public.banks VALUES (3230, 'www.commerzbank.com', 'Commerzbank AG', 'DE', 'EUR', 'Germany', 'Euro', 'Kaiserplatz, Frankfurt am Main, Germany', NULL, 'https://www.commerzbank.com/', false);
INSERT INTO public.banks VALUES (3231, 'www.nccbank.com.bd', 'NCC Bank Limited', 'BD', 'BDT', 'Bangladesh', 'Taka', 'Dhaka, Bangladesh', NULL, 'http://www.nccbank.com.bd/', false);
INSERT INTO public.banks VALUES (3232, 'www.hbosplc.com', 'HBOS plc', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', '
Edinburgh, Scotland, UK (Registered office)
Halifax, England, UK (Head Office)
        ', NULL, 'http://www.hbosplc.com/', false);
INSERT INTO public.banks VALUES (3233, 'www.northwest.bank', 'Northwest Bancshares, Inc.', 'US', 'USD', 'United States', 'US Dollar', 'Warren, Pennsylvania', NULL, 'https://www.northwest.bank/', false);
INSERT INTO public.banks VALUES (3234, 'www.temenos.com', 'Temenos AG', 'CH', 'CHF', 'Switzerland', 'Swiss Franc', 'Temenos Headquarters SA, 2 Rue de l''Ecole-de-Chimie, CH - 1205 Geneva, Switzerland
        ', NULL, 'http://www.temenos.com', false);
INSERT INTO public.banks VALUES (3235, 'www.fnb-online.com', 'F.N.B. Corporation', 'US', 'USD', 'United States', 'US Dollar', 'Pittsburgh, Pennsylvania, United States', NULL, 'https://www.fnb-online.com/', false);
INSERT INTO public.banks VALUES (3236, 'www.zjtlcb.com', 'Zhejiang Tailong Commercial Bank', 'CN', 'CNY', 'China', 'Yuan Renminbi', 'Taizhou, Zhejiang province, People''s Republic of China', NULL, 'http://www.zjtlcb.com', false);
INSERT INTO public.banks VALUES (3237, 'www.poczta-polska.pl', 'Poczta Polska', 'PL', 'PLN', 'Poland', 'Zloty', 'Warsaw', NULL, 'http://www.poczta-polska.pl/', false);
INSERT INTO public.banks VALUES (3238, 'www.fnni.com', 'First National of Nebraska', 'US', 'USD', 'United States', 'US Dollar', 'Omaha, Nebraska, United States', NULL, 'http://www.fnni.com', false);
INSERT INTO public.banks VALUES (3239, 'banco.bradesco', 'Banco Bradesco S.A.', 'BR', 'BRL', 'Brazil', 'Brazilian Real', 'Osasco, São Paulo, Brazil', NULL, 'https://banco.bradesco', false);
INSERT INTO public.banks VALUES (3240, 'www.hometrustbanking.com', 'HomeTrust Bancshares', 'US', 'USD', 'United States', 'US Dollar', 'Asheville, North Carolina', NULL, 'http://www.hometrustbanking.com/', false);
INSERT INTO public.banks VALUES (3241, 'www.amp.com.au', 'AMP Limited', 'AU', 'AUD', 'Australia', 'Australian Dollar', 'Sydney, New South Wales, Australia', NULL, 'http://www.amp.com.au/', false);
INSERT INTO public.banks VALUES (3242, 'www.firstcitizens.com', 'First Citizens BancShares', 'US', 'USD', 'United States', 'US Dollar', 'Raleigh, North Carolina, United States', NULL, 'http://www.firstcitizens.com/', false);
INSERT INTO public.banks VALUES (3243, 'www.architecture.com', 'Royal Institute of British Architects', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', '66 Portland PlaceLondon, W1RIBA North, Mann Island, Liverpool', NULL, 'http://www.architecture.com', false);
INSERT INTO public.banks VALUES (3244, 'www.bankofhope.com', 'Hope Bancorp, Inc.', 'US', 'USD', 'United States', 'US Dollar', 'Los Angeles, California', NULL, 'https://www.bankofhope.com/', false);
INSERT INTO public.banks VALUES (3245, 'www.idfc.com', 'Infrastructure Development Finance Company', 'IN', 'INR', 'India', 'Indian Rupee', 'Chennai, Tamilnadu, India', NULL, 'http://www.idfc.com', false);
INSERT INTO public.banks VALUES (3246, 'www.daikin.com', 'Daikin Industries', 'JP', 'JPY', 'Japan', 'Yen', 'Umeda Center Bldg., 2-4-12, Nakazaki-Nishi, Kita-ku, Osaka 530-8323, Japan', NULL, 'http://www.daikin.com', false);
INSERT INTO public.banks VALUES (3247, 'www.amerisbank.com', 'Ameris Bancorp', 'GE', 'GEL', 'Georgia', 'Lari', 'Atlanta, Georgia, U.S.', NULL, 'http://www.amerisbank.com', false);
INSERT INTO public.banks VALUES (3248, 'www.tdsecurities.com', 'TD Securities', 'CA', 'CAD', 'Canada', 'Canadian Dollar', 'Toronto, Ontario, Canada', NULL, 'http://www.tdsecurities.com', false);
INSERT INTO public.banks VALUES (3249, 'www.creditandorra.ad', 'Crèdit Andorrà', 'AD', 'EUR', 'Andorra', 'Euro', 'Andorra la Vella, Andorra', NULL, 'http://www.creditandorra.ad/', false);
INSERT INTO public.banks VALUES (3250, 'www.tavant.com', 'Tavant', 'US', 'USD', 'United States', 'US Dollar', 'Santa Clara, California, United States', NULL, 'http://www.tavant.com', false);
INSERT INTO public.banks VALUES (3251, 'www.wmtransfer.com', 'WebMoney Transfer', 'RU', 'RUB', 'Russia', 'Russian Ruble', 'Moscow, Russia[1]', NULL, 'http://www.wmtransfer.com/', false);
INSERT INTO public.banks VALUES (3253, 'www.btgpactual.com', 'Banco BTG Pactual S.A.', 'BR', 'BRL', 'Brazil', 'Brazilian Real', 'Rio de Janeiro, BrazilSão Paulo, Brazil', NULL, 'https://www.btgpactual.com/home_en/', false);
INSERT INTO public.banks VALUES (3254, 'home.komatsu', 'Komatsu Ltd.', 'JP', 'JPY', 'Japan', 'Yen', 'Tokyo, Japan', NULL, 'https://home.komatsu/en/', false);
INSERT INTO public.banks VALUES (3255, 'premiertaxfree.com', 'Planet Payment', 'IE', 'EUR', 'Ireland', 'Euro', 'Galway, Ireland', NULL, 'http://premiertaxfree.com', false);
INSERT INTO public.banks VALUES (3256, 'www.firstmerit.com', 'FirstMerit Corporation', 'US', 'USD', 'United States', 'US Dollar', '106 King James Way, Akron, Ohio, United States', NULL, 'https://www.firstmerit.com/', false);
INSERT INTO public.banks VALUES (3257, 'identrust.com', 'IdenTrust', 'US', 'USD', 'United States', 'US Dollar', 'San Francisco, California', NULL, 'https://identrust.com', false);
INSERT INTO public.banks VALUES (3258, 'www.abbey.com', 'Abbey National plc', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'United Kingdom', NULL, 'http://www.abbey.com', false);
INSERT INTO public.banks VALUES (3259, 'www.hbgary.com', 'HBGary', 'US', 'USD', 'United States', 'US Dollar', 'Offices in Sacramento, California, Washington, D.C., and Bethesda, Maryland.[2]', NULL, 'http://www.hbgary.com/', false);
INSERT INTO public.banks VALUES (3260, 'www.use.or.ug', 'Uganda Securities Exchange', 'UG', 'UGX', 'Uganda', 'Uganda Shilling', 'Kampala, Uganda', NULL, 'http://www.use.or.ug', false);
INSERT INTO public.banks VALUES (3261, 'www.twfhc.com.tw', 'Taiwan Financial Holdings Co., Ltd.臺灣金融控股公司', 'TW', 'TWD', 'Taiwan', 'New Taiwan Dollar', 'Taipei, Taiwan', NULL, 'http://www.twfhc.com.tw', false);
INSERT INTO public.banks VALUES (3262, 'www.bostonglobe.com', 'The Boston Globe', 'US', 'USD', 'United States', 'US Dollar', 'Exchange PlaceBoston, Massachusetts, U.S.', NULL, 'https://www.bostonglobe.com', false);
INSERT INTO public.banks VALUES (3263, 'www.pma.ps', 'Palestine Monetary Authorityسلطة النقد الفلسطينية (Arabic)', 'PS', 'ILS', 'Palestinian Territory', 'New Israeli Sheqel', 'Ramallah, Palestine', NULL, 'http://www.pma.ps', false);
INSERT INTO public.banks VALUES (3264, 'www.acbtz.com', 'Akiba Commercial Bank', 'TZ', 'TZS', 'Tanzania', 'Tanzanian Shilling', 'Dar es Salaam, Tanzania', NULL, 'http://www.acbtz.com/', false);
INSERT INTO public.banks VALUES (3265, 'www.cmegroup.com', 'New York Mercantile Exchange', 'US', 'USD', 'United States', 'US Dollar', 'Manhattan, New York City, New York, U.S.', NULL, 'http://www.cmegroup.com/', false);
INSERT INTO public.banks VALUES (3266, 'www.fordcredit.com', 'Ford Motor Credit Company', 'US', 'USD', 'United States', 'US Dollar', 'Dearborn, Michigan, U.S.', NULL, 'http://www.fordcredit.com', false);
INSERT INTO public.banks VALUES (3267, 'www.ally.com', 'Ally Financial Inc.', 'US', 'USD', 'United States', 'US Dollar', 'Ally Detroit CenterDetroit, Michigan (Corporate)Sandy, Utah (Ally Bank)', NULL, 'https://www.ally.com/', false);
INSERT INTO public.banks VALUES (3268, 'www.gruppocarige.it', 'Banca del Monte di Lucca', 'IT', 'EUR', 'Italy', 'Euro', 'Lucca, Italy', NULL, 'https://www.gruppocarige.it/grpwps/portal/bmlucca', false);
INSERT INTO public.banks VALUES (3269, 'alfransi.com.sa', 'Banque Saudi Fransiالبنك السعودي الفرنسي', 'SA', 'SAR', 'Saudi Arabia', 'Saudi Riyal', 'Riyadh, Saudi Arabia', NULL, 'http://alfransi.com.sa/', false);
INSERT INTO public.banks VALUES (3270, 'glacierbancorp.com', 'Glacier Bancorp, Inc', 'US', 'USD', 'United States', 'US Dollar', '49 Commons LoopKalispell, Montana, U.S.', NULL, 'http://glacierbancorp.com', false);
INSERT INTO public.banks VALUES (3271, 'www.taikang.com', 'Taikang Life Insurance Company Limited 泰康人寿保险股份有限公司', 'CN', 'CNY', 'China', 'Yuan Renminbi', 'Beijing, China', NULL, 'http://www.taikang.com/', false);
INSERT INTO public.banks VALUES (3272, 'www.bancaifisimpresa.it', 'Interbanca', 'IT', 'EUR', 'Italy', 'Euro', 'Milan, Italy', NULL, 'http://www.bancaifisimpresa.it', false);
INSERT INTO public.banks VALUES (3273, 'www.hoaresbank.co.uk', 'C. Hoare & Co.', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'London, England, UK', NULL, 'http://www.hoaresbank.co.uk', false);
INSERT INTO public.banks VALUES (3274, 'www.somalichamber.so', 'Somali Chamber of Commerce and Industry', 'SO', 'SOS', 'Somalia', 'Somali Shilling', 'Mogadishu, Somalia', NULL, 'http://www.somalichamber.so', false);
INSERT INTO public.banks VALUES (3275, 'www.optimizecapitalmarkets.com', 'Optimize Capital Markets', 'CA', 'CAD', 'Canada', 'Canadian Dollar', 'Toronto, Ontario, Canada', NULL, 'http://www.optimizecapitalmarkets.com/', false);
INSERT INTO public.banks VALUES (3276, 'www.homecredit.net', 'Home Credit B.V.', 'NL', 'EUR', 'Netherlands', 'Euro', 'Amsterdam, Netherlands', NULL, 'http://www.homecredit.net/', false);
INSERT INTO public.banks VALUES (3277, 'www.1stsource.com', '1st Source Corporation', 'IN', 'INR', 'India', 'Indian Rupee', 'South Bend, Indiana', NULL, 'http://www.1stsource.com/', false);
INSERT INTO public.banks VALUES (3278, 'www.ottogroup.com', 'Otto GmbH & Co KG', 'DE', 'EUR', 'Germany', 'Euro', 'Hamburg, Germany', NULL, 'http://www.ottogroup.com/en/index.php', false);
INSERT INTO public.banks VALUES (3279, 'www.group.pictet', 'Pictet Group', 'CH', 'CHF', 'Switzerland', 'Swiss Franc', 'Geneva, Switzerland', NULL, 'http://www.group.pictet', false);
INSERT INTO public.banks VALUES (3281, 'www.mutualofomaha.com', 'Mutual of Omaha Insurance Company', 'US', 'USD', 'United States', 'US Dollar', 'Omaha, Nebraska, USA', NULL, 'http://www.mutualofomaha.com', false);
INSERT INTO public.banks VALUES (3282, 'www.nisshinbo.co.jp', 'Nisshinbo Holdings Inc.', 'JP', 'JPY', 'Japan', 'Yen', 'Nihonbashi, Chuo-ku, Tokyo 103-8650, Japan', NULL, 'http://www.nisshinbo.co.jp/english/', false);
INSERT INTO public.banks VALUES (3283, 'www.bokf.com', 'BOK Financial Corporation', 'US', 'USD', 'United States', 'US Dollar', 'Tulsa, Oklahoma, US', NULL, 'http://www.bokf.com/', false);
INSERT INTO public.banks VALUES (3284, 'hampdenandco.com', 'Hampden & Co.', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Edinburgh, United Kingdom', NULL, 'http://hampdenandco.com', false);
INSERT INTO public.banks VALUES (3285, 'www.delarue.com', 'De La Rue plc', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Basingstoke, England', NULL, 'http://www.delarue.com', false);
INSERT INTO public.banks VALUES (3286, 'www.statefarm.com', 'State Farm Mutual Automobile Insurance Company', 'US', 'USD', 'United States', 'US Dollar', 'Bloomington, Illinois, United States', NULL, 'http://www.statefarm.com/', false);
INSERT INTO public.banks VALUES (1697, 'us.cibc.com', 'CIBC Bank USA', 'US', 'USD', 'United States', 'US Dollar', '120 South LaSalle Street, Chicago, Illinois', NULL, 'https://us.cibc.com/', false);
INSERT INTO public.banks VALUES (1698, 'www.mfbonline.com', 'Mechanics and Farmers Bank', 'US', 'USD', 'United States', 'US Dollar', 'Durham, North Carolina, United States', NULL, 'https://www.mfbonline.com/', false);
INSERT INTO public.banks VALUES (1699, 'www.spdb.com.cn', 'Shanghai Pudong Development Bank Co. Ltd', 'CN', 'CNY', 'China', 'Yuan Renminbi', 'Shanghai, China', NULL, 'http://www.spdb.com.cn/chpage/c510/', false);
INSERT INTO public.banks VALUES (3287, 'www.santander.pt', 'Banco Santander Portugal', 'PT', 'EUR', 'Portugal', 'Euro', 'Rua do Ouro nº 88, 1100-063, Lisbon, Portugal', NULL, 'http://www.santander.pt', false);
INSERT INTO public.banks VALUES (3288, 'www.cima.ky', 'Cayman Islands Monetary Authority', 'KY', 'KYD', 'Cayman Islands', 'Cayman Islands Dollar', 'Grand Cayman, Cayman Islands', NULL, 'http://www.cima.ky', false);
INSERT INTO public.banks VALUES (3289, 'www.aig.com', 'American International Group, Inc.', 'US', 'USD', 'United States', 'US Dollar', 'New York City, New York, United States', NULL, 'http://www.aig.com', false);
INSERT INTO public.banks VALUES (3290, 'uk.virginmoney.com', 'Virgin Money', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Newcastle upon Tyne, United Kingdom', NULL, 'http://uk.virginmoney.com', false);
INSERT INTO public.banks VALUES (3314, 'www.lazard.com', 'Lazard Ltd.', 'BM', 'BMD', 'Bermuda', 'Bermudian Dollar', 'Hamilton, Bermuda(incorporation)30 Rockefeller PlazaNew York City, New York, United
            States(operational)
        ', NULL, 'http://www.lazard.com', false);
INSERT INTO public.banks VALUES (3316, 'www.miga.org', 'Multilateral InvestmentGuarantee Agency', 'US', 'USD', 'United States', 'US Dollar', '12th floor, 1800 G Street NW, Washington, D.C., U.S.[1]', NULL, 'https://www.miga.org/', false);
INSERT INTO public.banks VALUES (3318, 'www.mwalimusacco.coop', 'Mwalimu Cooperative Savings & Credit Society Limited', 'KE', 'KES', 'Kenya', 'Kenyan Shilling', 'Nairobi, Kenya', NULL, 'http://www.mwalimusacco.coop/', false);
INSERT INTO public.banks VALUES (3319, 'www.bkam.ma', 'Bank Al-Maghribبنك المغرب', 'MA', 'MAD', 'Morocco', 'Moroccan Dirham', 'Rabat, Morocco', NULL, 'http://www.bkam.ma/', false);
INSERT INTO public.banks VALUES (3320, 'www.isolaralliance.org', 'International Solar Alliance', 'IN', 'INR', 'India', 'Indian Rupee', 'Gwal Pahari, Gurugram, Haryana, India', NULL, 'http://www.isolaralliance.org/', false);
INSERT INTO public.banks VALUES (3321, 'societegenerale.com', 'Société Générale S.A.', 'FR', 'EUR', 'France', 'Euro', '29 Boulevard Haussmann, 9th arrondissement, Paris (registered office) Tours Société Générale,
            Nanterre/La Défense, France (operational headquarters)
        ', NULL, 'http://societegenerale.com', false);
INSERT INTO public.banks VALUES (3322, 'www.pcfinancial.ca', 'President''s Choice Financial', 'CA', 'CAD', 'Canada', 'Canadian Dollar', 'Toronto, Ontario', NULL, 'http://www.pcfinancial.ca/', false);
INSERT INTO public.banks VALUES (3323, 'www.sunseeker.com', 'Sunseeker International', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Poole, United Kingdom', NULL, 'http://www.sunseeker.com', false);
INSERT INTO public.banks VALUES (3324, 'www.auf.org', 'Agence universitaire de la Francophonie', 'CA', 'CAD', 'Canada', 'Canadian Dollar', 'Montreal, Quebec, Canada', NULL, 'https://www.auf.org', false);
INSERT INTO public.banks VALUES (3325, 'www.communitywest.com', 'Community West Bancshares', 'US', 'USD', 'United States', 'US Dollar', 'Goleta, California, USA', NULL, 'http://www.communitywest.com', false);
INSERT INTO public.banks VALUES (3326, 'www.liveoakbank.com', 'Live Oak Bancshares, Inc.', 'US', 'USD', 'United States', 'US Dollar', 'Wilmington, North Carolina', NULL, 'http://www.liveoakbank.com/', false);
INSERT INTO public.banks VALUES (3327, 'www.lendingclub.com', 'LendingClub Corporation', 'US', 'USD', 'United States', 'US Dollar', '595 Market StreetSan Francisco,[1] California, U.S.', NULL, 'https://www.lendingclub.com/', false);
INSERT INTO public.banks VALUES (3328, 'www.bcdc.cd', 'Banque Commerciale du Congo (BCDC)', 'CD', 'CDF', 'Democratic Republic of the Congo', 'Congolese Franc', 'Kinshasa, Democratic Republic of Congo', NULL, 'http://www.bcdc.cd/', false);
INSERT INTO public.banks VALUES (3329, 'www.nextierbank.com', 'NexTier', 'US', 'USD', 'United States', 'US Dollar', 'Butler, Pennsylvania, United States', NULL, 'https://www.nextierbank.com', false);
INSERT INTO public.banks VALUES (3330, 'greeninvestmentgroup.com', 'Green Investment Group', 'GB', 'GBP', 'United Kingdom', 'Pound Sterling', 'Edinburgh, Scotland, UK[1]', NULL, 'http://greeninvestmentgroup.com/', false);
INSERT INTO public.banks VALUES (3331, 'www.tdameritrade.com', 'TD Ameritrade Holding Corporation', 'US', 'USD', 'United States', 'US Dollar', 'Omaha, Nebraska, U.S.', NULL, 'https://www.tdameritrade.com/', false);
INSERT INTO public.banks VALUES (3332, 'www.hl.com', 'Houlihan Lokey, Inc.', 'US', 'USD', 'United States', 'US Dollar', 'Constellation PlaceLos Angeles, California, United States', NULL, 'http://www.hl.com', false);
INSERT INTO public.banks VALUES (3333, 'www.mediocredito.fvg.it', 'Banca Mediocredito del Friuli Venezia Giulia', 'IT', 'EUR', 'Italy', 'Euro', '1 via Aquileia, Udine, Italy', NULL, 'http://www.mediocredito.fvg.it', false);
INSERT INTO public.banks VALUES (3334, 'www.caixa-enginyers.com', 'Caja de Ingenieros', 'ES', 'EUR', 'Spain', 'Euro', 'Vía Layetana, 39, 8003 Barcelona, Catalonia, Spain', NULL, 'https://www.caixa-enginyers.com', false);
INSERT INTO public.banks VALUES (3335, 'www.igloocoolers.com', 'Igloo Products Corp.', 'US', 'USD', 'United States', 'US Dollar', 'Katy, Texas Waller County, Texas, United States', NULL, 'http://www.igloocoolers.com/', false);
INSERT INTO public.banks VALUES (3336, 'www.garantibbva.com.tr', 'Garanti BBVA', 'TR', 'TRY', 'Turkey', 'Turkish Lira', 'Levent, Beşiktaş, Istanbul, Turkey', NULL, 'https://www.garantibbva.com.tr/en', false);
INSERT INTO public.banks VALUES (3337, 'www.pasha-holding.az', 'PASHA Holding LLC', 'AZ', 'AZN', 'Azerbaijan', 'Azerbaijanian Manat', 'Baku, Azerbaijan', NULL, 'http://www.pasha-holding.az/', false);
INSERT INTO public.banks VALUES (3338, 'www.bancatransilvania.ro', 'Banca Transilvania S.A.', 'RO', 'RON', 'Romania', 'Romanian Leu', 'Cluj-Napoca, Romania', NULL, 'https://www.bancatransilvania.ro/', false);
INSERT INTO public.banks VALUES (3339, 'www.turnerconstruction.com', 'Turner Construction Company', 'US', 'USD', 'United States', 'US Dollar', '375 Hudson Street, New York City, NY 10014, United States', NULL, 'http://www.turnerconstruction.com', false);
INSERT INTO public.banks VALUES (3340, 'www.sandleroneill.com', 'Sandler O''Neill + Partners, L.P', 'US', 'USD', 'United States', 'US Dollar', '1251 Avenue of the Americas, New York, New York, US', NULL, 'http://www.sandleroneill.com/index.htm', false);
INSERT INTO public.banks VALUES (3341, 'www.davivienda.com.sv', 'Banco Davivienda Salvadoreño, S.A.', 'SV', 'USD', 'El Salvador', 'US Dollar', 'San Salvador, El Salvador', NULL, 'https://www.davivienda.com.sv/', false);
INSERT INTO public.banks VALUES (3342, 'www.nhqv.com', 'NH Investment and Securities', 'KR', 'KRW', 'South Korea', 'South Korean Won', 'Seoul, South Korea', NULL, 'https://www.nhqv.com/', false);
INSERT INTO public.banks VALUES (3343, 'www.bncr.fi.cr', 'Banco Nacional de Costa Rica', 'CR', 'CRC', 'Costa Rica', 'Costa Rican Colon', 'Avenida 3, Calle 4, San José, Costa Rica', NULL, 'http://www.bncr.fi.cr', false);
INSERT INTO public.banks VALUES (3344, 'www.nbkr.kg', 'National Bank of the Kyrgyz Republic Национальный банк Кыргызской Республики  (Russian)
        ', 'KG', 'KGS', 'Kyrgyzstan', 'Som', '168 Chuy Avenue, Bishkek, 720001, Kyrgyz Republic', NULL, 'http://www.nbkr.kg/index.jsp?lang=ENG', false);
INSERT INTO public.banks VALUES (3345, 'us.hsbc.com', 'Marine Midland Bank, N.A. (1980–1999)Marine Midland Banks Inc (1929–1995)HSBC Americas (1995–1999)', 'US', 'USD', 'United States', 'US Dollar', 'Buffalo, NY, United States', NULL, 'http://us.hsbc.com', false);
INSERT INTO public.banks VALUES (3346, 'www.snb.ch', 'Swiss National Bank(in German) Schweizerische Nationalbank(in French)
        ', 'CH', 'CHF', 'Switzerland', 'Swiss Franc', 'Bern and Zurich', NULL, 'http://www.snb.ch/', false);
INSERT INTO public.banks VALUES (3347, 'www.fondazionemontedipietadivicenza.it', 'Fondazione Monte di Pietà di Vicenza', 'IT', 'EUR', 'Italy', 'Euro', 'Palazzo del Monte di Pietà, Vicenza, Italy', NULL, 'http://www.fondazionemontedipietadivicenza.it', false);
INSERT INTO public.banks VALUES (3348, 'www.nbad.com', 'National Bank of Abu Dhabiبنك أبوظبي الوطني', 'AE', 'AED', 'United Arab Emirates', 'UAE Dirham', '1 NBAD Tower, Abu Dhabi, United Arab Emirates', NULL, 'http://www.nbad.com/', false);
INSERT INTO public.banks VALUES (3349, 'www.tokuyama.co.jp', 'Tokuyama Corporation', 'JP', 'JPY', 'Japan', 'Yen', 'Kasumigaseki Common Gate West Tower, 2-1, Kasumigaseki 3-chome, Chiyoda-ku, Tokyo 100-8983,
            Japan
        ', NULL, 'http://www.tokuyama.co.jp/eng/', false);
INSERT INTO public.banks VALUES (3350, 'www.bsnb.com', 'Ballston Spa National Bank', 'US', 'USD', 'United States', 'US Dollar', '990 State Route 67, Ballston Spa, New York, United States', NULL, 'https://www.bsnb.com', false);
INSERT INTO public.banks VALUES (3351, 'www.bankofbeijing.com.cn', 'Bank of Beijing', 'CN', 'CNY', 'China', 'Yuan Renminbi', 'Beijing, China', NULL, 'http://www.bankofbeijing.com.cn', false);
INSERT INTO public.banks VALUES (3352, 'www.moreover.com', 'Moreover Technologies', 'US', 'USD', 'United States', 'US Dollar', '1902 Campus Commons Dr, Suite 400, Reston, Virginia, 20191-1563, United States', NULL, 'http://www.moreover.com/', false);
INSERT INTO public.banks VALUES (3353, 'www.kktcmerkezbankasi.org', 'Central Bank of the Turkish Republic of Northern CyprusKuzey Kıbrıs Türk Cumhuriyeti Merkez Bankası (in
            Turkish)
        ', 'CY', 'EUR', 'Cyprus', 'Euro', 'North Nicosia, Northern Cyprus', NULL, 'http://www.kktcmerkezbankasi.org/', false);
INSERT INTO public.banks VALUES (3354, 'www.condor.com', 'Condor Flugdienst GmbH', 'DE', 'EUR', 'Germany', 'Euro', 'Frankfurt, Germany', NULL, 'http://www.condor.com/eu/index.jsp', false);
INSERT INTO public.banks VALUES (3355, 'www.bcc.cd', 'Central Bank of the CongoBanque Centrale du Congo', 'CD', 'CDF', 'Democratic Republic of the Congo', 'Congolese Franc', 'Kinshasa, Democratic Republic of the Congo', NULL, 'http://www.bcc.cd', false);
INSERT INTO public.banks VALUES (3356, 'www.lufthansacityline.com', 'Lufthansa CityLine', 'DE', 'EUR', 'Germany', 'Euro', 'Munich Airport, Germany[1]', NULL, 'http://www.lufthansacityline.com/', false);
INSERT INTO public.banks VALUES (3357, 'www.capitecbank.co.za', 'Capitec Bank', 'ZA', 'ZAR', 'South Africa', 'Rand', '1 Quantum Street, Techno Park, Stellenbosch, Western Cape, South Africa', NULL, 'http://www.capitecbank.co.za', false);
INSERT INTO public.banks VALUES (3358, 'www.thanachartbank.co.th', 'Thanachart Bank', 'TH', 'THB', 'Thailand', 'Baht', 'Pathum Wan, Bangkok[1], Thailand', NULL, 'http://www.thanachartbank.co.th/', false);
INSERT INTO public.banks VALUES (3359, 'www.citibank.com.my', 'Citibank Berhad', 'MY', 'MYR', 'Malaysia', 'Malaysian Ringgit', 'Past – Medan PasarKuala Lumpur,[6] Current - Menara Citibank, Jalan Ampang, Kuala Lumpur[5][7]
        ', NULL, 'https://www.citibank.com.my/index.htm', false);
INSERT INTO public.banks VALUES (3360, 'www.tr.mufg.jp', 'Mitsubishi UFJ Trust and Banking Corporation三菱UFJ信託銀行株式会社', 'JP', 'JPY', 'Japan', 'Yen', 'Tokyo, Japan', NULL, 'http://www.tr.mufg.jp/english', false);
INSERT INTO public.banks VALUES (3361, 'www.suntrustng.com', 'SunTrust Bank Nigeria Limited', 'NG', 'NGN', 'Nigeria', 'Naira', '1 Oladele Olashore Street, Off Sanusi Fafunwa Street, Victoria Island, Lagos, Lagos State,
            Nigeria
        ', NULL, 'https://www.suntrustng.com/', false);


--
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.countries VALUES (44, 'CN', 'CHN', 156, 'CH', 'China', 'Beijing', 1330044000, 'AS', '.cn', 'CNY', 'Yuan Renminbi', '86', 'zh-CN,yue,wuu,dta,ug,za', 'Китай', 'China', 'China', 'Chine', 'Юань', 'Yuan Renminbi', 'Yuan Renminbi', 'Yuan Renminbi', '¥', 156);
INSERT INTO public.countries VALUES (22, 'BI', 'BDI', 108, 'BY', 'Burundi', 'Bujumbura', 9863117, 'AF', '.bi', 'BIF', 'Burundi Franc', '257', 'fr-BI,rn', 'Бурунди', 'Burundi', 'Burundi', 'Burundi', 'Бурундийский Франк', 'Franco de Burundi', 'Burundi Franc', 'Franc burundais', '₣', 108);
INSERT INTO public.countries VALUES (25, 'BM', 'BMU', 60, 'BD', 'Bermuda', 'Hamilton', 65365, 'NA', '.bm', 'BMD', 'Bermudian Dollar', '+1-441', 'en-BM,pt', 'Бермудские о-ва', 'Bermudas', 'Bermuda', 'Bermudes', 'Бермудский доллар', 'Dólar bermudeño', 'Bermuda-Dollar', 'Dollar bermudien', '$', 60);
INSERT INTO public.countries VALUES (30, 'BT', 'BTN', 64, 'BT', 'Bhutan', 'Thimphu', 699847, 'AS', '.bt', 'BTN', 'Ngultrum', '975', 'dz', 'Бутан', 'Bután', 'Bhutan', 'Bhoutan', 'Нгултрум', 'Ngultrum', 'Ngultrum', 'Ngultrum', NULL, 64);
INSERT INTO public.countries VALUES (27, 'BO', 'BOL', 68, 'BL', 'Bolivia', 'Sucre', 9947418, 'SA', '.bo', 'BOB', 'Boliviano', '591', 'es-BO,qu,ay', 'Боливия', 'Bolivia', 'Bolivien', 'Bolivie', 'Боливиано', 'Boliviano', 'Boliviano', 'Boliviano', '$', 68);
INSERT INTO public.countries VALUES (16, 'BB', 'BRB', 52, 'BB', 'Barbados', 'Bridgetown', 285653, 'NA', '.bb', 'BBD', 'Barbados Dollar', '+1-246', 'en-BB', 'Барбадос', 'Barbados', 'Barbados', 'Barbade', 'Барбадосский доллар', 'Dólar de Barbados', 'Barbados-Dollar', 'Dollar de la Barbade', '$', 52);
INSERT INTO public.countries VALUES (33, 'BZ', 'BLZ', 84, 'BH', 'Belize', 'Belmopan', 314522, 'NA', '.bz', 'BZD', 'Belize Dollar', '501', 'en-BZ,es', 'Белиз', 'Belice', 'Belize', 'Belize', 'Белизский доллар', 'Dólar de belice', 'Belize-Dollar', 'Dollar de Belize', '$', 84);
INSERT INTO public.countries VALUES (34, 'CA', 'CAN', 124, 'CA', 'Canada', 'Ottawa', 33679000, 'NA', '.ca', 'CAD', 'Canadian Dollar', '1', 'en-CA,fr-CA,iu', 'Канада', 'Canadá', 'Kanada', 'Canada', 'Канадский доллар', 'Dolar canadiense', 'Kanadischer Dollar', 'Dollar canadien', '$', 124);
INSERT INTO public.countries VALUES (42, 'CL', 'CHL', 152, 'CI', 'Chile', 'Santiago', 16746491, 'SA', '.cl', 'CLP', 'Chilean Peso', '56', 'es-CL', 'Чили', 'Chile', 'Chile', 'Chili', 'Чилийское песо', 'Peso chileno', 'Chilenischer Peso', 'Peso chilien', '$', 152);
INSERT INTO public.countries VALUES (28, 'BR', 'BRA', 76, 'BR', 'Brazil', 'Brasilia', 201103330, 'SA', '.br', 'BRL', 'Brazilian Real', '55', 'pt-BR,es,en,fr', 'Бразилия', 'Brasil', 'Brasilien', 'Brésil', 'Бразильский реал', 'Real brasileño', 'brasilianischer Real', 'Real brésilien', '$', 986);
INSERT INTO public.countries VALUES (26, 'BN', 'BRN', 96, 'BX', 'Brunei', 'Bandar Seri Begawan', 395027, 'AS', '.bn', 'BND', 'Brunei Dollar', '673', 'ms-BN,en-BN', 'Бруней Даруссалам', 'Brunéi', 'Brunei', 'Brunéi Darussalam', 'Брунейский доллар', 'Dólar de Brunei', 'Brunei-Dollar', 'Dollar de Brunei', '$', 96);
INSERT INTO public.countries VALUES (7, 'AM', 'ARM', 51, 'AM', 'Armenia', 'Yerevan', 2968000, 'AS', '.am', 'AMD', 'Armenian Dram', '374', 'hy', 'Армения', 'Armenia', 'Armenien', 'Arménie', 'Армянский драм', 'Dram armenio', 'Armenische Dram', 'Dram arménien', '֏', 51);
INSERT INTO public.countries VALUES (48, 'CV', 'CPV', 132, 'CV', 'Cape Verde', 'Praia', 508659, 'AF', '.cv', 'CVE', 'Cape Verde Escudo', '238', 'pt-CV', 'Острова Зеленого Мыса', 'Cabo Verde', 'Kapverden', 'Cap-Vert', 'Кабо-Верде Эскудо', 'Escudo de Cabo Verde', 'Kap Verde Escudo', 'Escudo du Cap Vert', '$', 132);
INSERT INTO public.countries VALUES (36, 'CD', 'COD', 180, 'CG', 'Democratic Republic of the Congo', 'Kinshasa', 70916439, 'AF', '.cd', 'CDF', 'Congolese Franc', '243', 'fr-CD,ln,kg', 'Заир', 'Congo Democrático', 'Kongo', 'RDC', 'Конголезский франк', 'Franco congolés', 'Kongolesischer Franken', 'Franc congolais', '₣', 976);
INSERT INTO public.countries VALUES (46, 'CR', 'CRI', 188, 'CS', 'Costa Rica', 'San Jose', 4516220, 'NA', '.cr', 'CRC', 'Costa Rican Colon', '506', 'es-CR,en', 'Коста-Рика', 'Costa Rica', 'Costa Rica', 'Costa Rica', 'Костариканский Колон', 'Colón costarricense', 'Costa Rica Colon', 'Colon costaricien', '₡', 188);
INSERT INTO public.countries VALUES (1, 'AD', 'AND', 20, 'AN', 'Andorra', 'Andorra la Vella', 84000, 'EU', '.ad', 'EUR', 'Euro', '376', 'ca', 'Андорра', 'Andorra', 'Andorra', 'Andorre', 'Евро', 'Euro', 'Euro', 'euro', '€', 978);
INSERT INTO public.countries VALUES (47, 'CU', 'CUB', 192, 'CU', 'Cuba', 'Havana', 11423000, 'NA', '.cu', 'CUP', 'Cuban Peso', '53', 'es-CU', 'Куба', 'Cuba', 'Kuba', 'Cuba', 'Кубинское песо', 'Peso cubano', 'Kubanischer Peso', 'Peso Cubain', '$', 192);
INSERT INTO public.countries VALUES (45, 'CO', 'COL', 170, 'CO', 'Colombia', 'Bogota', 47790000, 'SA', '.co', 'COP', 'Colombian Peso', '57', 'es-CO', 'Колумбия', 'Colombia', 'Kolumbien', 'Colombie', 'Колумбийское песо', 'Peso colombiano', 'Kolumbianischer Peso', 'Peso colombien', '$', 170);
INSERT INTO public.countries VALUES (37, 'CF', 'CAF', 140, 'CT', 'Central African Republic', 'Bangui', 4844927, 'AF', '.cf', 'XAF', 'CFA Franc BEAC', '236', 'fr-CF,sg,ln,kg', 'ЦАР', 'República Centroafricana', 'Zentralafrikanische Republik', 'Centrafrique', 'CFA Франк BEAC', 'CFA Franc BEAC', 'CFA Franc BEAC', 'Franc CFA BEAC', '₣', 950);
INSERT INTO public.countries VALUES (6, 'AL', 'ALB', 8, 'AL', 'Albania', 'Tirana', 2986952, 'EU', '.al', 'ALL', 'Lek', '355', 'sq,el', 'Албания', 'Albania', 'Albanien', 'Albanie', 'лек', 'Lek', 'Lek', 'Lek', NULL, 8);
INSERT INTO public.countries VALUES (237, 'WS', 'WSM', 882, 'WS', 'Samoa', 'Apia', 192001, 'OC', '.ws', 'WST', 'Tala', '685', 'sm,en-WS', 'Самоа', 'Samoa', 'Samoa', 'Samoa', 'Тала', 'Tala', 'Tala', 'Tala', '$', 882);
INSERT INTO public.countries VALUES (41, 'CK', 'COK', 184, 'CW', 'Cook Islands', 'Avarua', 21388, 'OC', '.ck', 'NZD', 'New Zealand Dollar', '682', 'en-CK,mi', 'Острова Кука', 'Islas Cook', 'Cookinseln', 'Îles Cook', 'Новозеландский доллар', 'Dolar de Nueva Zelanda', 'Neuseeland Dollar', 'Dollar néo-zélandais', '$', 554);
INSERT INTO public.countries VALUES (39, 'CH', 'CHE', 756, 'SZ', 'Switzerland', 'Bern', 7581000, 'EU', '.ch', 'CHF', 'Swiss Franc', '41', 'de-CH,fr-CH,it-CH,rm', 'Швейцария', 'Suiza', 'Schweiz', 'Suisse', 'Швейцарский франк', 'Franco suizo', 'Schweizerfranken', 'Franc suisse', '₣', 756);
INSERT INTO public.countries VALUES (9, 'AR', 'ARG', 32, 'AR', 'Argentina', 'Buenos Aires', 41343201, 'SA', '.ar', 'ARS', 'Argentine Peso', '54', 'es-AR,en,it,de,fr,gn', 'Аргентина', 'Argentina', 'Argentinien', 'Argentine', 'Аргентинское песо', 'Peso argentino', 'Argentinischer Peso', 'Peso argentin', '$', 32);
INSERT INTO public.countries VALUES (8, 'AO', 'AGO', 24, 'AO', 'Angola', 'Luanda', 13068161, 'AF', '.ao', 'AOA', 'Kwanza', '244', 'pt-AO', 'Ангола', 'Angola', 'Angola', 'Angola', 'Кванза', 'Kwanza', 'Kwanza', 'Kwanza', NULL, 973);
INSERT INTO public.countries VALUES (67, 'FJ', 'FJI', 242, 'FJ', 'Fiji', 'Suva', 875983, 'OC', '.fj', 'FJD', 'Fiji Dollar', '679', 'en-FJ,fj', 'Фиджи', 'Fiyi', 'Fidschi', 'Fidji', 'Фиджийский Доллар', 'Dólar de Fiji', 'Fidschi-Dollar', 'Dollar fidjien', '$', 242);
INSERT INTO public.countries VALUES (78, 'GH', 'GHA', 288, 'GH', 'Ghana', 'Accra', 24339838, 'AF', '.gh', 'GHS', 'Ghana Cedi', '233', 'en-GH,ak,ee,tw', 'Гана', 'Ghana', 'Ghana', 'Ghana', 'Ганийский Седи', 'Ghana Cedi', 'Ghana Cedi', 'Cedi du Ghana', '₵', 936);
INSERT INTO public.countries VALUES (73, 'GB', 'GBR', 826, 'UK', 'United Kingdom', 'London', 62348447, 'EU', '.uk', 'GBP', 'Pound Sterling', '44', 'en-GB,cy-GB,gd', 'Великобритания', 'Reino Unido', 'Vereinigtes Königreich', 'Royaume-Uni', 'Фунт стерлингов', 'Libra esterlina', 'Pfund Sterling', 'Livre sterling', '£', 826);
INSERT INTO public.countries VALUES (98, 'IL', 'ISR', 376, 'IS', 'Israel', 'Jerusalem', 7353985, 'AS', '.il', 'ILS', 'New Israeli Sheqel', '972', 'he,ar-IL,en-IL,', 'Израиль', 'Israel', 'Israel', 'Israël', 'Новый израильский шекель', 'Sheqel israelí nuevo', 'Neuer israelischer Schekel', 'Nouveau sheqel israélien', '₪', 376);
INSERT INTO public.countries VALUES (72, 'GA', 'GAB', 266, 'GB', 'Gabon', 'Libreville', 1545255, 'AF', '.ga', 'XAF', 'CFA Franc BEAC', '241', 'fr-GA', 'Габон', 'Gabón', 'Gabun', 'Gabon', 'CFA Франк BEAC', 'CFA Franc BEAC', 'CFA Franc BEAC', 'Franc CFA BEAC', '₣', 950);
INSERT INTO public.countries VALUES (100, 'IN', 'IND', 356, 'IN', 'India', 'New Delhi', 1173108018, 'AS', '.in', 'INR', 'Indian Rupee', '91', 'en-IN,hi,bn,te,mr,ta,ur,gu,kn,ml,or,pa,as,bh,sat,ks,ne,sd,kok,doi,mni,sit,sa,fr,lus,inc', 'Индия', 'India', 'Indien', 'Inde', 'Индийская рупия', 'Rupia india', 'Indische Rupie', 'Roupie indienne', '₹', 356);
INSERT INTO public.countries VALUES (91, 'HK', 'HKG', 344, 'HK', 'Hong Kong', 'Hong Kong', 6898686, 'AS', '.hk', 'HKD', 'Hong Kong Dollar', '852', 'zh-HK,yue,zh,en', 'Гонконг', 'Hong Kong', 'Hongkong', 'Hong Kong', 'Гонконгский доллар', 'Dolar de Hong Kong', 'Hongkong Dollar', 'Dollar de Hong Kong', '$', 344);
INSERT INTO public.countries VALUES (75, 'GE', 'GEO', 268, 'GG', 'Georgia', 'Tbilisi', 4630000, 'AS', '.ge', 'GEL', 'Lari', '995', 'ka,ru,hy,az', 'Грузия', 'Georgia', 'Georgien', 'Géorgie', 'Лари', 'Lari', 'Lari', 'Lari', '₾', 981);
INSERT INTO public.countries VALUES (14, 'AZ', 'AZE', 31, 'AJ', 'Azerbaijan', 'Baku', 8303512, 'AS', '.az', 'AZN', 'Azerbaijanian Manat', '994', 'az,ru,hy', 'Азербайджан', 'Azerbaiyán', 'Aserbaidschan', 'Azerbaïdjan', 'Азербайджанский манат', 'Manat azerbaiyano', 'Aserbaidschanisches Manat', 'Manat azerbaïdjanais', '₼', 944);
INSERT INTO public.countries VALUES (79, 'GI', 'GIB', 292, 'GI', 'Gibraltar', 'Gibraltar', 27884, 'EU', '.gi', 'GIP', 'Gibraltar Pound', '350', 'en-GI,es,it,pt', 'Гибралтар', 'Gibraltar', 'Gibraltar', 'Gibraltar', 'Гибралтарский фунт', 'Libra de gibraltar', 'Gibraltar-Pfund', 'Livre de Gibraltar', '£', 292);
INSERT INTO public.countries VALUES (82, 'GN', 'GIN', 324, 'GV', 'Guinea', 'Conakry', 10324025, 'AF', '.gn', 'GNF', 'Guinea Franc', '224', 'fr-GN', 'Гвинея', 'Guinea', 'Guinea', 'Guinée', 'Гвинейский франк', 'Franco de Guinea', 'Guinea Franc', 'Franc guinéen', '₣', 324);
INSERT INTO public.countries VALUES (54, 'DJ', 'DJI', 262, 'DJ', 'Djibouti', 'Djibouti', 740528, 'AF', '.dj', 'DJF', 'Djibouti Franc', '253', 'fr-DJ,ar,so-DJ,aa', 'Джибути', 'Yibuti', 'Dschibuti', 'Djibouti', 'Джибути Франк', 'Franco de Yibuti', 'Djibouti Franc', 'Franc Djiboutien', '₣', 262);
INSERT INTO public.countries VALUES (57, 'DO', 'DOM', 214, 'DR', 'Dominican Republic', 'Santo Domingo', 9823821, 'NA', '.do', 'DOP', 'Dominican Peso', '+1-809 and 1-829', 'es-DO', 'Доминиканская Республика', 'República Dominicana', 'Dom. Republik', 'République Dominicaine', 'Доминиканское песо', 'Peso dominicano', 'Dominikanischer Peso', 'Peso Dominicain', '$', 214);
INSERT INTO public.countries VALUES (68, 'FK', 'FLK', 238, 'FK', 'Falkland Islands', 'Stanley', 2638, 'SA', '.fk', 'FKP', 'Falkland Islands Pound', '500', 'en-FK', 'Фолклендские о-ва', 'Islas Malvinas', 'Falklandinseln', 'Îles Malouines', 'Фунт Фолклендских островов', 'Libra de las Islas Malvinas', 'Falklandinseln Pfund', 'Livre des îles Falkland', '£', 238);
INSERT INTO public.countries VALUES (90, 'GY', 'GUY', 328, 'GY', 'Guyana', 'Georgetown', 748486, 'SA', '.gy', 'GYD', 'Guyana Dollar', '592', 'en-GY', 'Гайана', 'Guyana', 'Guyana', 'Guyana', 'Гайанский доллар', 'Dólar de Guyana', 'Guyana-Dollar', 'Dollar guyanais', '$', 328);
INSERT INTO public.countries VALUES (99, 'IM', 'IMN', 833, 'IM', 'Isle of Man', 'Douglas', 75049, 'EU', '.im', 'GBP', 'Pound Sterling', '+44-1624', 'en,gv', NULL, NULL, NULL, NULL, 'Фунт стерлингов', 'Libra esterlina', 'Pfund Sterling', 'Livre sterling', '£', 826);
INSERT INTO public.countries VALUES (59, 'EC', 'ECU', 218, 'EC', 'Ecuador', 'Quito', 14790608, 'SA', '.ec', 'USD', 'US Dollar', '593', 'es-EC', 'Эквадор', 'Ecuador', 'Ecuador', 'Équateur', 'Доллар США', 'Dólar estadounidense', 'US Dollar', 'Dollars américain', '$', 840);
INSERT INTO public.countries VALUES (96, 'ID', 'IDN', 360, 'ID', 'Indonesia', 'Jakarta', 242968342, 'AS', '.id', 'IDR', 'Rupiah', '62', 'id,en,nl,jv', 'Индонезия', 'Indonesia', 'Indonesien', 'Indonésie', 'Рупия', 'Rupia', 'Rupiah', 'Rupiah', NULL, 360);
INSERT INTO public.countries VALUES (106, 'JE', 'JEY', 832, 'JE', 'Jersey', 'Saint Helier', 90812, 'EU', '.je', 'GBP', 'Pound Sterling', '+44-1534', 'en,pt', 'Джерси', 'Jersey', 'Jersey', 'Jersey', 'Фунт стерлингов', 'Libra esterlina', 'Pfund Sterling', 'Livre sterling', '£', 826);
INSERT INTO public.countries VALUES (143, 'MO', 'MAC', 446, 'MC', 'Macao', 'Macao', 449198, 'AS', '.mo', 'MOP', 'Pataca', '853', 'zh,zh-MO,pt', 'Макао', 'Macao', 'Macau', 'Macao', 'Патака', 'Pataca', 'Pataca', 'Pataca', '$', 446);
INSERT INTO public.countries VALUES (114, 'KM', 'COM', 174, 'CN', 'Comoros', 'Moroni', 773407, 'AF', '.km', 'KMF', 'Comoro Franc', '269', 'ar,fr-KM', 'Коморские о-ва', 'Comoras', 'Komoren', 'Comores', 'Коморский франк', 'Franco Comoro', 'Comoro Franc', 'Comoro Franc', '₣', 174);
INSERT INTO public.countries VALUES (119, 'KY', 'CYM', 136, 'CJ', 'Cayman Islands', 'George Town', 44270, 'NA', '.ky', 'KYD', 'Cayman Islands Dollar', '+1-345', 'en-KY', 'Каймановы Острова', 'Islas Caimán', 'Kaimaninseln', 'Îles Caïmans', 'Доллар Каймановых островов', 'Dólar de las Islas Caimán', 'Kaiman-Dollar', 'Dollar des îles Caïman', '$', 136);
INSERT INTO public.countries VALUES (126, 'LR', 'LBR', 430, 'LI', 'Liberia', 'Monrovia', 3685076, 'AF', '.lr', 'LRD', 'Liberian Dollar', '231', 'en-LR', 'Либерия', 'Liberia', 'Liberia', 'Liberia', 'Либерийский доллар', 'Dólar liberiano', 'Liberianischer Dollar', 'Dollar libérien', '$', 430);
INSERT INTO public.countries VALUES (117, 'KR', 'KOR', 410, 'KS', 'South Korea', 'Seoul', 48422644, 'AS', '.kr', 'KRW', 'South Korean Won', '82', 'ko-KR,en', 'Южная Корея', 'Corea del Sur', 'Südkorea', 'Corée du Sud', 'Южнокорейский вон', 'Won surcoreano', 'Südkoreanischer Won', 'Won sud-coréen', '₩', 410);
INSERT INTO public.countries VALUES (107, 'JM', 'JAM', 388, 'JM', 'Jamaica', 'Kingston', 2847232, 'NA', '.jm', 'JMD', 'Jamaican Dollar', '+1-876', 'en-JM', 'Ямайка', 'Jamaica', 'Jamaika', 'Jamaïque', 'Ямайский доллар', 'Dólar jamaicano', 'Jamaikanischer Dollar', 'Dollar jamaïcain', '$', 388);
INSERT INTO public.countries VALUES (140, 'ML', 'MLI', 466, 'ML', 'Mali', 'Bamako', 13796354, 'AF', '.ml', 'XOF', 'CFA Franc BCEAO', '223', 'fr-ML,bm', 'Мали', 'Mali', 'Mali', 'Mali', 'CFA Франк BCEAO', 'Franco CFA BCEAO', 'CFA Franc BCEAO', 'Franc CFA BCEAO', '₣', 952);
INSERT INTO public.countries VALUES (115, 'KN', 'KNA', 659, 'SC', 'Saint Kitts and Nevis', 'Basseterre', 51134, 'NA', '.kn', 'XCD', 'East Caribbean Dollar', '+1-869', 'en-KN', 'Сент-Киттс и Невис', 'San Cristóbal y Nieves', 'Saint Kitts und Nevis', 'Saint-Christophe-et-Niévès', 'Восточно-карибский доллар', 'Dólar del Caribe Oriental', 'Ostkaribischer Dollar', 'Dollar des Caraïbes orientales', '$', 951);
INSERT INTO public.countries VALUES (198, 'SK', 'SVK', 703, 'LO', 'Slovakia', 'Bratislava', 5455000, 'EU', '.sk', 'EUR', 'Euro', '421', 'sk,hu', 'Словакия', 'Eslovaquia', 'Slowakei (Slowakische Republik)', 'Slovaquie', 'Евро', 'Euro', 'Euro', 'euro', '€', 978);
INSERT INTO public.countries VALUES (142, 'MN', 'MNG', 496, 'MG', 'Mongolia', 'Ulan Bator', 3086918, 'AS', '.mn', 'MNT', 'Tugrik', '976', 'mn,ru', 'Монголия', 'Mongolia', 'Mongolei', 'Mongolie', 'Тугрик', 'Tugrik', 'Tugrik', 'Tugrik', '₮', 496);
INSERT INTO public.countries VALUES (120, 'KZ', 'KAZ', 398, 'KZ', 'Kazakhstan', 'Astana', 15340000, 'AS', '.kz', 'KZT', 'Tenge', '7', 'kk,ru', 'Казахстан', 'Kazajstán', 'Kasachstan', 'Kazakhstan', 'тенге', 'Tenge', 'Tenge', 'Tenge', '₸', 398);
INSERT INTO public.countries VALUES (131, 'LY', 'LBY', 434, 'LY', 'Libya', 'Tripoli', 6461454, 'AF', '.ly', 'LYD', 'Libyan Dinar', '218', 'ar-LY,it,en', 'Ливия', 'Libia', 'Libysch-Arabische Dschamahirija', 'Libye', 'Ливийский динар', 'Dinar libio', 'Libyscher Dinar', 'Dinar libyen', NULL, 434);
INSERT INTO public.countries VALUES (88, 'GU', 'GUM', 316, 'GQ', 'Guam', 'Hagatna', 159358, 'OC', '.gu', 'USD', 'US Dollar', '+1-671', 'en-GU,ch-GU', 'Гуам', 'Guam', 'Guam', 'Guam', 'Доллар США', 'Dólar estadounidense', 'US Dollar', 'Dollars américain', '$', 840);
INSERT INTO public.countries VALUES (109, 'JP', 'JPN', 392, 'JA', 'Japan', 'Tokyo', 127288000, 'AS', '.jp', 'JPY', 'Yen', '81', 'ja', 'Япония', 'Japón', 'Japan', 'Japon', 'иена', 'Yen', 'Yen', 'Yen', '¥', 392);
INSERT INTO public.countries VALUES (121, 'LA', 'LAO', 418, 'LA', 'Laos', 'Vientiane', 6368162, 'AS', '.la', 'LAK', 'Kip', '856', 'lo,fr,en', 'Лаос', 'Laos', 'Laos', 'Laos', 'Кип', 'Kip', 'Kip', 'Kip', '₭', 418);
INSERT INTO public.countries VALUES (150, 'MV', 'MDV', 462, 'MV', 'Maldives', 'Male', 395650, 'AS', '.mv', 'MVR', 'Rufiyaa', '960', 'dv,en', 'Мальдивские о-ва', 'Maldivas', 'Malediven', 'Maldives', 'Руфия', 'Rufiyaa', 'Rufiyaa', 'Rufiyaa', NULL, 462);
INSERT INTO public.countries VALUES (186, 'RU', 'RUS', 643, 'RS', 'Russia', 'Moscow', 140702000, 'EU', '.ru', 'RUB', 'Russian Ruble', '7', 'ru,tt,xal,cau,ady,kv,ce,tyv,cv,udm,tut,mns,bua,myv,mdf,chm,ba,inh,tut,kbd,krc,av,sah,nog', 'Россия', 'Rusia', 'Russland', 'Russie', 'Российский рубль', 'Rublo ruso', 'russischer Rubel', 'Rouble russe', '₽', 643);
INSERT INTO public.countries VALUES (161, 'NL', 'NLD', 528, 'NL', 'Netherlands', 'Amsterdam', 16645000, 'EU', '.nl', 'EUR', 'Euro', '31', 'nl-NL,fy-NL', 'Нидерланды', 'Holanda', 'Niederlande', 'Pays-Bas', 'Евро', 'Euro', 'Euro', 'euro', '€', 978);
INSERT INTO public.countries VALUES (152, 'MX', 'MEX', 484, 'MX', 'Mexico', 'Mexico City', 112468855, 'NA', '.mx', 'MXN', 'Mexican Peso', '52', 'es-MX', 'Мексика', 'México', 'Mexiko', 'Mexique', 'Мексиканское песо', 'Peso mexicano', 'Mexikanischer Peso', 'Peso Mexicain', '$', 484);
INSERT INTO public.countries VALUES (159, 'NG', 'NGA', 566, 'NI', 'Nigeria', 'Abuja', 154000000, 'AF', '.ng', 'NGN', 'Naira', '234', 'en-NG,ha,yo,ig,ff', 'Нигерия', 'Nigeria', 'Nigeria', 'Nigeria', 'Наира', 'Naira', 'Naira', 'Naira', '₦', 566);
INSERT INTO public.countries VALUES (160, 'NI', 'NIC', 558, 'NU', 'Nicaragua', 'Managua', 5995928, 'NA', '.ni', 'NIO', 'Cordoba Oro', '505', 'es-NI,en', 'Никарагуа', 'Nicaragua', 'Nikaragua', 'Nicaragua', 'Кордова Оро', 'Cordoba Oro', 'Cordoba Oro', 'Cordoba Oro', '$', 558);
INSERT INTO public.countries VALUES (43, 'CM', 'CMR', 120, 'CM', 'Cameroon', 'Yaounde', 19294149, 'AF', '.cm', 'XAF', 'CFA Franc BEAC', '237', 'en-CM,fr-CM', 'Камерун', 'Camerún', 'Kamerun', 'Cameroun', 'CFA Франк BEAC', 'CFA Franc BEAC', 'CFA Franc BEAC', 'Franc CFA BEAC', '₣', 950);
INSERT INTO public.countries VALUES (187, 'RW', 'RWA', 646, 'RW', 'Rwanda', 'Kigali', 11055976, 'AF', '.rw', 'RWF', 'Rwanda Franc', '250', 'rw,en-RW,fr-RW,sw', 'Руанда', 'Ruanda', 'Ruanda', 'Rwanda', 'Руанда Франк', 'Franco de Ruanda', 'Ruanda Franc', 'Franc rwandais', '₣', 646);
INSERT INTO public.countries VALUES (181, 'PY', 'PRY', 600, 'PA', 'Paraguay', 'Asuncion', 6375830, 'SA', '.py', 'PYG', 'Guarani', '595', 'es-PY,gn', 'Парагвай', 'Paraguay', 'Paraguay', 'Paraguay', 'Гуарани', 'Guaraní', 'Guarani', 'Guarani', '₲', 600);
INSERT INTO public.countries VALUES (194, 'SG', 'SGP', 702, 'SN', 'Singapore', 'Singapore', 4701069, 'AS', '.sg', 'SGD', 'Singapore Dollar', '65', 'cmn,en-SG,ms-SG,ta-SG,zh-SG', 'Сингапур', 'Singapur', 'Singapur', 'Singapour', 'Сингапурский доллар', 'Dolar de Singapur', 'Singapur-Dollar', 'Dollar de Singapour', '$', 702);
INSERT INTO public.countries VALUES (195, 'SH', 'SHN', 654, 'SH', 'Saint Helena', 'Jamestown', 7460, 'AF', '.sh', 'SHP', 'Saint Helena Pound', '290', 'en-SH', 'Остров Святой Елены', 'Santa Elena', 'St. Helena', 'Sainte-Hélène', 'Фунт Святой Елены', 'Libra de Santa Elena', 'St. Helena Pfund', 'Livre de Sainte-Hélène', '£', 654);
INSERT INTO public.countries VALUES (189, 'SB', 'SLB', 90, 'BP', 'Solomon Islands', 'Honiara', 559198, 'OC', '.sb', 'SBD', 'Solomon Islands Dollar', '677', 'en-SB,tpi', 'Соломонские острова', 'Islas Salomón', 'Solomon-Inseln', 'Îles Salomon', 'Соломоновы Острова Доллар', 'Dólar de las Islas Salomón', 'Salomonen-Dollar', 'Dollar des Îles Salomon', '$', 90);
INSERT INTO public.countries VALUES (191, 'SD', 'SDN', 729, 'SU', 'Sudan', 'Khartoum', 35000000, 'AF', '.sd', 'SDG', 'Sudanese Pound', '249', 'ar-SD,en,fia', 'Судан', 'Sudán', 'Sudan', 'Soudan', 'Суданский фунт', 'Libra sudanesa', 'Sudanesisches Pfund', 'Livre soudanaise', '£', 938);
INSERT INTO public.countries VALUES (154, 'MZ', 'MOZ', 508, 'MZ', 'Mozambique', 'Maputo', 22061451, 'AF', '.mz', 'MZN', 'Mozambique Metical', '258', 'pt-MZ,vmw', 'Мозамбик', 'Mozambique', 'Mosambik', 'Mozambique', 'Мозамбик Метикал', 'Mozambique Metical', 'Mosambik Metical', 'Mozambique Metical', NULL, 943);
INSERT INTO public.countries VALUES (151, 'MW', 'MWI', 454, 'MI', 'Malawi', 'Lilongwe', 15447500, 'AF', '.mw', 'MWK', 'Kwacha', '265', 'ny,yao,tum,swk', 'Малави', 'Malaui', 'Malawi', 'Malawi', 'квача', 'Kwacha', 'Kwacha', 'Kwacha', NULL, 454);
INSERT INTO public.countries VALUES (227, 'UY', 'URY', 858, 'UY', 'Uruguay', 'Montevideo', 3477000, 'SA', '.uy', 'UYU', 'Peso Uruguayo', '598', 'es-UY', 'Уругвай', 'Uruguay', 'Uruguay', 'Uruguay', 'Уругвайский Песо уругвайо', 'Peso uruguayo', 'Peso Uruguayo', 'Peso Uruguayo', '$', 858);
INSERT INTO public.countries VALUES (234, 'VN', 'VNM', 704, 'VM', 'Vietnam', 'Hanoi', 89571130, 'AS', '.vn', 'VND', 'Dong', '84', 'vi,en,fr,zh,km', 'Вьетнам', 'Vietnam', 'Vietnam', 'Vietnam', 'Dong', 'Polla', 'Dong', 'Dong', '₫', 704);
INSERT INTO public.countries VALUES (218, 'TO', 'TON', 776, 'TN', 'Tonga', 'Nuku''alofa', 122580, 'OC', '.to', 'TOP', 'Pa’anga', '676', 'to,en-TO', 'Тонга', 'Tonga', 'Tonga', 'Tonga', 'Pa''anga', 'Pa’anga', 'Pa’anga', 'Pa’anga', '$', 776);
INSERT INTO public.countries VALUES (236, 'WF', 'WLF', 876, 'WF', 'Wallis and Futuna', 'Mata Utu', 16025, 'OC', '.wf', 'XPF', 'CFP Franc', '681', 'wls,fud,fr-WF', 'Уоллис и Футуна', 'Wallis y Futuna', 'Wallis und Futuna', 'Wallis-et-Futuna', 'CFP Франк', 'Franco CFP', 'CFP Franc', 'Franc CFP', '₣', 953);
INSERT INTO public.countries VALUES (220, 'TT', 'TTO', 780, 'TD', 'Trinidad and Tobago', 'Port of Spain', 1228691, 'NA', '.tt', 'TTD', 'Trinidad and Tobago Dollar', '+1-868', 'en-TT,hns,fr,es,zh', 'Тринидад и Тобаго', 'Trinidad y Tobago', 'Trinidad und Tobago', 'Trinidad et Tobago', 'Тринидад и Тобаго Доллар', 'Dólar de Trinidad y Tobago', 'Trinidad und Tobago-Dollar', 'Dollar de Trinité et Tobago', '$', 780);
INSERT INTO public.countries VALUES (203, 'SR', 'SUR', 740, 'NS', 'Suriname', 'Paramaribo', 492829, 'SA', '.sr', 'SRD', 'Surinam Dollar', '597', 'nl-SR,en,srn,hns,jv', 'Суринам', 'Surinam', 'Suriname', 'Surinam', 'Суринамский доллар', 'Dólar de Surinam', 'Surinam-Dollar', 'Dollar Surinam', '$', 968);
INSERT INTO public.countries VALUES (12, 'AU', 'AUS', 36, 'AS', 'Australia', 'Canberra', 21515754, 'OC', '.au', 'AUD', 'Australian Dollar', '61', 'en-AU', 'Австралия', 'Australia', 'Australien', 'Australie', 'Австралийский доллар', 'Dólar australiano', 'Australischer Dollar', 'Dollar australien', '$', 36);
INSERT INTO public.countries VALUES (210, 'TD', 'TCD', 148, 'CD', 'Chad', 'N''Djamena', 10543464, 'AF', '.td', 'XAF', 'CFA Franc BEAC', '235', 'fr-TD,ar-TD,sre', 'Чад', 'Chad', 'Tschad', 'Tchad', 'CFA Франк BEAC', 'CFA Franc BEAC', 'CFA Franc BEAC', 'Franc CFA BEAC', '₣', 950);
INSERT INTO public.countries VALUES (157, 'NE', 'NER', 562, 'NG', 'Niger', 'Niamey', 15878271, 'AF', '.ne', 'XOF', 'CFA Franc BCEAO', '227', 'fr-NE,ha,kr,dje', 'Нигер', 'Níger', 'Niger', 'Niger', 'CFA Франк BCEAO', 'Franco CFA BCEAO', 'CFA Franc BCEAO', 'Franc CFA BCEAO', '₣', 952);
INSERT INTO public.countries VALUES (223, 'TZ', 'TZA', 834, 'TZ', 'Tanzania', 'Dodoma', 41892895, 'AF', '.tz', 'TZS', 'Tanzanian Shilling', '255', 'sw-TZ,en,ar', 'Танзания', 'Tanzania', 'Tansania', 'Tanzanie', 'Танзанийский шиллинг', 'Chelín tanzano', 'Tansania-Schilling', 'Shilling tanzanien', NULL, 834);
INSERT INTO public.countries VALUES (201, 'SN', 'SEN', 686, 'SG', 'Senegal', 'Dakar', 12323252, 'AF', '.sn', 'XOF', 'CFA Franc BCEAO', '221', 'fr-SN,wo,fuc,mnk', 'Сенегал', 'Senegal', 'Senegal', 'Sénégal', 'CFA Франк BCEAO', 'Franco CFA BCEAO', 'CFA Franc BCEAO', 'Franc CFA BCEAO', '₣', 952);
INSERT INTO public.countries VALUES (35, 'CC', 'CCK', 166, 'CK', 'Cocos Islands', 'West Island', 628, 'AS', '.cc', 'AUD', 'Australian Dollar', '61', 'ms-CC,en', 'Кокосовые о-ва', 'Islas Cocos', 'Kokosinseln', 'Îles Cocos', 'Австралийский доллар', 'Dólar australiano', 'Australischer Dollar', 'Dollar australien', '$', 36);
INSERT INTO public.countries VALUES (219, 'TR', 'TUR', 792, 'TU', 'Turkey', 'Ankara', 77804122, 'AS', '.tr', 'TRY', 'Turkish Lira', '90', 'tr-TR,ku,diq,az,av', 'Турция', 'Turquía', 'Türkei', 'Turquie', 'Турецкая лира', 'Lira turca', 'Türkische Lire', 'Lire turque', '₺', 949);
INSERT INTO public.countries VALUES (213, 'TH', 'THA', 764, 'TH', 'Thailand', 'Bangkok', 67089500, 'AS', '.th', 'THB', 'Baht', '66', 'th,en', 'Тайланд', 'Tailandia', 'Thailand', 'Thaïlande', 'бат', 'Baht', 'Baht', 'Baht', '฿', 764);
INSERT INTO public.countries VALUES (224, 'UA', 'UKR', 804, 'UP', 'Ukraine', 'Kiev', 45415596, 'EU', '.ua', 'UAH', 'Hryvnia', '380', 'uk,ru-UA,rom,pl,hu', 'Украина', 'Ucrania', 'Ukraine', 'Ukraine', 'гривна', 'Jrivnia', 'Griwna', 'Hryvnia', '₴', 980);
INSERT INTO public.countries VALUES (200, 'SM', 'SMR', 674, 'SM', 'San Marino', 'San Marino', 31477, 'EU', '.sm', 'EUR', 'Euro', '378', 'it-SM', 'Сан-Марино', 'San Marino', 'San Marino', 'Saint-Marin', 'Евро', 'Euro', 'Euro', 'euro', '€', 978);
INSERT INTO public.countries VALUES (242, 'ZW', 'ZWE', 716, 'ZI', 'Zimbabwe', 'Harare', 13061000, 'AF', '.zw', 'ZWL', 'Zimbabwe Dollar', '263', 'en-ZW,sn,nr,nd', 'Зимбабве', 'Zimbawe', 'Simbabwe', 'Zimbabwe', 'Зимбабве доллар', 'Dólar zimbabuense', 'Simbabwe-Dollar', 'Dollar zimbabwéen', NULL, 932);
INSERT INTO public.countries VALUES (80, 'GL', 'GRL', 304, 'GL', 'Greenland', 'Nuuk', 56375, 'NA', '.gl', 'DKK', 'Danish Krone', '299', 'kl,da-GL,en', 'Гренландия', 'Groenlandia', 'Grönland', 'Groenland', 'Датская крона', 'Corona danesa', 'Dänische Krone', 'Couronne danoise', NULL, 208);
INSERT INTO public.countries VALUES (113, 'KI', 'KIR', 296, 'KR', 'Kiribati', 'Tarawa', 92533, 'OC', '.ki', 'AUD', 'Australian Dollar', '686', 'en-KI,gil', 'Кирибати', 'Kiribati', 'Kiribati', 'Kiribati', 'Австралийский доллар', 'Dólar australiano', 'Australischer Dollar', 'Dollar australien', '$', 36);
INSERT INTO public.countries VALUES (77, 'GG', 'GGY', 831, 'GK', 'Guernsey', 'St Peter Port', 65228, 'EU', '.gg', 'GBP', 'Pound Sterling', '+44-1481', 'en,fr', 'Гернси', 'Guernsey', 'Guernsey', 'Guernesey', 'Фунт стерлингов', 'Libra esterlina', 'Pfund Sterling', 'Livre sterling', '£', 826);
INSERT INTO public.countries VALUES (158, 'NF', 'NFK', 574, 'NF', 'Norfolk Island', 'Kingston', 1828, 'OC', '.nf', 'AUD', 'Australian Dollar', '672', 'en-NF', 'Остров Норфолк', 'Isla Norfolk', 'Norfolkinsel', 'Île Norfolk', 'Австралийский доллар', 'Dólar australiano', 'Australischer Dollar', 'Dollar australien', '$', 36);
INSERT INTO public.countries VALUES (164, 'NR', 'NRU', 520, 'NR', 'Nauru', 'Yaren', 10065, 'OC', '.nr', 'AUD', 'Australian Dollar', '674', 'na,en-NR', 'Науру', 'Nauru', 'Nauru', 'Nauru', 'Австралийский доллар', 'Dólar australiano', 'Australischer Dollar', 'Dollar australien', '$', 36);
INSERT INTO public.countries VALUES (56, 'DM', 'DMA', 212, 'DO', 'Dominica', 'Roseau', 72813, 'NA', '.dm', 'XCD', 'East Caribbean Dollar', '+1-767', 'en-DM', 'Остров Доминика', 'Dominica', 'Dominica', 'Dominique', 'Восточно-карибский доллар', 'Dólar del Caribe Oriental', 'Ostkaribischer Dollar', 'Dollar des Caraïbes orientales', '$', 951);
INSERT INTO public.countries VALUES (230, 'VC', 'VCT', 670, 'VC', 'Saint Vincent and the Grenadines', 'Kingstown', 104217, 'NA', '.vc', 'XCD', 'East Caribbean Dollar', '+1-784', 'en-VC,fr', 'Сент-Винсент и Гренадины', 'San Vicente y las Granadinas', 'St. Vincent und die Grenadinen', 'Saint-Vincent-et-les Grenadines', 'Восточно-карибский доллар', 'Dólar del Caribe Oriental', 'Ostkaribischer Dollar', 'Dollar des Caraïbes orientales', '$', 951);
INSERT INTO public.countries VALUES (69, 'FM', 'FSM', 583, 'FM', 'Micronesia', 'Palikir', 107708, 'OC', '.fm', 'USD', 'US Dollar', '691', 'en-FM,chk,pon,yap,kos,uli,woe,nkr,kpg', 'Микронезия', 'Micronesia', 'Mikronesien', 'Micronésie', 'Доллар США', 'Dólar estadounidense', 'US Dollar', 'Dollars américain', '$', 840);
INSERT INTO public.countries VALUES (74, 'GD', 'GRD', 308, 'GJ', 'Grenada', 'St. George''s', 107818, 'NA', '.gd', 'XCD', 'East Caribbean Dollar', '+1-473', 'en-GD', 'Гренада', 'Granada', 'Grenada', 'Grenade', 'Восточно-карибский доллар', 'Dólar del Caribe Oriental', 'Ostkaribischer Dollar', 'Dollar des Caraïbes orientales', '$', 951);
INSERT INTO public.countries VALUES (180, 'PW', 'PLW', 585, 'PS', 'Palau', 'Melekeok', 19907, 'OC', '.pw', 'USD', 'US Dollar', '680', 'pau,sov,en-PW,tox,ja,fil,zh', 'Палау', 'Palaos', 'Palau', 'Palaos', 'Доллар США', 'Dólar estadounidense', 'US Dollar', 'Dollars américain', '$', 840);
INSERT INTO public.countries VALUES (205, 'SV', 'SLV', 222, 'ES', 'El Salvador', 'San Salvador', 6052064, 'NA', '.sv', 'USD', 'US Dollar', '503', 'es-SV', 'Сальвадор', 'El Salvador', 'El Salvador', 'Salvador', 'Доллар США', 'Dólar estadounidense', 'US Dollar', 'Dollars américain', '$', 840);
INSERT INTO public.countries VALUES (128, 'LT', 'LTU', 440, 'LH', 'Lithuania', 'Vilnius', 2944459, 'EU', '.lt', 'EUR', 'Euro', '370', 'lt,ru,pl', 'Литва', 'Lituania', 'Litauen', 'Lituanie', 'Евро', 'Euro', 'Euro', 'euro', '€', 978);
INSERT INTO public.countries VALUES (24, 'BL', 'BLM', 652, 'TB', 'Saint Barthelemy', 'Gustavia', 8450, 'NA', '.gp', 'EUR', 'Euro', '590', 'fr', 'Остров Святого Бартоломея', 'San Bartolomé', 'St. Barthélemy', 'Saint-Barthélémy', 'Евро', 'Euro', 'Euro', 'euro', '€', 978);
INSERT INTO public.countries VALUES (51, 'CY', 'CYP', 196, 'CY', 'Cyprus', 'Nicosia', 1102677, 'EU', '.cy', 'EUR', 'Euro', '357', 'el-CY,tr-CY,en', 'Кипр', 'Chipre', 'Zypern', 'Chypre', 'Евро', 'Euro', 'Euro', 'euro', '€', 978);
INSERT INTO public.countries VALUES (53, 'DE', 'DEU', 276, 'GM', 'Germany', 'Berlin', 81802257, 'EU', '.de', 'EUR', 'Euro', '49', 'de', 'Германия', 'Alemania', 'Deutschland', 'Allemagne', 'Евро', 'Euro', 'Euro', 'euro', '€', 978);
INSERT INTO public.countries VALUES (60, 'EE', 'EST', 233, 'EN', 'Estonia', 'Tallinn', 1291170, 'EU', '.ee', 'EUR', 'Euro', '372', 'et,ru', 'Эстония', 'Estonia', 'Estland', 'Estonie', 'Евро', 'Euro', 'Euro', 'euro', '€', 978);
INSERT INTO public.countries VALUES (209, 'TC', 'TCA', 796, 'TK', 'Turks and Caicos Islands', 'Cockburn Town', 20556, 'NA', '.tc', 'USD', 'US Dollar', '+1-649', 'en-TC', 'Острова Тёркс и Кайкос', 'Islas Turcas y Caicos', 'Turks- und Caicosinseln', 'Îles Turques-et-Caïques', 'Доллар США', 'Dólar estadounidense', 'US Dollar', 'Dollars américain', '$', 840);
INSERT INTO public.countries VALUES (215, 'TL', 'TLS', 626, 'TT', 'East Timor', 'Dili', 1154625, 'OC', '.tl', 'USD', 'US Dollar', '670', 'tet,pt-TL,id,en', 'Восточный Тимор', 'Timor Oriental', 'Timor-Leste', 'Timor Oriental', 'Доллар США', 'Dólar estadounidense', 'US Dollar', 'Dollars américain', '$', 840);
INSERT INTO public.countries VALUES (226, 'US', 'USA', 840, 'US', 'United States', 'Washington', 310232863, 'NA', '.us', 'USD', 'US Dollar', '1', 'en-US,es-US,haw,fr', 'США', 'Estados Unidos', 'USA', 'États-Unis', 'Доллар США', 'Dólar estadounidense', 'US Dollar', 'Dollars américain', '$', 840);
INSERT INTO public.countries VALUES (64, 'ES', 'ESP', 724, 'SP', 'Spain', 'Madrid', 46505963, 'EU', '.es', 'EUR', 'Euro', '34', 'es-ES,ca,gl,eu,oc', 'Испания', 'España', 'Spanien', 'Espagne', 'Евро', 'Euro', 'Euro', 'euro', '€', 978);
INSERT INTO public.countries VALUES (66, 'FI', 'FIN', 246, 'FI', 'Finland', 'Helsinki', 5244000, 'EU', '.fi', 'EUR', 'Euro', '358', 'fi-FI,sv-FI,smn', 'Финляндия', 'Finlandia', 'Finnland', 'Finlande', 'Евро', 'Euro', 'Euro', 'euro', '€', 978);
INSERT INTO public.countries VALUES (71, 'FR', 'FRA', 250, 'FR', 'France', 'Paris', 64768389, 'EU', '.fr', 'EUR', 'Euro', '33', 'fr-FR,frp,br,co,ca,eu,oc', 'Франция', 'Francia', 'Frankreich', 'France', 'Евро', 'Euro', 'Euro', 'euro', '€', 978);
INSERT INTO public.countries VALUES (211, 'TF', 'ATF', 260, 'FS', 'French Southern Territories', 'Port-aux-Francais', 140, 'AN', '.tf', 'EUR', 'Euro', '', 'fr', 'Французские Южные Территории', 'Territorios Australes Franceses', 'Französische Süd- und Antarktisgebiete', 'Terres australes françaises', 'Евро', 'Euro', 'Euro', 'euro', '€', 978);
INSERT INTO public.countries VALUES (21, 'BH', 'BHR', 48, 'BA', 'Bahrain', 'Manama', 738004, 'AS', '.bh', 'BHD', 'Bahraini Dinar', '973', 'ar-BH,en,fa,ur', 'Бахрейн', 'Bahréin', 'Bahrain', 'Bahreïn', 'Бахрейнский динар', 'Dinar bahreiní', 'Bahrain-Dinar', 'Dinar bahreïni', NULL, 48);
INSERT INTO public.countries VALUES (4, 'AG', 'ATG', 28, 'AC', 'Antigua and Barbuda', 'St. John''s', 86754, 'NA', '.ag', 'XCD', 'East Caribbean Dollar', '+1-268', 'en-AG', 'Антигуа и Барбуда', 'Antigua y Barbuda', 'Antigua und Barbuda', 'Antigua et Barbuda', 'Восточно-карибский доллар', 'Dólar del Caribe Oriental', 'Ostkaribischer Dollar', 'Dollar des Caraïbes orientales', '$', 951);
INSERT INTO public.countries VALUES (29, 'BS', 'BHS', 44, 'BF', 'Bahamas', 'Nassau', 301790, 'NA', '.bs', 'BSD', 'Bahamian Dollar', '+1-242', 'en-BS', 'Багамы', 'Bahamas', 'Bahamas', 'Bahamas', 'Багамский доллар', 'Dólar de las Bahamas', 'Bahama-Dollar', 'Dollar des Bahamas', '$', 44);
INSERT INTO public.countries VALUES (147, 'MS', 'MSR', 500, 'MH', 'Montserrat', 'Plymouth', 9341, 'NA', '.ms', 'XCD', 'East Caribbean Dollar', '+1-664', 'en-MS', 'Монсеррат', 'Montserrat', 'Montserrat', 'Montserrat', 'Восточно-карибский доллар', 'Dólar del Caribe Oriental', 'Ostkaribischer Dollar', 'Dollar des Caraïbes orientales', '$', 951);
INSERT INTO public.countries VALUES (23, 'BJ', 'BEN', 204, 'BN', 'Benin', 'Porto-Novo', 9056010, 'AF', '.bj', 'XOF', 'CFA Franc BCEAO', '229', 'fr-BJ', 'Бенин', 'Benín', 'Benin', 'Bénin', 'CFA Франк BCEAO', 'Franco CFA BCEAO', 'CFA Franc BCEAO', 'Franc CFA BCEAO', '₣', 952);
INSERT INTO public.countries VALUES (40, 'CI', 'CIV', 384, 'IV', 'Ivory Coast', 'Yamoussoukro', 21058798, 'AF', '.ci', 'XOF', 'CFA Franc BCEAO', '225', 'fr-CI', 'Кот-д''Ивуар', 'Costa de Marfil', 'Elfenbeinküste', 'Côte d''Ivoire', 'CFA Франк BCEAO', 'Franco CFA BCEAO', 'CFA Franc BCEAO', 'Franc CFA BCEAO', '₣', 952);
INSERT INTO public.countries VALUES (221, 'TV', 'TUV', 798, 'TV', 'Tuvalu', 'Funafuti', 10472, 'OC', '.tv', 'AUD', 'Australian Dollar', '688', 'tvl,en,sm,gil', 'Тувалу', 'Tuvalu', 'Tuwalu', 'Tuvalu', 'Австралийский доллар', 'Dólar australiano', 'Australischer Dollar', 'Dollar australien', '$', 36);
INSERT INTO public.countries VALUES (10, 'AS', 'ASM', 16, 'AQ', 'American Samoa', 'Pago Pago', 57881, 'OC', '.as', 'USD', 'US Dollar', '+1-684', 'en-AS,sm,to', 'Американское Самоа', 'Samoa Americana', 'Amerikanisch-Samoa', 'Samoa américaines', 'Доллар США', 'Dólar estadounidense', 'US Dollar', 'Dollars américain', '$', 840);
INSERT INTO public.countries VALUES (144, 'MP', 'MNP', 580, 'CQ', 'Northern Mariana Islands', 'Saipan', 53883, 'OC', '.mp', 'USD', 'US Dollar', '+1-670', 'fil,tl,zh,ch-MP,en-MP', 'Северные Марианские о-ва', 'Islas Marianas del Norte', 'Nördliche Marianen', 'Îles Mariannes du Nord', 'Доллар США', 'Dólar estadounidense', 'US Dollar', 'Dollars américain', '$', 840);
INSERT INTO public.countries VALUES (232, 'VG', 'VGB', 92, 'VI', 'British Virgin Islands', 'Road Town', 21730, 'NA', '.vg', 'USD', 'US Dollar', '+1-284', 'en-VG', 'Британские Виргинские о-ва', 'Islas Vírgenes', 'Britische Jungferninseln', 'Îles Vierges', 'Доллар США', 'Dólar estadounidense', 'US Dollar', 'Dollars américain', '$', 840);
INSERT INTO public.countries VALUES (129, 'LU', 'LUX', 442, 'LU', 'Luxembourg', 'Luxembourg', 497538, 'EU', '.lu', 'EUR', 'Euro', '352', 'lb,de-LU,fr-LU', 'Люксембург', 'Luxemburgo', 'Luxemburg', 'Luxembourg', 'Евро', 'Euro', 'Euro', 'euro', '€', 978);
INSERT INTO public.countries VALUES (130, 'LV', 'LVA', 428, 'LG', 'Latvia', 'Riga', 2217969, 'EU', '.lv', 'EUR', 'Euro', '371', 'lv,ru,lt', 'Латвия', 'Letonia', 'Lettland', 'Lettonie', 'Евро', 'Euro', 'Euro', 'euro', '€', 978);
INSERT INTO public.countries VALUES (133, 'MC', 'MCO', 492, 'MN', 'Monaco', 'Monaco', 32965, 'EU', '.mc', 'EUR', 'Euro', '377', 'fr-MC,en,it', 'Монако', 'Mónaco', 'Monaco', 'Monaco', 'Евро', 'Euro', 'Euro', 'euro', '€', 978);
INSERT INTO public.countries VALUES (135, 'ME', 'MNE', 499, 'MJ', 'Montenegro', 'Podgorica', 666730, 'EU', '.me', 'EUR', 'Euro', '382', 'sr,hu,bs,sq,hr,rom', 'Черногория', 'Montenegro', 'Montenegro', 'Monténégro', 'Евро', 'Euro', 'Euro', 'euro', '€', 978);
INSERT INTO public.countries VALUES (86, 'GS', 'SGS', 239, 'SX', 'South Georgia and the South Sandwich Islands', 'Grytviken', 30, 'AN', '.gs', 'GBP', 'Pound Sterling', '', 'en', 'Южная Джорджия и Южные Сандвичевы Острова', 'Islas Georgia del Sur y Sandwich del Sur', 'Südgeorgien und die Südlichen Sandwichinseln', 'Géorgie du Sud-et-les îles Sandwich du Sud', 'Фунт стерлингов', 'Libra esterlina', 'Pfund Sterling', 'Livre sterling', '£', 826);
INSERT INTO public.countries VALUES (19, 'BF', 'BFA', 854, 'UV', 'Burkina Faso', 'Ouagadougou', 16241811, 'AF', '.bf', 'XOF', 'CFA Franc BCEAO', '226', 'fr-BF', 'Буркина Фасо', 'Burkina Faso', 'Burkina Faso', 'Burkina Faso', 'CFA Франк BCEAO', 'Franco CFA BCEAO', 'CFA Franc BCEAO', 'Franc CFA BCEAO', '₣', 952);
INSERT INTO public.countries VALUES (50, 'CX', 'CXR', 162, 'KT', 'Christmas Island', 'Flying Fish Cove', 1500, 'AS', '.cx', 'AUD', 'Australian Dollar', '61', 'en,zh,ms-CC', 'Остров Рождества', 'Isla Christmas', 'Weihnachtsinsel', 'Île Christmas', 'Австралийский доллар', 'Dólar australiano', 'Australischer Dollar', 'Dollar australien', '$', 36);
INSERT INTO public.countries VALUES (116, 'KP', 'PRK', 408, 'KN', 'North Korea', 'Pyongyang', 22912177, 'AS', '.kp', 'KPW', 'North Korean Won', '850', 'ko-KP', 'Северная Корея', 'Corea del Norte', 'Nordkorea', 'Corée du Nord', 'Северокорейский вон', 'Won norcoreano', 'Nordkoreanischer Won', 'Won nord-coréen', '원', 408);
INSERT INTO public.countries VALUES (233, 'VI', 'VIR', 850, 'VQ', 'U.S. Virgin Islands', 'Charlotte Amalie', 108708, 'NA', '.vi', 'USD', 'US Dollar', '+1-340', 'en-VI', 'Виргинские о-ва (США)', 'Islas Vírgenes de los Estados Unidos', 'Amerikanische Jungferninseln', 'Îles Vierges des États-Unis', 'Доллар США', 'Dólar estadounidense', 'US Dollar', 'Dollars américain', '$', 840);
INSERT INTO public.countries VALUES (38, 'CG', 'COG', 178, 'CF', 'Republic of the Congo', 'Brazzaville', 3039126, 'AF', '.cg', 'XAF', 'CFA Franc BEAC', '242', 'fr-CG,kg,ln-CG', 'Конго', 'Congo [República]', 'Kongo (Republik Kongo)', 'Congo-Brazzaville', 'CFA Франк BEAC', 'CFA Franc BEAC', 'CFA Franc BEAC', 'Franc CFA BEAC', '₣', 950);
INSERT INTO public.countries VALUES (84, 'GQ', 'GNQ', 226, 'EK', 'Equatorial Guinea', 'Malabo', 1014999, 'AF', '.gq', 'XAF', 'CFA Franc BEAC', '240', 'es-GQ,fr', 'Экваториальная Гвинея', 'Guinea Ecuatorial', 'Äquatorialguinea', 'Guinée équatoriale', 'CFA Франк BEAC', 'CFA Franc BEAC', 'CFA Franc BEAC', 'Franc CFA BEAC', '₣', 950);
INSERT INTO public.countries VALUES (105, 'IT', 'ITA', 380, 'IT', 'Italy', 'Rome', 60340328, 'EU', '.it', 'EUR', 'Euro', '39', 'it-IT,de-IT,fr-IT,sc,ca,co,sl', 'Италия', 'Italia', 'Italien', 'Italie', 'Евро', 'Euro', 'Euro', 'euro', '€', 978);
INSERT INTO public.countries VALUES (148, 'MT', 'MLT', 470, 'MT', 'Malta', 'Valletta', 403000, 'EU', '.mt', 'EUR', 'Euro', '356', 'mt,en-MT', 'Мальта', 'Malta', 'Malta', 'Malte', 'Евро', 'Euro', 'Euro', 'euro', '€', 978);
INSERT INTO public.countries VALUES (179, 'PT', 'PRT', 620, 'PO', 'Portugal', 'Lisbon', 10676000, 'EU', '.pt', 'EUR', 'Euro', '351', 'pt-PT,mwl', 'Португалия', 'Portugal', 'Portugal', 'Portugal', 'Евро', 'Euro', 'Euro', 'euro', '€', 978);
INSERT INTO public.countries VALUES (76, 'GF', 'GUF', 254, 'FG', 'French Guiana', 'Cayenne', 195506, 'SA', '.gf', 'EUR', 'Euro', '594', 'fr-GF', 'Французская Гвиана', 'Guayana Francesa', 'Französisch-Guayana', 'Guyane', 'Евро', 'Euro', 'Euro', 'euro', '€', 978);
INSERT INTO public.countries VALUES (110, 'KE', 'KEN', 404, 'KE', 'Kenya', 'Nairobi', 40046566, 'AF', '.ke', 'KES', 'Kenyan Shilling', '254', 'en-KE,sw-KE', 'Кения', 'Kenia', 'Kenia', 'Kenya', 'Кенийский шиллинг', 'Chelín keniano', 'Kenianischer Schilling', 'Shilling kenyan', NULL, 404);
INSERT INTO public.countries VALUES (49, 'CW', 'CUW', 531, 'UC', 'Curacao', 'Willemstad', 141766, 'NA', '.cw', 'ANG', 'Netherlands Antillean Guilder', '599', 'nl,pap', 'Кюрасао', 'Curazao', 'Curaçao', 'Curaçao', 'Нидерландский антильский гульден', 'Florín de las Antillas Holandesas', 'Niederländische Antillian Gulden', 'Florin des Antilles néerlandaises', NULL, 532);
INSERT INTO public.countries VALUES (197, 'SJ', 'SJM', 744, 'SV', 'Svalbard and Jan Mayen', 'Longyearbyen', 2550, 'EU', '.sj', 'NOK', 'Norwegian Krone', '47', 'no,ru', 'Свальбард и Ян-Майен', 'Svalbard y Jan Mayen', 'Svalbard und Jan Mayen', 'Svalbard et Jan Mayen', 'Норвежская крона', 'Corona noruega', 'Norwegische Krone', 'Couronne norvégienne', NULL, 578);
INSERT INTO public.countries VALUES (122, 'LB', 'LBN', 422, 'LE', 'Lebanon', 'Beirut', 4125247, 'AS', '.lb', 'LBP', 'Lebanese Pound', '961', 'ar-LB,fr-LB,en,hy', 'Ливан', 'Líbano', 'Libanon', 'Liban', 'Ливанский фунт', 'Libra libanesa', 'Libanesisches Pfund', 'Livre libanaise', NULL, 422);
INSERT INTO public.countries VALUES (184, 'RO', 'ROU', 642, 'RO', 'Romania', 'Bucharest', 21959278, 'EU', '.ro', 'RON', 'Romanian Leu', '40', 'ro,hu,rom', 'Румыния', 'Rumanía', 'Rumänien', 'Roumanie', 'Румынский лей', 'Leu rumano', 'Rumänischer Leu', 'Leu roumain', NULL, 946);
INSERT INTO public.countries VALUES (89, 'GW', 'GNB', 624, 'PU', 'Guinea-Bissau', 'Bissau', 1565126, 'AF', '.gw', 'XOF', 'CFA Franc BCEAO', '245', 'pt-GW,pov', 'Гвинея-Биссау', 'Guinea-Bissáu', 'Guinea-Bissau', 'Guinée-Bissau', 'CFA Франк BCEAO', 'Franco CFA BCEAO', 'CFA Franc BCEAO', 'Franc CFA BCEAO', '₣', 952);
INSERT INTO public.countries VALUES (178, 'PS', 'PSE', 275, 'WE', 'Palestinian Territory', 'East Jerusalem', 3800000, 'AS', '.ps', 'ILS', 'New Israeli Sheqel', '970', 'ar-PS', 'Палестинские территории', 'Territorios Palestinos', 'Palästinensische Autonomiegebiete', 'Territoire palestinien', 'Новый израильский шекель', 'Sheqel israelí nuevo', 'Neuer israelischer Schekel', 'Nouveau sheqel israélien', '₪', 376);
INSERT INTO public.countries VALUES (165, 'NU', 'NIU', 570, 'NE', 'Niue', 'Alofi', 2166, 'OC', '.nu', 'NZD', 'New Zealand Dollar', '683', 'niu,en-NU', 'Ниуе', 'Isla Niue', 'Niue', 'Nioué', 'Новозеландский доллар', 'Dolar de Nueva Zelanda', 'Neuseeland Dollar', 'Dollar néo-zélandais', '$', 554);
INSERT INTO public.countries VALUES (166, 'NZ', 'NZL', 554, 'NZ', 'New Zealand', 'Wellington', 4252277, 'OC', '.nz', 'NZD', 'New Zealand Dollar', '64', 'en-NZ,mi', 'Новая Зеландия', 'Nueva Zelanda', 'Neuseeland', 'Nouvelle-Zélande', 'Новозеландский доллар', 'Dolar de Nueva Zelanda', 'Neuseeland Dollar', 'Dollar néo-zélandais', '$', 554);
INSERT INTO public.countries VALUES (176, 'PN', 'PCN', 612, 'PC', 'Pitcairn', 'Adamstown', 46, 'OC', '.pn', 'NZD', 'New Zealand Dollar', '870', 'en-PN', 'Питкэрн', 'Islas Pitcairn', 'Pitcairn', 'Pitcairn', 'Новозеландский доллар', 'Dolar de Nueva Zelanda', 'Neuseeland Dollar', 'Dollar néo-zélandais', '$', 554);
INSERT INTO public.countries VALUES (124, 'LI', 'LIE', 438, 'LS', 'Liechtenstein', 'Vaduz', 35000, 'EU', '.li', 'CHF', 'Swiss Franc', '423', 'de-LI', 'Лихтенштейн', 'Liechtenstein', 'Liechtenstein', 'Liechtenstein', 'Швейцарский франк', 'Franco suizo', 'Schweizerfranken', 'Franc suisse', '₣', 756);
INSERT INTO public.countries VALUES (138, 'MH', 'MHL', 584, 'RM', 'Marshall Islands', 'Majuro', 65859, 'OC', '.mh', 'USD', 'US Dollar', '692', 'mh,en-MH', 'Маршалловы о-ва', 'Islas Marshall', 'Marshall-Inseln', 'Îles Marshall', 'Доллар США', 'Dólar estadounidense', 'US Dollar', 'Dollars américain', '$', 840);
INSERT INTO public.countries VALUES (177, 'PR', 'PRI', 630, 'RQ', 'Puerto Rico', 'San Juan', 3916632, 'NA', '.pr', 'USD', 'US Dollar', '+1-787 and 1-939', 'en-PR,es-PR', 'Пуэрто-Рико', 'Puerto Rico', 'Puerto Rico', 'Porto Rico', 'Доллар США', 'Dólar estadounidense', 'US Dollar', 'Dollars américain', '$', 840);
INSERT INTO public.countries VALUES (123, 'LC', 'LCA', 662, 'ST', 'Saint Lucia', 'Castries', 160922, 'NA', '.lc', 'XCD', 'East Caribbean Dollar', '+1-758', 'en-LC', 'Сент-Люсия', 'Santa Lucía', 'St. Lucia', 'Sainte-Lucie', 'Восточно-карибский доллар', 'Dólar del Caribe Oriental', 'Ostkaribischer Dollar', 'Dollar des Caraïbes orientales', '$', 951);
INSERT INTO public.countries VALUES (83, 'GP', 'GLP', 312, 'GP', 'Guadeloupe', 'Basse-Terre', 443000, 'NA', '.gp', 'EUR', 'Euro', '590', 'fr-GP', 'Гваделупа', 'Guadalupe', 'Guadeloupe', 'Guadeloupe', 'Евро', 'Euro', 'Euro', 'euro', '€', 978);
INSERT INTO public.countries VALUES (18, 'BE', 'BEL', 56, 'BE', 'Belgium', 'Brussels', 10403000, 'EU', '.be', 'EUR', 'Euro', '32', 'nl-BE,fr-BE,de-BE', 'Бельгия', 'Bélgica', 'Belgien', 'Belgique', 'Евро', 'Euro', 'Euro', 'euro', '€', 978);
INSERT INTO public.countries VALUES (85, 'GR', 'GRC', 300, 'GR', 'Greece', 'Athens', 11000000, 'EU', '.gr', 'EUR', 'Euro', '30', 'el-GR,en,fr', 'Греция', 'Grecia', 'Griechenland', 'Grèce', 'Евро', 'Euro', 'Euro', 'euro', '€', 978);
INSERT INTO public.countries VALUES (145, 'MQ', 'MTQ', 474, 'MB', 'Martinique', 'Fort-de-France', 432900, 'NA', '.mq', 'EUR', 'Euro', '596', 'fr-MQ', 'Мартиника', 'Martinica', 'Martinique', 'Martinique', 'Евро', 'Euro', 'Euro', 'euro', '€', 978);
INSERT INTO public.countries VALUES (170, 'PF', 'PYF', 258, 'FP', 'French Polynesia', 'Papeete', 270485, 'OC', '.pf', 'XPF', 'CFP Franc', '689', 'fr-PF,ty', 'Французская Полинезия', 'Polinesia Francesa', 'Französisch-Polynesien', 'Polynésie Française', 'CFP Франк', 'Franco CFP', 'CFP Franc', 'Franc CFP', '₣', 953);
INSERT INTO public.countries VALUES (15, 'BA', 'BIH', 70, 'BK', 'Bosnia and Herzegovina', 'Sarajevo', 4590000, 'EU', '.ba', 'BAM', 'Convertible Mark', '387', 'bs,hr-BA,sr-BA', 'Босния', 'Bosnia-Herzegovina', 'Bosnien und Herzegowina', 'Bosnie-Herzégovine', 'Конвертируемая марка', 'Marca convertible', 'Convertible Mark', 'Marque convertible', NULL, 977);
INSERT INTO public.countries VALUES (228, 'UZ', 'UZB', 860, 'UZ', 'Uzbekistan', 'Tashkent', 27865738, 'AS', '.uz', 'UZS', 'Uzbekistan Sum', '998', 'uz,ru,tg', 'Узбекистан', 'Uzbekistán', 'Usbekistan', 'Ouzbékistan', 'Сумма Узбекистана', 'Suma de Uzbekistán', 'Usbekistan Summe', 'Ouzbékistan Sum', NULL, 860);
INSERT INTO public.countries VALUES (199, 'SL', 'SLE', 694, 'SL', 'Sierra Leone', 'Freetown', 5245695, 'AF', '.sl', 'SLL', 'Leone', '232', 'en-SL,men,tem', 'Сьерра-Леоне', 'Sierra Leona', 'Sierra Leone', 'Sierra Leone', 'Леон', 'Leona', 'Leone', 'Leone', NULL, 694);
INSERT INTO public.countries VALUES (212, 'TG', 'TGO', 768, 'TO', 'Togo', 'Lome', 6587239, 'AF', '.tg', 'XOF', 'CFA Franc BCEAO', '228', 'fr-TG,ee,hna,kbp,dag,ha', 'Того', 'Togo', 'Togo', 'Togo', 'CFA Франк BCEAO', 'Franco CFA BCEAO', 'CFA Franc BCEAO', 'Franc CFA BCEAO', '₣', 952);
INSERT INTO public.countries VALUES (101, 'IO', 'IOT', 86, 'IO', 'British Indian Ocean Territory', 'Diego Garcia', 4000, 'AS', '.io', 'USD', 'US Dollar', '246', 'en-IO', 'Британская территория в Индийском океане', 'Territorio Británico del Océano Índico', 'Britisches Territorium im Indischen Ozean', 'Territoire britannique de l''océan Indien', 'Доллар США', 'Dólar estadounidense', 'US Dollar', 'Dollars américain', '$', 840);
INSERT INTO public.countries VALUES (175, 'PM', 'SPM', 666, 'SB', 'Saint Pierre and Miquelon', 'Saint-Pierre', 7012, 'NA', '.pm', 'EUR', 'Euro', '508', 'fr-PM', 'Сен-Пьер и Микелон', 'San Pedro y Miquelón', 'St. Pierre und Miquelon', 'Saint-Pierre et Miquelon', 'Евро', 'Euro', 'Euro', 'euro', '€', 978);
INSERT INTO public.countries VALUES (229, 'VA', 'VAT', 336, 'VT', 'Vatican', 'Vatican City', 921, 'EU', '.va', 'EUR', 'Euro', '379', 'la,it,fr', 'Ватикан', 'Ciudad del Vaticano', 'Staat der Vatikanstadt', 'Vatican', 'Евро', 'Euro', 'Euro', 'euro', '€', 978);
INSERT INTO public.countries VALUES (5, 'AI', 'AIA', 660, 'AV', 'Anguilla', 'The Valley', 13254, 'NA', '.ai', 'XCD', 'East Caribbean Dollar', '+1-264', 'en-AI', 'Ангилья', 'Anguila', 'Anguilla', 'Anguilla', 'Восточно-карибский доллар', 'Dólar del Caribe Oriental', 'Ostkaribischer Dollar', 'Dollar des Caraïbes orientales', '$', 951);
INSERT INTO public.countries VALUES (156, 'NC', 'NCL', 540, 'NC', 'New Caledonia', 'Noumea', 216494, 'OC', '.nc', 'XPF', 'CFP Franc', '687', 'fr-NC', 'Новая Каледония', 'Nueva Caledonia', 'Neukaledonien', 'Nouvelle-Calédonie', 'CFP Франк', 'Franco CFP', 'CFP Franc', 'Franc CFP', '₣', 953);
INSERT INTO public.countries VALUES (183, 'RE', 'REU', 638, 'RE', 'Reunion', 'Saint-Denis', 776948, 'AF', '.re', 'EUR', 'Euro', '262', 'fr-RE', 'Реюньон', 'Reunión', 'Réunion', 'Réunion', 'Евро', 'Euro', 'Euro', 'euro', '€', 978);
INSERT INTO public.countries VALUES (239, 'YT', 'MYT', 175, 'MF', 'Mayotte', 'Mamoudzou', 159042, 'AF', '.yt', 'EUR', 'Euro', '262', 'fr-YT', 'Майотта', 'Mayotte', 'Mayotte', 'Mayotte', 'Евро', 'Euro', 'Euro', 'euro', '€', 978);
INSERT INTO public.countries VALUES (97, 'IE', 'IRL', 372, 'EI', 'Ireland', 'Dublin', 4622917, 'EU', '.ie', 'EUR', 'Euro', '353', 'en-IE,ga-IE', 'Ирландия', 'Irlanda', 'Irland', 'Irlande', 'Евро', 'Euro', 'Euro', 'euro', '€', 978);
INSERT INTO public.countries VALUES (196, 'SI', 'SVN', 705, 'SI', 'Slovenia', 'Ljubljana', 2007000, 'EU', '.si', 'EUR', 'Euro', '386', 'sl,sh', 'Словения', 'Eslovenia', 'Slowenien', 'Slovénie', 'Евро', 'Euro', 'Euro', 'euro', '€', 978);
INSERT INTO public.countries VALUES (11, 'AT', 'AUT', 40, 'AU', 'Austria', 'Vienna', 8205000, 'EU', '.at', 'EUR', 'Euro', '43', 'de-AT,hr,hu,sl', 'Австрия', 'Austria', 'Österreich', 'Autriche', 'Евро', 'Euro', 'Euro', 'euro', '€', 978);
INSERT INTO public.countries VALUES (136, 'MF', 'MAF', 663, 'RN', 'Saint Martin', 'Marigot', 35925, 'NA', '.gp', 'EUR', 'Euro', '590', 'fr', 'Остров Святого Мартина', 'San Martín', 'St. Martin', 'Saint-Martin', 'Евро', 'Euro', 'Euro', 'euro', '€', 978);
INSERT INTO public.countries VALUES (155, 'NA', 'NAM', 516, 'WA', 'Namibia', 'Windhoek', 2128471, 'AF', '.na', 'NAD', 'Namibia Dollar', '264', 'en-NA,af,de,hz,naq', 'Намибия', 'Namibia', 'Namibia', 'Namibie', 'Намибийский доллар', 'Dólar de Namibia', 'Namibia Dollar', 'Dollar namibien', NULL, 516);
INSERT INTO public.countries VALUES (153, 'MY', 'MYS', 458, 'MY', 'Malaysia', 'Kuala Lumpur', 28274729, 'AS', '.my', 'MYR', 'Malaysian Ringgit', '60', 'ms-MY,en,zh,ta,te,ml,pa,th', 'Малайзия', 'Malasia', 'Malaysia', 'Malaisie', 'Малазийский ринггит', 'Ringgit malayo', 'Malaysischer Ringgit', 'cloche malaisienne', NULL, 458);
INSERT INTO public.countries VALUES (149, 'MU', 'MUS', 480, 'MP', 'Mauritius', 'Port Louis', 1294104, 'AF', '.mu', 'MUR', 'Mauritius Rupee', '230', 'en-MU,bho,fr', 'Маврикий', 'Mauricio', 'Mauritius', 'Maurice', 'Маврикийская рупия', 'Rupia de Mauricio', 'Mauritius-Rupie', 'Roupie mauricienne', NULL, 480);
INSERT INTO public.countries VALUES (146, 'MR', 'MRT', 478, 'MR', 'Mauritania', 'Nouakchott', 3205060, 'AF', '.mr', 'MRO', 'Ouguiya', '222', 'ar-MR,fuc,snk,fr,mey,wo', 'Мавритания', 'Mauritania', 'Mauretanien', 'Mauritanie', 'Угия', 'Ouguiya', 'Ouguiya', 'Ouguiya', NULL, 929);
INSERT INTO public.countries VALUES (108, 'JO', 'JOR', 400, 'JO', 'Jordan', 'Amman', 6407085, 'AS', '.jo', 'JOD', 'Jordanian Dinar', '962', 'ar-JO,en', 'Иордания', 'Jordania', 'Jordanien', 'Jordanie', 'Иорданский динар', 'Dinar jordano', 'Jordanischer Dinar', 'Dinar jordanien', NULL, 400);
INSERT INTO public.countries VALUES (104, 'IS', 'ISL', 352, 'IC', 'Iceland', 'Reykjavik', 308910, 'EU', '.is', 'ISK', 'Iceland Krona', '354', 'is,en,de,da,sv,no', 'Исландия', 'Islandia', 'Island', 'Islande', 'Исландская крона', 'Corona de Islandia', 'Isländische Krone', 'Couronne islandaise', NULL, 352);
INSERT INTO public.countries VALUES (102, 'IQ', 'IRQ', 368, 'IZ', 'Iraq', 'Baghdad', 29671605, 'AS', '.iq', 'IQD', 'Iraqi Dinar', '964', 'ar-IQ,ku,hy', 'Ирак', 'Irak', 'Irak', 'Irak', 'Иракский динар', 'Dinar iraquí', 'Irakischer Dinar', 'Dinar irakien', NULL, 368);
INSERT INTO public.countries VALUES (103, 'IR', 'IRN', 364, 'IR', 'Iran', 'Tehran', 76923300, 'AS', '.ir', 'IRR', 'Iranian Rial', '98', 'fa-IR,ku', 'Иран', 'Irán', 'Iran (Islamische Republik)', 'Iran', 'Иранский риал', 'Rial iraní', 'Iranischer Rial', 'Rial iranien', NULL, 364);
INSERT INTO public.countries VALUES (192, 'SS', 'SSD', 728, 'OD', 'South Sudan', 'Juba', 8260490, 'AF', '.ss', 'SSP', 'South Sudanese Pound', '211', 'en', 'Южный Судан', 'Sudán del Sur', 'Südsudan', 'Sud-Soudan', 'Южно-Суданский Фунт', 'Libra sudanesa del sur', 'Südsudanesisches Pfund', 'Livre sud-soudanaise', NULL, 728);
INSERT INTO public.countries VALUES (127, 'LS', 'LSO', 426, 'LT', 'Lesotho', 'Maseru', 1919552, 'AF', '.ls', 'LSL', 'Loti', '266', 'en-LS,st,zu,xh', 'Лесото', 'Lesotho', 'Lesotho', 'Lesotho', 'Лоти', 'Loti', 'Loti', 'Loti', NULL, 426);
INSERT INTO public.countries VALUES (125, 'LK', 'LKA', 144, 'CE', 'Sri Lanka', 'Colombo', 21513990, 'AS', '.lk', 'LKR', 'Sri Lanka Rupee', '94', 'si,ta,en', 'Шри-Ланка', 'Sri Lanka', 'Sri Lanka', 'Sri Lanka', 'Шри-Ланкийская рупия', 'Rupia de Sri Lanka', 'Sri Lanka Rupie', 'Roupie De Sri Lanka', NULL, 144);
INSERT INTO public.countries VALUES (118, 'KW', 'KWT', 414, 'KU', 'Kuwait', 'Kuwait City', 2789132, 'AS', '.kw', 'KWD', 'Kuwaiti Dinar', '965', 'ar-KW,en', 'Кувейт', 'Kuwait', 'Kuwait', 'Koweït', 'Кувейтский динар', 'Dinar kuwaití', 'Kuwaitischer Dinar', 'Dinar koweïtien', NULL, 414);
INSERT INTO public.countries VALUES (112, 'KH', 'KHM', 116, 'CB', 'Cambodia', 'Phnom Penh', 14453680, 'AS', '.kh', 'KHR', 'Riel', '855', 'km,fr,en', 'Камбоджа', 'Camboya', 'Kambodscha', 'Cambodge', 'Риель', 'Riel', 'Riel', 'Riel', NULL, 116);
INSERT INTO public.countries VALUES (238, 'YE', 'YEM', 887, 'YM', 'Yemen', 'Sanaa', 23495361, 'AS', '.ye', 'YER', 'Yemeni Rial', '967', 'ar-YE', 'Йемен', 'Yemen', 'Jemen', 'Yémen', 'Йеменский риал', 'Rial yemení', 'Jemenitische Rial', 'Yiali Rial', NULL, 886);
INSERT INTO public.countries VALUES (217, 'TN', 'TUN', 788, 'TS', 'Tunisia', 'Tunis', 10589025, 'AF', '.tn', 'TND', 'Tunisian Dinar', '216', 'ar-TN,fr', 'Тунис', 'Túnez', 'Tunesien', 'Tunisie', 'Тунисский динар', 'Dinar tunecino', 'Tunesischer Dinar', 'Dinar tunisien', NULL, 788);
INSERT INTO public.countries VALUES (70, 'FO', 'FRO', 234, 'FO', 'Faroe Islands', 'Torshavn', 48228, 'EU', '.fo', 'DKK', 'Danish Krone', '298', 'fo,da-FO', 'Фарерские о-ва', 'Islas Feroe', 'Färöer-Inseln', 'Îles Féroé', 'Датская крона', 'Corona danesa', 'Dänische Krone', 'Couronne danoise', NULL, 208);
INSERT INTO public.countries VALUES (225, 'UG', 'UGA', 800, 'UG', 'Uganda', 'Kampala', 33398682, 'AF', '.ug', 'UGX', 'Uganda Shilling', '256', 'en-UG,lg,sw,ar', 'Уганда', 'Uganda', 'Uganda', 'Ouganda', 'Угандийский Шиллинг', 'Chelín ugandés', 'Ugandischer Schilling', 'Shilling ougandais', NULL, 800);
INSERT INTO public.countries VALUES (231, 'VE', 'VEN', 862, 'VE', 'Venezuela', 'Caracas', 27223228, 'SA', '.ve', 'VEF', 'Bolivar', '58', 'es-VE', 'Венесуэла', 'Venezuela', 'Venezuela', 'Vénézuéla', 'Венесуэльский боливар', 'Bolivar venezolano', 'Venezolanischer Bolivar', 'Bolivar vénézuélien', NULL, 928);
INSERT INTO public.countries VALUES (65, 'ET', 'ETH', 231, 'ET', 'Ethiopia', 'Addis Ababa', 88013491, 'AF', '.et', 'ETB', 'Ethiopian Birr', '251', 'am,en-ET,om-ET,ti-ET,so-ET,sid', 'Эфиопия', 'Etiopía', 'Äthiopien', 'Éthiopie', 'Эфиопский быр', 'Birr etíope', 'Äthiopischer Birr', 'Birr éthiopien', NULL, 230);
INSERT INTO public.countries VALUES (94, 'HT', 'HTI', 332, 'HA', 'Haiti', 'Port-au-Prince', 9648924, 'NA', '.ht', 'HTG', 'Gourde', '509', 'ht,fr-HT', 'Гаити', 'Haití', 'Haiti', 'Haïti', 'гурд', 'Gourde', 'Gourde', 'Gourde', NULL, 332);
INSERT INTO public.countries VALUES (95, 'HU', 'HUN', 348, 'HU', 'Hungary', 'Budapest', 9982000, 'EU', '.hu', 'HUF', 'Forint', '36', 'hu-HU', 'Венгрия', 'Hungría', 'Ungarn', 'Hongrie', 'форинт', 'Florín', 'Forint', 'Forint', NULL, 348);
INSERT INTO public.countries VALUES (92, 'HN', 'HND', 340, 'HO', 'Honduras', 'Tegucigalpa', 7989415, 'NA', '.hn', 'HNL', 'Lempira', '504', 'es-HN', 'Гондурас', 'Honduras', 'Honduras', 'Honduras', 'Лемпира', 'Lempira', 'Lempira', 'Lempira', NULL, 340);
INSERT INTO public.countries VALUES (93, 'HR', 'HRV', 191, 'HR', 'Croatia', 'Zagreb', 4284889, 'EU', '.hr', 'HRK', 'Kuna', '385', 'hr-HR,sr', 'Хорватия', 'Croacia', 'Kroatien', 'Croatie', 'Куна', 'Kuna', 'Kuna', 'Kuna', NULL, 191);
INSERT INTO public.countries VALUES (222, 'TW', 'TWN', 158, 'TW', 'Taiwan', 'Taipei', 22894384, 'AS', '.tw', 'TWD', 'New Taiwan Dollar', '886', 'zh-TW,zh,nan,hak', 'Тайвань', 'Taiwán', 'Taiwan', 'Taïwan', 'Новый тайваньский доллар', 'Nuevo dólar taiwanés', 'Neuer Taiwan-Dollar', 'Nouveau dollar de Taiwan', NULL, 901);
INSERT INTO public.countries VALUES (87, 'GT', 'GTM', 320, 'GT', 'Guatemala', 'Guatemala City', 13550440, 'NA', '.gt', 'GTQ', 'Quetzal', '502', 'es-GT', 'Гватемала', 'Guatemala', 'Guatemala', 'Guatemala', 'кетцаль', 'Quetzal', 'Quetzal', 'Quetzal', NULL, 320);
INSERT INTO public.countries VALUES (235, 'VU', 'VUT', 548, 'NH', 'Vanuatu', 'Port Vila', 221552, 'OC', '.vu', 'VUV', 'Vatu', '678', 'bi,en-VU,fr-VU', 'Вануату', 'Vanuatu', 'Vanuatu', 'Vanuatu', 'Вата', 'Vatu', 'Vatu', 'Vatu', NULL, 548);
INSERT INTO public.countries VALUES (81, 'GM', 'GMB', 270, 'GA', 'Gambia', 'Banjul', 1593256, 'AF', '.gm', 'GMD', 'Dalasi', '220', 'en-GM,mnk,wof,wo,ff', 'Гамбия', 'Gambia', 'Gambia', 'Gambie', 'Dalasi', 'Dalasi', 'Dalasi', 'Dalasi', NULL, 270);
INSERT INTO public.countries VALUES (240, 'ZA', 'ZAF', 710, 'SF', 'South Africa', 'Pretoria', 49000000, 'AF', '.za', 'ZAR', 'Rand', '27', 'zu,xh,af,nso,en-ZA,tn,st,ts,ss,ve,nr', 'ЮАР', 'Sudáfrica', 'Südafrika', 'Afrique du Sud', 'рант', 'Rand', 'Rand', 'Rand', NULL, 710);
INSERT INTO public.countries VALUES (241, 'ZM', 'ZMB', 894, 'ZA', 'Zambia', 'Lusaka', 13460305, 'AF', '.zm', 'ZMW', 'Zambian Kwacha', '260', 'en-ZM,bem,loz,lun,lue,ny,toi', 'Замбия', 'Zambia', 'Sambia', 'Zambie', 'Замбийская квача', 'Kwacha zambiano', 'Sambischer Kwacha', 'Kwacha zambien', NULL, 967);
INSERT INTO public.countries VALUES (206, 'SX', 'SXM', 534, 'NN', 'Sint Maarten', 'Philipsburg', 37429, 'NA', '.sx', 'ANG', 'Netherlands Antillean Guilder', '599', 'nl,en', 'Синт-Мартен', 'San Martín', 'Sint Maarten', 'Saint-Martin', 'Нидерландский антильский гульден', 'Florín de las Antillas Holandesas', 'Niederländische Antillian Gulden', 'Florin des Antilles néerlandaises', NULL, 532);
INSERT INTO public.countries VALUES (207, 'SY', 'SYR', 760, 'SY', 'Syria', 'Damascus', 22198110, 'AS', '.sy', 'SYP', 'Syrian Pound', '963', 'ar-SY,ku,hy,arc,fr,en', 'Сирийская Арабская Республика', 'Siria', 'Syrien', 'Syrie', 'Сирийский фунт', 'Libra siria', 'Syrisches Pfund', 'Livre syrienne', NULL, 760);
INSERT INTO public.countries VALUES (111, 'KG', 'KGZ', 417, 'KG', 'Kyrgyzstan', 'Bishkek', 5776500, 'AS', '.kg', 'KGS', 'Som', '996', 'ky,uz,ru', 'Кыргызстан', 'Kirguistán', 'Kirgistan', 'Kirghizistan', 'Сом', 'Som', 'So M', 'Som', NULL, 417);
INSERT INTO public.countries VALUES (202, 'SO', 'SOM', 706, 'SO', 'Somalia', 'Mogadishu', 10112453, 'AF', '.so', 'SOS', 'Somali Shilling', '252', 'so-SO,ar-SO,it,en-SO', 'Сомали', 'Somalia', 'Somalia', 'Somalie', 'Сомалийский шиллинг', 'Chelín somalí', 'Somali-Schilling', 'Shilling de Somalie', NULL, 706);
INSERT INTO public.countries VALUES (32, 'BY', 'BLR', 112, 'BO', 'Belarus', 'Minsk', 9685000, 'EU', '.by', 'BYR', 'Belarussian Ruble', '375', 'be,ru', 'Беларусь', 'Bielorrusia', 'Weißrussland', 'Biélorussie', 'Белорусский рубль', 'Rublo bielorruso', 'Weißrussischer Rubel', 'Rouble Biélorusse', NULL, 933);
INSERT INTO public.countries VALUES (62, 'EH', 'ESH', 732, 'WI', 'Western Sahara', 'El-Aaiun', 273008, 'AF', '.eh', 'MAD', 'Moroccan Dirham', '212', 'ar,mey', 'Западная Сахара', 'Sáhara Occidental', 'Westsahara', 'Sahara Occidental', 'Марокканский дирхам', 'Dirham marroquí', 'Marokkanischer Dirham', 'Dirham Marocain', NULL, 504);
INSERT INTO public.countries VALUES (63, 'ER', 'ERI', 232, 'ER', 'Eritrea', 'Asmara', 5792984, 'AF', '.er', 'ERN', 'Nakfa', '291', 'aa-ER,ar,tig,kun,ti-ER', 'Эритрея', 'Eritrea', 'Eritrea', 'Érythrée', 'Накфа', 'Nakfa', 'Nakfa', 'Nakfa', NULL, 232);
INSERT INTO public.countries VALUES (193, 'SE', 'SWE', 752, 'SW', 'Sweden', 'Stockholm', 9828655, 'EU', '.se', 'SEK', 'Swedish Krona', '46', 'sv-SE,se,sma,fi-SE', 'Швеция', 'Suecia', 'Schweden', 'Suède', 'Шведская крона', 'Corona sueca', 'Schwedische Krone', 'Couronne suédoise', NULL, 752);
INSERT INTO public.countries VALUES (61, 'EG', 'EGY', 818, 'EG', 'Egypt', 'Cairo', 80471869, 'AF', '.eg', 'EGP', 'Egyptian Pound', '20', 'ar-EG,en,fr', 'Египет', 'Egipto', 'Ägypten', 'Égypte', 'Египетский фунт', 'Libra egipcia', 'Ägyptisches Pfund', 'Livre égyptienne', NULL, 818);
INSERT INTO public.countries VALUES (58, 'DZ', 'DZA', 12, 'AG', 'Algeria', 'Algiers', 34586184, 'AF', '.dz', 'DZD', 'Algerian Dinar', '213', 'ar-DZ', 'Алжир', 'Argelia', 'Algerien', 'Algérie', 'Алжирский динар', 'Dinar argelino', 'Algerischer Dinar', 'Dinar algérien', NULL, 12);
INSERT INTO public.countries VALUES (55, 'DK', 'DNK', 208, 'DA', 'Denmark', 'Copenhagen', 5484000, 'EU', '.dk', 'DKK', 'Danish Krone', '45', 'da-DK,en,fo,de-DK', 'Дания', 'Dinamarca', 'Dänemark', 'Danemark', 'Датская крона', 'Corona danesa', 'Dänische Krone', 'Couronne danoise', NULL, 208);
INSERT INTO public.countries VALUES (52, 'CZ', 'CZE', 203, 'EZ', 'Czechia', 'Prague', 10476000, 'EU', '.cz', 'CZK', 'Czech Koruna', '420', 'cs,sk', 'Чешская Республика', 'República Checa', 'Tschechien', 'République tchèque', 'Чешская крона', 'Corona checa', 'Tschechische Krone', 'Couronne tchèque', NULL, 203);
INSERT INTO public.countries VALUES (214, 'TJ', 'TJK', 762, 'TI', 'Tajikistan', 'Dushanbe', 7487489, 'AS', '.tj', 'TJS', 'Somoni', '992', 'tg,ru', 'Таджикистан', 'Tayikistán', 'Tadschikistan', 'Tadjikistan', 'сомони', 'Somoni', 'Somoni', 'Somoni', NULL, 972);
INSERT INTO public.countries VALUES (208, 'SZ', 'SWZ', 748, 'WZ', 'Swaziland', 'Mbabane', 1354051, 'AF', '.sz', 'SZL', 'Lilangeni', '268', 'en-SZ,ss-SZ', 'Свазиленд', 'Suazilandia', 'Swasiland', 'Swaziland', 'Лилангени', 'Lilangeni', 'Lilangeni', 'Lilangeni', NULL, 748);
INSERT INTO public.countries VALUES (174, 'PL', 'POL', 616, 'PL', 'Poland', 'Warsaw', 38500000, 'EU', '.pl', 'PLN', 'Zloty', '48', 'pl', 'Польша', 'Polonia', 'Polen', 'Pologne', 'злотый', 'Zloty', 'Zloty', 'Zloty', NULL, 985);
INSERT INTO public.countries VALUES (172, 'PH', 'PHL', 608, 'RP', 'Philippines', 'Manila', 99900177, 'AS', '.ph', 'PHP', 'Philippine Peso', '63', 'tl,en-PH,fil', 'Филиппины', 'Filipinas', 'Philippinen', 'Philippines', 'Филиппинское песо', 'Peso filipino', 'Philippinischer Peso', 'Peso philippin', NULL, 608);
INSERT INTO public.countries VALUES (173, 'PK', 'PAK', 586, 'PK', 'Pakistan', 'Islamabad', 184404791, 'AS', '.pk', 'PKR', 'Pakistan Rupee', '92', 'ur-PK,en-PK,pa,sd,ps,brh', 'Пакистан', 'Pakistán', 'Pakistan', 'Pakistan', 'Пакистанская рупия', 'Rupia pakistaní', 'Pakistanische Rupie', 'Roupie pakistanaise', NULL, 586);
INSERT INTO public.countries VALUES (171, 'PG', 'PNG', 598, 'PP', 'Papua New Guinea', 'Port Moresby', 6064515, 'OC', '.pg', 'PGK', 'Kina', '675', 'en-PG,ho,meu,tpi', 'Папуа – Новая Гвинея', 'Papúa-Nueva Guinea', 'Papua-Neuguinea', 'Papouasie-Nouvelle Guinée', 'Кина', 'Kina', 'Kina', 'Kina', NULL, 598);
INSERT INTO public.countries VALUES (168, 'PA', 'PAN', 591, 'PM', 'Panama', 'Panama City', 3410676, 'NA', '.pa', 'PAB', 'Balboa', '507', 'es-PA,en', 'Панама', 'Panamá', 'Panama', 'Panama', 'Бальбоа', 'Balboa', 'Balboa', 'Balboa', NULL, 590);
INSERT INTO public.countries VALUES (169, 'PE', 'PER', 604, 'PE', 'Peru', 'Lima', 29907003, 'SA', '.pe', 'PEN', 'Nuevo Sol', '51', 'es-PE,qu,ay', 'Перу', 'Perú', 'Peru', 'Pérou', 'Нуэво Соль', 'Nuevo Sol', 'Nuevo Sol', 'Nuevo Sol', NULL, 604);
INSERT INTO public.countries VALUES (167, 'OM', 'OMN', 512, 'MU', 'Oman', 'Muscat', 2967717, 'AS', '.om', 'OMR', 'Rial Omani', '968', 'ar-OM,en,bal,ur', 'Оман', 'Omán', 'Oman', 'Oman', 'Риал Оманский', 'Rial Omani', 'Rial Omani', 'Rial omanais', NULL, 512);
INSERT INTO public.countries VALUES (3, 'AF', 'AFG', 4, 'AF', 'Afghanistan', 'Kabul', 29121286, 'AS', '.af', 'AFN', 'Afghani', '93', 'fa-AF,ps,uz-AF,tk', 'Афганистан', 'Afganistán', 'Afghanistan', 'Afghanistan', 'афгани', 'Afgano', 'Afghani', 'Afghani', NULL, 971);
INSERT INTO public.countries VALUES (162, 'NO', 'NOR', 578, 'NO', 'Norway', 'Oslo', 5009150, 'EU', '.no', 'NOK', 'Norwegian Krone', '47', 'no,nb,nn,se,fi', 'Норвегия', 'Noruega', 'Norwegen', 'Norvège', 'Норвежская крона', 'Corona noruega', 'Norwegische Krone', 'Couronne norvégienne', NULL, 578);
INSERT INTO public.countries VALUES (163, 'NP', 'NPL', 524, 'NP', 'Nepal', 'Kathmandu', 28951852, 'AS', '.np', 'NPR', 'Nepalese Rupee', '977', 'ne,en', 'Непал', 'Nepal', 'Nepal', 'Népal', 'Непальская рупия', 'Rupia nepalí', 'Nepalesische Rupie', 'Roupie Népalaise', NULL, 524);
INSERT INTO public.countries VALUES (31, 'BW', 'BWA', 72, 'BC', 'Botswana', 'Gaborone', 2029307, 'AF', '.bw', 'BWP', 'Pula', '267', 'en-BW,tn-BW', 'Ботсвана', 'Botsuana', 'Botswana', 'Botswana', 'Пула', 'Pula', 'Pula', 'Pula', NULL, 72);
INSERT INTO public.countries VALUES (190, 'SC', 'SYC', 690, 'SE', 'Seychelles', 'Victoria', 88340, 'AF', '.sc', 'SCR', 'Seychelles Rupee', '248', 'en-SC,fr-SC', 'Сейшельские о-ва', 'Seychelles', 'Seychellen', 'Seychelles', 'Сейшельская рупия', 'Rupia de las Seychelles', 'Seychellen-Rupie', 'Roupie des Seychelles', NULL, 690);
INSERT INTO public.countries VALUES (216, 'TM', 'TKM', 795, 'TX', 'Turkmenistan', 'Ashgabat', 4940916, 'AS', '.tm', 'TMT', 'Turkmenistan New Manat', '993', 'tk,ru,uz', 'Туркменистан', 'Turkmenistán', 'Turkmenistan', 'Turkménistan', 'Туркменистан Новый Манат', 'Turkmenistán Nueva Manat', 'Turkmenistan New Manat', 'Turkménistan New Manat', NULL, 934);
INSERT INTO public.countries VALUES (188, 'SA', 'SAU', 682, 'SA', 'Saudi Arabia', 'Riyadh', 25731776, 'AS', '.sa', 'SAR', 'Saudi Riyal', '966', 'ar-SA', 'Саудовская Аравия', 'Arabia Saudí', 'Saudi-Arabien', 'Arabie saoudite', 'Саудовский риал', 'Riyal saudita', 'Saudi-Rial', 'Riyal saoudien', NULL, 682);
INSERT INTO public.countries VALUES (20, 'BG', 'BGR', 100, 'BU', 'Bulgaria', 'Sofia', 7148785, 'EU', '.bg', 'BGN', 'Bulgarian Lev', '359', 'bg,tr-BG,rom', 'Болгария', 'Bulgaria', 'Bulgarien', 'Bulgarie', 'Болгарский лев', 'Lev búlgaro', 'Bulgarische Lev', 'Lev bulgare', NULL, 975);
INSERT INTO public.countries VALUES (182, 'QA', 'QAT', 634, 'QA', 'Qatar', 'Doha', 840926, 'AS', '.qa', 'QAR', 'Qatari Rial', '974', 'ar-QA,es', 'Катар', 'Qatar', 'Katar', 'Qatar', 'Катарский риал', 'Rial qatarí', 'Katar Rial', 'Rial qatari', NULL, 634);
INSERT INTO public.countries VALUES (13, 'AW', 'ABW', 533, 'AA', 'Aruba', 'Oranjestad', 71566, 'NA', '.aw', 'AWG', 'Aruban Guilder', '297', 'nl-AW,es,en', 'Аруба', 'Aruba', 'Aruba', 'Aruba', 'Арубанский гульден', 'Florín de Aruba', 'Aruba-Gulden', 'Florin d''Aruba', NULL, 533);
INSERT INTO public.countries VALUES (17, 'BD', 'BGD', 50, 'BG', 'Bangladesh', 'Dhaka', 156118464, 'AS', '.bd', 'BDT', 'Taka', '880', 'bn-BD,en', 'Бангладеш', 'Bangladesh', 'Bangladesch', 'Bangladesh', 'Taka', 'Taka', 'Taka', 'Taka', NULL, 50);
INSERT INTO public.countries VALUES (185, 'RS', 'SRB', 688, 'RI', 'Serbia', 'Belgrade', 7344847, 'EU', '.rs', 'RSD', 'Serbian Dinar', '381', 'sr,hu,bs,rom', 'Сербия', 'Serbia', 'Serbien', 'Serbie', 'Сербский динар', 'Dinar serbio', 'Serbischer Dinar', 'Dinar serbe', NULL, 941);
INSERT INTO public.countries VALUES (141, 'MM', 'MMR', 104, 'BM', 'Myanmar', 'Nay Pyi Taw', 53414374, 'AS', '.mm', 'MMK', 'Kyat', '95', 'my', 'Мьянма', 'Myanmar [Birmania]', 'Birma (Myanmar)', 'Myanmar', 'Кьят', 'Kyat', 'Kyat', 'Kyat', NULL, 104);
INSERT INTO public.countries VALUES (139, 'MK', 'MKD', 807, 'MK', 'Macedonia', 'Skopje', 2062294, 'EU', '.mk', 'MKD', 'Denar', '389', 'mk,sq,tr,rmm,sr', 'Македония', 'Macedonia', 'Ehemalige jugoslawische Republik Mazedonien', 'Macédoine', 'динар', 'Denar', 'Denar', 'Denar', NULL, 807);
INSERT INTO public.countries VALUES (137, 'MG', 'MDG', 450, 'MA', 'Madagascar', 'Antananarivo', 21281844, 'AF', '.mg', 'MGA', 'Ariary', '261', 'fr-MG,mg', 'Мадагаскар', 'Madagascar', 'Madagaskar', 'Madagascar', 'ариари', 'Ariary', 'Ariary', 'Ariary', NULL, 969);
INSERT INTO public.countries VALUES (134, 'MD', 'MDA', 498, 'MD', 'Moldova', 'Chisinau', 4324000, 'EU', '.md', 'MDL', 'Moldovan Leu', '373', 'ro,ru,gag,tr', 'Молдова', 'Moldavia', 'Moldau (Republik Moldau)', 'Moldavie', 'Молдавский лей', 'Leu moldavo', 'Moldauischer Leu', 'Leu moldave', NULL, 498);
INSERT INTO public.countries VALUES (132, 'MA', 'MAR', 504, 'MO', 'Morocco', 'Rabat', 33848242, 'AF', '.ma', 'MAD', 'Moroccan Dirham', '212', 'ar-MA,ber,fr', 'Марокко', 'Marruecos', 'Marokko', 'Maroc', 'Марокканский дирхам', 'Dirham marroquí', 'Marokkanischer Dirham', 'Dirham Marocain', NULL, 504);
INSERT INTO public.countries VALUES (2, 'AE', 'ARE', 784, 'AE', 'United Arab Emirates', 'Abu Dhabi', 4975593, 'AS', '.ae', 'AED', 'UAE Dirham', '971', 'ar-AE,fa,en,hi,ur', 'ОАЭ', 'Emiratos Árabes Unidos', 'Vereinigte Arabische Emirate', 'Émirats Arabes Unis', 'Дирхам ОАЭ', 'Emiratos Árabes Unidos Dirham', 'VAE Dirham', 'Dirham des Emirats Arabes Unis', NULL, 784);


--
-- Data for Name: rates; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.rates VALUES (1206, 3362, 'EUR', 'KGS', 77.2, 77.7, NULL, NULL, '2019-12-23 17:44:59.316866+03');
INSERT INTO public.rates VALUES (1207, 3362, 'USD', 'KGS', 69.75, 69.85, NULL, NULL, '2019-12-23 17:44:59.316866+03');
INSERT INTO public.rates VALUES (1208, 3362, 'RUB', 'KGS', 1.119, 1.123, NULL, NULL, '2019-12-23 17:44:59.316866+03');
INSERT INTO public.rates VALUES (1209, 3362, 'TRY', 'KGS', 10.94, 11.97, NULL, NULL, '2019-12-23 17:44:59.316866+03');
INSERT INTO public.rates VALUES (1210, 3362, 'KZT', 'KGS', 0.18, 0.1825, NULL, NULL, '2019-12-23 17:44:59.316866+03');
INSERT INTO public.rates VALUES (1211, 3362, 'EUR', 'KGS', 76.52, 78.1, NULL, NULL, '2019-12-23 17:44:59.316866+03');
INSERT INTO public.rates VALUES (1212, 3362, 'USD', 'KGS', 69.65, 69.9, NULL, NULL, '2019-12-23 17:44:59.316866+03');
INSERT INTO public.rates VALUES (1213, 3362, 'RUB', 'KGS', 1.096, 1.145, NULL, NULL, '2019-12-23 17:44:59.316866+03');
INSERT INTO public.rates VALUES (1214, 3362, 'TRY', 'KGS', 11.16, 12.39, NULL, NULL, '2019-12-23 17:44:59.316866+03');
INSERT INTO public.rates VALUES (1215, 3362, 'KZT', 'KGS', 0.1763, 0.1881, NULL, NULL, '2019-12-23 17:44:59.316866+03');
INSERT INTO public.rates VALUES (1216, 3362, 'EUR', 'KGS', 77.2, 77.7, NULL, NULL, '2019-12-23 17:46:46.140015+03');
INSERT INTO public.rates VALUES (1217, 3362, 'USD', 'KGS', 69.75, 69.85, NULL, NULL, '2019-12-23 17:46:46.140015+03');
INSERT INTO public.rates VALUES (1218, 3362, 'RUB', 'KGS', 1.119, 1.123, NULL, NULL, '2019-12-23 17:46:46.140015+03');
INSERT INTO public.rates VALUES (1219, 3362, 'TRY', 'KGS', 10.94, 11.97, NULL, NULL, '2019-12-23 17:46:46.140015+03');
INSERT INTO public.rates VALUES (1220, 3362, 'KZT', 'KGS', 0.18, 0.1825, NULL, NULL, '2019-12-23 17:46:46.140015+03');
INSERT INTO public.rates VALUES (1221, 3362, 'EUR', 'KGS', 76.52, 78.1, NULL, NULL, '2019-12-23 17:46:46.140015+03');
INSERT INTO public.rates VALUES (1222, 3362, 'USD', 'KGS', 69.65, 69.9, NULL, NULL, '2019-12-23 17:46:46.140015+03');
INSERT INTO public.rates VALUES (1223, 3362, 'RUB', 'KGS', 1.096, 1.145, NULL, NULL, '2019-12-23 17:46:46.140015+03');
INSERT INTO public.rates VALUES (1224, 3362, 'TRY', 'KGS', 11.16, 12.39, NULL, NULL, '2019-12-23 17:46:46.140015+03');
INSERT INTO public.rates VALUES (1225, 3362, 'KZT', 'KGS', 0.1763, 0.1881, NULL, NULL, '2019-12-23 17:46:46.140015+03');
INSERT INTO public.rates VALUES (1226, 3362, 'EUR', 'KGS', 77.2, 77.7, NULL, NULL, '2019-12-23 17:49:06.361828+03');
INSERT INTO public.rates VALUES (1227, 3362, 'USD', 'KGS', 69.75, 69.85, NULL, NULL, '2019-12-23 17:49:06.361828+03');
INSERT INTO public.rates VALUES (1228, 3362, 'RUB', 'KGS', 1.119, 1.123, NULL, NULL, '2019-12-23 17:49:06.361828+03');
INSERT INTO public.rates VALUES (1229, 3362, 'TRY', 'KGS', 10.94, 11.97, NULL, NULL, '2019-12-23 17:49:06.361828+03');
INSERT INTO public.rates VALUES (1230, 3362, 'KZT', 'KGS', 0.18, 0.1825, NULL, NULL, '2019-12-23 17:49:06.361828+03');
INSERT INTO public.rates VALUES (1231, 3362, 'EUR', 'KGS', 76.52, 78.1, NULL, NULL, '2019-12-23 17:49:06.361828+03');
INSERT INTO public.rates VALUES (1232, 3362, 'USD', 'KGS', 69.65, 69.9, NULL, NULL, '2019-12-23 17:49:06.361828+03');
INSERT INTO public.rates VALUES (1233, 3362, 'RUB', 'KGS', 1.096, 1.145, NULL, NULL, '2019-12-23 17:49:06.361828+03');
INSERT INTO public.rates VALUES (1234, 3362, 'TRY', 'KGS', 11.16, 12.39, NULL, NULL, '2019-12-23 17:49:06.361828+03');
INSERT INTO public.rates VALUES (1235, 3362, 'KZT', 'KGS', 0.1763, 0.1881, NULL, NULL, '2019-12-23 17:49:06.361828+03');
INSERT INTO public.rates VALUES (1236, 1741, 'USD', 'RUB', 61.35, 63.2, NULL, NULL, '2019-12-23 17:50:24.960654+03');
INSERT INTO public.rates VALUES (1237, 1741, 'EUR', 'RUB', 67.95, 70, NULL, NULL, '2019-12-23 17:50:24.960654+03');
INSERT INTO public.rates VALUES (1238, 1741, 'USD', 'RUB', 61.25, 63.3, NULL, NULL, '2019-12-23 17:50:24.960654+03');
INSERT INTO public.rates VALUES (1239, 1741, 'EUR', 'RUB', 67.9, 70, NULL, NULL, '2019-12-23 17:50:24.960654+03');
INSERT INTO public.rates VALUES (1240, 1741, 'CHF', 'RUB', 61.9, 65.05, NULL, NULL, '2019-12-23 17:50:24.960654+03');
INSERT INTO public.rates VALUES (1241, 3362, 'EUR', 'KGS', 77.2, 77.7, NULL, NULL, '2019-12-23 17:50:30.003656+03');
INSERT INTO public.rates VALUES (1242, 3362, 'USD', 'KGS', 69.75, 69.85, NULL, NULL, '2019-12-23 17:50:30.003656+03');
INSERT INTO public.rates VALUES (1243, 3362, 'RUB', 'KGS', 1.119, 1.123, NULL, NULL, '2019-12-23 17:50:30.003656+03');
INSERT INTO public.rates VALUES (1244, 3362, 'TRY', 'KGS', 10.94, 11.97, NULL, NULL, '2019-12-23 17:50:30.003656+03');
INSERT INTO public.rates VALUES (1245, 3362, 'KZT', 'KGS', 0.18, 0.1825, NULL, NULL, '2019-12-23 17:50:30.003656+03');
INSERT INTO public.rates VALUES (1246, 3362, 'EUR', 'KGS', 76.52, 78.1, NULL, NULL, '2019-12-23 17:50:30.003656+03');
INSERT INTO public.rates VALUES (1247, 3362, 'USD', 'KGS', 69.65, 69.9, NULL, NULL, '2019-12-23 17:50:30.003656+03');
INSERT INTO public.rates VALUES (1248, 3362, 'RUB', 'KGS', 1.096, 1.145, NULL, NULL, '2019-12-23 17:50:30.003656+03');
INSERT INTO public.rates VALUES (1249, 3362, 'TRY', 'KGS', 11.16, 12.39, NULL, NULL, '2019-12-23 17:50:30.003656+03');
INSERT INTO public.rates VALUES (1250, 3362, 'KZT', 'KGS', 0.1763, 0.1881, NULL, NULL, '2019-12-23 17:50:30.003656+03');
INSERT INTO public.rates VALUES (1251, 1741, 'USD', 'RUB', 61.35, 63.2, NULL, NULL, '2019-12-23 17:56:24.113516+03');
INSERT INTO public.rates VALUES (1252, 1741, 'EUR', 'RUB', 67.95, 70, NULL, NULL, '2019-12-23 17:56:24.113516+03');
INSERT INTO public.rates VALUES (1253, 1741, 'USD', 'RUB', 61.25, 63.3, NULL, NULL, '2019-12-23 17:56:24.113516+03');
INSERT INTO public.rates VALUES (1254, 1741, 'EUR', 'RUB', 67.9, 70, NULL, NULL, '2019-12-23 17:56:24.113516+03');
INSERT INTO public.rates VALUES (1255, 1741, 'CHF', 'RUB', 61.9, 65.05, NULL, NULL, '2019-12-23 17:56:24.113516+03');
INSERT INTO public.rates VALUES (1256, 3362, 'EUR', 'KGS', 77.2, 77.7, NULL, NULL, '2019-12-23 17:56:29.782183+03');
INSERT INTO public.rates VALUES (1257, 3362, 'USD', 'KGS', 69.75, 69.85, NULL, NULL, '2019-12-23 17:56:29.782183+03');
INSERT INTO public.rates VALUES (1258, 3362, 'RUB', 'KGS', 1.119, 1.123, NULL, NULL, '2019-12-23 17:56:29.782183+03');
INSERT INTO public.rates VALUES (1259, 3362, 'TRY', 'KGS', 10.94, 11.97, NULL, NULL, '2019-12-23 17:56:29.782183+03');
INSERT INTO public.rates VALUES (1260, 3362, 'KZT', 'KGS', 0.18, 0.1825, NULL, NULL, '2019-12-23 17:56:29.782183+03');
INSERT INTO public.rates VALUES (1261, 3362, 'EUR', 'KGS', 76.52, 78.1, NULL, NULL, '2019-12-23 17:56:29.782183+03');
INSERT INTO public.rates VALUES (1262, 3362, 'USD', 'KGS', 69.65, 69.9, NULL, NULL, '2019-12-23 17:56:29.782183+03');
INSERT INTO public.rates VALUES (1263, 3362, 'RUB', 'KGS', 1.096, 1.145, NULL, NULL, '2019-12-23 17:56:29.782183+03');
INSERT INTO public.rates VALUES (1264, 3362, 'TRY', 'KGS', 11.16, 12.39, NULL, NULL, '2019-12-23 17:56:29.782183+03');
INSERT INTO public.rates VALUES (1265, 3362, 'KZT', 'KGS', 0.1763, 0.1881, NULL, NULL, '2019-12-23 17:56:29.782183+03');
INSERT INTO public.rates VALUES (1266, 1741, 'USD', 'RUB', 61.35, 63.2, NULL, NULL, '2019-12-23 17:57:45.771744+03');
INSERT INTO public.rates VALUES (1267, 1741, 'EUR', 'RUB', 67.95, 70, NULL, NULL, '2019-12-23 17:57:45.771744+03');
INSERT INTO public.rates VALUES (1268, 1741, 'USD', 'RUB', 61.25, 63.3, NULL, NULL, '2019-12-23 17:57:45.771744+03');
INSERT INTO public.rates VALUES (1269, 1741, 'EUR', 'RUB', 67.9, 70, NULL, NULL, '2019-12-23 17:57:45.771744+03');
INSERT INTO public.rates VALUES (1270, 1741, 'CHF', 'RUB', 61.9, 65.05, NULL, NULL, '2019-12-23 17:57:45.771744+03');
INSERT INTO public.rates VALUES (1271, 3362, 'EUR', 'KGS', 77.2, 77.7, NULL, NULL, '2019-12-23 17:57:53.415667+03');
INSERT INTO public.rates VALUES (1272, 3362, 'USD', 'KGS', 69.75, 69.85, NULL, NULL, '2019-12-23 17:57:53.415667+03');
INSERT INTO public.rates VALUES (1273, 3362, 'RUB', 'KGS', 1.119, 1.123, NULL, NULL, '2019-12-23 17:57:53.415667+03');
INSERT INTO public.rates VALUES (1274, 3362, 'TRY', 'KGS', 10.94, 11.97, NULL, NULL, '2019-12-23 17:57:53.415667+03');
INSERT INTO public.rates VALUES (1275, 3362, 'KZT', 'KGS', 0.18, 0.1825, NULL, NULL, '2019-12-23 17:57:53.415667+03');
INSERT INTO public.rates VALUES (1276, 3362, 'EUR', 'KGS', 76.52, 78.1, NULL, NULL, '2019-12-23 17:57:53.415667+03');
INSERT INTO public.rates VALUES (1277, 3362, 'USD', 'KGS', 69.65, 69.9, NULL, NULL, '2019-12-23 17:57:53.415667+03');
INSERT INTO public.rates VALUES (1278, 3362, 'RUB', 'KGS', 1.096, 1.145, NULL, NULL, '2019-12-23 17:57:53.415667+03');
INSERT INTO public.rates VALUES (1279, 3362, 'TRY', 'KGS', 11.16, 12.39, NULL, NULL, '2019-12-23 17:57:53.415667+03');
INSERT INTO public.rates VALUES (1280, 3362, 'KZT', 'KGS', 0.1763, 0.1881, NULL, NULL, '2019-12-23 17:57:53.415667+03');


--
-- Data for Name: rb; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.rb VALUES ('www.nbp.pl', 'Narodowy Bank Polski[1]', 'http://www.nbp.pl', 'Warsaw', 'contain bank in page', 'by words', 'Poland', NULL);
INSERT INTO public.rb VALUES ('www.tbb.org.tr', 'Banks Association of Turkey', 'http://www.tbb.org.tr', 'Istanbul', 'contain bank in page', 'by words', 'Turkey', NULL);
INSERT INTO public.rb VALUES ('www.lombardmalta.com', 'Lombard Bank Malta Plc', 'http://www.lombardmalta.com', '67, Republic Street, Valletta, Malta', 'contain bank in page', 'by words', 'Malta', NULL);
INSERT INTO public.rb VALUES ('www.expat.hsbc.com', 'HSBC Bank International Limited', 'https://www.expat.hsbc.com/', 'Saint Helier, Jersey, Channel Islands', 'contain bank in page', 'by words', 'Jersey', NULL);
INSERT INTO public.rb VALUES ('www.dtbafrica.com', 'Diamond Trust Bank Group', 'http://www.dtbafrica.com/', 'DTB CentreMombasa RoadNairobi, Kenya', 'contain bank in page', 'by words', 'Kenya', NULL);
INSERT INTO public.rb VALUES ('hsbc.co.uk', 'HSBC Bank plc', 'http://hsbc.co.uk/', 'London, United Kingdom (Global)
Birmingham, United Kingdom (UK)', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.nsbonline.com', 'Newtown Savings Bank', 'https://www.nsbonline.com/', 'Newtown, Connecticut', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.mkb.ru', 'Credit Bank of Moscow', 'http://www.mkb.ru/', 'Moscow, Russia', 'contain bank in page', 'by words', 'Russia', NULL);
INSERT INTO public.rb VALUES ('www.depfa.com', 'DEPFA Bank plc', 'http://www.depfa.com', 'Dublin, Ireland', 'contain bank in page', 'by words', 'Ireland', NULL);
INSERT INTO public.rb VALUES ('www.hsbc.com.eg', 'HSBC Bank Egypt S.A.E.', 'http://www.hsbc.com.eg/', 'Cairo, Egypt', 'contain bank in page', 'by words', 'Egypt', NULL);
INSERT INTO public.rb VALUES ('www.kb.cz', 'Komerční banka a.s.', 'http://www.kb.cz', 'Prague, Czech Republic', 'contain bank in page', 'by words', 'Czechia', NULL);
INSERT INTO public.rb VALUES ('www.aval.ua', 'Raiffeisen Bank Aval', 'https://www.aval.ua/en/', 'Kyiv, Ukraine', 'contain bank in page', 'by words', 'Ukraine', NULL);
INSERT INTO public.rb VALUES ('www.iib.int', 'International Investment Bank', 'https://www.iib.int/en', 'Budapest, Hungary', 'contain bank in page', 'by words', 'Hungary', NULL);
INSERT INTO public.rb VALUES ('www.gefa.de', 'GEFA Bank GmbH', 'http://www.gefa.de/', 'Wuppertal', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.nabard.org', 'National Bank for Agriculture and Rural Development', 'http://www.nabard.org/', 'Mumbai, 
India[2]', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.jb.com.bd', 'Janata Bank Limited', 'http://www.jb.com.bd/', 'Dhaka, Bangladesh', 'contain bank in page', 'by words', 'Bangladesh', NULL);
INSERT INTO public.rb VALUES ('citi.com', 'Citibank, N. A.', 'http://citi.com', 'New York City, New York', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.pbb.com.ph', 'Philippine Business Bank', 'http://www.pbb.com.ph', 'Caloocan, Philippines', 'contain bank in page', 'by words', 'Philippines', NULL);
INSERT INTO public.rb VALUES ('www.s-pankki.fi', 'S-Bank Ltd', 'http://www.s-pankki.fi/', 'Helsinki, Finland', 'contain bank in page', NULL, 'Finland', NULL);
INSERT INTO public.rb VALUES ('www.rzb.at', 'Raiffeisen Zentralbank', 'http://www.rzb.at/', 'Vienna, Austria', 'contain bank in page', 'by words', 'Austria', NULL);
INSERT INTO public.rb VALUES ('www.cbhb.com.cn', 'China Bohai Bank', 'http://www.cbhb.com.cn', '218 Haihe East Road, Hedong District, Tianjin, China', 'contain bank in page', 'by words', 'China', NULL);
INSERT INTO public.rb VALUES ('www.tbi.com.iq', 'Trade Bank of Iraq', 'http://www.tbi.com.iq', 'Building 11, Al-Rasheed Street,
Baghdad, Iraq', 'contain bank in page', 'by words', 'Iraq', NULL);
INSERT INTO public.rb VALUES ('www.bstdb.org', 'Black Sea Trade and Development Bank', 'http://www.bstdb.org', 'Thessaloniki, Greece', 'contain bank in page', 'by words', 'Greece', NULL);
INSERT INTO public.rb VALUES ('www.boq.com.au', 'Bank of Queensland Limited', 'http://www.boq.com.au/', 'Brisbane, Queensland, Australia', 'contain bank in page', 'by words', 'Australia', NULL);
INSERT INTO public.rb VALUES ('us.cibc.com', 'CIBC Bank USA', 'https://us.cibc.com/', '120 South LaSalle Street, Chicago, Illinois', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.mfbonline.com', 'Mechanics and Farmers Bank', 'https://www.mfbonline.com/', 'Durham, North Carolina, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.spdb.com.cn', 'Shanghai Pudong Development Bank Co. Ltd', 'http://www.spdb.com.cn/chpage/c510/', 'Shanghai, China', 'contain bank in page', 'by words', 'China', NULL);
INSERT INTO public.rb VALUES ('www.metbank.co.zw', 'Metbank', 'http://www.metbank.co.zw/', 'Harare, Zimbabwe', 'contain bank in page', 'by words', 'Zimbabwe', NULL);
INSERT INTO public.rb VALUES ('www.ibar.az', 'International Bank of Azerbaijan', 'http://www.ibar.az', 'Baku, Azerbaijan', 'contain bank in page', 'by words', 'Azerbaijan', NULL);
INSERT INTO public.rb VALUES ('luminor.ee', 'Luminor Bank AS', 'http://luminor.ee', 'Tallinn, Estonia', 'contain bank in page', NULL, 'Estonia', NULL);
INSERT INTO public.rb VALUES ('www.uobgroup.com', 'United Overseas Bank Limited', 'http://www.uobgroup.com', 'UOB Plaza, 80 Raffles Place, Singapore 048624', 'contain bank in page', 'by words', 'Singapore', NULL);
INSERT INTO public.rb VALUES ('www.dkb.de', 'Deutsche Kreditbank', 'http://www.dkb.de/', 'Berlin', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.dtbt.dtbafrica.com', 'Diamond Trust Bank (Tanzania) Limited', 'http://www.dtbt.dtbafrica.com/', '9th floor Harbor View Towers Dar es Salaam, Tanzania', 'contain bank in page', 'by words', 'Tanzania', NULL);
INSERT INTO public.rb VALUES ('www.fgb.ae', 'First Abu Dhabi Bank PJSC', 'http://www.fgb.ae/', 'Abu Dhabi, UAE', 'contain bank in page', 'by words', 'United Arab Emirates', NULL);
INSERT INTO public.rb VALUES ('www.nbg.gov.ge', 'National Bank of Georgia', 'http://www.nbg.gov.ge/', 'Public Service Hall', 'contain bank in page', 'by words', 'Georgia', NULL);
INSERT INTO public.rb VALUES ('www.boad.org', 'West African Development Bank', 'http://www.boad.org/en', 'Lomé, Togo', 'contain bank in page', 'by words', 'Togo', NULL);
INSERT INTO public.rb VALUES ('www.snv.no', 'SpareBank 1 Nordvest', 'http://www.snv.no', 'Kristiansund, Norway', 'contain bank in page', 'by words', 'Norway', NULL);
INSERT INTO public.rb VALUES ('pkb.gov.bd', 'Probashi Kallyan Bank', 'http://pkb.gov.bd', 'Dhaka, Bangladesh', 'contain bank in page', 'by words', 'Bangladesh', NULL);
INSERT INTO public.rb VALUES ('www.bgfi.com', 'BGFIBank Group', 'http://www.bgfi.com/en/', 'Libreville, Gabon', 'contain bank in page', 'by words', 'Gabon', NULL);
INSERT INTO public.rb VALUES ('www.stb.com.mk', 'Stopanska banka', 'http://www.stb.com.mk', 'Skopje, Republic of Macedonia', 'contain bank in page', 'by words', 'Macedonia', NULL);
INSERT INTO public.rb VALUES ('www.aminib.com', 'Amin Investment Bank', 'http://www.aminib.com/', 'Tehran, Iran', 'contain bank in page', 'by words', 'Iran', NULL);
INSERT INTO public.rb VALUES ('morabanc.ad', 'Mora Bank Group', 'http://morabanc.ad/', 'Andorra la Vella, Andorra', 'contain bank in page', NULL, 'Andorra', NULL);
INSERT INTO public.rb VALUES ('www.posb.com.sg', 'POSB Bank', 'http://www.posb.com.sg', 'Singapore', 'contain bank in page', 'by words', 'Singapore', NULL);
INSERT INTO public.rb VALUES ('www.mendesgans.com', 'Bank Mendes Gans', 'http://www.mendesgans.com/', 'Amsterdam, Netherlands', 'contain bank in page', 'by words', 'Netherlands', NULL);
INSERT INTO public.rb VALUES ('jak.se', 'JAK Medlemsbank', 'http://jak.se/', 'Skövde, Sweden', 'contain bank in page', 'by words', 'Sweden', NULL);
INSERT INTO public.rb VALUES ('tangerine.ca', 'Tangerine Bank', 'http://tangerine.ca', 'Toronto, Ontario, Canada', 'contain bank in page', 'by words', 'Canada', NULL);
INSERT INTO public.rb VALUES ('www.cdb.com.cn', 'China Development Bank', 'http://www.cdb.com.cn/', 'Beijing, People''s Republic of China', 'contain bank in page', 'by words', 'China', NULL);
INSERT INTO public.rb VALUES ('bnd.nd.gov', 'Bank of North Dakota', 'https://bnd.nd.gov', 'Bismarck, North Dakota, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.ccb.com', 'China Construction Bank', 'http://www.ccb.com/en/home/index.html', 'Beijing, China', 'contain bank in page', 'by words', 'China', NULL);
INSERT INTO public.rb VALUES ('www.rcbcy.com', 'RCB Bank', 'http://www.rcbcy.com/', 'Limassol, Cyprus', 'contain bank in page', 'by words', 'Cyprus', NULL);
INSERT INTO public.rb VALUES ('www.ikb.de', 'IKB Deutsche Industriebank AG', 'http://www.ikb.de', 'Düsseldorf, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.ablmm.com', 'Innwa Bank Limited', 'http://www.ablmm.com', 'Kyauktada Township, Yangon, Myanmar (Burma)', 'contain bank in page', 'by words', 'Myanmar', NULL);
INSERT INTO public.rb VALUES ('www.baiduri.com.bn', 'Baiduri Bank', 'http://www.baiduri.com.bn/', 'Kiarong, Brunei', 'contain bank in page', 'by words', 'Brunei', NULL);
INSERT INTO public.rb VALUES ('www.pocztowy.pl', 'Bank Pocztowy', 'http://www.pocztowy.pl', 'ul. Jagiellońska 17, 85-959 Bydgoszcz, Poland', 'contain bank in page', 'by words', 'Poland', NULL);
INSERT INTO public.rb VALUES ('tiib.com', 'Tadhamon International Islamic Bank', 'http://tiib.com/', 'Sana''a, Yemen', 'contain bank in page', 'by words', 'Yemen', NULL);
INSERT INTO public.rb VALUES ('www.gls.de', 'GLS Bank', 'https://www.gls.de/', 'Bochum, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.gsb.or.th', 'Government Savings Bank', 'http://www.gsb.or.th/', '470 Phaholyothin Road, Samsennai, Phaya Thai, Bangkok 10400, Thailand', 'contain bank in page', 'by words', 'Thailand', NULL);
INSERT INTO public.rb VALUES ('www.hsbc.cl', 'HSBC Bank (Chile)', 'http://www.hsbc.cl/', 'Santiago, Chile', 'contain bank in page', 'by words', 'Chile', NULL);
INSERT INTO public.rb VALUES ('psbindia.com', 'Punjab & Sind Bank', 'https://psbindia.com', 'Rajendra Place New Delhi, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.bsi.si', 'Bank of SloveniaBanka Slovenije (in Slovene)', 'http://www.bsi.si', 'Ljubljana', 'contain bank in page', 'by words', 'Slovenia', NULL);
INSERT INTO public.rb VALUES ('cba.ca', 'Canadian Bankers Association', 'https://cba.ca/', 'Commerce Court West30th floor199 Bay StreetToronto', 'contain bank in page', 'by words', 'Canada', NULL);
INSERT INTO public.rb VALUES ('www.bk.mufg.jp', 'MUFG Bank, Ltd.株式会社三菱UFJ銀行', 'http://www.bk.mufg.jp/english/', 'Chiyoda, Tokyo (Marunouchi 2-7-1, Chiyoda-ku, Tokyo, 100-8388, Japan), Japan', 'contain bank in page', 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.iob.in', 'Indian Overseas Bank', 'https://www.iob.in', 'Chennai, Tamil Nadu, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('nbe.gov.et', 'National Bank of Ethiopiaየኢትዮጵያ ብሔራዊ ባንክ', 'http://nbe.gov.et', 'Addis Ababa, Ethiopia', 'contain bank in page', 'by words', 'Ethiopia', NULL);
INSERT INTO public.rb VALUES ('www.ktb.co.th', 'Krung Thai Bank', 'http://www.ktb.co.th/', 'Wattana, Bangkok, Thailand[2]', 'contain bank in page', 'by words', 'Thailand', NULL);
INSERT INTO public.rb VALUES ('www.zanaco.co.zm', 'Zambia National Commercial Bank', 'http://www.zanaco.co.zm/', 'Lusaka, Zambia', 'contain bank in page', 'by words', 'Zambia', NULL);
INSERT INTO public.rb VALUES ('www.bsb.bw', 'Botswana Savings Bank', 'http://www.bsb.bw/', 'Gaborone, Botswana', 'contain bank in page', 'by words', 'Botswana', NULL);
INSERT INTO public.rb VALUES ('www.watrust.com', 'Washington Trust Bank', 'https://www.watrust.com/', 'Spokane, Washington', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.fcb.com.ph', 'First Consolidated Bank', 'http://www.fcb.com.ph', 'CPG North Avenue, Taloto District, Tagbilaran City, Bohol', 'contain bank in page', 'by words', 'Philippines', NULL);
INSERT INTO public.rb VALUES ('www.ebcfx.com', 'Exchange Bank of Canada', 'http://www.ebcfx.com', 'Toronto, Ontario, Canada', 'contain bank in page', 'by words', 'Canada', NULL);
INSERT INTO public.rb VALUES ('open.ru', 'Bank Otkritie Financial Corporation', 'https://open.ru', 'Moscow, Russia', 'contain bank in page', 'by words', 'Russia', NULL);
INSERT INTO public.rb VALUES ('www.ahliunited.com', 'Ahli United Bank', 'https://www.ahliunited.com', 'Manama, Bahrain', 'contain bank in page', 'by words', 'Bahrain', NULL);
INSERT INTO public.rb VALUES ('www.nibc.com', 'NIBC Bank N.V.', 'http://www.nibc.com', 'The Hague, Netherlands', 'contain bank in page', 'by words', 'Netherlands', NULL);
INSERT INTO public.rb VALUES ('www.bancomoc.mz', 'Bank of MozambiqueBanco de Moçambique', 'http://www.bancomoc.mz', '1695 Avenida 25 de Setembro, Maputo', 'contain bank in page', 'by words', 'Mozambique', NULL);
INSERT INTO public.rb VALUES ('www.kotak.com', 'Kotak Mahindra Bank Ltd.', 'http://www.kotak.com/', 'Mumbai, Maharashtra, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.posb.co.zw', 'People''s Own Savings Bank', 'http://www.posb.co.zw/', 'Harare, Zimbabwe', 'contain bank in page', 'by words', 'Zimbabwe', NULL);
INSERT INTO public.rb VALUES ('www.banque-comores.km', 'Central Bank of the ComorosBanque Centrale des Comores (BCC)', 'http://www.banque-comores.km', 'Moroni, Comoros', 'contain bank in page', 'by words', 'Comoros', NULL);
INSERT INTO public.rb VALUES ('n26.com', 'N26 Bank GmbH', 'https://n26.com/en-de', 'Klosterstraße 66, 10179, Berlin, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.cathaybk.com.tw', 'Cathay United Bank', 'https://www.cathaybk.com.tw/', 'Taipei, Taiwan', 'contain bank in page', 'by words', 'Taiwan', NULL);
INSERT INTO public.rb VALUES ('krungsri.com', 'Bank of Ayudhya PCL', 'http://krungsri.com', '1222 Rama III Rd, Yan Nawa, Bangkok 10120', 'contain bank in page', 'by words', 'Thailand', NULL);
INSERT INTO public.rb VALUES ('www.jubmes.rs', 'JUBMES banka', 'http://www.jubmes.rs', 'Zorana Đinđića 121, Belgrade, Serbia', 'contain bank in page', NULL, 'Serbia', NULL);
INSERT INTO public.rb VALUES ('www.boamerrouge.com', 'Bank of Africa (Red Sea)', 'https://www.boamerrouge.com/', 'Place Lagarde, Djibouti', 'contain bank in page', 'by words', 'Djibouti', NULL);
INSERT INTO public.rb VALUES ('www.nbsmw.com', 'NBS Bank', 'http://www.nbsmw.com/', 'Blantyre, Malawi', 'contain bank in page', 'by words', 'Malawi', NULL);
INSERT INTO public.rb VALUES ('web.ubot.com.tw', 'Union Bank of Taiwan', 'http://web.ubot.com.tw/english/index.asp', 'Taiwan', 'contain bank in page', 'by words', 'Taiwan', NULL);
INSERT INTO public.rb VALUES ('www.zkb.ch', 'Zurich Cantonal Bank', 'https://www.zkb.ch/en', 'Bahnhofstrasse 9 Zurich8010 Switzerland', 'contain bank in page', 'by words', 'Switzerland', NULL);
INSERT INTO public.rb VALUES ('www.investrustbank.com', 'Investrust Bank', 'http://www.investrustbank.com/', 'Lusaka ', 'contain bank in page', 'by words', 'Zambia', NULL);
INSERT INTO public.rb VALUES ('www.delen.be', 'Delen Private Bank', 'http://www.delen.be/', 'Belgium ', 'contain bank in page', NULL, 'Belgium', NULL);
INSERT INTO public.rb VALUES ('www.erstegroup.com', 'Erste Group Bank AG', 'http://www.erstegroup.com', 'Vienna, Austria', 'contain bank in page', 'by words', 'Austria', NULL);
INSERT INTO public.rb VALUES ('www.szcb.com', 'Shenzhen Commercial Bank', 'http://www.szcb.com/', 'Shenzhen, China', 'contain bank in page', 'by words', 'China', NULL);
INSERT INTO public.rb VALUES ('www.ffb.com', 'First Fidelity Bank', 'https://www.ffb.com/', 'Oklahoma City, Oklahoma, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.psbc.com', 'Postal Savings Bank of China', 'http://www.psbc.com', 'No. 3 Financial Street, Xicheng District, Beijing, PRC', 'contain bank in page', 'by words', 'China', NULL);
INSERT INTO public.rb VALUES ('hangseng.com', 'Hang Seng Bank Limited', 'http://hangseng.com', 'Hang Seng Bank Headquarters Building, Central, Hong Kong', 'contain bank in page', 'by words', 'Hong Kong', NULL);
INSERT INTO public.rb VALUES ('www.mybsn.com.my', 'Bank Simpanan Nasional', 'https://www.mybsn.com.my/', 'Kuala Lumpur, Malaysia', 'contain bank in page', 'by words', 'Malaysia', NULL);
INSERT INTO public.rb VALUES ('www.citystatesavings.com', 'Citystate Savings Bank', 'http://www.citystatesavings.com', 'Pasig City, Philippines (Citystate Centre )', 'contain bank in page', 'by words', 'Philippines', NULL);
INSERT INTO public.rb VALUES ('www.faib.com', 'First American International Bank', 'http://www.faib.com', 'Brooklyn, New York City,New York, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.habibmetro.com', 'Habib Metropolitan Bank', 'http://www.habibmetro.com', 'Karachi, Pakistan', 'contain bank in page', 'by words', 'Pakistan', NULL);
INSERT INTO public.rb VALUES ('www.bca.co.id', 'PT Bank Central Asia Tbk.', 'http://www.bca.co.id/', 'Jakarta, Indonesia', 'contain bank in page', 'by words', 'Indonesia', NULL);
INSERT INTO public.rb VALUES ('www.nfb.mw', 'New Finance Bank Limited', 'http://www.nfb.mw/', 'Lilongwe, Malawi', 'contain bank in page', 'by words', 'Malawi', NULL);
INSERT INTO public.rb VALUES ('www.zuno.eu', 'ZUNO BANK AG', 'http://www.zuno.eu', 'Vienna, Austria', 'contain bank in page', 'by words', 'Austria', NULL);
INSERT INTO public.rb VALUES ('www.cbk.gov.kw', 'Central Bank of Kuwait', 'http://www.cbk.gov.kw/', 'Kuwait City', 'contain bank in page', 'by words', 'Kuwait', NULL);
INSERT INTO public.rb VALUES ('www.arvest.com', 'Arvest Bank', 'https://www.arvest.com/', 'Bentonville, Arkansas', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.jsafrasarasin.ch', 'Bank J. Safra Sarasin Ltd', 'http://www.jsafrasarasin.ch/', 'Basel , Switzerland ', 'contain bank in page', 'by words', 'Switzerland', NULL);
INSERT INTO public.rb VALUES ('www.triodos.com', 'Triodos Bank N.V.', 'https://www.triodos.com/', 'Zeist, Netherlands', 'contain bank in page', 'by words', 'Netherlands', NULL);
INSERT INTO public.rb VALUES ('www.tsb.co.uk', 'TSB Bank plc', 'http://www.tsb.co.uk', 'Edinburgh, Scotland, UK', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.adbc.com.cn', 'Agricultural Development Bank of China', 'http://www.adbc.com.cn/', 'Beijing (headquarter), China', 'contain bank in page', 'by words', 'China', NULL);
INSERT INTO public.rb VALUES ('rbi.org.in', 'Reserve Bank of India (RBI)', 'https://rbi.org.in', 'Mumbai, Maharashtra, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.cbg.com.gh', 'Consolidated Bank Ghana', 'https://www.cbg.com.gh/', 'Accra, Ghana', 'contain bank in page', 'by words', 'Ghana', NULL);
INSERT INTO public.rb VALUES ('www.nib.int', 'Nordic Investment Bank', 'http://www.nib.int', 'Helsinki, Finland', 'contain bank in page', 'by words', 'Finland', NULL);
INSERT INTO public.rb VALUES ('www.mbbru.ru', 'Mir Business Bank', 'https://www.mbbru.ru', 'Moscow, Russia', 'contain bank in page', 'by words', 'Russia', NULL);
INSERT INTO public.rb VALUES ('www.nbp.com.pk', 'National Bank of Pakistan', 'http://www.nbp.com.pk/', 'Karachi Pakistan', 'contain bank in page', 'by words', 'Pakistan', NULL);
INSERT INTO public.rb VALUES ('www.bdo.com.ph', 'BDO Unibank, Inc.', 'http://www.bdo.com.ph', 'Makati, Philippines (BDO Corporate Center)', 'contain bank in page', 'by words', 'Philippines', NULL);
INSERT INTO public.rb VALUES ('www.ujjivansfb.in', 'Ujjivan Small Finance Bank', 'https://www.ujjivansfb.in', 'Bangalore, Karnataka, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.frbatlanta.org', 'Federal Reserve Bank of Atlanta', 'https://www.frbatlanta.org/', '1000 Peachtree St NE Atlanta, Georgia, USA', 'contain bank in page', 'by words', 'Georgia', NULL);
INSERT INTO public.rb VALUES ('www.mudra.org.in', 'Micro Units Development and Refinance Agency (MUDRA) Bank', 'http://www.mudra.org.in/', 'mumbai', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.bri.co.id', 'PT Bank Rakyat Indonesia (Persero) Tbk.', 'http://www.bri.co.id/', 'Jakarta, Indonesia', 'contain bank in page', 'by words', 'Indonesia', NULL);
INSERT INTO public.rb VALUES ('www.spv.no', 'Sparebanken Vest', 'http://www.spv.no', 'Bergen, Norway', 'contain bank in page', 'by words', 'Norway', NULL);
INSERT INTO public.rb VALUES ('www.kaupthing.com', 'Kaupþing banki hf.', 'http://www.kaupthing.com/', 'Reykjavík, Iceland', 'contain bank in page', 'by words', 'Iceland', NULL);
INSERT INTO public.rb VALUES ('fsiblbd.com', 'First Security Islami Bank Limited', 'http://fsiblbd.com', 'Dhaka, Bangladesh', 'contain bank in page', 'by words', 'Bangladesh', NULL);
INSERT INTO public.rb VALUES ('www.ziraat.com.tr', 'T.C. Ziraat Bankası A.Ş.', 'http://www.ziraat.com.tr', 'Ulus, Çankaya, Ankara', 'contain bank in page', 'by words', 'Turkey', NULL);
INSERT INTO public.rb VALUES ('www.bna.com.ar', 'Bank of the Argentine Nation', 'http://www.bna.com.ar', 'Buenos Aires, Argentina', 'contain bank in page', 'by words', 'Argentina', NULL);
INSERT INTO public.rb VALUES ('www.bcentral.cl', 'Central Bank of Chile', 'http://www.bcentral.cl', 'Agustinas 1180, Santiago, Chile', 'contain bank in page', 'by words', 'Chile', NULL);
INSERT INTO public.rb VALUES ('www.bsl.gov.sl', 'Bank of Sierra Leone', 'http://www.bsl.gov.sl/', 'Freetown, Sierra Leone', 'contain bank in page', 'by words', 'Sierra Leone', NULL);
INSERT INTO public.rb VALUES ('www.sparhafen.ch', 'Bank Sparhafen Zürich', 'https://www.sparhafen.ch', 'Fraumünsterstrasse 21, CH-8001 Zurich, Switzerland', 'contain bank in page', 'by words', 'Switzerland', NULL);
INSERT INTO public.rb VALUES ('firstrepublic.com', 'First Republic Bank', 'http://firstrepublic.com', 'San Francisco, CA, USA', 'contain bank in page', NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.swnbk.com', 'Southwestern National Bank', 'http://www.swnbk.com', 'Houston, Texas', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.bportugal.pt', 'Bank of PortugalBanco de Portugal', 'http://www.bportugal.pt', 'Lisbon, Portugal', 'contain bank in page', 'by words', 'Portugal', NULL);
INSERT INTO public.rb VALUES ('www.abr.ru', 'Bank Rossiya', 'http://www.abr.ru/', 'Saint Petersburg, Russia', 'contain bank in page', 'by words', 'Russia', NULL);
INSERT INTO public.rb VALUES ('www.shawbrook.co.uk', 'Shawbrook Bank Limited', 'http://www.shawbrook.co.uk', 'Brentwood, England, UK', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.mblbd.com', 'Mercantile Bank Limited', 'http://www.mblbd.com', 'Dhaka, Bangladesh', 'contain bank in page', 'by words', 'Bangladesh', NULL);
INSERT INTO public.rb VALUES ('www.cib.hu', 'CIB Bank', 'http://www.cib.hu/', 'Budapest, Hungary', 'contain bank in page', 'by words', 'Hungary', NULL);
INSERT INTO public.rb VALUES ('www.fnbsb.com', 'First National Bank South Dakota', 'http://www.fnbsb.com/', 'Yankton, South Dakota, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.absa.co.ug', 'Absa Bank Uganda Limited', 'https://www.absa.co.ug/', 'Kampala, Uganda', 'contain bank in page', 'by words', 'Uganda', NULL);
INSERT INTO public.rb VALUES ('www.clearviewfcu.org', 'Clearview Federal Credit Union', 'http://www.clearviewfcu.org', 'Moon Township, Pennsylvania', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.bsbrodnica.pl', 'Bank Spółdzielczy w Brodnicy', 'https://www.bsbrodnica.pl', 'ul. Kamionka 27, Brodnica, Poland', 'contain bank in page', 'by words', 'Poland', NULL);
INSERT INTO public.rb VALUES ('www.rbv.rs', 'Metals-banka a.d. Novi Sad', 'http://www.rbv.rs', 'Novi Sad, Serbia', 'contain bank in page', 'by words', 'Serbia', NULL);
INSERT INTO public.rb VALUES ('ibar.ge', 'Joint Stock Company "International Bank of Azerbaijan - Georgia"', 'http://ibar.ge', 'Tbilisi, Georgia', 'contain bank in page', 'by words', 'Georgia', NULL);
INSERT INTO public.rb VALUES ('www.bvr.de', 'Bundesverband der Deutschen Volksbanken und Raiffeisenbanken e. V. (BVR)', 'http://www.bvr.de', 'Berlin, Germany[1]', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.helaba.com', 'Helaba - Landesbank Hessen-Thüringen', 'http://www.helaba.com', 'Frankfurt and Erfurt, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.edbi.ir', 'Export Development Bank of Iran (EDBI)', 'http://www.edbi.ir', 'Tehran, Iran', 'contain bank in page', NULL, 'Iran', NULL);
INSERT INTO public.rb VALUES ('www.straumur.com', 'Straumur Investment Bank hf.', 'http://www.straumur.com/', 'Reykjavík, Iceland', 'contain bank in page', 'by words', 'Iceland', NULL);
INSERT INTO public.rb VALUES ('lbbw.de', 'Landesbank Baden-Württemberg', 'http://lbbw.de', 'Stuttgart, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('bcblbd.com', 'Bangladesh Commerce Bank Limited', 'http://bcblbd.com//', 'Dhaka, Bangladesh', 'contain bank in page', 'by words', 'Bangladesh', NULL);
INSERT INTO public.rb VALUES ('www.boe.gov.er', 'Bank of Eritrea', 'http://www.boe.gov.er', 'Asmara, Maekel, Eritrea', 'contain bank in page', 'by words', 'Eritrea', NULL);
INSERT INTO public.rb VALUES ('sc.com', 'Standard Chartered Bank', 'http://sc.com/bd', '67 Gulshan Avenue, Dhaka, Bangladesh', 'contain bank in page', 'by words', 'Bangladesh', NULL);
INSERT INTO public.rb VALUES ('www.fcmb.com', 'First City Monument Bank Ltd (FCMB)', 'http://www.fcmb.com', 'Lagos Island, Lagos, Lagos State, Nigeria', 'contain bank in page', 'by words', 'Nigeria', NULL);
INSERT INTO public.rb VALUES ('www.bnb.bg', 'Bulgarian National BankБългарска народна банкаBalgarska narodna banka', 'http://www.bnb.bg/?toLang=_EN', 'Sofia', 'contain bank in page', 'by words', 'Bulgaria', NULL);
INSERT INTO public.rb VALUES ('www.pbz.hr', 'Privredna banka Zagreb d.d.', 'http://www.pbz.hr', 'Zagreb, Croatia', 'contain bank in page', 'by words', 'Croatia', NULL);
INSERT INTO public.rb VALUES ('www.bcb.bm', 'Bermuda Commercial Bank', 'http://www.bcb.bm', 'Hamilton, Bermuda', 'contain bank in page', 'by words', 'Bermuda', NULL);
INSERT INTO public.rb VALUES ('www.bop.com.pk', 'Bank of Punjab', 'http://www.bop.com.pk', 'Lahore , Pakistan', 'contain bank in page', 'by words', 'Pakistan', NULL);
INSERT INTO public.rb VALUES ('www.sampath.lk', 'Sampath Bank PLC', 'https://www.sampath.lk', 'Colombo 02, Sri Lanka', 'contain bank in page', 'by words', 'Sri Lanka', NULL);
INSERT INTO public.rb VALUES ('adbl.gov.np', 'Agricultural Development Bank Limited', 'http://adbl.gov.np', 'Ramshah Path, Kathmandu', 'contain bank in page', 'by words', 'Nepal', NULL);
INSERT INTO public.rb VALUES ('www.sab.sachsen.de', 'Development Bank of Saxony', 'http://www.sab.sachsen.de/en/index.jsp', 'Leipzig, Saxony, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.chbank.com', 'Chong Hing Bank', 'http://www.chbank.com/', 'Hong Kong', 'contain bank in page', 'by words', 'Hong Kong', NULL);
INSERT INTO public.rb VALUES ('www.nbv.vu', 'National Bank of Vanuatu', 'http://www.nbv.vu/', 'Port Vila, Vanuatu', 'contain bank in page', 'by words', 'Vanuatu', NULL);
INSERT INTO public.rb VALUES ('www.boaghana.com', 'Bank of Africa Ghana Limited', 'http://www.boaghana.com', 'Accra, Ghana', 'contain bank in page', 'by words', 'Ghana', NULL);
INSERT INTO public.rb VALUES ('www.tinkoff.ru', 'Tinkoff Bank', 'https://www.tinkoff.ru/', 'Moscow, Russia', 'contain bank in page', 'by words', 'Russia', NULL);
INSERT INTO public.rb VALUES ('www.varengold.de', 'Varengold Bank', 'https://www.varengold.de/', 'Hamburg, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.kardan.ir', 'Kardan Investment Bank', 'http://www.kardan.ir/', 'Tehran, Iran', 'contain bank in page', 'by words', 'Iran', NULL);
INSERT INTO public.rb VALUES ('www.nbcb.cn', 'Bank of Ningbo', 'http://www.nbcb.cn', 'Ningbo, China', 'contain bank in page', 'by words', 'China', NULL);
INSERT INTO public.rb VALUES ('cbl.gov.ly', 'Central Bank of Libyaمصرف ليبيا المركزي', 'http://cbl.gov.ly/en', 'Al Fatah Street, Tripoli', 'contain bank in page', NULL, 'Libya', NULL);
INSERT INTO public.rb VALUES ('www.washingtonfederal.com', 'WaFd Bank (Formerly Washington Federal, Inc.)', 'https://www.washingtonfederal.com/', 'Seattle, Washington, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.voban.co.rs', 'Vojvođanska banka', 'https://www.voban.co.rs/', 'Novi Sad, Serbia', 'contain bank in page', 'by words', 'Serbia', NULL);
INSERT INTO public.rb VALUES ('www.bsi.ir', 'Bank Saderat Iran', 'http://www.bsi.ir/', 'Bank Saderat Tower, 43 Somayeh Avenue, Tehran, Iran', 'contain bank in page', 'by words', 'Iran', NULL);
INSERT INTO public.rb VALUES ('www.citadele.lv', 'Banka Citadele AS', 'http://www.citadele.lv', 'Riga, Latvia', 'contain bank in page', 'by words', 'Latvia', NULL);
INSERT INTO public.rb VALUES ('en.fhb.hu', 'FHB Mortgage Bank Nyrt.', 'http://en.fhb.hu/fhb-bank', 'Budapest, Hungary', 'contain bank in page', 'by words', 'Hungary', NULL);
INSERT INTO public.rb VALUES ('www.cbi.iq', 'Central Bank of Iraqالبنك المركزي العراقي', 'http://www.cbi.iq', 'Baghdad, Iraq', 'contain bank in page', 'by words', 'Iraq', NULL);
INSERT INTO public.rb VALUES ('www.seb.lt', 'AB SEB Bankas', 'http://www.seb.lt', 'Vilnius , Lithuania ', 'contain bank in page', 'by words', 'Lithuania', NULL);
INSERT INTO public.rb VALUES ('navyzebra.com', 'BankCard Services', 'http://navyzebra.com', '21281 Western Ave, Torrance, California, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.aib.af', 'Afghanistan International Bank', 'https://www.aib.af', 'Airport Road, BiBi Mahro
, Kabul, Afghanistan', 'contain bank in page', NULL, 'Afghanistan', NULL);
INSERT INTO public.rb VALUES ('www.cbe.org.eg', 'Central Bank of Egyptالبنك المركزي المصري', 'http://www.cbe.org.eg/en/Pages/default.aspx', 'Cairo', 'contain bank in page', 'by words', 'Egypt', NULL);
INSERT INTO public.rb VALUES ('www.ablv.com', 'ABLV Bank, AS', 'http://www.ablv.com', 'Riga, Latvia', 'contain bank in page', 'by words', 'Latvia', NULL);
INSERT INTO public.rb VALUES ('www.iraqiislamicb.com', 'Iraqi Islamic Bank for Investment and Development', 'http://www.iraqiislamicb.com', 'Baghdad, Iraq', 'contain bank in page', NULL, 'Iraq', NULL);
INSERT INTO public.rb VALUES ('www.nbc.ca', 'National Bank of Canada', 'http://www.nbc.ca', 'Montreal, Quebec, Canada', 'contain bank in page', 'by words', 'Canada', NULL);
INSERT INTO public.rb VALUES ('www.bim.ir', 'Bank of Industry and Mine', 'http://www.bim.ir', 'Tehran, Iran', 'contain bank in page', 'by words', 'Iran', NULL);
INSERT INTO public.rb VALUES ('www.bph.pl', 'Bank BPH Spółka Akcyjna', 'https://www.bph.pl/pl/', 'Gdańsk, Poland', 'contain bank in page', 'by words', 'Poland', NULL);
INSERT INTO public.rb VALUES ('bta.kz', 'BTA Bank JSC', 'http://bta.kz', 'Almaty, Kazakhstan', 'contain bank in page', 'by words', 'Kazakhstan', NULL);
INSERT INTO public.rb VALUES ('www.lkb.lv', 'Latvijas Krājbanka', 'http://www.lkb.lv/en/', 'Riga, Latvia', 'contain bank in page', NULL, 'Latvia', NULL);
INSERT INTO public.rb VALUES ('www.hsbc.com.cn', 'HSBC Bank (China) Company Limited', 'http://www.hsbc.com.cn/', 'Shanghai, People''s Republic of China', 'contain bank in page', NULL, 'China', NULL);
INSERT INTO public.rb VALUES ('jamiiborabank.co.ke', 'Jamii Bora Bank', 'http://jamiiborabank.co.ke/', 'Nairobi, Kenya', 'contain bank in page', 'by words', 'Kenya', NULL);
INSERT INTO public.rb VALUES ('www.cbonline.co.uk', 'Clydesdale Bank plcBanca Dail Chluaidh', 'http://www.cbonline.co.uk', 'Glasgow, Scotland, UK', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.gib.com', 'Gulf International Bank', 'http://www.gib.com/', 'Manama, Bahrain', 'contain bank in page', 'by words', 'Bahrain', NULL);
INSERT INTO public.rb VALUES ('www.sparda.de', 'Deutsche Kreditbank', 'http://www.sparda.de', 'Frankfurt am Main, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.zabg.co.zw', 'Allied Bank Zimbabwe Limited', 'http://www.zabg.co.zw/', 'Harare, Zimbabwe', 'contain bank in page', 'by words', 'Zimbabwe', NULL);
INSERT INTO public.rb VALUES ('www.sinopac.com', 'Bank SinoPac永豐金融控股股份有限公司', 'http://www.sinopac.com/', 'Taiwan', 'contain bank in page', 'by words', 'Taiwan', NULL);
INSERT INTO public.rb VALUES ('ubgb.in', 'Uttar Bihar Gramin Bank', 'http://ubgb.in/', 'Muzaffarpur, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.shonai.co.jp', 'Shonai Bank', 'http://www.shonai.co.jp/', 'Tsuruoka, Japan', 'contain bank in page', NULL, 'Japan', NULL);
INSERT INTO public.rb VALUES ('ebrd.com', 'European Bank for Reconstruction and Development', 'http://ebrd.com', 'London, EC2United Kingdom', 'contain bank in page', NULL, 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('en.bgk.pl', 'Bank Gospodarstwa Krajowego', 'http://en.bgk.pl', 'Aleje Jerozolimskie 7Warsaw, Poland', 'contain bank in page', 'by words', 'Poland', NULL);
INSERT INTO public.rb VALUES ('gnb.pl', 'Getin Noble Bank', 'http://gnb.pl/', 'ul. Przyokopowa 33, 01-208, Warsaw, Poland', 'contain bank in page', 'by words', 'Poland', NULL);
INSERT INTO public.rb VALUES ('fbme.com', 'FBME BANK', 'http://fbme.com', 'Dar es Salaam, Tanzania', 'contain bank in page', 'by words', 'Tanzania', NULL);
INSERT INTO public.rb VALUES ('www.shengjingbank.com.cn', 'Shengjing Bank', 'http://www.shengjingbank.com.cn', 'People''s Republic of China ', 'contain bank in page', 'by words', 'China', NULL);
INSERT INTO public.rb VALUES ('www.smn.no', 'SpareBank 1 SMN', 'http://www.smn.no', 'Trondheim, Norway', 'contain bank in page', 'by words', 'Norway', NULL);
INSERT INTO public.rb VALUES ('www.jbic.go.jp', 'Japan Bank for International Cooperation', 'https://www.jbic.go.jp/en/', 'Tokyo, Japan', 'contain bank in page', 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.uobusa.com', 'United Orient Bank', 'http://www.uobusa.com', 'Chinatown, ManhattanNew York City, New York, U.S.', 'contain bank in page', 'by words', 'China', NULL);
INSERT INTO public.rb VALUES ('www.nordea.no', 'Nordea Bank Norge ASA', 'http://www.nordea.no/', 'Oslo, Norway', 'contain bank in page', 'by words', 'Norway', NULL);
INSERT INTO public.rb VALUES ('www.tmb.in', 'Tamilnad Mercantile Bank Ltd', 'http://www.tmb.in/', 'Thoothukudi, Tamil Nadu, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.mmftb.com', 'Myanma Foreign Trade Bank', 'http://www.mmftb.com', 'No. 80-86, Mahabandoola Garden Street, Kyauktada Township, Yangon, Myanmar', 'contain bank in page', 'by words', 'Myanmar', NULL);
INSERT INTO public.rb VALUES ('www.bma.com.af', 'Bank-e-Millie Afghan', 'http://www.bma.com.af', 'Ebn-e-Sina Rd, Kabul, Afghanistan', 'contain bank in page', 'by words', 'Afghanistan', NULL);
INSERT INTO public.rb VALUES ('www.desiraq.com', 'Dar Es Salaam Investment Bank', 'http://www.desiraq.com', 'Baghdad, Iraq', 'contain bank in page', NULL, 'Iraq', NULL);
INSERT INTO public.rb VALUES ('english.mp.is', 'MP banki hf.', 'http://english.mp.is/', 'Reykjavik, Iceland', 'contain bank in page', 'by words', 'Iceland', NULL);
INSERT INTO public.rb VALUES ('aib.ie', 'Allied Irish Banks, p.l.c.', 'https://aib.ie/', 'Ballsbridge, Dublin, Ireland', 'contain bank in page', 'by words', 'Ireland', NULL);
INSERT INTO public.rb VALUES ('www.mercantile.co.il', 'Mercantile Discount Bank Ltd.', 'https://www.mercantile.co.il/', 'Kirya Tower, Tel Aviv, Israel', 'contain bank in page', 'by words', 'Israel', NULL);
INSERT INTO public.rb VALUES ('www.raiffeisen.ro', 'Raiffeisen Bank', 'http://www.raiffeisen.ro', 'Bucharest, Romania', 'contain bank in page', 'by words', 'Romania', NULL);
INSERT INTO public.rb VALUES ('www.hsbc.com.tr', 'HSBC Bank A.Ş.', 'http://www.hsbc.com.tr/', 'Istanbul, Turkey', 'contain bank in page', 'by words', 'Turkey', NULL);
INSERT INTO public.rb VALUES ('www.abchina.com', 'Agricultural Bank of China', 'http://www.abchina.com', 'Beijing, China', 'contain bank in page', 'by words', 'China', NULL);
INSERT INTO public.rb VALUES ('www.saharabank.com.ly', 'Sahara Bank', 'http://www.saharabank.com.ly/', 'Tripoli ', 'contain bank in page', 'by words', 'Libya', NULL);
INSERT INTO public.rb VALUES ('www.jsafra.com', 'Bank Jacob Safra Switzerland', 'http://www.jsafra.com/', 'Geneva, Switzerland', 'contain bank in page', NULL, 'Switzerland', NULL);
INSERT INTO public.rb VALUES ('www.qib.com.qa', 'Qatar Islamic Bank (Q.P.S.C)', 'https://www.qib.com.qa', 'Doha, Qatar', 'contain bank in page', 'by words', 'Qatar', NULL);
INSERT INTO public.rb VALUES ('www.hsbc.com.ar', 'HSBC Bank Argentina S.A.', 'http://www.hsbc.com.ar/', 'Buenos Aires, Argentina', 'contain bank in page', NULL, 'Argentina', NULL);
INSERT INTO public.rb VALUES ('www.zaba.hr', 'Zagrebačka banka d.d.', 'http://www.zaba.hr/', 'Trg bana Josipa Jelačića 10 [1], Croatia', 'contain bank in page', 'by words', 'Croatia', NULL);
INSERT INTO public.rb VALUES ('www.bcm.mr', 'Central Bank of Mauritaniaالبنك المركزي الموريتاني', 'http://www.bcm.mr', 'Nouakchott', 'contain bank in page', 'by words', 'Mauritania', NULL);
INSERT INTO public.rb VALUES ('www.girobankltd.com', 'Giro Commercial Bank', 'http://www.girobankltd.com', 'Nairobi, Kenya', 'contain bank in page', 'by words', 'Kenya', NULL);
INSERT INTO public.rb VALUES ('www.addiko.com', 'Addiko Bank', 'https://www.addiko.com', 'Klagenfurt, Austria', 'contain bank in page', NULL, 'Austria', NULL);
INSERT INTO public.rb VALUES ('www.cbn.gov.ng', 'Central Bank of Nigeria', 'http://www.cbn.gov.ng', 'Abuja, FCT, Nigeria', 'contain bank in page', 'by words', 'Nigeria', NULL);
INSERT INTO public.rb VALUES ('www.bni.co.id', 'Bank Negara Indonesia', 'http://www.bni.co.id/', 'Wisma 46Jakarta, Indonesia', 'contain bank in page', 'by words', 'Indonesia', NULL);
INSERT INTO public.rb VALUES ('eabr.org', 'Eurasian Development Bank', 'https://eabr.org', 'Almaty, Kazakhstan', 'contain bank in page', 'by words', 'Kazakhstan', NULL);
INSERT INTO public.rb VALUES ('www.dcb.co.tz', 'Dar es Salaam Community Bank', 'http://www.dcb.co.tz/', 'Dar es Salaam, Tanzania', 'contain bank in page', 'by words', 'Tanzania', NULL);
INSERT INTO public.rb VALUES ('ubsi-inc.com', 'United Bankshares, Inc.', 'https://ubsi-inc.com', 'Charleston, West Virginia, United States', 'contain bank in page', NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.mnb.hu', 'Magyar Nemzeti Bank', 'http://www.mnb.hu/en', 'Liberty Square, Budapest, Hungary', 'contain bank in page', 'by words', 'Hungary', NULL);
INSERT INTO public.rb VALUES ('www.tmb.cd', 'Trust Merchant Bank (TMB)', 'http://www.tmb.cd/', '1223 Avenue Lumumba, Lubumbashi, Democratic Republic of Congo', 'contain bank in page', NULL, 'Democratic Republic of the Congo', NULL);
INSERT INTO public.rb VALUES ('www.abs.ch', 'Alternative Bank Schweiz (ABS)', 'https://www.abs.ch/en', 'Olten, Switzerland', 'contain bank in page', 'by words', 'Switzerland', NULL);
INSERT INTO public.rb VALUES ('www.ibg.gr', 'Investment Bank of Greece', 'http://www.ibg.gr', 'Athens, Greece', 'contain bank in page', 'by words', 'Greece', NULL);
INSERT INTO public.rb VALUES ('www.cncbinternational.com', 'CITIC Bank International Limited', 'https://www.cncbinternational.com/', 'Hong Kong', 'contain bank in page', 'by words', 'Hong Kong', NULL);
INSERT INTO public.rb VALUES ('www.mizuhocbk.com', 'Mizuho Corporate Bank, Ltd.', 'http://www.mizuhocbk.com/', 'Tokyo, Japan', 'contain bank in page', 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.cfxbank.co.zw', 'CFX Bank', 'http://www.cfxbank.co.zw', 'Harare, Zimbabwe', 'contain bank in page', 'by words', 'Zimbabwe', NULL);
INSERT INTO public.rb VALUES ('www.alpha.gr', 'Alpha Bank A.E.Αλφα Τράπεζα Α.Ε.', 'http://www.alpha.gr/page/default.asp?id=4&la=2', 'Athens, Greece', 'contain bank in page', 'by words', 'Greece', NULL);
INSERT INTO public.rb VALUES ('www.tgh.na', 'Trustco Bank Namibia Ltd.', 'https://www.tgh.na/our-profile/banking/', 'Ongwediva, Namibia', 'contain bank in page', 'by words', 'Namibia', NULL);
INSERT INTO public.rb VALUES ('www.ybonline.co.uk', 'Yorkshire Bank', 'http://www.ybonline.co.uk', 'Leeds, England', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.snn.no', 'Sparebanken Nord-Norge', 'http://www.snn.no', 'Tromsø, Norway', 'contain bank in page', 'by words', 'Norway', NULL);
INSERT INTO public.rb VALUES ('www.seylan.lk', 'Seylan Bank PLC', 'http://www.seylan.lk', 'Colombo, Sri Lanka', 'contain bank in page', 'by words', 'Sri Lanka', NULL);
INSERT INTO public.rb VALUES ('www.bibessen.de', 'Bank im Bistum Essen eG', 'http://www.bibessen.de/', 'Essen, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.cdh-malawi.com', 'CDH Investment Bank', 'http://www.cdh-malawi.com/', 'Blantyre, Malawi', 'contain bank in page', NULL, 'Malawi', NULL);
INSERT INTO public.rb VALUES ('www.mbank.pl', 'mBank SA', 'http://www.mbank.pl', 'Poland', 'contain bank in page', 'by words', 'Poland', NULL);
INSERT INTO public.rb VALUES ('www.ucpb.com', 'United Coconut Planters Bank (UCPB)', 'https://www.ucpb.com', 'Makati, Philippines', 'contain bank in page', 'by words', 'Philippines', NULL);
INSERT INTO public.rb VALUES ('www.bgzbnpparibas.pl', 'Bank BGŻ BNP Paribas', 'http://www.bgzbnpparibas.pl', 'Warsaw, Poland', 'contain bank in page', 'by words', 'Poland', NULL);
INSERT INTO public.rb VALUES ('www.shinhan.com', 'Shinhan Bank 신한은행', 'http://www.shinhan.com/en/index.jsp', 'Seoul, South Korea', 'contain bank in page', NULL, 'South Korea', NULL);
INSERT INTO public.rb VALUES ('www.bancaditalia.it', 'Bank of ItalyBanca d''Italia', 'http://www.bancaditalia.it/homepage/index.html', 'Palazzo Koch, Rome, Italy', 'contain bank in page', 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.ecb.europa.eu', 'European Central Bank', 'https://www.ecb.europa.eu', 'Ostend district, Frankfurt, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.nbf.ae', 'National Bank of Fujairah', 'https://www.nbf.ae/en', 'Hamad Bin Abdullah Street, PO Box 887
Al Fujairah Building, Khalid Bin Waleed Street, PO Box
            2979, Dubai, Fujairah, United Arab Emirates
        ', 'contain bank in page', 'by words', 'United Arab Emirates', NULL);
INSERT INTO public.rb VALUES ('www.smbc.co.jp', 'Sumitomo Mitsui Banking Corporation', 'https://www.smbc.co.jp/global/', 'Chiyoda-ku, Tokyo, Japan', 'contain bank in page', 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.kenanga.com.my', 'Kenanga Investment Bank Berhad', 'http://www.kenanga.com.my/', 'Kenanga Tower237 Jalan Tun Razak, Kuala Lumpur, Malaysia', 'contain bank in page', 'by words', 'Malaysia', NULL);
INSERT INTO public.rb VALUES ('www.kentreliance.co.uk', 'OneSavings Bank plc trading as Kent Reliance', 'http://www.kentreliance.co.uk', 'Chatham, Kent, United Kingdom', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.africanalliance.com', 'African Alliance Investment Bank', 'http://www.africanalliance.com/', 'Johannesburg, South Africa', 'contain bank in page', 'by words', 'South Africa', NULL);
INSERT INTO public.rb VALUES ('www.hlb.com.my', 'Hong Leong Bank Berhad', 'http://www.hlb.com.my', 'Menara Hong Leong, No.6, Jalan Damanlela, Bukit Damansara, 50490, Kuala Lumpur, Malaysia
        ', 'contain bank in page', 'by words', 'Malaysia', NULL);
INSERT INTO public.rb VALUES ('www.cbnco.com', 'Canadian Bank Note Company, Limited', 'http://www.cbnco.com/', 'Ottawa, Ontario, Canada', 'contain bank in page', 'by words', 'Canada', NULL);
INSERT INTO public.rb VALUES ('www.santander.de', 'Santander Consumer Bank AG', 'http://www.santander.de/', 'Mönchengladbach, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.pubalibangla.com', 'Pubali Bank Limited', 'http://www.pubalibangla.com/', 'Dhaka, Bangladesh', 'contain bank in page', NULL, 'Bangladesh', NULL);
INSERT INTO public.rb VALUES ('www.bacb.co.uk', 'British Arab Commercial Bank PLC', 'http://www.bacb.co.uk', 'London, England, UK', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.stlouisfed.org', 'Federal Reserve Bank of St. Louis', 'https://www.stlouisfed.org/', 'Broadway and Locust StreetSt. Louis, Missouri, USA', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.nbs.sk', 'National Bank of SlovakiaNárodná banka Slovenska', 'http://www.nbs.sk', 'Bratislava', 'contain bank in page', 'by words', 'Slovakia', NULL);
INSERT INTO public.rb VALUES ('www.emiratesnbd.com', 'Emirates NBD Bank PJSC', 'http://www.emiratesnbd.com', 'Emirates NBD (Head Office building) Baniyas Road Deira in Dubai, United Arab Emirates
        ', 'contain bank in page', 'by words', 'United Arab Emirates', NULL);
INSERT INTO public.rb VALUES ('www.dime.com', 'Dime Community Bank', 'https://www.dime.com/', 'Brooklyn, New York, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.hsbc.com.br', 'HSBC Bank Brasil S.A. - Banco Múltiplo', 'http://www.hsbc.com.br/', 'Curitiba, Brazil', 'contain bank in page', 'by words', 'Brazil', NULL);
INSERT INTO public.rb VALUES ('www.sdb.com.cn', 'Shenzhen Development Bank', 'http://www.sdb.com.cn/website/page/files/wcms/SDB/primary/en/InvestorRelations/', 'Shenzhen, China', 'contain bank in page', 'by words', 'China', NULL);
INSERT INTO public.rb VALUES ('db.com', 'Deutsche Bank AG', 'http://db.com', 'Deutsche Bank Twin TowersFrankfurt, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('nibl.com.np', 'Nepal Investment Bank Limited', 'http://nibl.com.np', 'Durbar Marg Kathmandu, Nepal', 'contain bank in page', 'by words', 'Nepal', NULL);
INSERT INTO public.rb VALUES ('www.airdriesavingsbank.com', 'Airdrie Savings Bank', 'http://www.airdriesavingsbank.com', 'Airdrie, Scotland, UK', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.muamalat.com.my', 'Bank Muamalat Malaysia Berhadبڠك معاملة مليسيا', 'http://www.muamalat.com.my/', 'Kuala Lumpur, Malaysia, Malaysia', 'contain bank in page', 'by words', 'Malaysia', NULL);
INSERT INTO public.rb VALUES ('www.boc-ins.cn', 'Bank of China Insurance Company Limited', 'http://www.boc-ins.cn', 'Beijing, China', 'contain bank in page', 'by words', 'China', NULL);
INSERT INTO public.rb VALUES ('www.abl.com', 'Allied Bank Limited', 'http://www.abl.com', 'Lahore, Pakistan', 'contain bank in page', 'by words', 'Pakistan', NULL);
INSERT INTO public.rb VALUES ('www.ghana.accessbankplc.com', 'Access Bank (Ghana) PLC', 'https://www.ghana.accessbankplc.com/', 'Accra, Ghana', 'contain bank in page', 'by words', 'Ghana', NULL);
INSERT INTO public.rb VALUES ('www.hpb.hr', 'Hrvatska poštanska banka PLC', 'https://www.hpb.hr/en', 'Jurišićeva ulica 4, Zagreb, Croatia', 'contain bank in page', 'by words', 'Croatia', NULL);
INSERT INTO public.rb VALUES ('www.bspb.ru', 'PJSC Bank Saint Petersburg', 'http://www.bspb.ru/', 'Saint Petersburg, Russia', 'contain bank in page', 'by words', 'Russia', NULL);
INSERT INTO public.rb VALUES ('www.mahagramin.in', 'Maharashtra Gramin Bank', 'https://www.mahagramin.in/', 'Aurangabad, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.cba.co.tz', 'Commercial Bank of Africa (Tanzania)', 'http://www.cba.co.tz/', 'Amani Place, Ohio Street, Dar es Salaam, Tanzania', 'contain bank in page', 'by words', 'Tanzania', NULL);
INSERT INTO public.rb VALUES ('www.tcmb.gov.tr', 'Central Bank of the Republic of TurkeyTürkiye Cumhuriyet Merkez Bankası', 'http://www.tcmb.gov.tr', 'Ankara, Turkey', 'contain bank in page', 'by words', 'Turkey', NULL);
INSERT INTO public.rb VALUES ('www.oenb.at', 'Oesterreichische Nationalbank', 'https://www.oenb.at', 'Vienna', 'contain bank in page', 'by words', 'Austria', NULL);
INSERT INTO public.rb VALUES ('www.homecredit.ru', 'Home Credit & Finance Bank', 'http://www.homecredit.ru', 'Moscow, Russia', 'contain bank in page', 'by words', 'Russia', NULL);
INSERT INTO public.rb VALUES ('www.natwest.com', 'National Westminster Bank Plc', 'http://www.natwest.com', '250 Bishopsgate, London, E1 6AJ', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.hsbc.pl', 'HSBC Bank Polska S.A.', 'http://www.hsbc.pl', 'Warsaw, Poland', 'contain bank in page', 'by words', 'Poland', NULL);
INSERT INTO public.rb VALUES ('www.newyorkfed.org', 'Federal Reserve Bank of New York', 'http://www.newyorkfed.org', 'Federal Reserve Bank of New York BuildingNew York, New York, USA', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.chicagofed.org', 'Federal Reserve Bank of Chicago', 'https://www.chicagofed.org/', '230 S LaSalle StreetChicago, IL, USA', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.sbp.org.pk', 'State Bank of Pakistanبینک دَولتِ پاکِستان', 'http://www.sbp.org.pk', 'Karachi, Pakistan', 'contain bank in page', 'by words', 'Pakistan', NULL);
INSERT INTO public.rb VALUES ('www.eximb.com', 'JSC «Ukreximbank» (Ukrainian: «Укрексімбанк»)', 'http://www.eximb.com/eng/', 'Kiev, Ukraine', 'contain bank in page', NULL, 'Ukraine', NULL);
INSERT INTO public.rb VALUES ('www.bnz.co.nz', 'Bank of New Zealand', 'http://www.bnz.co.nz', 'Auckland, New Zealand', 'contain bank in page', 'by words', 'New Zealand', NULL);
INSERT INTO public.rb VALUES ('www.unicredit.ro', 'UniCredit Bank', 'https://www.unicredit.ro/', 'Bucharest, Romania', 'contain bank in page', 'by words', 'Romania', NULL);
INSERT INTO public.rb VALUES ('www.bcb.gob.bo', 'Central Bank of BoliviaBanco Central de Bolivia (in Spanish)', 'http://www.bcb.gob.bo', 'La Paz, Bolivia', 'contain bank in page', 'by words', 'Bolivia', NULL);
INSERT INTO public.rb VALUES ('www.bmce-intl.co.uk', 'BMCE Bank International Plc.', 'http://www.bmce-intl.co.uk/', 'LondonUnited Kingdom', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.cavmont.com.zm', 'Cavmont Bank Limited', 'http://www.cavmont.com.zm/', '2374 Thabo Mbeki Road, Lusaka, Zambia', 'contain bank in page', 'by words', 'Zambia', NULL);
INSERT INTO public.rb VALUES ('rbb.com.np', 'Rastriya Banijya Bank (RBB)', 'http://rbb.com.np', 'Singha Durbar Plaza, Kathmandu, Nepal', 'contain bank in page', 'by words', 'Nepal', NULL);
INSERT INTO public.rb VALUES ('www.sebgroup.com', 'Skandinaviska Enskilda Banken AB', 'http://www.sebgroup.com', 'Stockholm, Sweden', 'contain bank in page', 'by words', 'Sweden', NULL);
INSERT INTO public.rb VALUES ('www.aiib.org', 'Asian Infrastructure Investment Bank', 'http://www.aiib.org', 'Beijing, China', 'contain bank in page', 'by words', 'China', NULL);
INSERT INTO public.rb VALUES ('www.ahli.com', 'Jordan Ahli Bank', 'http://www.ahli.com/', 'Queen Noor Street, Shemesani, Amman, Jordan', 'contain bank in page', 'by words', 'Jordan', NULL);
INSERT INTO public.rb VALUES ('www.hsbc.ca', 'HSBC Bank Canada', 'http://www.hsbc.ca/', '885 West Georgia StreetVancouver, British ColumbiaV6C 3E9', 'contain bank in page', 'by words', 'Georgia', NULL);
INSERT INTO public.rb VALUES ('www.asbhawaii.com', 'American Savings Bank', 'http://www.asbhawaii.com', 'Honolulu, Hawaii, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.glkb.ch', 'Glarner Kantonalbank', 'http://www.glkb.ch/', 'Glarus, Switzerland', 'contain bank in page', 'by words', 'Switzerland', NULL);
INSERT INTO public.rb VALUES ('www.brh.net', 'Bank of the Republic of Haiti', 'http://www.brh.net', 'Port-au-Prince, Haiti', 'contain bank in page', NULL, 'Haiti', NULL);
INSERT INTO public.rb VALUES ('www.bcn.gob.ni', 'Central Bank of NicaraguaBanco Central de Nicaragua', 'http://www.bcn.gob.ni', 'Managua, Nicaragua', 'contain bank in page', NULL, 'Nicaragua', NULL);
INSERT INTO public.rb VALUES ('www.hsbc.com.tw', 'HSBC Bank (Taiwan) Limited滙豐(台灣)商業銀行股份有限公司', 'http://www.hsbc.com.tw/', 'Taipei, Taiwan', 'contain bank in page', 'by words', 'Taiwan', NULL);
INSERT INTO public.rb VALUES ('www.bkt.com.al', 'Banka Kombëtare Tregtare (BKT)', 'http://www.bkt.com.al/', 'Tirana, Albania', 'contain bank in page', 'by words', 'Albania', NULL);
INSERT INTO public.rb VALUES ('www.comdirect.de', 'comdirect bank Aktiengesellschaft', 'https://www.comdirect.de/', 'Quickborn, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('unity.co.uk', 'Unity Trust Bank', 'http://unity.co.uk', 'Birmingham ', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.firsthorizon.com', 'First Horizon Bank', 'https://www.firsthorizon.com', 'Memphis, Tennessee, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.nbu.uz', 'National Bank for foreign economic activity of the Republic of Uzbekistan', 'http://www.nbu.uz/en', 'Tashkent, Uzbekistan', 'contain bank in page', NULL, 'Uzbekistan', NULL);
INSERT INTO public.rb VALUES ('bpi.com.ph', 'Bank of the Philippine Islands', 'http://bpi.com.ph', 'Makati, Philippines', 'contain bank in page', 'by words', 'Philippines', NULL);
INSERT INTO public.rb VALUES ('www.imb.com', 'IndyMac Bank', 'http://www.imb.com/', 'Pasadena, California, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.richmondfed.org', 'Federal Reserve Bank of Richmond', 'https://www.richmondfed.org/', '701 E Byrd St Richmond, Virginia, USA', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('ke.ncbagroup.com', 'NCBA Bank Kenya Plc', 'https://ke.ncbagroup.com/', 'Nairobi, Kenya', 'contain bank in page', 'by words', 'Kenya', NULL);
INSERT INTO public.rb VALUES ('www.etdb.org', 'ECO Trade and Development Bank', 'http://www.etdb.org/', 'Şişli, Istanbul, Turkey', 'contain bank in page', NULL, 'Turkey', NULL);
INSERT INTO public.rb VALUES ('www.eadb.org', 'East African Development Bank', 'http://www.eadb.org/', '4 Nile Avenue, Kampala, Uganda', 'contain bank in page', 'by words', 'Uganda', NULL);
INSERT INTO public.rb VALUES ('www.teb.com.tr', 'Türk Ekonomi Bankası A.Ş.', 'http://www.teb.com.tr', 'Istanbul, Turkey', 'contain bank in page', 'by words', 'Turkey', NULL);
INSERT INTO public.rb VALUES ('www.sdb.lk', 'Sanasa Development Bank PLC (SDB)', 'http://www.sdb.lk/', 'Kirulapone, Sri Lanka', 'contain bank in name', NULL, 'Sri Lanka', NULL);
INSERT INTO public.rb VALUES ('www.raiffeisen.ru', 'Raiffeisenbank', 'http://www.raiffeisen.ru', 'Moscow, Russia', 'contain bank in page', 'by words', 'Russia', NULL);
INSERT INTO public.rb VALUES ('arkada.ua', 'Arkada Bank', 'http://arkada.ua/', 'Kiev, Ukraine', 'contain bank in page', 'by words', 'Ukraine', NULL);
INSERT INTO public.rb VALUES ('www.marquettesavings.com', 'Marquette Savings Bank', 'https://www.marquettesavings.com', 'Erie, Pennsylvania, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.hnb.hr', 'Croatian National BankHrvatska narodna banka', 'http://www.hnb.hr', 'Trg hrvatskih velikana 3Zagreb', 'contain bank in page', 'by words', 'Croatia', NULL);
INSERT INTO public.rb VALUES ('www.bcr.gob.sv', 'Central Reserve Bank of El SalvadorBanco Central de La reserva federal us de El Salvador', 'http://www.bcr.gob.sv', 'San Salvador', 'contain bank in page', 'by words', 'El Salvador', NULL);
INSERT INTO public.rb VALUES ('www.banque-centrale.dj', 'Central Bank of Djiboutiالبنك المركزي الجيبوتي', 'http://www.banque-centrale.dj', 'Djibouti', 'contain bank in page', 'by words', 'Djibouti', NULL);
INSERT INTO public.rb VALUES ('www.cbo.gov.om', 'Central Bank of Omanالبنك المركزي العماني', 'https://www.cbo.gov.om/', 'Ruwi', 'contain bank in page', 'by words', 'Oman', NULL);
INSERT INTO public.rb VALUES ('aryavart-rrb.com', 'Aryavart Bank', 'http://aryavart-rrb.com/', 'Lucknow, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.cmbchina.com', 'China Merchants Bank Company Limited 招商银行股份有限公司', 'http://www.cmbchina.com//', 'Futian District, Shenzhen, Guangdong, China', 'contain bank in page', 'by words', 'China', NULL);
INSERT INTO public.rb VALUES ('www.fnbtanzania.co.tz', 'First National Bank Tanzania', 'https://www.fnbtanzania.co.tz/', 'Dar-es-Salaam, Tanzania', 'contain bank in page', 'by words', 'Tanzania', NULL);
INSERT INTO public.rb VALUES ('www.bcra.gov.ar', 'Central Bank of the Argentine RepublicBanco Central de la República Argentina', 'https://www.bcra.gov.ar', 'Buenos Aires', 'contain bank in page', 'by words', 'Argentina', NULL);
INSERT INTO public.rb VALUES ('sjiblbd.com', 'Shahjalal Islami Bank Limited', 'http://sjiblbd.com/', 'Dhaka, Bangladesh', 'contain bank in page', 'by words', 'Bangladesh', NULL);
INSERT INTO public.rb VALUES ('www.frbsf.org', 'Federal Reserve Bank of San Francisco', 'http://www.frbsf.org', '101 Market Street San Francisco, California, USA', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('gnty.com', 'Guaranty Bank & Trust', 'http://gnty.com', 'Addison, Texas[1], USA', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.cbs.gov.ws', 'Central Bank of Samoa', 'http://www.cbs.gov.ws', 'Apia, Samoa', 'contain bank in page', 'by words', 'Samoa', NULL);
INSERT INTO public.rb VALUES ('www.boarwanda.com', 'Bank of Africa Rwanda Limited', 'http://www.boarwanda.com/', 'Kigali, Rwanda', 'contain bank in page', 'by words', 'Rwanda', NULL);
INSERT INTO public.rb VALUES ('www.openbank.es', 'Open Bank, S.A.', 'https://www.openbank.es/en', 'Madrid, Spain', 'contain bank in page', 'by words', 'Spain', NULL);
INSERT INTO public.rb VALUES ('www.fwbl.com.pk', 'First Women Bank Limited', 'http://www.fwbl.com.pk/', 'Principal office Karachi, Pakistan', 'contain bank in page', 'by words', 'Pakistan', NULL);
INSERT INTO public.rb VALUES ('bisb.com', 'Bahrain Islamic Bank', 'http://bisb.com', 'Al Salam Tower, Building 722, Road 1708, Block 317, Manama, Bahrain', 'contain bank in page', 'by words', 'Bahrain', NULL);
INSERT INTO public.rb VALUES ('www.cgbchina.com.cn', 'China Guangfa Bank', 'http://www.cgbchina.com.cn/', 'Guangzhou, Guangdong,People''s Republic of China', 'contain bank in page', 'by words', 'China', NULL);
INSERT INTO public.rb VALUES ('www.unb.com', 'Union National Bank', 'https://www.unb.com', 'Abu Dhabi, United Arab Emirates', 'contain bank in page', 'by words', 'United Arab Emirates', NULL);
INSERT INTO public.rb VALUES ('www.eestipank.ee', 'Bank of EstoniaEesti Pank', 'https://www.eestipank.ee/', 'Tallinn', 'contain bank in page', 'by words', 'Estonia', NULL);
INSERT INTO public.rb VALUES ('www.justthrive.com', 'Thrive', 'http://www.justthrive.com/', 'New York, New York', NULL, NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.nbg.gr', 'National Bank of Greece S.A.Εθνική Τράπεζα της Ελλάδος Α.Ε.', 'http://www.nbg.gr', 'Aiolou 86, Athens, Greece[1]', 'contain bank in page', 'by words', 'Greece', NULL);
INSERT INTO public.rb VALUES ('www.telenor.com', 'Telenor ASA', 'http://www.telenor.com', 'Fornebu, Norway', 'contain bank in page', 'by words', 'Norway', NULL);
INSERT INTO public.rb VALUES ('www.japantrustee.co.jp', 'Japan Trustee Services Bank, Ltd.日本トラスティ・サービス信託銀行株式会社', 'http://www.japantrustee.co.jp', 'Chuo, Tokyo, Japan', 'contain bank in page', 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.exim.go.th', 'Export–Import Bank of Thailand', 'http://www.exim.go.th/en/home/index.aspx', 'EXIM Building, 1193 Phaholyothin Road, Samsen Nai, Phaya Thai, Bangkok 10400[1], Thailand
        ', 'contain bank in page', 'by words', 'Thailand', NULL);
INSERT INTO public.rb VALUES ('erhcb.com', 'Housing and Commerce Bank', 'https://erhcb.com/', 'Asmara, Eritrea', 'contain bank in page', 'by words', 'Eritrea', NULL);
INSERT INTO public.rb VALUES ('www.fnb.co.za', 'First National Bank (FNB)', 'https://www.fnb.co.za', 'South Africa ', 'contain bank in page', NULL, 'South Africa', NULL);
INSERT INTO public.rb VALUES ('www.alahli.com', 'The National Commercial Bankالبنك الأهلي التجاري', 'http://www.alahli.com', 'Jeddah, Saudi Arabia', 'contain bank in page', 'by words', 'Saudi Arabia', NULL);
INSERT INTO public.rb VALUES ('www.rbinternational.com', 'Raiffeisen Bank International A.G.', 'http://www.rbinternational.com', 'Vienna, Austria', 'contain bank in page', 'by words', 'Austria', NULL);
INSERT INTO public.rb VALUES ('www.banxico.org.mx', 'Bank of MexicoBanco de México', 'http://www.banxico.org.mx', 'Mexico City, Mexico', 'contain bank in page', 'by words', 'Mexico', NULL);
INSERT INTO public.rb VALUES ('abk.eahli.com', 'Al Ahli Bank of Kuwait', 'https://abk.eahli.com', 'Safat Square, Ahmad Al Jaber Street, PO Box 1387, Safat, Kuwait City, Kuwait', 'contain bank in page', 'by words', 'Kuwait', NULL);
INSERT INTO public.rb VALUES ('guardian-bank.com', 'Guardian Bank', 'http://guardian-bank.com', 'Nairobi, Kenya', 'contain bank in page', 'by words', 'Kenya', NULL);
INSERT INTO public.rb VALUES ('www.cbsl.gov.lk', 'Central Bank of Sri Lankaශ්‍රී ලංකා මහ බැංකුවஇலங்கை மத்திய வங்கி', 'http://www.cbsl.gov.lk', 'Colombo', 'contain bank in page', 'by words', 'Sri Lanka', NULL);
INSERT INTO public.rb VALUES ('www.ocbcwhhk.com', 'OCBC Wing Hang Bank Limited Banco OCBC Weng Hang S.A.the bank', 'http://www.ocbcwhhk.com/', 'Hong Kong, Macau', 'contain bank in page', NULL, 'Hong Kong', NULL);
INSERT INTO public.rb VALUES ('www.unionsavings.com', 'Union Savings Bank', 'https://www.unionsavings.com/', 'Danbury, Connecticut', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('rbc.com', '
Royal Bank of Canada
Banque Royale du Canada', 'http://rbc.com', 'Montreal, Quebec, Canada Toronto, Ontario, Canada[2]', 'contain bank in page', 'by words', 'Canada', NULL);
INSERT INTO public.rb VALUES ('www.bmoharris.com', 'BMO Harris Bank, N.A.', 'https://www.bmoharris.com', 'Chicago, Illinois, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('nrb.org.np', 'Nepal Rastra Bankनेपाल राष्ट्र बैंक', 'http://nrb.org.np', 'Baluwatar, Kathmandu', 'contain bank in page', 'by words', 'Nepal', NULL);
INSERT INTO public.rb VALUES ('www.nordea.dk', 'Nordea Bank Danmark A/S', 'http://www.nordea.dk', 'Copenhagen, Denmark', 'contain bank in page', 'by words', 'Denmark', NULL);
INSERT INTO public.rb VALUES ('www.capitalsource.com', 'CapitalSource, a division of Pacific Western Bank', 'http://www.capitalsource.com/', 'Los Angeles, California', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('a-bank.jp', 'The Aomori Bank, Ltd. 株式会社青森銀行', 'http://a-bank.jp', 'Aomori, Japan (October 1, 1943)', 'contain bank in page', 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.hsbc.ae', 'HSBC Bank Middle East Limited', 'http://www.hsbc.ae/', 'Saint Helier, Jersey, Channel Islands', 'contain bank in page', 'by words', 'Jersey', NULL);
INSERT INTO public.rb VALUES ('www.ocb.com.vn', 'Orient Commercial Joint Stock Bank (OCB)', 'https://www.ocb.com.vn/en/foreign-currency-exchange-1.html', '45 Le Duan Boulevard, District 1, Hochiminh City, Vietnam', 'contain bank in page', 'by words', 'Vietnam', NULL);
INSERT INTO public.rb VALUES ('www.apgb.in', 'Andhra Pragathi Grameena Bank', 'http://www.apgb.in/', 'Kadapa, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.evrofinance.ru', 'OJSC Evrofinance Mosnarbank', 'http://www.evrofinance.ru/', 'Moscow, Russia', 'contain bank in page', 'by words', 'Russia', NULL);
INSERT INTO public.rb VALUES ('www.auroracommercial.com', 'Aurora Bank', 'http://www.auroracommercial.com/', 'Brandywine Building, 1000 West Street, Wilmington, Delaware, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.hsbc.com.my', 'HSBC Bank Malaysia Berhad', 'http://www.hsbc.com.my/', 'No. 2, Leboh Ampang, Kuala Lumpur, Malaysia', 'contain bank in page', NULL, 'Malaysia', NULL);
INSERT INTO public.rb VALUES ('www.transcapital.com', 'Joint Stock Bank “Transcapitalbank”', 'http://www.transcapital.com', 'Russia, Moscow and regions', 'contain bank in page', 'by words', 'Russia', NULL);
INSERT INTO public.rb VALUES ('www.kebhana.com', 'Korean Exchange Bank / KEB', 'https://www.kebhana.com/', 'Seoul, Republic of Korea (South) + overseas branches', 'contain bank in page', 'by words', 'South Korea', NULL);
INSERT INTO public.rb VALUES ('www.tblbd.com', 'Trust Bank Limited', 'http://www.tblbd.com/', 'Shadhinota Tower, Bir Srestha Shahid Jahangir Gate, Dhaka Cantonment, Dhaka, Bangladesh
        ', 'contain bank in page', 'by words', 'Bangladesh', NULL);
INSERT INTO public.rb VALUES ('www.minneapolisfed.org', 'Federal Reserve Bank of Minneapolis', 'https://www.minneapolisfed.org/', '90 Hennepin AvenueMinneapolis, Minnesota, USA', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.dbj.jp', 'Development Bank of Japan Inc.', 'http://www.dbj.jp/en/index.html', 'Tokyo, Japan', 'contain bank in page', 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.bcci.info', 'Bank of Credit and Commerce International (BCCI)', 'http://www.bcci.info/', 'Karachi & London', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.cimbanque.com', 'CIM Bank (CIM Banque)', 'https://www.cimbanque.com', 'Geneva, Switzerland', 'contain bank in page', 'by words', 'Switzerland', NULL);
INSERT INTO public.rb VALUES ('www.citynationalcm.com', 'City National Bank of Florida', 'http://www.citynationalcm.com', 'Miami, Florida', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.mebkenya.com', 'Middle East Bank Kenya', 'http://www.mebkenya.com/', 'Mebank TowerMilimani StreetNairobi, Kenya', 'contain bank in page', 'by words', 'Kenya', NULL);
INSERT INTO public.rb VALUES ('www.getinbank.pl', 'Getin Bank', 'https://www.getinbank.pl/', 'Warsaw , Poland ', 'contain bank in page', 'by words', 'Poland', NULL);
INSERT INTO public.rb VALUES ('www.laiki.com', 'Cyprus Popular Bank Public Co. Ltd', 'http://www.laiki.com/', 'Nicosia, Cyprus', 'contain bank in page', 'by words', 'Cyprus', NULL);
INSERT INTO public.rb VALUES ('www.daoheng.com', 'Dao Heng Bank Group Limited', 'http://www.daoheng.com', 'Hong Kong', 'contain bank in page', 'by words', 'Hong Kong', NULL);
INSERT INTO public.rb VALUES ('mycitizensfirst.com', 'Citizens First Bank', 'http://mycitizensfirst.com', 'The Villages, Florida', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.nordea.pl', 'Nordea Bank Polska S.A.', 'http://www.nordea.pl', 'Gdynia, Poland', 'contain bank in page', 'by words', 'Poland', NULL);
INSERT INTO public.rb VALUES ('www.bankmaspion.co.id', 'PT Bank Maspion Indonesia Tbk', 'http://www.bankmaspion.co.id/', 'Surabaya, Indonesia', 'contain bank in page', 'by words', 'Indonesia', NULL);
INSERT INTO public.rb VALUES ('www.wbstcb.com', 'The West Bengal State Co-operative Bank Ltd.', 'http://www.wbstcb.com/', 'Kolkata, West Bengal,, India', 'contain bank in page', NULL, 'India', NULL);
INSERT INTO public.rb VALUES ('www.key.com', 'KeyBank', 'http://www.key.com/', 'Cleveland, Ohio, USA', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('cbr.ru', 'Bank of RussiaБанк России', 'http://cbr.ru/', '12 Neglinnaya str., Moscow, Russian Federation', 'contain bank in page', 'by words', 'Russia', NULL);
INSERT INTO public.rb VALUES ('www.rbsinternational.com', 'The Royal Bank of Scotland International Limited', 'http://www.rbsinternational.com/', 'Jersey, Channel Islands', 'contain bank in page', 'by words', 'Jersey', NULL);
INSERT INTO public.rb VALUES ('www.bnm.md', 'National Bank of MoldovaBanca Naţională a Moldovei (in Romanian)', 'http://www.bnm.md/', 'Chişinău', 'contain bank in page', 'by words', 'Moldova', NULL);
INSERT INTO public.rb VALUES ('www.dfcugroup.com', 'DFCU Bank', 'http://www.dfcugroup.com', '26 Kyaddondo RoadNakasero, Kampala, Uganda', 'contain bank in page', 'by words', 'Uganda', NULL);
INSERT INTO public.rb VALUES ('www.gdb-pur.com', 'Government Development Bank for Puerto Rico', 'http://www.gdb-pur.com', 'San Juan, Puerto Rico', 'contain bank in page', 'by words', 'Puerto Rico', NULL);
INSERT INTO public.rb VALUES ('www.standardchartered.co.kr', 'Standard Chartered Bank Korea Limited', 'http://www.standardchartered.co.kr', 'Seoul, South Korea', 'contain bank in page', 'by words', 'South Korea', NULL);
INSERT INTO public.rb VALUES ('www.nepalsbi.com.np', 'Nepal SBI Bank Limited', 'http://www.nepalsbi.com.np', 'Kesharmahal[2], Kathmandu, Nepal', 'contain bank in page', 'by words', 'Nepal', NULL);
INSERT INTO public.rb VALUES ('www.stgeorge.com.au', 'St.George Bank', 'http://www.stgeorge.com.au/', 'Sydney, New South Wales, Australia', 'contain bank in page', 'by words', 'Australia', NULL);
INSERT INTO public.rb VALUES ('nab.com.au', 'National Australia Bank Limited', 'http://nab.com.au/', '700 Bourke StreetDocklands, Melbourne, Australia', 'contain bank in page', 'by words', 'Australia', NULL);
INSERT INTO public.rb VALUES ('www.reb-iraq.com', 'Real Estate Bank of Iraq', 'http://www.reb-iraq.com', 'Baghdad, Iraq', 'contain bank in page', 'by words', 'Iraq', NULL);
INSERT INTO public.rb VALUES ('www.acba.am', 'ACBA Credit Agricole Bank', 'https://www.acba.am/', 'Yerevan, Armenia', 'contain bank in page', 'by words', 'Armenia', NULL);
INSERT INTO public.rb VALUES ('www.absa.co.za', 'Absa Bank', 'http://www.absa.co.za', 'South Africa', 'contain bank in page', 'by words', 'South Africa', NULL);
INSERT INTO public.rb VALUES ('www.bdc.ca', 'Business Development Bank of Canada', 'https://www.bdc.ca/', 'Place Ville Marie Montreal, Quebec, Canada', 'contain bank in page', 'by words', 'Canada', NULL);
INSERT INTO public.rb VALUES ('nbb.be', 'National Bank of Belgium Nationale Bank van België (in Dutch)Banque nationale de Belgique (in French)
        ', 'http://nbb.be', 'Brussels', 'contain bank in page', 'by words', 'Belgium', NULL);
INSERT INTO public.rb VALUES ('www.ucb.com.bd', 'United Commercial Bank Ltd', 'http://www.ucb.com.bd', 'Dhaka, Bangladesh', 'contain bank in page', 'by words', 'Bangladesh', NULL);
INSERT INTO public.rb VALUES ('www.mcb.mu', 'The Mauritius Commercial Bank Ltd', 'http://www.mcb.mu/', '9-15, Sir William Newton Street, Port Louis, Mauritius', 'contain bank in page', 'by words', 'Mauritius', NULL);
INSERT INTO public.rb VALUES ('www.barclays.co.tz', 'Barclays Bank of Tanzania Limited', 'http://www.barclays.co.tz/', 'Barclay''s House, Ohio Street, Kivukoni, Dar es Salaam, Tanzania', 'contain bank in page', 'by words', 'Tanzania', NULL);
INSERT INTO public.rb VALUES ('www.santander.pl', 'Santander Bank Polska SA', 'https://www.santander.pl/', 'Warsaw, Poland', 'contain bank in page', 'by words', 'Poland', NULL);
INSERT INTO public.rb VALUES ('www.banguat.gob.gt', 'Bank of GuatemalaBanco de Guatemala', 'http://www.banguat.gob.gt', 'Guatemala City, Guatemala, Guatemala', 'contain bank in page', 'by words', 'Guatemala', NULL);
INSERT INTO public.rb VALUES ('www.ukb.ch', 'Urner Kantonalbank (URKB)', 'http://www.ukb.ch', 'Bahnhofstrasse 1 Altdorf6460 Switzerland', 'contain bank in page', 'by words', 'Switzerland', NULL);
INSERT INTO public.rb VALUES ('www.cibc.com', 'CIBC FirstCaribbeanInternational Bank', 'http://www.cibc.com/fcib/', 'Warrens, Barbados', 'contain bank in page', 'by words', 'Barbados', NULL);
INSERT INTO public.rb VALUES ('www.kvb.co.in', 'The Karur Vysya Bank Limited', 'https://www.kvb.co.in/', 'Karur, Tamil Nadu', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.bng.nl', 'N.V. Bank Nederlandse Gemeenten', 'http://www.bng.nl', 'The Hague, Netherlands', 'contain bank in page', NULL, 'Netherlands', NULL);
INSERT INTO public.rb VALUES ('www.db.com', 'Deutsche Bank', 'https://www.db.com/italia', '3 Piazza del Calendario, Milan, Italy', 'contain bank in page', 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.essexsavings.com', 'Essex Savings Bank', 'https://www.essexsavings.com/', 'Essex, Connecticut', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.mbca.co.zw', 'Nedbank Zimbabwe Limited', 'http://www.mbca.co.zw/', 'Harare, Zimbabwe', 'contain bank in page', 'by words', 'Zimbabwe', NULL);
INSERT INTO public.rb VALUES ('www.aibgb.co.uk', 'Allied Irish Bank (GB)', 'http://www.aibgb.co.uk', '92 Ann Street,Belfast,BT1 3HH', 'contain bank in page', NULL, 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.bdb-bh.com', 'Bahrain Development Bank B.S.C.', 'http://www.bdb-bh.com/', 'Manama, Bahrain', 'contain bank in page', 'by words', 'Bahrain', NULL);
INSERT INTO public.rb VALUES ('www.eskhata.com', 'Bank Eskhata', 'http://www.eskhata.com/en', 'Khujand, Tajikistan', 'contain bank in page', 'by words', 'Tajikistan', NULL);
INSERT INTO public.rb VALUES ('www.banqueatlantique.net', 'Atlantic Bank Group', 'http://www.banqueatlantique.net/', 'Lome, Togo', 'contain bank in page', 'by words', 'Togo', NULL);
INSERT INTO public.rb VALUES ('www.maib.md', 'Moldova Agroindbank', 'http://www.maib.md', 'Chișinău, Republic of Moldova', 'contain bank in page', 'by words', 'Moldova', NULL);
INSERT INTO public.rb VALUES ('www.cbar.az', 'Central Bank of the Republic of AzerbaijanAzərbaycan Respublikasının Mərkəzi Bankı', 'http://www.cbar.az', 'Baku', 'contain bank in page', 'by words', 'Azerbaijan', NULL);
INSERT INTO public.rb VALUES ('solvehungertoday.org', 'Northern Illinois Food Bank', 'https://solvehungertoday.org', '273 Dearborn CourtGeneva, IL 60134United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.fbtonline.com', 'First Bank & Trust', 'http://www.fbtonline.com/', 'New Orleans, Louisiana, USA', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.hokugin.co.jp', 'The Hokuriku Bank, Ltd', 'http://www.hokugin.co.jp', 'Toyama, Toyama, Japan', 'contain bank in page', 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.zim.com', 'Zim Integrated Shipping Services Ltd.', 'http://www.zim.com/', 'Haifa, Israel', NULL, 'by words', 'Israel', NULL);
INSERT INTO public.rb VALUES ('www.dbe.com.et', 'Development Bank of Ethiopia', 'http://www.dbe.com.et/', 'Addis Ababa, Ethiopia', 'contain bank in page', 'by words', 'Ethiopia', NULL);
INSERT INTO public.rb VALUES ('www.emporiki.gr', 'Commercial Bank of GreeceΕμπορική Τράπεζα της Ελλάδας', 'http://www.emporiki.gr/', 'Athens, Greece', 'contain bank in page', 'by words', 'Greece', NULL);
INSERT INTO public.rb VALUES ('www.cmbc.com.cn', 'China Minsheng Banking Corporation Limited 中国民生银行股份有限公司', 'http://www.cmbc.com.cn/', 'Beijing, China', 'contain bank in page', 'by words', 'China', NULL);
INSERT INTO public.rb VALUES ('www.sbdanbury.com', 'Savings Bank of Danbury', 'https://www.sbdanbury.com/', 'Danbury, Connecticut', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.nsb.lk', 'National Savings Bank', 'http://www.nsb.lk', 'Colombo, Sri Lanka', 'contain bank in page', 'by words', 'Sri Lanka', NULL);
INSERT INTO public.rb VALUES ('www.us.hsbc.com', 'HSBC Bank USA, N.A. HSBC USA Inc.', 'http://www.us.hsbc.com/', '452 Fifth Avenue, New York City, New York, USA', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('sbsu.com', 'State Bank of Southern Utah', 'https://sbsu.com', 'Cedar City, Utah, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.cbbh.ba', 'Central Bank of Bosnia and HerzegovinaCentralna banka Bosne i HercegovineЦентрална банка Босне и
            Херцеговине
        ', 'http://www.cbbh.ba', 'Ulica Maršala Tita 25,Sarajevo', 'contain bank in page', NULL, 'Bosnia and Herzegovina', NULL);
INSERT INTO public.rb VALUES ('www.safra.com', 'Safra National Bank of New York', 'http://www.safra.com', 'New York City, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.tnbl.co.ke', 'Transnational Bank', 'http://www.tnbl.co.ke/', 'Nairobi, Kenya', 'contain bank in page', 'by words', 'Kenya', NULL);
INSERT INTO public.rb VALUES ('en.qdccb.com', 'Bank of Qingdao Co. Ltd', 'http://en.qdccb.com/index.shtml', 'Qingdao, China', 'contain bank in page', 'by words', 'China', NULL);
INSERT INTO public.rb VALUES ('www.banquecentrale.gov.sy', 'Central Bank of SyriaMasrif Suriat Almarkazi', 'http://www.banquecentrale.gov.sy/', 'Damascus, Syria', 'contain bank in page', 'by words', 'Syria', NULL);
INSERT INTO public.rb VALUES ('www.bsp.com.pg', 'Bank South Pacific Limited', 'http://www.bsp.com.pg', 'Port Moresby, Papua New Guinea', 'contain bank in page', 'by words', 'Papua New Guinea', NULL);
INSERT INTO public.rb VALUES ('www.bostonfed.org', 'Federal Reserve Bank of Boston', 'https://www.bostonfed.org/', 'Federal Reserve Bank Building600 Atlantic Avenue Boston , Massachusetts, USA', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.jkb.com', 'Jordan Kuwait Bank', 'http://www.jkb.com/', 'Amman, Jordan', 'contain bank in page', 'by words', 'Jordan', NULL);
INSERT INTO public.rb VALUES ('www.onlinecub.net', 'City Union Bank Limited', 'https://www.onlinecub.net/', 'Kumbakonam, Tamil Nadu, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.westpac.com.au', 'Westpac Banking Corporation', 'http://www.westpac.com.au/', 'Westpac Place, Sydney', 'contain bank in page', 'by words', 'Australia', NULL);
INSERT INTO public.rb VALUES ('www.cba.am', 'Central Bank of ArmeniaՀայաստանի Հանրապետության Կենտրոնական Բանկ', 'https://www.cba.am/EN/SitePages/Default.aspx', 'Yerevan', 'contain bank in page', NULL, 'Armenia', NULL);
INSERT INTO public.rb VALUES ('www.belfius.com', 'Belfius Bank and Insurance', 'http://www.belfius.com/', 'Place Charles Rogier 11, 1210 Saint-Josse-ten-Noode, Belgium', 'contain bank in page', 'by words', 'Belgium', NULL);
INSERT INTO public.rb VALUES ('www.dallasfed.org', 'Federal Reserve Bank of Dallas', 'https://www.dallasfed.org/', '2200 N. Pearl St. Dallas, Texas, USA', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.onebank.com.bd', 'ONE Bank Limited', 'http://www.onebank.com.bd/', 'Dhaka, Bangladesh', 'contain bank in page', 'by words', 'Bangladesh', NULL);
INSERT INTO public.rb VALUES ('www.bde.es', 'Bank of SpainBanco de España', 'http://www.bde.es', 'Bank of Spain Building, Calle de Alcalá, Madrid', 'contain bank in page', 'by words', 'Spain', NULL);
INSERT INTO public.rb VALUES ('www.kfw.de', 'KfW', 'https://www.kfw.de/', 'Frankfurt, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.fnbna.com', 'First National Bank of North Arkansas', 'http://www.fnbna.com', '305-307 Public Square, Berryville, 72616 Arkansas, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.dos.gov.bd', 'Bank and Financial Institutions Division', 'https://www.dos.gov.bd', 'Dhaka, Bangladesh', 'contain bank in page', 'by words', 'Bangladesh', NULL);
INSERT INTO public.rb VALUES ('www.zm.barclaysafrica.com', 'Barclays Bank of Zambia', 'https://www.zm.barclaysafrica.com/', 'Lusaka, Zambia', 'contain bank in page', 'by words', 'Zambia', NULL);
INSERT INTO public.rb VALUES ('www.adb.org', 'Asian Development Bank', 'http://www.adb.org', 'Ortigas CenterMandaluyong, Metro Manila, Philippines', 'contain bank in page', 'by words', 'Philippines', NULL);
INSERT INTO public.rb VALUES ('www.tdbm.mn', 'Trade and Development Bank', 'http://www.tdbm.mn/', '14210 Peace avenue 19, Sukhbaatar district, 1st khoroo, Ulaanbaatar, Mongolia, Mongolia
        ', 'contain bank in page', NULL, 'Mongolia', NULL);
INSERT INTO public.rb VALUES ('www.bbr.bg', 'Bulgarian Development Bank', 'http://www.bbr.bg/', 'Sofia, Bulgaria', 'contain bank in page', 'by words', 'Bulgaria', NULL);
INSERT INTO public.rb VALUES ('bankofjordan.com', 'Bank of Jordan', 'http://bankofjordan.com/', 'Amman, Jordan', 'contain bank in page', 'by words', 'Jordan', NULL);
INSERT INTO public.rb VALUES ('www.bdeac.org', 'Development Bank of the Central African States', 'https://www.bdeac.org', 'Brazzaville, Republic of the Congo', 'contain bank in page', 'by words', 'Republic of the Congo', NULL);
INSERT INTO public.rb VALUES ('www.aibank.co.il', 'Arab Israel Bank', 'http://www.aibank.co.il', 'Israel', 'contain bank in page', 'by words', 'Israel', NULL);
INSERT INTO public.rb VALUES ('www.goldenbank-na.com', 'Golden Bank, N.A.', 'https://www.goldenbank-na.com/', 'Houston, Texas', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('bankaust.com.au', 'Bank Australia', 'http://bankaust.com.au/', 'Kew, Victoria, Australia', 'contain bank in page', 'by words', 'Australia', NULL);
INSERT INTO public.rb VALUES ('www.erstebank.rs', 'Erste Bank', 'http://www.erstebank.rs', 'Novi Sad, Serbia', 'contain bank in page', 'by words', 'Serbia', NULL);
INSERT INTO public.rb VALUES ('www.judo.bank', 'Judo Bank', 'https://www.judo.bank', 'Melbourne, Australia', 'contain bank in page', 'by words', 'Australia', NULL);
INSERT INTO public.rb VALUES ('www.merkur-bank.de', 'Merkur Bank KGaA', 'https://www.merkur-bank.de/', 'Munich', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.stanbicbank.co.ug', 'Stanbic Bank Uganda Limited', 'http://www.stanbicbank.co.ug', 'Kampala, Uganda', 'contain bank in page', 'by words', 'Uganda', NULL);
INSERT INTO public.rb VALUES ('www.inecobank.am', 'InecoBank CJSC', 'https://www.inecobank.am', 'Yerevan, Armenia', 'contain bank in page', 'by words', 'Armenia', NULL);
INSERT INTO public.rb VALUES ('www.dartbank.com', 'The Dart Bank', 'https://www.dartbank.com/', 'Mason, Michigan', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.bankofsouthsudan.org', 'Bank of South Sudan', 'http://www.bankofsouthsudan.org', 'Juba, South Sudan', 'contain bank in page', 'by words', 'South Sudan', NULL);
INSERT INTO public.rb VALUES ('www.paducahbank.com', 'The Paducah Bank and Trust Company', 'http://www.paducahbank.com', 'Paducah, Kentucky, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.bankasia-bd.com', 'Bank Asia Limited', 'http://www.bankasia-bd.com/', 'Dhaka, Bangladesh', 'contain bank in page', NULL, 'Bangladesh', NULL);
INSERT INTO public.rb VALUES ('www.ndbbank.com', 'National Development Bank PLC', 'https://www.ndbbank.com', 'Colombo 02, Sri Lanka', 'contain bank in page', 'by words', 'Sri Lanka', NULL);
INSERT INTO public.rb VALUES ('www.standardbankbd.com', 'Standard Bank Limited Bangladesh', 'http://www.standardbankbd.com/', 'Dhaka, Bangladesh', 'contain bank in page', 'by words', 'Bangladesh', NULL);
INSERT INTO public.rb VALUES ('www.alpenbank.com', 'AlpenBank', 'http://www.alpenbank.com/', 'Innsbruck, Austria', 'contain bank in page', 'by words', 'Austria', NULL);
INSERT INTO public.rb VALUES ('www.bankofcanada.ca', 'Bank of CanadaBanque du Canada', 'http://www.bankofcanada.ca', 'Ottawa, Ontario, Canada', 'contain bank in page', 'by words', 'Canada', NULL);
INSERT INTO public.rb VALUES ('www.africanbank.co.za', 'African Bank', 'http://www.africanbank.co.za/', '59 16th Road, Midrand Johannesburg, South Africa', 'contain bank in page', 'by words', 'South Africa', NULL);
INSERT INTO public.rb VALUES ('www.shimantobank.com', 'Shimanto Bank Limited', 'http://www.shimantobank.com/', 'Dhaka, Bangladesh', 'contain bank in page', 'by words', 'Bangladesh', NULL);
INSERT INTO public.rb VALUES ('www.hoernerbank.de', 'Hoerner Bank', 'https://www.hoernerbank.de', 'Oststraße 77, 74072 Heilbronn, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.AskariBank.com', 'Askari Bank Limited', 'http://www.AskariBank.com', 'Rawalpindi, Pakistan', 'contain bank in page', NULL, 'Pakistan', NULL);
INSERT INTO public.rb VALUES ('www.1stvalleybank.com', '1st Valley Bank', 'http://www.1stvalleybank.com', 'Baroy, Lanao del Norte, Philippines', 'contain bank in page', 'by words', 'Philippines', NULL);
INSERT INTO public.rb VALUES ('www.edekabank.de', 'Edekabank AG', 'http://www.edekabank.de/', 'Hamburg, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('dzbank.com', 'DZ Bank AG', 'http://dzbank.com', 'Frankfurt, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('pnbank.com.au', 'P&N Bank', 'http://pnbank.com.au', 'Perth, Australia', 'contain bank in page', 'by words', 'Australia', NULL);
INSERT INTO public.rb VALUES ('www.ameriabank.am', 'Ameriabank', 'http://www.ameriabank.am', 'Yerevan, Armenia', 'contain bank in page', 'by words', 'Armenia', NULL);
INSERT INTO public.rb VALUES ('www.bethmannbank.de', 'Bethmann Bank AG', 'http://www.bethmannbank.de/', 'Frankfurt am Main, Germany', 'contain bank in page', NULL, 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.unionbankng.com', 'Union Bank of Nigeria', 'http://www.unionbankng.com', '36 Marina, Lagos Island, Lagos, Lagos State, Nigeria', 'contain bank in page', 'by words', 'Nigeria', NULL);
INSERT INTO public.rb VALUES ('www.eximbank-km.com', 'Exim Bank (Comoros)', 'https://www.eximbank-km.com/', 'Moroni, Comoros', 'contain bank in page', 'by words', 'Comoros', NULL);
INSERT INTO public.rb VALUES ('www.dekabank.az', 'DekaBank', 'http://www.dekabank.az/?/', 'Baku, Azerbaijan', 'contain bank in page', 'by words', 'Azerbaijan', NULL);
INSERT INTO public.rb VALUES ('www.vietinbank.vn', 'Vietinbank', 'https://www.vietinbank.vn', 'Hanoi', 'contain bank in page', NULL, 'Vietnam', NULL);
INSERT INTO public.rb VALUES ('www.alrayanbank.co.uk', 'Al Rayan Bank PLC', 'http://www.alrayanbank.co.uk', 'Birmingham and London, UK', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.sberbank.at', 'Sberbank Europe Group', 'http://www.sberbank.at', 'Vienna, Austria', 'contain bank in page', 'by words', 'Austria', NULL);
INSERT INTO public.rb VALUES ('www.hellobank.com', 'Hello bank!', 'http://www.hellobank.com/', 'Paris', 'contain bank in page', 'by words', 'France', NULL);
INSERT INTO public.rb VALUES ('www.sabanknote.co.za', 'South African Bank Note Company', 'http://www.sabanknote.co.za', 'Pretoria, Gauteng', 'contain bank in page', 'by words', 'South Africa', NULL);
INSERT INTO public.rb VALUES ('www.nrbbankbd.com', 'NRB Bank', 'http://www.nrbbankbd.com', 'Dhaka, Bangladesh', 'contain bank in page', 'by words', 'Bangladesh', NULL);
INSERT INTO public.rb VALUES ('newbridgebank.com', 'NewBridge Bank', 'http://newbridgebank.com', 'Greensboro, North Carolina, USA', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.bankofscotland.co.uk', 'Bank of Scotland plcBank o ScotlandBanca na h-Alba', 'http://www.bankofscotland.co.uk', 'The Mound, Edinburgh, Scotland, United Kingdom', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.volksbank-bi-gt.de', 'Volksbank Bielefeld-Gütersloh eG', 'http://www.volksbank-bi-gt.de/', 'Gütersloh, Germany[1]', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('sberbank-cib.ru', 'Sberbank CIB', 'http://sberbank-cib.ru/index_eng.jsp', 'Moscow, Russia', 'contain bank in page', 'by words', 'Russia', NULL);
INSERT INTO public.rb VALUES ('primebank.com.bd', 'Prime Bank', 'http://primebank.com.bd', 'Dhaka, Bangladesh', 'contain bank in page', 'by words', 'Bangladesh', NULL);
INSERT INTO public.rb VALUES ('bankacredins.com', 'Credins Bank', 'http://bankacredins.com/', 'Tirana', 'contain bank in page', 'by words', 'Albania', NULL);
INSERT INTO public.rb VALUES ('www.finbank.co.bi', 'FinBank Burundi', 'http://www.finbank.co.bi/', 'Bujumbura, Burundi', 'contain bank in page', 'by words', 'Burundi', NULL);
INSERT INTO public.rb VALUES ('www.ingbank.pl', 'ING Bank Śląski SA', 'http://www.ingbank.pl', 'Katowice, Poland', 'contain bank in page', 'by words', 'Poland', NULL);
INSERT INTO public.rb VALUES ('www.michinokubank.co.jp', 'Michinoku Bank', 'http://www.michinokubank.co.jp/', 'Aomori, Japan', 'contain bank in page', 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.cbbank.com.mm', 'CB Bank', 'http://www.cbbank.com.mm', 'Yangon, Myanmar', 'contain bank in page', 'by words', 'Myanmar', NULL);
INSERT INTO public.rb VALUES ('www.ffaprivatebank.com', 'FFA Private Bank', 'http://www.ffaprivatebank.com', 'Beirut, Lebanon', 'contain bank in page', 'by words', 'Lebanon', NULL);
INSERT INTO public.rb VALUES ('www.kantonalbank.ch', 'Association of Swiss Cantonal Banks', 'https://www.kantonalbank.ch', 'Basel, Switzerland', 'contain bank in page', 'by words', 'Switzerland', NULL);
INSERT INTO public.rb VALUES ('www.texasfirst.bank', 'Texas First Bank', 'https://www.texasfirst.bank', 'Texas City, Texas, USA', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.meezanbank.com', 'Meezan Bank Limited', 'http://www.meezanbank.com/', 'Karachi, Pakistan', 'contain bank in page', 'by words', 'Pakistan', NULL);
INSERT INTO public.rb VALUES ('www.targobank.de', 'Targobank AG', 'http://www.targobank.de/', 'Düsseldorf', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.bankotsar.co.il', 'Bank Otsar Ha-Hayal', 'http://www.bankotsar.co.il', 'Ramat Gan ', 'contain bank in page', 'by words', 'Israel', NULL);
INSERT INTO public.rb VALUES ('www.manulifebank.ca', 'Manulife Bank of CanadaBanque Manuvie du Canada', 'https://www.manulifebank.ca', 'Waterloo, Ontario, Canada', 'contain bank in page', 'by words', 'Canada', NULL);
INSERT INTO public.rb VALUES ('www.enterprisebankfl.com', 'Enterprise Bank', 'http://www.enterprisebankfl.com/', 'North Palm Beach, Florida, USA', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.qnbbank.com', 'QNB Bank', 'http://www.qnbbank.com/', 'Quakertown, Pennsylvania', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.hindujabank.com', 'Hinduja Bank (Switzerland) Ltd', 'http://www.hindujabank.com/', 'Geneva, Switzerland', 'contain bank in page', 'by words', 'Switzerland', NULL);
INSERT INTO public.rb VALUES ('www.splitskabanka.hr', 'Splitska banka d.d.', 'http://www.splitskabanka.hr/', 'Split, Croatia', 'contain bank in page', 'by words', 'Croatia', NULL);
INSERT INTO public.rb VALUES ('www.riksbank.se', 'Sveriges Riksbank', 'http://www.riksbank.se', 'Brunkebergstorg 11103 37 Stockholm Sweden', 'contain bank in page', 'by words', 'Sweden', NULL);
INSERT INTO public.rb VALUES ('www.salaamsombank.com', 'Salaam Somali Bank', 'http://www.salaamsombank.com', 'Mogadishu, Somalia', 'contain bank in page', 'by words', 'Somalia', NULL);
INSERT INTO public.rb VALUES ('www.bank-of-tianjin.com', 'Bank of Tianjin Co. Ltd', 'http://www.bank-of-tianjin.com', 'Tianjin, China', 'contain bank in page', 'by words', 'China', NULL);
INSERT INTO public.rb VALUES ('www.riyadbank.com', 'Riyad Bank', 'http://www.riyadbank.com', 'Riyadh, Saudi Arabia[1]', 'contain bank in page', 'by words', 'Saudi Arabia', NULL);
INSERT INTO public.rb VALUES ('www.aekbank.ch', 'AEK Bank 1826', 'https://www.aekbank.ch', 'Hofstettenstrasse 2, CH-3602 Thun, Switzerland', 'contain bank in page', 'by words', 'Switzerland', NULL);
INSERT INTO public.rb VALUES ('www.alawwalbank.com', 'Saudi Hollandi Bank (Alawwal Bank)', 'https://www.alawwalbank.com/en/personal', 'Riyadh, Saudi Arabia', 'contain bank in page', 'by words', 'Saudi Arabia', NULL);
INSERT INTO public.rb VALUES ('www.dsbbank.nl', 'DSB Bank NV', 'http://www.dsbbank.nl', 'Wognum, Netherlands', 'contain bank in page', 'by words', 'Netherlands', NULL);
INSERT INTO public.rb VALUES ('www.sbmbank.co.ke', 'SBM Bank Kenya Limited', 'http://www.sbmbank.co.ke', 'Nairobi, Kenya', 'contain bank in page', 'by words', 'Kenya', NULL);
INSERT INTO public.rb VALUES ('www.denizbank.com', 'DenizBank A.Ş.', 'http://www.denizbank.com/', 'Şişli, Istanbul, Turkey', 'contain bank in page', 'by words', 'Turkey', NULL);
INSERT INTO public.rb VALUES ('www.accessbank.az', 'AccessBank', 'http://www.accessbank.az/en', 'Baku, Azerbaijan', 'contain bank in page', 'by words', 'Azerbaijan', NULL);
INSERT INTO public.rb VALUES ('www.apbank.jp', 'AP Bank', 'http://www.apbank.jp', 'Tokyo, Japan', 'contain bank in page', 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.cairointernationalbank.co.ug', 'Cairo International Bank Limited', 'http://www.cairointernationalbank.co.ug', 'Plot 30 Kampala RoadKampala, Uganda', 'contain bank in page', 'by words', 'Uganda', NULL);
INSERT INTO public.rb VALUES ('www.crossriverbank.com', 'Cross River Bank', 'http://www.crossriverbank.com', 'Fort Lee, New Jersey, U.S.', 'contain bank in page', 'by words', 'Jersey', NULL);
INSERT INTO public.rb VALUES ('www.thatsmybank.com', 'First Northern Bank', 'http://www.thatsmybank.com/', 'Dixon, California', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('halkbank.rs', 'Halkbank', 'http://halkbank.rs', 'Belgrade, Serbia', 'contain bank in page', 'by words', 'Serbia', NULL);
INSERT INTO public.rb VALUES ('www.aloqabank.uz', 'Aloqabank Алокабанк', 'http://www.aloqabank.uz', 'Tashkent, Uzbekistan', 'contain bank in page', 'by words', 'Uzbekistan', NULL);
INSERT INTO public.rb VALUES ('www.cgd.pt', 'Caixa Geral de Depósitos', 'http://www.cgd.pt/', 'Lisbon, Portugal', NULL, NULL, 'Portugal', NULL);
INSERT INTO public.rb VALUES ('www.falconbank.com', 'Falcon International Bank', 'http://www.falconbank.com/', 'Laredo, Texas', 'contain bank in page', NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.hanseaticbank.de', 'Hanseatic Bank', 'https://www.hanseaticbank.de/', 'Bramfelder Chaussee 101, 22177 Hamburg, Germany', 'contain bank in page', NULL, 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.kingdom.bank', 'Kingdom Bank Limited', 'https://www.kingdom.bank', 'Ruddington, Nottingham, United Kingdom', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.husbanken.no', 'Norwegian State Housing Bank', 'http://www.husbanken.no', 'Drammen, Norway', 'contain bank in page', 'by words', 'Norway', NULL);
INSERT INTO public.rb VALUES ('www.banksa.com.au', 'Bank of South Australia', 'https://www.banksa.com.au/', 'Adelaide, South Australia', 'contain bank in page', NULL, 'Australia', NULL);
INSERT INTO public.rb VALUES ('www.natbank.co.mw', 'National Bank of Malawi', 'http://www.natbank.co.mw/', 'Blantyre, Malawi', 'contain bank in page', 'by words', 'Malawi', NULL);
INSERT INTO public.rb VALUES ('www.aliorbank.pl', 'Alior Bank SA', 'http://www.aliorbank.pl', 'Warsaw, Poland', 'contain bank in page', 'by words', 'Poland', NULL);
INSERT INTO public.rb VALUES ('www.atbank.eu', 'Amsterdam Trade Bank N.V. (ATB)', 'http://www.atbank.eu/', 'Amsterdam, Netherlands', 'contain bank in page', 'by words', 'Netherlands', NULL);
INSERT INTO public.rb VALUES ('jyskebank.com', 'Jyske Bank A/S', 'http://jyskebank.com/en', 'Silkeborg, Denmark', 'contain bank in page', 'by words', 'Denmark', NULL);
INSERT INTO public.rb VALUES ('fsbank.com', 'First Security Bank', 'http://fsbank.com', 'Searcy, Arkansas, USA', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.psbank.ru', 'Promsvyazbank', 'http://www.psbank.ru/', 'Moscow , Russia ', 'contain bank in page', 'by words', 'Russia', NULL);
INSERT INTO public.rb VALUES ('www.mkbbank.hu', 'MKB Bank', 'http://www.mkbbank.hu/', 'Budapest, Hungary', 'contain bank in page', 'by words', 'Hungary', NULL);
INSERT INTO public.rb VALUES ('www.kredobank.com.ua', 'PJSC "KredoBank"', 'http://www.kredobank.com.ua/', 'Lviv, Ukraine', 'contain bank in page', 'by words', 'Ukraine', NULL);
INSERT INTO public.rb VALUES ('amicusbank.ca', 'Amicus Bank', 'http://amicusbank.ca', 'Toronto, Ontario', 'contain bank in page', 'by words', 'Canada', NULL);
INSERT INTO public.rb VALUES ('www.laxmibank.com', 'Laxmi Bank Limited', 'http://www.laxmibank.com', 'Laxmi Bank Limited Hattisar , Kathmandu', 'contain bank in page', NULL, 'Nepal', NULL);
INSERT INTO public.rb VALUES ('www.trobank.com', 'Tropical Bank', 'http://www.trobank.com/', 'Kampala, Uganda', 'contain bank in page', 'by words', 'Uganda', NULL);
INSERT INTO public.rb VALUES ('www.corpbank.com', 'Corporation Bank', 'http://www.corpbank.com', 'Mangalore, Karnataka, India', 'contain bank in page', NULL, 'India', NULL);
INSERT INTO public.rb VALUES ('www.bankwest.com.au', 'Bankwest', 'http://www.bankwest.com.au/', 'Bankwest Place, Perth, Western Australia[1][2]', 'contain bank in page', 'by words', 'Australia', NULL);
INSERT INTO public.rb VALUES ('www.afrasiabank.com', 'AfrAsia Bank Limited', 'http://www.afrasiabank.com/en', 'Bowen Square10 Dr. Ferriere Street Port Louis, Mauritius', 'contain bank in page', 'by words', 'Mauritius', NULL);
INSERT INTO public.rb VALUES ('www.overseasfilipinobank.gov.ph', 'Overseas Filipino Bank', 'http://www.overseasfilipinobank.gov.ph', 'Manila, Philippines', 'contain bank in page', 'by words', 'Philippines', NULL);
INSERT INTO public.rb VALUES ('royalbusinessbankusa.com', 'Tomato Bank', 'https://royalbusinessbankusa.com', 'Los Angeles County, California', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.firstunitedbank.com', 'First United Bank & Trust', 'http://www.firstunitedbank.com', 'Durant, Oklahoma, United States', 'contain bank in page', NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('rasheedbank.gov.iq', 'Rasheed Bank', 'http://rasheedbank.gov.iq', 'Baghdad, Iraq', 'contain bank in page', 'by words', 'Iraq', NULL);
INSERT INTO public.rb VALUES ('www.tzbank.com', 'Bank of Taizhou 台州银行', 'http://www.tzbank.com', 'Taizhou, Zhejiang, China', 'contain bank in page', 'by words', 'China', NULL);
INSERT INTO public.rb VALUES ('www.czbank.com', 'China Zheshang Bank', 'http://www.czbank.com/', 'Hangzhou, Zhejiang Province, China', 'contain bank in page', 'by words', 'China', NULL);
INSERT INTO public.rb VALUES ('www.oakwoodbank.com', 'Oakwood Bank', 'https://www.oakwoodbank.com/', 'Oakwood, Texas', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.refah-bank.ir', 'Refah Bank', 'http://www.refah-bank.ir/', 'Tehran, Iran', 'contain bank in page', 'by words', 'Iran', NULL);
INSERT INTO public.rb VALUES ('www.raiffeisenbank.rs', 'Raiffeisen banka Beograd', 'http://www.raiffeisenbank.rs', 'Belgrade, Serbia', 'contain bank in page', 'by words', 'Serbia', NULL);
INSERT INTO public.rb VALUES ('www.apsbank.com.mt', 'APS Bank', 'https://www.apsbank.com.mt/', 'Birkirkara, Malta', 'contain bank in page', 'by words', 'Malta', NULL);
INSERT INTO public.rb VALUES ('www.orient-bank.com', 'Orient Bank', 'http://www.orient-bank.com/', 'Kampala, Uganda', 'contain bank in page', 'by words', 'Uganda', NULL);
INSERT INTO public.rb VALUES ('www.citibank.co.kr', 'Citibank Korea', 'http://www.citibank.co.kr/', 'Seoul, South Korea', 'contain bank in page', 'by words', 'South Korea', NULL);
INSERT INTO public.rb VALUES ('www.bankofhollandny.com', 'Bank of Holland', 'http://www.bankofhollandny.com/', 'Holland, New York, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('en.bank-day.ir', 'Day Bank', 'http://en.bank-day.ir/', 'Tehran, Iran', 'contain bank in page', 'by words', 'Iran', NULL);
INSERT INTO public.rb VALUES ('www.rblbank.com', 'RBL Bank', 'https://www.rblbank.com/', 'Mumbai, Maharashtra, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.bankrate.com', 'Bankrate, LLC', 'http://www.bankrate.com', 'New York City, New York, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.sparebanken-hedmark.no', 'Sparebanken Hedmark', 'http://www.sparebanken-hedmark.no', 'Hamar, Norway', 'contain bank in page', 'by words', 'Norway', NULL);
INSERT INTO public.rb VALUES ('www.dskbank.bg', 'DSK Bank', 'http://www.dskbank.bg', 'Sofia, Bulgaria', 'contain bank in page', 'by words', 'Bulgaria', NULL);
INSERT INTO public.rb VALUES ('www.keytradebank.be', 'Keytrade Bank', 'https://www.keytradebank.be/', 'Brussels, Belgium', 'contain bank in page', 'by words', 'Belgium', NULL);
INSERT INTO public.rb VALUES ('www.handelsbanken.com', 'Svenska Handelsbanken AB', 'http://www.handelsbanken.com/', 'Stockholm, Sweden', 'contain bank in page', 'by words', 'Sweden', NULL);
INSERT INTO public.rb VALUES ('premierbankltd.com', 'Premier Bank Limited', 'http://premierbankltd.com/pbl', 'Dhaka, Bangladesh', 'contain bank in page', 'by words', 'Bangladesh', NULL);
INSERT INTO public.rb VALUES ('sbacbank.com', 'South Bangla Agriculture and Commerce Bank Limited', 'http://sbacbank.com', 'Dhaka, Bangladesh', 'contain bank in page', 'by words', 'Bangladesh', NULL);
INSERT INTO public.rb VALUES ('www.equitablebank.ca', 'Equitable Bank', 'https://www.equitablebank.ca/', 'Canada ', 'contain bank in page', 'by words', 'Canada', NULL);
INSERT INTO public.rb VALUES ('www.gulfafricanbank.com', 'Gulf African Bank', 'http://www.gulfafricanbank.com/', 'Nairobi, Kenya', 'contain bank in page', 'by words', 'Kenya', NULL);
INSERT INTO public.rb VALUES ('www.citibank.ru', 'Citibank Russia', 'http://www.citibank.ru', 'Moscow, Russia', 'contain bank in page', 'by words', 'Russia', NULL);
INSERT INTO public.rb VALUES ('www.lebaneseswissbank.com', 'Lebanese Swiss Bank', 'http://www.lebaneseswissbank.com', 'Emile Edde Street,Hamra, Beirut, Lebanon Swiftcode:LEBSLBBX', 'contain bank in page', 'by words', 'Lebanon', NULL);
INSERT INTO public.rb VALUES ('www.maybank.com', 'Malayan Banking Berhad', 'http://www.maybank.com', 'Menara MaybankKuala Lumpur, Malaysia', 'contain bank in page', 'by words', 'Malaysia', NULL);
INSERT INTO public.rb VALUES ('www.ppfbanka.cz', 'PPF Banka', 'https://www.ppfbanka.cz/en', 'Prague, Czech Republic', 'contain bank in page', NULL, 'Czechia', NULL);
INSERT INTO public.rb VALUES ('www.ideabank.pl', 'Idea Bank', 'https://www.ideabank.pl/', 'ul. Przyokopowa 33, Warsaw, Poland', 'contain bank in page', 'by words', 'Poland', NULL);
INSERT INTO public.rb VALUES ('www.caixabank.com', 'CaixaBank, S.A.', 'http://www.caixabank.com/index_en.html', 'Valencia, Spain', 'contain bank in page', 'by words', 'Spain', NULL);
INSERT INTO public.rb VALUES ('www.bankmuscat.com', 'Bank Muscat', 'http://www.bankmuscat.com/', 'Muscat, Oman', 'contain bank in page', 'by words', 'Oman', NULL);
INSERT INTO public.rb VALUES ('www.siddharthabank.com', 'Siddhartha Bank', 'http://www.siddharthabank.com', 'Hattisar, Kathmandu', 'contain bank in page', 'by words', 'Nepal', NULL);
INSERT INTO public.rb VALUES ('www.vikingbank.ru', 'Viking Bank', 'http://www.vikingbank.ru', 'Saint Petersburg, Russia', 'contain bank in page', 'by words', 'Russia', NULL);
INSERT INTO public.rb VALUES ('www.thebanker.com', 'The Banker', 'http://www.thebanker.com/', '1 Southwark Bridge London SE1 9HL England', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.texasstatebank.net', 'Texas State Bank', 'http://www.texasstatebank.net', 'Joaquin, Texas', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.hnbbank.bank', 'The Honesdale National Bank', 'https://www.hnbbank.bank/', 'Honesdale, Pennsylvania', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.bidvestbank.co.za', 'Bidvest Bank Limited', 'http://www.bidvestbank.co.za/', 'Braamfontein, Johannesburg, South Africa', 'contain bank in page', 'by words', 'South Africa', NULL);
INSERT INTO public.rb VALUES ('danskebank.co.uk', 'Northern Bank Limitedtrading as Danske Bank UK', 'http://danskebank.co.uk', 'Belfast, Northern Ireland', 'contain bank in page', 'by words', 'Ireland', NULL);
INSERT INTO public.rb VALUES ('www.tatrabanka.sk', 'Tatra banka, a.s.', 'http://www.tatrabanka.sk', 'Bratislava, Slovakia', 'contain bank in page', 'by words', 'Slovakia', NULL);
INSERT INTO public.rb VALUES ('banknorwegian.no', 'Bank Norwegian AS', 'http://banknorwegian.no', 'Fornebu, Norway', 'contain bank in page', 'by words', 'Norway', NULL);
INSERT INTO public.rb VALUES ('www.patriabank.ro', 'Patria Bank S.A.', 'https://www.patriabank.ro/', 'Bucharest, Romania', 'contain bank in page', 'by words', 'Romania', NULL);
INSERT INTO public.rb VALUES ('antwerpdiamondbank.com', 'Antwerp Diamond Bank', 'http://antwerpdiamondbank.com', 'Antwerp, Belgium', 'contain bank in page', 'by words', 'Belgium', NULL);
INSERT INTO public.rb VALUES ('www.kyotobank.co.jp', 'Bank of Kyoto, Ltd.', 'http://www.kyotobank.co.jp/', 'Shimogyo-ku, Kyoto, Japan', 'contain bank in page', 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.unicreditbulbank.bg', 'UniCredit Bulbank', 'http://www.unicreditbulbank.bg', 'Sofia, Bulgaria', 'contain bank in page', 'by words', 'Bulgaria', NULL);
INSERT INTO public.rb VALUES ('www.meghnabank.com.bd', 'Meghna Bank Limited', 'http://www.meghnabank.com.bd/mbl/index.php/', 'Dhaka, Bangladesh', 'contain bank in page', 'by words', 'Bangladesh', NULL);
INSERT INTO public.rb VALUES ('diamondbank.com', 'Diamond Bank Plc.', 'http://diamondbank.com', 'Victoria Island, Lagos, Lagos State, Nigeria[2]', 'contain bank in page', 'by words', 'Nigeria', NULL);
INSERT INTO public.rb VALUES ('www.inlandbank.com', 'Inland Bank & Trust', 'http://www.inlandbank.com', 'Oak Brook, Illinois', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.icicibank.com', 'ICICI Bank Limited', 'http://www.icicibank.com/', 'ICICI Bank Towers, Bandra Kurla complex, Mumbai, India[1]', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.hdfcbank.com', 'HDFC Bank Limited', 'https://www.hdfcbank.com/', 'Mumbai, Maharashtra, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('sberbank.com', 'PJSC Sberbank', 'http://sberbank.com', 'Moscow, Russia', 'contain bank in page', 'by words', 'Russia', NULL);
INSERT INTO public.rb VALUES ('1ststatebank.com', 'First State Bank', 'http://1ststatebank.com/', 'Gothenburg, Nebraska, United States', 'contain bank in page', NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.ibjbank.co.jp', 'Industrial Bank of Japan', 'http://www.ibjbank.co.jp', '1-3-3 Marunouchi', 'contain bank in page', 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.stanbicbank.com.gh', 'Stanbic Bank', 'https://www.stanbicbank.com.gh/', 'South Africa, Johannesburg', 'contain bank in page', 'by words', 'South Africa', NULL);
INSERT INTO public.rb VALUES ('www.rakbank.ae', 'RAKBANK', 'http://www.rakbank.ae', 'Ras Al-Khaimah, United Arab Emirates', 'contain bank in page', 'by words', 'United Arab Emirates', NULL);
INSERT INTO public.rb VALUES ('www.adabank.com.tr', 'Adabank A.Ş.', 'http://www.adabank.com.tr/', 'Mecidiyeköy, Istanbul, Turkey', 'contain bank in page', 'by words', 'Turkey', NULL);
INSERT INTO public.rb VALUES ('www.wemabank.com', 'Wema Bank Plc.', 'http://www.wemabank.com', '54 Marina, Lagos Island Lagos State, Nigeria', 'contain bank in page', 'by words', 'Nigeria', NULL);
INSERT INTO public.rb VALUES ('ghbank.co.th', 'GH Bank', 'http://ghbank.co.th/', 'Huai Khwang District, Bangkok, Thailand', 'contain bank in page', 'by words', 'Thailand', NULL);
INSERT INTO public.rb VALUES ('unionbank.com', 'MUFG Union Bank, N.A.', 'http://unionbank.com', '1251 Avenue of the AmericasNew York City United States[1]', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.communitybankbd.com', 'Community Bank Bangladesh Limited', 'http://www.communitybankbd.com/', 'Dhaka, Bangladesh', 'contain bank in page', 'by words', 'Bangladesh', NULL);
INSERT INTO public.rb VALUES ('www.wegagenbanksc.com', 'Wegagen Bank', 'https://www.wegagenbanksc.com/', 'Addis Ababa', 'contain bank in page', 'by words', 'Ethiopia', NULL);
INSERT INTO public.rb VALUES ('ansarvdpbank.gov.bd', 'Ansar-VDP Unnayan Bank', 'http://ansarvdpbank.gov.bd', 'Dhaka, Bangladesh', 'contain bank in page', 'by words', 'Bangladesh', NULL);
INSERT INTO public.rb VALUES ('soneribank.com', 'Soneri Bank Limited', 'http://soneribank.com', 'Karachi, Sindh, Pakistan', 'contain bank in page', 'by words', 'Pakistan', NULL);
INSERT INTO public.rb VALUES ('www.genealogybank.com', 'GenealogyBank', 'https://www.genealogybank.com/', 'Naples, Florida', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('halkbank.gov.tm', 'Halk Bank', 'http://halkbank.gov.tm/', 'Ashgabat', 'contain bank in page', 'by words', 'Turkmenistan', NULL);
INSERT INTO public.rb VALUES ('www.kapitalbank.az', 'Kapital Bank', 'http://www.kapitalbank.az/?/', 'Azerbaijan, Baku', 'contain bank in page', 'by words', 'Azerbaijan', NULL);
INSERT INTO public.rb VALUES ('www.veteransbank.com.ph', 'Philippine Veterans Bank', 'http://www.veteransbank.com.ph', 'Makati, Philippines', 'contain bank in page', 'by words', 'Philippines', NULL);
INSERT INTO public.rb VALUES ('www.e-gulfbank.com', 'Gulf Bank', 'http://www.e-gulfbank.com/', 'Kuwait City, Kuwait', 'contain bank in page', 'by words', 'Kuwait', NULL);
INSERT INTO public.rb VALUES ('fcmbank.com.mt', 'FCM Bank Limited', 'https://fcmbank.com.mt/', 'St. Julian''s[1], Malta', 'contain bank in page', 'by words', 'Malta', NULL);
INSERT INTO public.rb VALUES ('www.orointbank.com', 'Oromia International Bank', 'http://www.orointbank.com', 'Addis Ababa, Ethiopia', 'contain bank in page', 'by words', 'Ethiopia', NULL);
INSERT INTO public.rb VALUES ('www.lloydsbank.com', 'Lloyds Bank plc', 'http://www.lloydsbank.com', '25 Gresham Street, London, United Kingdom', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.abcthebank.com', 'African Banking Corporation Limited', 'http://www.abcthebank.com/', 'ABC Bank House, Woodvale Grove, Westlands, Nairobi, Kenya', 'contain bank in page', 'by words', 'Kenya', NULL);
INSERT INTO public.rb VALUES ('www.centrevillebank.com', 'Centreville Bank', 'http://www.centrevillebank.com/', 'West Warwick, Rhode Island, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('devbank.com', 'Development Bank of Kenya', 'http://devbank.com/', 'Loita Street, Nairobi, Kenya', 'contain bank in page', 'by words', 'Kenya', NULL);
INSERT INTO public.rb VALUES ('www.bankinter.com', 'Bankinter, S.A.', 'http://www.bankinter.com', 'Madrid, Spain', 'contain bank in page', NULL, 'Spain', NULL);
INSERT INTO public.rb VALUES ('bankofkhartoum.com', 'Bank of Khartoum', 'http://bankofkhartoum.com/', 'Khartoum', 'contain bank in page', 'by words', 'Sudan', NULL);
INSERT INTO public.rb VALUES ('eurobank.pl', 'Euro Bank', 'https://eurobank.pl/', 'ul. św. Mikołaja 72,
50-126, Wroclaw, Poland', 'contain bank in page', 'by words', 'Poland', NULL);
INSERT INTO public.rb VALUES ('www.probank.gr', 'PROBANK', 'http://www.probank.gr/', 'Athens, Greece', 'contain bank in page', 'by words', 'Greece', NULL);
INSERT INTO public.rb VALUES ('www.mabbank.com', 'Myanma Apex Bank (MAB)', 'http://www.mabbank.com', 'Ottarathiri Township, Nay Pyi Taw, Myanmar (Burma)', 'contain bank in page', NULL, 'Myanmar', NULL);
INSERT INTO public.rb VALUES ('www.bankofindia.co.in', 'Bank of India', 'https://www.bankofindia.co.in/', 'Mumbai, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('web.entbankng.com', 'Enterprise Bank Limited', 'http://web.entbankng.com/', '143 Ahmadu Bello Way Victoria Island, Lagos, Nigeria', 'contain bank in page', 'by words', 'Nigeria', NULL);
INSERT INTO public.rb VALUES ('www.victoriabank.co.ke', 'Victoria Commercial Bank Limited', 'http://www.victoriabank.co.ke/', 'Nairobi, Kenya', 'contain bank in page', NULL, 'Kenya', NULL);
INSERT INTO public.rb VALUES ('www.yesbank.in', 'Yes Bank Limited', 'https://www.yesbank.in', 'Mumbai, Maharashtra, India.', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.utbankghana.com', 'UT Bank', 'http://www.utbankghana.com/', 'Accra, Ghana', 'contain bank in page', 'by words', 'Ghana', NULL);
INSERT INTO public.rb VALUES ('www.citynatbank.com', 'City National Bank of New Jersey', 'http://www.citynatbank.com', '900 Broad StreetNewark, New Jersey', 'contain bank in page', 'by words', 'Jersey', NULL);
INSERT INTO public.rb VALUES ('www.danskebank.ie', 'Danske Bank', 'http://www.danskebank.ie/', 'Dublin, Ireland', 'contain bank in page', 'by words', 'Ireland', NULL);
INSERT INTO public.rb VALUES ('www.bankia.com', 'Bankia S.A.', 'http://www.bankia.com', 'Madrid and Valencia, Spain', 'contain bank in page', 'by words', 'Spain', NULL);
INSERT INTO public.rb VALUES ('www.bundesbank.de', 'Deutsche Bundesbank', 'https://www.bundesbank.de/', 'Frankfurt, Hesse, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.awashbank.com', 'Awash International Bank', 'http://www.awashbank.com', 'Addis Ababa', 'contain bank in page', 'by words', 'Ethiopia', NULL);
INSERT INTO public.rb VALUES ('www.rosbank.ru', 'Rosbank', 'http://www.rosbank.ru/en/', 'Moscow, Russia', 'contain bank in page', 'by words', 'Russia', NULL);
INSERT INTO public.rb VALUES ('www.iwbank.it', 'IWBank S.p.A.', 'http://www.iwbank.it/', 'Milan, Italy', 'contain bank in page', 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('renasantbank.com', 'Renasant Bank', 'http://renasantbank.com', 'Tupelo, Mississippi, USA', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.masterbank.ru', 'Master Bank', 'http://www.masterbank.ru/', 'Russia', 'contain bank in page', 'by words', 'Russia', NULL);
INSERT INTO public.rb VALUES ('www.eximbankindia.in', 'Export-Import Bank of India', 'http://www.eximbankindia.in/', 'Mumbai, India[1]', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.beobank.be', 'beObank nv/SA/AG', 'https://www.beobank.be/', 'Brussels ', 'contain bank in page', 'by words', 'Belgium', NULL);
INSERT INTO public.rb VALUES ('www.takarekbank.hu', 'TakarékBank Zrt.', 'http://www.takarekbank.hu/takarekbank/hu.html', 'Budapest, Hungary', 'contain bank in page', NULL, 'Hungary', NULL);
INSERT INTO public.rb VALUES ('www.pacificglobalbank.com', 'Pacific Global Bank', 'http://www.pacificglobalbank.com', 'Chicago', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.norges-bank.no', 'Norges Bank', 'http://www.norges-bank.no', 'Oslo', 'contain bank in page', 'by words', 'Norway', NULL);
INSERT INTO public.rb VALUES ('www.basicbanklimited.com', 'BASIC Bank Limited', 'http://www.basicbanklimited.com/', 'Dhaka, Bangladesh', 'contain bank in page', NULL, 'Bangladesh', NULL);
INSERT INTO public.rb VALUES ('www.dvbbank.com', 'DVB Bank SE', 'https://www.dvbbank.com/', 'Frankfurt, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.bankhausbauer.de', 'Bankhaus Bauer', 'http://www.bankhausbauer.de/', 'Stuttgart, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.belizebank.com', 'Belize Bank', 'http://www.belizebank.com/', 'Belize', 'contain bank in page', 'by words', 'Belize', NULL);
INSERT INTO public.rb VALUES ('www.ubank.com.au', 'UBank', 'https://www.ubank.com.au', 'Sydney, Australia', 'contain bank in page', 'by words', 'Australia', NULL);
INSERT INTO public.rb VALUES ('www.reisebank.de', 'Reisebank AG', 'http://www.reisebank.de/', 'Frankfurt, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.dollar.bank', 'Dollar Bank', 'https://www.dollar.bank', 'Pittsburgh, Pennsylvania', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.rbcbank.com', 'RBC Bank (Georgia), N.A.', 'http://www.rbcbank.com/', 'Raleigh , United States of America ', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.urwegobank.com', 'Urwego Bank Plc', 'http://www.urwegobank.com', 'Kigali, Rwanda', 'contain bank in page', 'by words', 'Rwanda', NULL);
INSERT INTO public.rb VALUES ('sonybank.net', 'Sony Bank, Inc.', 'http://sonybank.net/', 'Nishikichō, Tokyo, Japan', 'contain bank in page', 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.easternbank.com', 'Eastern Bank', 'https://www.easternbank.com/', 'Boston, Massachusetts, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.bankofbeirut.com', 'Bank of Beirut S.A.L', 'http://www.bankofbeirut.com', 'Beirut, Lebanon', 'contain bank in page', 'by words', 'Lebanon', NULL);
INSERT INTO public.rb VALUES ('persiabank.co.uk', 'Persia International Bank', 'http://persiabank.co.uk/', 'London , United Kingdom', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('dutchbanglabank.com', 'Dutch-Bangla Bank Limited', 'http://dutchbanglabank.com', 'Dhaka, Bangladesh', 'contain bank in page', 'by words', 'Bangladesh', NULL);
INSERT INTO public.rb VALUES ('www.georgiabankandtrust.com', 'Georgia Bank & Trust Company', 'http://www.georgiabankandtrust.com', 'Augusta, Georgia', 'contain bank in page', 'by words', 'Georgia', NULL);
INSERT INTO public.rb VALUES ('www.broadwayfederalbank.com', 'Broadway Federal Bank', 'http://www.broadwayfederalbank.com/', 'Los Angeles, California', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.rsb-bank.ru', 'Russtroybank Русстройбанк', 'http://www.rsb-bank.ru', 'Moscow, Russia', 'contain bank in page', 'by words', 'Russia', NULL);
INSERT INTO public.rb VALUES ('www.asnbank.nl', 'ASN Bank', 'http://www.asnbank.nl', 'The Hague, Netherlands', 'contain bank in page', 'by words', 'Netherlands', NULL);
INSERT INTO public.rb VALUES ('www.bankmillennium.pl', 'Bank Millennium SA', 'https://www.bankmillennium.pl', 'Warsaw, Poland', 'contain bank in page', 'by words', 'Poland', NULL);
INSERT INTO public.rb VALUES ('www.metabank.com', 'MetaBank', 'https://www.metabank.com', 'Sioux Falls, South Dakota, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.muenchner-bank.de', 'Münchner Bank eG', 'http://www.muenchner-bank.de/', 'Munich, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.faisalbank.com.eg', 'Faisal Islamic Bank of Egypt', 'http://www.faisalbank.com.eg/', 'Cairo, Egypt', 'contain bank in page', 'by words', 'Egypt', NULL);
INSERT INTO public.rb VALUES ('www.odishabank.in', 'Odisha Gramya Bank', 'http://www.odishabank.in/', 'Bhubaneswar, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.ilbank.gov.tr', 'İlbank A.Ş.', 'http://www.ilbank.gov.tr/', 'Ulus, Çankaya, Ankara', 'contain bank in page', 'by words', 'Turkey', NULL);
INSERT INTO public.rb VALUES ('www.libertybank.ge', 'Liberty Bank', 'http://www.libertybank.ge/', 'Tbilisi, Georgia', 'contain bank in page', NULL, 'Georgia', NULL);
INSERT INTO public.rb VALUES ('www.amalbank.com.gh', 'AmalBank', 'http://www.amalbank.com.gh', 'Accra, Ghana', 'contain bank in page', 'by words', 'Ghana', NULL);
INSERT INTO public.rb VALUES ('hodgebank.co.uk', 'Hodge Bank', 'http://hodgebank.co.uk', 'Cardiff, Wales, United Kingdom', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.amenbank.com.tn', 'Amen Bank', 'http://www.amenbank.com.tn/', 'Tunis, Tunisia', 'contain bank in page', 'by words', 'Tunisia', NULL);
INSERT INTO public.rb VALUES ('www.capitalbankghana.com', 'Capital Bank Ghana Limited', 'http://www.capitalbankghana.com', 'Accra', 'contain bank in page', 'by words', 'Ghana', NULL);
INSERT INTO public.rb VALUES ('www.yamagatabank.co.jp', 'The Yamagata Bank, Ltd', 'http://www.yamagatabank.co.jp/', 'Yamagata, Yamagata, Japan', 'contain bank in page', 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.marsbank.com', 'Mars Bank', 'http://www.marsbank.com', 'Mars, Pennsylvania, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.kwftbank.com', 'Kenya Women Microfinance Bank', 'http://www.kwftbank.com/', 'Nairobi, Kenya', 'contain bank in page', 'by words', 'Kenya', NULL);
INSERT INTO public.rb VALUES ('www.postbank.de', 'Postbank – eine Niederlassung der DB Privat- und Firmenkundenbank AG', 'https://www.postbank.de', 'Bonn, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.equitybank.cd', 'Equity Bank Congo', 'https://www.equitybank.cd/', 'Kinshasa, Democratic Republic of the Congo', 'contain bank in page', 'by words', 'Democratic Republic of the Congo', NULL);
INSERT INTO public.rb VALUES ('www.vietcombank.com.vn', 'Joint Stock Commercial Bank for Foreign Trade of Vietnam', 'http://www.vietcombank.com.vn/', 'Hanoi, Vietnam', 'contain bank in page', 'by words', 'Vietnam', NULL);
INSERT INTO public.rb VALUES ('www.amanahbank.gov.ph', 'Al-Amanah Islamic Investment Bank of the Philippines', 'http://www.amanahbank.gov.ph/', 'Zamboanga City, Philippines', 'contain bank in page', NULL, 'Philippines', NULL);
INSERT INTO public.rb VALUES ('www.indianbank.in', 'Indian Bank', 'https://www.indianbank.in', 'Chennai, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.fonbank.com.tr', 'Birleşik Fon Bankası A.Ş.', 'http://www.fonbank.com.tr/', 'Esentepe, Istanbul, Turkey', 'contain bank in page', 'by words', 'Turkey', NULL);
INSERT INTO public.rb VALUES ('www.pax-bank.de', 'Pax-Bank eG', 'http://www.pax-bank.de/', 'Cologne', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.psbank.com.ph', 'Philippine Savings Bank', 'https://www.psbank.com.ph', 'Makati, Philippines', 'contain bank in page', 'by words', 'Philippines', NULL);
INSERT INTO public.rb VALUES ('www.bank.lv', 'Bank of Latvia(Latvian: Latvijas Banka)', 'http://www.bank.lv/', 'Riga', 'contain bank in page', 'by words', 'Latvia', NULL);
INSERT INTO public.rb VALUES ('broadway.bank', 'Broadway Bank', 'https://broadway.bank', 'San Antonio, Texas', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.babylonbank-iq.com', 'Babylon Bankمصرف بابل', 'http://www.babylonbank-iq.com', 'Baghdad, Iraq', 'contain bank in page', 'by words', 'Iraq', NULL);
INSERT INTO public.rb VALUES ('www.frankfurter-volksbank.de', 'Frankfurter Volksbank eG', 'http://www.frankfurter-volksbank.de/', 'Frankfurt, Germany[1]', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.unicreditbank.rs', 'UniCredit Bank Serbia', 'https://www.unicreditbank.rs', 'Belgrade, Serbia', 'contain bank in page', 'by words', 'Serbia', NULL);
INSERT INTO public.rb VALUES ('www.sbsbank.co.nz', 'SBS Bank', 'https://www.sbsbank.co.nz/', 'Head office based in Invercargill, New Zealand', 'contain bank in page', 'by words', 'New Zealand', NULL);
INSERT INTO public.rb VALUES ('allahabadbank.in', 'Allahabad Bank', 'http://allahabadbank.in', 'Kolkata, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.pnbbanka.eu', 'JSC PNB Banka', 'http://www.pnbbanka.eu', 'Latvia, Riga', 'contain bank in page', 'by words', 'Latvia', NULL);
INSERT INTO public.rb VALUES ('www.finabank.com', 'Fina Bank Group', 'http://www.finabank.com', 'Nairobi, Kenya', 'contain bank in page', 'by words', 'Kenya', NULL);
INSERT INTO public.rb VALUES ('www.abbank.rw', 'AB Bank Rwanda', 'http://www.abbank.rw/', 'Kigali, Rwanda', 'contain bank in page', 'by words', 'Rwanda', NULL);
INSERT INTO public.rb VALUES ('www.vbsmutualbank.co.za', 'VBS Mutual Bank', 'https://www.vbsmutualbank.co.za/', 'Rivonia, Johannesburg, South Africa', 'contain bank in page', 'by words', 'South Africa', NULL);
INSERT INTO public.rb VALUES ('www.CenturyBank.com', 'Century Bank', 'https://www.CenturyBank.com', 'Medford, Massachusetts, United States', 'contain bank in page', NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.adityabirla.bank', 'Aditya Birla Payments Bank', 'https://www.adityabirla.bank/', 'Mumbai, India', 'contain bank in page', NULL, 'India', NULL);
INSERT INTO public.rb VALUES ('www.agranibank.org', 'Agrani Bank Limited', 'http://www.agranibank.org', 'Dhaka, Bangladesh', 'contain bank in page', 'by words', 'Bangladesh', NULL);
INSERT INTO public.rb VALUES ('www.abacusbank.com', 'Abacus Federal Savings Bank', 'http://www.abacusbank.com/', 'New York, New Jersey, and Pennsylvania', 'contain bank in page', 'by words', 'Jersey', NULL);
INSERT INTO public.rb VALUES ('finecobank.com', 'FinecoBank', 'https://finecobank.com', 'Milan , Italy ', 'contain bank in page', 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.dubaibank.co.ke', 'Dubai Bank Kenya', 'http://www.dubaibank.co.ke/', 'Nairobi, Kenya', 'contain bank in page', 'by words', 'Kenya', NULL);
INSERT INTO public.rb VALUES ('www.sainthelenabank.com', 'Bank of St. Helena Ltd', 'http://www.sainthelenabank.com', 'Market Street, Jamestown, Saint Helena', 'contain bank in page', 'by words', 'Saint Helena', NULL);
INSERT INTO public.rb VALUES ('www.keralagbank.com', 'Kerala Gramin Bank', 'http://www.keralagbank.com/', 'Malappuram, Kerala, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.citibank.ae', 'Citibank N.A., United Arab Emirates', 'https://www.citibank.ae', 'Citibank U.A.E. Al Wasl BranchDubai United Arab Emirates', 'contain bank in page', 'by words', 'United Arab Emirates', NULL);
INSERT INTO public.rb VALUES ('www.bracbank.com', 'BRAC Bank Limited', 'http://www.bracbank.com/', '220/B Gulshan Tejgaon Link Road, Dhaka 1208 Dhaka, Bangladesh', 'contain bank in page', 'by words', 'Bangladesh', NULL);
INSERT INTO public.rb VALUES ('kitsapbank.com', 'Kitsap Bank', 'http://kitsapbank.com', 'Port Orchard, Washington, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.netbank.hu', 'MagNet Bank', 'https://www.netbank.hu/en/', 'Budapest, Hungary', 'contain bank in page', 'by words', 'Hungary', NULL);
INSERT INTO public.rb VALUES ('newkabulbank.af', 'New Kabul Bank', 'http://newkabulbank.af/', 'Kabul, Afghanistan', 'contain bank in page', 'by words', 'Afghanistan', NULL);
INSERT INTO public.rb VALUES ('danskebank.com', 'Danske Bank A/S', 'http://danskebank.com', 'Copenhagen, Denmark', 'contain bank in page', NULL, 'Denmark', NULL);
INSERT INTO public.rb VALUES ('www.budapestbank.hu', 'Budapest Bank', 'https://www.budapestbank.hu', 'Váci út 193., Budapest, Hungary', 'contain bank in page', 'by words', 'Hungary', NULL);
INSERT INTO public.rb VALUES ('www.ificbankbd.com', 'IFIC Bank Limited', 'http://www.ificbankbd.com/', 'Dhaka, Bangladesh', 'contain bank in page', 'by words', 'Bangladesh', NULL);
INSERT INTO public.rb VALUES ('www.equitasbank.com', 'Equitas Small Finance Bank', 'https://www.equitasbank.com', 'Phase-II, 4th Floor, Spencer Plaza, No-769, Anna Salai, Chennai, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.azerturkbank.az', 'Azer-Turk Bank', 'http://www.azerturkbank.az', 'Baku, Azerbaijan', 'contain bank in page', 'by words', 'Azerbaijan', NULL);
INSERT INTO public.rb VALUES ('www.librabank.ro', 'Libra Bank', 'http://www.librabank.ro', 'Bucharest, Romania', 'contain bank in page', 'by words', 'Romania', NULL);
INSERT INTO public.rb VALUES ('www.grindrodbank.co.za', 'Grindrod Bank', 'http://www.grindrodbank.co.za/', 'Johannesburg, South Africa', 'contain bank in page', NULL, 'South Africa', NULL);
INSERT INTO public.rb VALUES ('karnatakabank.com', 'Karnataka Bank Limited', 'https://karnatakabank.com', 'Mangaluru, Karnataka, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.bankaudigroup.com', 'Bank Audi S.A.L.', 'http://www.bankaudigroup.com', 'Beirut, Lebanon', 'contain bank in page', 'by words', 'Lebanon', NULL);
INSERT INTO public.rb VALUES ('www.creditbank.co.ke', 'Credit Bank', 'http://www.creditbank.co.ke/', 'Nairobi, Kenya', 'contain bank in page', 'by words', 'Kenya', NULL);
INSERT INTO public.rb VALUES ('www.nationsbank.com', 'NationsBank', 'http://www.nationsbank.com', 'Charlotte, North Carolina, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.centralbankbahamas.com', 'Central Bank of The Bahamas', 'http://www.centralbankbahamas.com', 'Nassau', 'contain bank in page', 'by words', 'Bahamas', NULL);
INSERT INTO public.rb VALUES ('www.consorsbank.de', 'Consorsbank', 'http://www.consorsbank.de/', 'Nürnberg', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('clarienbank.com', 'Clarien Bank Limited', 'https://clarienbank.com/', 'Hamilton, Bermuda', 'contain bank in page', 'by words', 'Bermuda', NULL);
INSERT INTO public.rb VALUES ('www.bmwbank.de', 'BMW Bank GmbH', 'http://www.bmwbank.de/', 'Munich', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.postbank.ir', 'Post Bank of Iran', 'http://www.postbank.ir/', 'Tehran, Iran', 'contain bank in page', 'by words', 'Iran', NULL);
INSERT INTO public.rb VALUES ('www.dresdner-bank.com', 'Dresdner Bank AG', 'http://www.dresdner-bank.com/', 'Frankfurt, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('beneficialstatebank.com', 'Beneficial State Bank', 'http://beneficialstatebank.com', 'Oakland, California, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.christopherandbanks.com', 'Christopher & Banks', 'http://www.christopherandbanks.com', 'Plymouth, Minnesota, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('azizibank.com', 'Azizizi Bank', 'http://azizibank.com', 'Ankara Square, Opp Turkish Embassy, Main Road, Kabul, Afghanistan', 'contain bank in page', 'by words', 'Afghanistan', NULL);
INSERT INTO public.rb VALUES ('www.agribank-ly.org', 'Libyan Agricultural Bank', 'http://www.agribank-ly.org/', '52, Omar El Mokhtar Street, Tripoli, Libya', 'contain bank in page', 'by words', 'Libya', NULL);
INSERT INTO public.rb VALUES ('www.eurocitybank.de', 'Eurocity Bank AG', 'http://www.eurocitybank.de/', 'Frankfurt, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.smgbank.com', 'South Malabar Gramin Bank', 'http://www.smgbank.com/', 'Malappuram, Kerala, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.clickbank.com', 'ClickBank', 'http://www.clickbank.com/', 'United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('en.deltabank.com.ua', 'Delta Bank', 'http://en.deltabank.com.ua/', 'Kiev, Ukraine', 'contain bank in page', 'by words', 'Ukraine', NULL);
INSERT INTO public.rb VALUES ('www.tbcbank.ge', 'TBC Bank', 'http://www.tbcbank.ge', 'Tbilisi, Georgia', 'contain bank in page', 'by words', 'Georgia', NULL);
INSERT INTO public.rb VALUES ('www.warka-bank.com', 'Warka Bank for Investment & Finance', 'http://www.warka-bank.com', 'Baghdad, Iraq', 'contain bank in page', 'by words', 'Iraq', NULL);
INSERT INTO public.rb VALUES ('investor.eubank.kz', 'Eurasian Bank JSC', 'http://investor.eubank.kz/en/', 'Almaty, Kazakhstan', 'contain bank in page', NULL, 'Kazakhstan', NULL);
INSERT INTO public.rb VALUES ('www.sozialbank.de', 'Bank für Sozialwirtschaft AG', 'http://www.sozialbank.de/', 'Cologne and Berlin, Germany[2]', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('buffalocommercialbank.com', 'Buffalo Commercial Bank', 'http://buffalocommercialbank.com/index.php', 'Juba, South Sudan', 'contain bank in page', NULL, 'South Sudan', NULL);
INSERT INTO public.rb VALUES ('www.anadolubank.com.tr', 'Anadolubank A.Ş.', 'http://www.anadolubank.com.tr/', 'Umraniye, Istanbul, Turkey', 'contain bank in page', 'by words', 'Turkey', NULL);
INSERT INTO public.rb VALUES ('www.bealbank.com', 'Beal Bank', 'https://www.bealbank.com/', 'Plano, Texas', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.bankunited.com', 'BankUnited, Inc.', 'http://www.bankunited.com/', 'Miami Lakes, Florida, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.rabobank.com', 'Coöperatieve Rabobank U.A.', 'http://www.rabobank.com', 'Rabotoren, Utrecht, Netherlands', 'contain bank in page', 'by words', 'Netherlands', NULL);
INSERT INTO public.rb VALUES ('www.andhrabank.in', 'Andhra Bank', 'https://www.andhrabank.in/', 'Hyderabad', 'contain bank in page', NULL, 'India', NULL);
INSERT INTO public.rb VALUES ('www.iombank.com', 'The Royal Bank of Scotland International Limited trading as Isle of Man Bank', 'http://www.iombank.com/', 'Douglas, Isle of Man', 'contain bank in page', 'by words', 'Isle of Man', NULL);
INSERT INTO public.rb VALUES ('www.eximbank.com.tw', 'Export–Import Bank of the Republic of China', 'http://www.eximbank.com.tw/en-us/Pages/default.aspx', 'Taipei, Taiwan', 'contain bank in page', 'by words', 'Taiwan', NULL);
INSERT INTO public.rb VALUES ('www.americanmomentum.bank', 'American Momentum Bank [1]', 'https://www.americanmomentum.bank/', 'College Station, Texas, United States [3]', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.altabank.com', 'Altabank', 'https://www.altabank.com/', '33 East Main StreetAmerican Fork, UtahUnited States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.firstwestroads.bank', 'First Westroads Bank', 'https://www.firstwestroads.bank/', 'Omaha, Nebraska, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.eximbank-dj.com', 'Exim Bank (Djibouti) S. A', 'http://www.eximbank-dj.com/', 'Djibouti City, Djibouti', 'contain bank in page', 'by words', 'Djibouti', NULL);
INSERT INTO public.rb VALUES ('www.al-bank.dk', 'Arbejdernes Landsbank', 'https://www.al-bank.dk', 'Vesterbrogade 5, Copenhagen, Denmark', 'contain bank in page', 'by words', 'Denmark', NULL);
INSERT INTO public.rb VALUES ('www.jp-bank.japanpost.jp', 'Japan Post Bank Co., Ltd.', 'http://www.jp-bank.japanpost.jp', 'Chiyoda, Tokyo, Japan', 'contain bank in page', NULL, 'Japan', NULL);
INSERT INTO public.rb VALUES ('ccbank.co.uk', 'Cambridge & Counties Bank Ltd.', 'http://ccbank.co.uk/', 'Charnwood Court, 5B New Walk, Leicester, Leicestershire', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.home.amalgamatedbank.com', 'Amalgamated Bank', 'https://www.home.amalgamatedbank.com/', '275 Seventh Avenue, New York City, New York, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.metrobankonline.co.uk', 'Metro Bank plc', 'http://www.metrobankonline.co.uk/', 'London, United Kingdom', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.volksbank-neckartal.de', 'Volksbank Neckartal eG', 'http://www.volksbank-neckartal.de/', 'Eberbach, Germany[1]', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('nicoletbank.com', 'Nicolet Bankshares', 'http://nicoletbank.com', 'Green Bay, WI, United States', 'contain bank in page', NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.gibintbank.gi', 'Gibraltar International Bank', 'https://www.gibintbank.gi', 'Gibraltar International Bank Ltd, Ince''s House, 310 Main Street, Gibraltar, GX11 1AA
        ', 'contain bank in page', 'by words', 'Gibraltar', NULL);
INSERT INTO public.rb VALUES ('www.keystonebankng.com', 'Keystone Bank Limited', 'http://www.keystonebankng.com/', 'Victoria Island, Lagos, Lagos State, Nigeria', 'contain bank in page', 'by words', 'Nigeria', NULL);
INSERT INTO public.rb VALUES ('www.hokutobank.co.jp', 'The Hokuto Bank Ltd 北都銀行', 'http://www.hokutobank.co.jp/', 'Akita, Japan (1993)', 'contain bank in page', NULL, 'Japan', NULL);
INSERT INTO public.rb VALUES ('pdccbank.com', 'Pune District Central Co-Operative Bank Ltd. Pune
 पुणे जिल्हा मध्यवर्ती सहकारी बँक पुणे', 'http://pdccbank.com', 'Pune , Maharashtra, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.bankofmelbourne.com.au', 'Bank of Melbourne', 'http://www.bankofmelbourne.com.au/', 'Melbourne, Australia', 'contain bank in page', 'by words', 'Australia', NULL);
INSERT INTO public.rb VALUES ('www.banken.gl', 'GrønlandsBANKEN A/S', 'https://www.banken.gl/en', 'Nuuk, Greenland', 'contain bank in page', 'by words', 'Greenland', NULL);
INSERT INTO public.rb VALUES ('www.womensbank.co.tz', 'Tanzania Women''s Bank Limited', 'http://www.womensbank.co.tz/', 'Dar es Salaam, Tanzania', 'contain bank in page', 'by words', 'Tanzania', NULL);
INSERT INTO public.rb VALUES ('www.norisbank.de', 'Norisbank GmbH', 'http://www.norisbank.de/', 'Bonn, Germany[1]', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('islamibankbd.com', 'Islami Bank Bangladesh Ltd.', 'http://islamibankbd.com', 'Islami Bank Tower 40, Dilkusha C/A, Dhaka - 1000, Bangladesh', 'contain bank in page', 'by words', 'Bangladesh', NULL);
INSERT INTO public.rb VALUES ('www.RepublicBank.com', 'Republic Bank & Trust Company', 'http://www.RepublicBank.com', 'Louisville, Kentucky, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.accessbank.co.tz', 'AccessBank Tanzania Limited', 'http://www.accessbank.co.tz/', 'Dar es Salaam, Tanzania', 'contain bank in page', 'by words', 'Tanzania', NULL);
INSERT INTO public.rb VALUES ('www.krishibank.org.bd', 'Bangladesh Krishi Bank', 'http://www.krishibank.org.bd/', 'Dhaka, Bangladesh', 'contain bank in page', 'by words', 'Bangladesh', NULL);
INSERT INTO public.rb VALUES ('www.imbank.co.tz', 'I&M Bank Tanzania Limited', 'http://www.imbank.co.tz/', 'Dar es Salaam, Tanzania', 'contain bank in page', 'by words', 'Tanzania', NULL);
INSERT INTO public.rb VALUES ('www.bankalhabib.com', 'Bank AL Habib Limited', 'https://www.bankalhabib.com/', 'Multan & Karachi, Pakistan', 'contain bank in page', 'by words', 'Pakistan', NULL);
INSERT INTO public.rb VALUES ('www.pashabank.ge', 'PASHA Bank Georgia', 'http://www.pashabank.ge', 'Tbilisi, Georgia', 'contain bank in page', 'by words', 'Georgia', NULL);
INSERT INTO public.rb VALUES ('www.psd-bank.de', 'PSD Bank', 'http://www.psd-bank.de', 'Bonn, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.rodovidbank.com', 'OJSC "Rodovid Bank"', 'http://www.rodovidbank.com/', 'Kyiv, Ukraine', 'contain bank in page', 'by words', 'Ukraine', NULL);
INSERT INTO public.rb VALUES ('www.dhanbank.com', 'Dhanlaxmi Bank', 'https://www.dhanbank.com', 'Thrissur, Kerala, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.combanketh.et', 'Commercial Bank of Ethiopia', 'http://www.combanketh.et', 'Addis Ababa, Ethiopia', 'contain bank in page', 'by words', 'Ethiopia', NULL);
INSERT INTO public.rb VALUES ('www.trustbank.com.gh', 'The Trust Bank', 'http://www.trustbank.com.gh/', 'Accra, Ghana', 'contain bank in page', 'by words', 'Ghana', NULL);
INSERT INTO public.rb VALUES ('www.bramerbank.mu', 'Bramer Banking Corporation Limited', 'http://www.bramerbank.mu/', 'Port Louis, Mauritius', 'contain bank in page', 'by words', 'Mauritius', NULL);
INSERT INTO public.rb VALUES ('www.acledabank.com.kh', 'ACLEDA Bank Plc.', 'http://www.acledabank.com.kh', 'Phnom Penh, Cambodia', 'contain bank in page', 'by words', 'Cambodia', NULL);
INSERT INTO public.rb VALUES ('www.efirstbank.com', 'FirstBank Holding Company', 'https://www.efirstbank.com/', 'Lakewood, Colorado, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.providusbank.com', 'Providus Bank Limited', 'https://www.providusbank.com/', '724 Adetokunbo Ademola Street, Victoria Island, Lagos, Lagos State, Nigeria', 'contain bank in page', 'by words', 'Nigeria', NULL);
INSERT INTO public.rb VALUES ('www.maubank.mu', 'MauBank Ltd', 'http://www.maubank.mu/', '25 Bank Street, Ebene CyberCity, Mauritius', 'contain bank in page', 'by words', 'Mauritius', NULL);
INSERT INTO public.rb VALUES ('www.fbbank.gr', 'FBB - First Business Bank SA', 'http://www.fbbank.gr', 'Athens, Greece', 'contain bank in page', NULL, 'Greece', NULL);
INSERT INTO public.rb VALUES ('www.postbank.co.ug', 'PostBank Uganda', 'http://www.postbank.co.ug/', '4 - 6 Nkrumah RoadKampala, Uganda', 'contain bank in page', 'by words', 'Uganda', NULL);
INSERT INTO public.rb VALUES ('www.aikbanka.rs', 'AIK Banka', 'http://www.aikbanka.rs/', 'Bulevar Mihaila Pupina 115đ, Belgrade, Serbia', 'contain bank in page', 'by words', 'Serbia', NULL);
INSERT INTO public.rb VALUES ('www.gtbank.com', 'Guaranty Trust Bank plc', 'http://www.gtbank.com/', '635 Akin Adesola Street, Victoria Island, Lagos, Lagos State, Nigeria', 'contain bank in page', NULL, 'Nigeria', NULL);
INSERT INTO public.rb VALUES ('www.rawbank.cd', 'Rawbank', 'http://www.rawbank.cd/', 'Kinshasa, Democratic Republic of the Congo', 'contain bank in page', 'by words', 'Democratic Republic of the Congo', NULL);
INSERT INTO public.rb VALUES ('www.FootageBank.com', 'FootageBank', 'http://www.FootageBank.com/', 'Los Angeles, California, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('finbank.com.ng', 'FinBank', 'http://finbank.com.ng/', 'Lagos, Lagos State, Nigeria', 'contain bank in page', 'by words', 'Nigeria', NULL);
INSERT INTO public.rb VALUES ('www.turkbank.com.tr', 'Türk Ticaret Bankası', 'http://www.turkbank.com.tr/', 'Istanbul, Turkey', 'contain bank in page', 'by words', 'Turkey', NULL);
INSERT INTO public.rb VALUES ('www.degussa-bank.de', 'Degussa Bank', 'http://www.degussa-bank.de/', 'Frankfurt, Germany[1]', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.fmbankva.com', 'F&M Bank', 'https://www.fmbankva.com', 'Timberville, VA, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.banksaudara.com', 'PT Bank Himpunan Saudara 1906 TBK', 'http://www.banksaudara.com/', 'Bandung, Indonesia', 'contain bank in page', 'by words', 'Indonesia', NULL);
INSERT INTO public.rb VALUES ('nationaldiaperbanknetwork.org', 'National Diaper Bank Network', 'http://nationaldiaperbanknetwork.org', '155 East StreetNew Haven, Connecticut', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.bin-bank.com', 'B&N Bank', 'http://www.bin-bank.com/ru.ru/index.html', 'Moscow, Russia', 'contain bank in page', NULL, 'Russia', NULL);
INSERT INTO public.rb VALUES ('www.kfw-ipex-bank.de', 'KfW IPEX-Bank GmbH', 'http://www.kfw-ipex-bank.de/', 'Frankfurt, Germany[1]', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.frieslandbank.nl', 'Friesland Bank N.V.', 'http://www.frieslandbank.nl/', 'Leeuwarden, Netherlands', 'contain bank in page', 'by words', 'Netherlands', NULL);
INSERT INTO public.rb VALUES ('eihbank.de', 'Iranian-European Bank', 'http://eihbank.de', 'Hamburg, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.accessbank.com.lr', 'AccessBank Liberia', 'http://www.accessbank.com.lr', '20th Street, SinkorMonrovia, Liberia', 'contain bank in page', 'by words', 'Liberia', NULL);
INSERT INTO public.rb VALUES ('www.mainstreetbanklimited.com', 'Mainstreet Bank Limited', 'http://www.mainstreetbanklimited.com/', 'Lagos, Nigeria', 'contain bank in page', 'by words', 'Nigeria', NULL);
INSERT INTO public.rb VALUES ('www.privatebank.citibank.com', 'Citi Private Bank', 'https://www.privatebank.citibank.com/', 'New York ', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.gatecity.bank', 'Gate City Bank', 'https://www.gatecity.bank/', 'Fargo, North Dakota, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.parknationalbank.com', 'Park National Bank', 'http://www.parknationalbank.com', 'United States of America ', 'contain bank in page', NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.moodybank.com', 'Moody National Bank', 'http://www.moodybank.com/', 'Galveston, Texas, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.procreditbank.de', 'ProCredit Bank Deutschland', 'https://www.procreditbank.de/', 'Frankfurt, Germany', 'contain bank in page', NULL, 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.mgbank.co.in', 'Madhyanchal Gramin Bank', 'http://www.mgbank.co.in', 'Sagar, Madhya Pradesh, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.centralbank.gov.ye', 'Central Bank of Yemenالبنك المركزي اليمني', 'http://www.centralbank.gov.ye/', 'Aden', 'contain bank in page', 'by words', 'Yemen', NULL);
INSERT INTO public.rb VALUES ('www.umweltbank.de', 'Umweltbank AG', 'https://www.umweltbank.de/', 'Nuremberg, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.securetrustbank.com', 'Secure Trust Bank PLC', 'https://www.securetrustbank.com', 'Solihull, United Kingdom', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.hsbcprivatebank.com', 'HSBC Private Banking Holdings (Suisse) S.A.', 'http://www.hsbcprivatebank.com/', 'Geneva, Switzerland', 'contain bank in page', 'by words', 'Switzerland', NULL);
INSERT INTO public.rb VALUES ('www.tripuragraminbank.org', 'Tripura Gramin Bank', 'http://www.tripuragraminbank.org/tgb/default.aspx', 'Agartala, India', 'contain bank in page', NULL, 'India', NULL);
INSERT INTO public.rb VALUES ('www.nationalomanbank.world', 'National Bank of Oman', 'https://www.nationalomanbank.world', 'Muscat Oman', 'contain bank in page', 'by words', 'Oman', NULL);
INSERT INTO public.rb VALUES ('liberty-bank.com', 'Liberty Bank', 'https://liberty-bank.com', 'Middletown, Connecticut, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.auswidebank.com.au', 'Auswide Bank', 'http://www.auswidebank.com.au', 'Bundaberg, Australia', 'contain bank in page', 'by words', 'Australia', NULL);
INSERT INTO public.rb VALUES ('alfabank.ru', 'Alfa Bank JSC', 'http://alfabank.ru', 'Moscow, Russia', 'contain bank in page', 'by words', 'Russia', NULL);
INSERT INTO public.rb VALUES ('www.azaniabank.co.tz', 'Azania Bank', 'http://www.azaniabank.co.tz/', 'Dar-es-Salaam, Tanzania', 'contain bank in page', 'by words', 'Tanzania', NULL);
INSERT INTO public.rb VALUES ('www.kumaribank.com', 'Kumari Bank कुमारी बैंक लिमिटेड', 'http://www.kumaribank.com/', 'Tangal Kathmandu, Nepal', 'contain bank in page', 'by words', 'Nepal', NULL);
INSERT INTO public.rb VALUES ('www.bandhanbank.com', 'Bandhan Bank', 'http://www.bandhanbank.com/', 'Kolkata, West Bengal, India.', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.farmerbank.com.tw', 'Farmers Bank of China[1]', 'http://www.farmerbank.com.tw/', '85 NanKing East Road, Section 2, Taipei, Taiwan', 'contain bank in page', 'by words', 'Taiwan', NULL);
INSERT INTO public.rb VALUES ('www.banktencate.com', 'Bank Ten Cate & Cie. N.V.', 'https://www.banktencate.com', 'Amsterdam, Netherlands', 'contain bank in page', 'by words', 'Netherlands', NULL);
INSERT INTO public.rb VALUES ('www.nedbankgroup.co.za', 'Nedbank Group Limited', 'http://www.nedbankgroup.co.za/', 'Sandton, South Africa', 'contain bank in page', 'by words', 'South Africa', NULL);
INSERT INTO public.rb VALUES ('www.josbank.com', 'Jos. A. Bank', 'http://www.josbank.com/', 'Fremont, California, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.investmentbank.barclays.com', 'Barclays Investment Bank', 'https://www.investmentbank.barclays.com', 'London, United Kingdom', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.bellbanks.com', 'Bell Bank', 'https://www.bellbanks.com/', 'Fargo, North Dakota, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.pbgbank.com', 'PASCHIM BANGA GRAMIN BANK(PBGB)', 'http://www.pbgbank.com', 'Howrah, West Bengal, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.bthbank.com', 'BTH Bank', 'http://www.bthbank.com/', 'Quitman, Texas', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.bankaustria.at', 'UniCredit Bank Austria AG', 'http://www.bankaustria.at/', 'Vienna, Austria', 'contain bank in page', 'by words', 'Austria', NULL);
INSERT INTO public.rb VALUES ('www.unionbankph.com', 'Union Bank of the Philippines, Inc.', 'http://www.unionbankph.com', 'Pasig, Philippines', 'contain bank in page', 'by words', 'Philippines', NULL);
INSERT INTO public.rb VALUES ('www.alternatifbank.com.tr', 'Alternatifbank A.Ş.', 'https://www.alternatifbank.com.tr', 'Istanbul, Turkey', 'contain bank in page', 'by words', 'Turkey', NULL);
INSERT INTO public.rb VALUES ('www.baaderbank.de', 'Baader Bank AG', 'http://www.baaderbank.de', 'Unterschleißheim, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.creditbankofalbania.al', 'Credit Bank of Albania', 'http://www.creditbankofalbania.al/', 'Tirana', 'contain bank in page', 'by words', 'Albania', NULL);
INSERT INTO public.rb VALUES ('www.applebank.com', 'Apple Bank for Savings', 'https://www.applebank.com/', 'Manhasset, New York', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.tmbbank.com', 'TMB Bank', 'http://www.tmbbank.com', 'Chatuchak, Bangkok, Thailand', 'contain bank in page', 'by words', 'Thailand', NULL);
INSERT INTO public.rb VALUES ('www.postbank.bg', 'Bulgarian Postbank(legally known as Eurobank Bulgaria AD)', 'http://www.postbank.bg/', 'Sofia, Bulgaria', 'contain bank in page', 'by words', 'Bulgaria', NULL);
INSERT INTO public.rb VALUES ('bankhapoalim.com', 'Bank Hapoalim B.M.', 'http://bankhapoalim.com', 'Tel Aviv, Israel', 'contain bank in page', 'by words', 'Israel', NULL);
INSERT INTO public.rb VALUES ('bankofgeorgia.ge', 'Bank of Georgia', 'http://bankofgeorgia.ge', 'Tbilisi, Georgia', 'contain bank in page', 'by words', 'Georgia', NULL);
INSERT INTO public.rb VALUES ('www.bankofflorida.com', 'Bank of Florida Corporation', 'http://www.bankofflorida.com/', 'Naples, Florida', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.4thebank.com', 'The Bank of Edwardsville', 'https://www.4thebank.com', '330 West Vandalia Street, Edwardsville, 62025 Illinois, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.iwatebank.co.jp', 'The Bank of Iwate Co Ltd 岩手銀行', 'http://www.iwatebank.co.jp', 'Morioka, Iwate, Japan', 'contain bank in page', 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.nmgbank.com', 'North Malabar Gramin Bank', 'http://www.nmgbank.com/', 'Kannur, Kerala, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.unibank.az', 'Unibank', 'http://www.unibank.az', '55, Rashid Behbudov Street, Baku, AZ 1014, Azerbaijan', 'contain bank in page', 'by words', 'Azerbaijan', NULL);
INSERT INTO public.rb VALUES ('www.alliancebank.com.my', 'Alliance Bank Malaysia Berhad', 'http://www.alliancebank.com.my/', 'Kuala Lumpur, Malaysia', 'contain bank in page', 'by words', 'Malaysia', NULL);
INSERT INTO public.rb VALUES ('www.starlingbank.com', 'Starling Bank Ltd', 'http://www.starlingbank.com', 'London,United Kingdom', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.pandyangramabank.in', 'Tamil Nadu Grama Bank', 'http://www.pandyangramabank.in/', 'Virudhunagar, Tamil Nadu, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.nmbbank.co.tz', 'NMB Bank Plc', 'https://www.nmbbank.co.tz/', 'Dar es Salaam, Tanzania', 'contain bank in page', 'by words', 'Tanzania', NULL);
INSERT INTO public.rb VALUES ('www.lloydsbankinggroup.com', 'Lloyds Banking Group plc', 'http://www.lloydsbankinggroup.com', '
Edinburgh, Scotland, UK (Registered office)
London, England, UK (Operational
            headquarters)
        ', 'contain bank in page', NULL, 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.bankofbaroda.ug', 'Bank of Baroda Uganda Limited', 'http://www.bankofbaroda.ug/', '18 Kampala RoadKampala, Uganda', 'contain bank in page', 'by words', 'Uganda', NULL);
INSERT INTO public.rb VALUES ('www.bankcomm.com', 'Bank of Communications Limited交通银行股份有限公司', 'http://www.bankcomm.com/', 'Shanghai, People''s Republic of China', 'contain bank in page', 'by words', 'China', NULL);
INSERT INTO public.rb VALUES ('www.thinkbank.com', 'Think Mutual Bank', 'https://www.thinkbank.com/', 'Rochester, Minnesota, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.cotabank.com.tw', 'COTA Commercial Bank 三信商業銀行', 'http://www.cotabank.com.tw/', '59 Shihfu Road, Central District, Taichung, Taiwan', 'contain bank in page', 'by words', 'Taiwan', NULL);
INSERT INTO public.rb VALUES ('www.bankofbaroda.com', 'Bank of Baroda', 'https://www.bankofbaroda.com/', 'Vadodara, Gujarat, India[1]', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.left-bank.com', 'Left Bank Books', 'http://www.left-bank.com/', 'St. Louis, Missouri, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.herringbank.com', 'Herring Bank', 'http://www.herringbank.com', 'Amarillo, Texas, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.piraeusbank.rs', 'Piraeus Bank Beograd', 'http://www.piraeusbank.rs', 'Belgrade, Serbia', 'contain bank in page', 'by words', 'Serbia', NULL);
INSERT INTO public.rb VALUES ('ctznbank.com', 'Citizens Bank International Limited', 'http://ctznbank.com', 'Narayanhiti Path, Kathmandu-44600, Kathmandu, Nepal', 'contain bank in page', 'by words', 'Nepal', NULL);
INSERT INTO public.rb VALUES ('www.fubonbank.com.hk', 'Fubon Bank (Hong Kong) Limited 富邦銀行(香港)有限公司', 'http://www.fubonbank.com.hk/web/html/index_e.html', 'Hong Kong', 'contain bank in page', 'by words', 'Hong Kong', NULL);
INSERT INTO public.rb VALUES ('www.centralbankofindia.co.in', 'Central Bank of India', 'https://www.centralbankofindia.co.in/', 'Mumbai, Maharashtra, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.lfbank.ly', 'Libyan Foreign Bankالمصرف الليبي الخارجي‎', 'http://www.lfbank.ly/', 'Tripoli Dat El Imad Administrative Complex, Libya', 'contain bank in page', 'by words', 'Libya', NULL);
INSERT INTO public.rb VALUES ('www.centurybank.com.np', 'Century Bank Limited', 'http://www.centurybank.com.np', 'Putalisadak, Kathmandu', 'contain bank in page', 'by words', 'Nepal', NULL);
INSERT INTO public.rb VALUES ('nabilbank.com', 'Nabil Bank Limitedनबिल बैंक लिमिटेड', 'http://nabilbank.com', 'Nabil Center, Durbarmarg, Kathmandu, Nepal', 'contain bank in page', 'by words', 'Nepal', NULL);
INSERT INTO public.rb VALUES ('www.uibbank.com', 'United International Bank', 'http://www.uibbank.com', 'New York City, New York, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.kvgbank.com', 'Karnataka Vikas Grameena Bank', 'http://www.kvgbank.com', 'Dharwad, Karnataka, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.greatwesternbank.com', 'Great Western Bank', 'https://www.greatwesternbank.com/', 'Sioux Falls, South Dakota, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('bankofbaroda.co.tz', 'Bank of Baroda Tanzania Limited', 'http://bankofbaroda.co.tz/', '139/42 Ohio Road at Sokoine Drive, Dar es Salaam, Tanzania', 'contain bank in page', 'by words', 'Tanzania', NULL);
INSERT INTO public.rb VALUES ('www.dhbbank.com', 'Demir-Halk Bank (Nederland) N.V.', 'http://www.dhbbank.com', 'Rotterdam, Netherlands', 'contain bank in page', 'by words', 'Netherlands', NULL);
INSERT INTO public.rb VALUES ('www.agrobank.com.my', 'Agrobank (Bank Pertanian Malaysia Berhad)', 'http://www.agrobank.com.my', 'Leboh Pasar Besar, Peti Surat 10815, 50726 Kuala Lumpur, Malaysia', 'contain bank in page', 'by words', 'Malaysia', NULL);
INSERT INTO public.rb VALUES ('www.ibankunited.com', 'United Commercial Bank', 'http://www.ibankunited.com', 'San Francisco, California, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.landbank.com', 'Land Bank of the Philippines', 'http://www.landbank.com', 'Malate, Manila, Philippines', 'contain bank in page', 'by words', 'Philippines', NULL);
INSERT INTO public.rb VALUES ('www.atabank.com', 'AtaBank', 'http://www.atabank.com/?lang=en', 'Baku, Azerbaijan', 'contain bank in page', 'by words', 'Azerbaijan', NULL);
INSERT INTO public.rb VALUES ('www.leftbankpictures.co.uk', 'Left Bank Pictures', 'https://www.leftbankpictures.co.uk/', 'London, England', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('bankislam.com.my', 'Bank Islam Malaysia Berhad', 'http://bankislam.com.my', 'Level 32, Menara Bank Islam, No. 22, Jalan Perak, 50450 Kuala Lumpur, Malaysia', 'contain bank in page', 'by words', 'Malaysia', NULL);
INSERT INTO public.rb VALUES ('www.standardbank.com', 'Standard Bank Group Limited', 'http://www.standardbank.com/', 'Standard Bank Centre, Johannesburg, South Africa', 'contain bank in page', 'by words', 'South Africa', NULL);
INSERT INTO public.rb VALUES ('www.bankofmaharashtra.in', 'Bank of Maharashtra बैंक ऑफ महाराष्ट्र', 'http://www.bankofmaharashtra.in', '1501, Lokmangal, Shivajinagar, Pune India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.nurolbank.com.tr', 'Nurol Bank', 'http://www.nurolbank.com.tr/', 'Maslak, Beşiktaş, Istanbul, Turkey', 'contain bank in page', 'by words', 'Turkey', NULL);
INSERT INTO public.rb VALUES ('www.zenithbank.com', 'Zenith Bank Plc', 'https://www.zenithbank.com/', 'Zenith Heights, Plot 84, Ajose Adeogun street, Victoria Island, Lagos, Lagos State, Nigeria
        ', 'contain bank in page', 'by words', 'Nigeria', NULL);
INSERT INTO public.rb VALUES ('www.prabhubank.com', 'Prabhu Bank', 'http://www.prabhubank.com/', 'Babarmahal, Kathmandu', 'contain bank in page', 'by words', 'Nepal', NULL);
INSERT INTO public.rb VALUES ('www.bankgaborone.co.bw', 'Bank Gaborone Limited', 'http://www.bankgaborone.co.bw', 'Gaborone, Botswana', 'contain bank in page', 'by words', 'Botswana', NULL);
INSERT INTO public.rb VALUES ('idea-bank.ro', 'Idea Bank', 'https://idea-bank.ro/', 'Bucharest, Romania', 'contain bank in page', 'by words', 'Romania', NULL);
INSERT INTO public.rb VALUES ('www.central-bank.org.tt', 'Central Bank of Trinidad and Tobago', 'http://www.central-bank.org.tt', 'Port of Spain', 'contain bank in page', 'by words', 'Spain', NULL);
INSERT INTO public.rb VALUES ('www.uttarabank-bd.com', 'Uttara Bank Limited', 'http://www.uttarabank-bd.com/', 'Dhaka, Bangladesh', 'contain bank in page', 'by words', 'Bangladesh', NULL);
INSERT INTO public.rb VALUES ('www.sindhbankltd.com', 'Sindh Bank Limited', 'http://www.sindhbankltd.com/', 'Karachi, Pakistan', 'contain bank in page', 'by words', 'Pakistan', NULL);
INSERT INTO public.rb VALUES ('www.artsakhbank.com', 'Artsakhbank', 'http://www.artsakhbank.com/', 'Yerevan, Armenia', 'contain bank in page', 'by words', 'Armenia', NULL);
INSERT INTO public.rb VALUES ('www.alhilalbank.ae', 'al hilal bank', 'http://www.alhilalbank.ae/', 'Abu Dhabi, UAE', 'contain bank in page', 'by words', 'United Arab Emirates', NULL);
INSERT INTO public.rb VALUES ('www.ibank.co.th', 'Islamic Bank of Thailand (iBank)', 'http://www.ibank.co.th/2010/en/main/', 'Watthana, Bangkok10110[1], Thailand', 'contain bank in page', 'by words', 'Thailand', NULL);
INSERT INTO public.rb VALUES ('www.aareal-bank.com', 'Aareal Bank AG', 'http://www.aareal-bank.com/en/', 'Wiesbaden, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.dwpbank.de', 'Deutsche WertpapierService Bank AG', 'http://www.dwpbank.de/', 'Frankfurt, Germany', 'contain bank in page', NULL, 'Germany', NULL);
INSERT INTO public.rb VALUES ('scotiabank.com', 'The Bank of Nova Scotia', 'http://scotiabank.com/', 'Toronto, Ontario, Canada[1]', 'contain bank in page', 'by words', 'Canada', NULL);
INSERT INTO public.rb VALUES ('www.banknordik.com', 'BankNordik P/F', 'http://www.banknordik.com', 'Tórshavn, Faroe Islands', 'contain bank in page', 'by words', 'Faroe Islands', NULL);
INSERT INTO public.rb VALUES ('www.consumerbankers.com', 'Consumer Bankers Association', 'http://www.consumerbankers.com', 'Washington, D.C.', 'contain bank in page', NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('info.agribank.com', 'AgriBank, FCB', 'http://info.agribank.com', 'St. Paul, Minnesota', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.firstsomalibank.com', 'First Somali Bank', 'http://www.firstsomalibank.com', 'Mogadishu, Somalia', 'contain bank in page', 'by words', 'Somalia', NULL);
INSERT INTO public.rb VALUES ('www.exportbank.com.ph', 'Export and Industry Bank', 'http://www.exportbank.com.ph', 'Makati, Philippines', 'contain bank in page', 'by words', 'Philippines', NULL);
INSERT INTO public.rb VALUES ('www.bankrakyat.com.my', 'Bank Kerjasama Rakyat Malaysia Berhad (Bank Rakyat)', 'https://www.bankrakyat.com.my', 'Menara Kembar Bank Rakyat, Jalan Rakyat, Kuala Lumpur, Malaysia', 'contain bank in page', 'by words', 'Malaysia', NULL);
INSERT INTO public.rb VALUES ('www.bankbsu.ch', 'Bank BSU', 'https://www.bankbsu.ch', 'Bankstrasse 21, 8610 Uster, Switzerland', 'contain bank in page', 'by words', 'Switzerland', NULL);
INSERT INTO public.rb VALUES ('www.wwsparbank.se', 'Westra Wermlands Sparbank', 'https://www.wwsparbank.se', 'Vastra Torggatan 1, 671 21 Arvika, Sweden', 'contain bank in page', NULL, 'Sweden', NULL);
INSERT INTO public.rb VALUES ('www.mkombozibank.com', 'Mkombozi Commercial Bank', 'http://www.mkombozibank.com/', 'Dar es Salaam, Tanzania', 'contain bank in page', 'by words', 'Tanzania', NULL);
INSERT INTO public.rb VALUES ('www.kombank.com', 'Komercijalna banka', 'http://www.kombank.com', 'Svetog Save 14, Belgrade, Serbia', 'contain bank in page', 'by words', 'Serbia', NULL);
INSERT INTO public.rb VALUES ('www.alphabank.com.mk', 'Alpha Bank Skopje', 'http://www.alphabank.com.mk', 'Skopje, Republic of North Macedonia', 'contain bank in page', NULL, 'Macedonia', NULL);
INSERT INTO public.rb VALUES ('www.devolksbank.nl', 'De Volksbank N.V.', 'https://www.devolksbank.nl', 'Utrecht, Netherlands', 'contain bank in page', NULL, 'Netherlands', NULL);
INSERT INTO public.rb VALUES ('group.softbank', 'SoftBank Group Corp.', 'https://group.softbank/en/', 'Tokyo Shiodome Building, Minato-ku, Tokyo, Japan', 'contain bank in page', 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('rw.equitybankgroup.com', 'Equity Bank Rwanda Limited', 'https://rw.equitybankgroup.com/', 'Kigali Reinsurance PlazaKigali, Rwanda', 'contain bank in page', 'by words', 'Rwanda', NULL);
INSERT INTO public.rb VALUES ('www.bankhall.org', 'Friends of Bank Hall (formerly the Bank Hall Action Group)', 'http://www.bankhall.org', 'Bretherton, United Kingdom', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.castell-bank.de', 'Fürstlich Castell''sche Bank', 'https://www.castell-bank.de', 'Marktplatz 1, 97070, Würzburg, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.bankwindhoek.com.na', 'Bank Windhoek', 'http://www.bankwindhoek.com.na', 'Windhoek, Namibia', 'contain bank in page', 'by words', 'Namibia', NULL);
INSERT INTO public.rb VALUES ('www.chasebankkenya.co.ke', 'Chase Bank Kenya Limited', 'http://www.chasebankkenya.co.ke/', 'Nairobi, Kenya', 'contain bank in page', 'by words', 'Kenya', NULL);
INSERT INTO public.rb VALUES ('bankershealthcaregroup.com', 'Bankers Healthcare Group', 'https://bankershealthcaregroup.com', 'Davie, Florida', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.attijariwafabank.com', 'Attijariwafa bank', 'http://www.attijariwafabank.com/', '20 000 Casablanca2, Bd Moulay Youssef, Morocco', 'contain bank in page', 'by words', 'Morocco', NULL);
INSERT INTO public.rb VALUES ('www.tbibank.bg', 'TBI Bank', 'https://www.tbibank.bg/en', '52-54, Dimitar Hadzhikotsev Street, Lozenets District, Sofia, Bulgaria', 'contain bank in page', 'by words', 'Bulgaria', NULL);
INSERT INTO public.rb VALUES ('www.sterlingbankasia.com', 'Sterling Bank of Asia', 'http://www.sterlingbankasia.com', 'San Juan, Metro Manila, Philippines', 'contain bank in page', 'by words', 'Philippines', NULL);
INSERT INTO public.rb VALUES ('www.centralbankmalta.org', 'Central Bank of MaltaBank Ċentrali ta’ Malta', 'https://www.centralbankmalta.org', 'Binja Laparelli, St James’s Counterguard, Valletta', 'contain bank in page', 'by words', 'Malta', NULL);
INSERT INTO public.rb VALUES ('www.tcb-bank.com.tw', 'Taiwan Cooperative Bank合作金庫銀行', 'http://www.tcb-bank.com.tw', 'Taipei, Taiwan', 'contain bank in page', NULL, 'Taiwan', NULL);
INSERT INTO public.rb VALUES ('www.onewestbank.com', 'OneWest Bank, N.A.', 'https://www.onewestbank.com', 'Pasadena, California, US', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.fidelitybank.com.gh', 'Fidelity Bank', 'http://www.fidelitybank.com.gh', 'Accra,', 'contain bank in page', 'by words', 'Ghana', NULL);
INSERT INTO public.rb VALUES ('www.eximbankbd.com', 'Export-Import Bank of Bangladesh', 'http://www.eximbankbd.com/', 'Dhaka, Bangladesh', 'contain bank in page', 'by words', 'Bangladesh', NULL);
INSERT INTO public.rb VALUES ('ficobank.com.ph', 'First Isabela Cooperative Bank', 'http://ficobank.com.ph', 'Maharlika Hwy., Minante 1, Cauayan City, Isabela, Philippines', 'contain bank in page', 'by words', 'Philippines', NULL);
INSERT INTO public.rb VALUES ('centralbank.ie', 'Central Bank of IrelandBanc Ceannais na hÉireann', 'http://centralbank.ie', 'New Wapping StreetNorth Wall QuayDublinD01 F7X3Ireland', 'contain bank in page', 'by words', 'Ireland', NULL);
INSERT INTO public.rb VALUES ('www.corusbank.com', 'Corus Bankshares Inc.', 'http://www.corusbank.com', 'Chicago, IL, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('apobank.de', 'Deutsche Apotheker- und Ärztebank eG (Apobank)', 'http://apobank.de/', 'Düsseldorf, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.dekabank.de', 'DekaBank', 'http://www.dekabank.de/db/en/index.jsp', 'Frankfurt am Main, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.canadiabank.com.kh', 'Canadia Bank PLC. Cambodia', 'http://www.canadiabank.com.kh', 'Phnom Penh, Cambodia', 'contain bank in page', 'by words', 'Cambodia', NULL);
INSERT INTO public.rb VALUES ('www.pochtabank.ru', 'Pochta Bank', 'https://www.pochtabank.ru', 'Moscow, Russia', 'contain bank in page', 'by words', 'Russia', NULL);
INSERT INTO public.rb VALUES ('www.bangkokbank.com', 'Bangkok Bank ธนาคารกรุงเทพ', 'http://www.bangkokbank.com/', 'Bang Rak, Bangkok[1], Thailand', 'contain bank in page', 'by words', 'Thailand', NULL);
INSERT INTO public.rb VALUES ('www.firstcapitalbank.co.mw', 'First Capital Bank', 'http://www.firstcapitalbank.co.mw/', 'Blantyre, Malawi', 'contain bank in page', 'by words', 'Malawi', NULL);
INSERT INTO public.rb VALUES ('fivestarbank.com', 'Five Star Bank', 'http://fivestarbank.com', 'Roseville, California, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.qnbfinansbank.com', 'QNB Finansbank A.Ş.', 'http://www.qnbfinansbank.com/', 'Büyükdere Avenue, Levent, Istanbul, Turkey', 'contain bank in page', 'by words', 'Turkey', NULL);
INSERT INTO public.rb VALUES ('www.tejaratbank.ir', 'Tejarat Bank', 'http://www.tejaratbank.ir/', 'Tehran, Iran', 'contain bank in page', 'by words', 'Iran', NULL);
INSERT INTO public.rb VALUES ('www.volksbank.it', 'Volksbank – Banca Popolare', 'https://www.volksbank.it/de/', 'Bolzano, South Tyrol, Italy', 'contain bank in page', 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.dukascopy.com', 'Dukascopy Bank SA', 'https://www.dukascopy.com', 'Geneva, Switzerland', 'contain bank in page', 'by words', 'Switzerland', NULL);
INSERT INTO public.rb VALUES ('direktnabanka.rs', 'Direktna Banka', 'http://direktnabanka.rs', 'Bulevar Kraljice Marije 54b, Kragujevac, Serbia', 'contain bank in name host', NULL, 'Serbia', NULL);
INSERT INTO public.rb VALUES ('www.padmabankbd.com', 'Padma Bank Limited', 'http://www.padmabankbd.com', 'Gulshan-1,Dhaka, Bangladesh', 'contain bank in page', NULL, 'Bangladesh', NULL);
INSERT INTO public.rb VALUES ('www.mercedes-benz-bank.de', 'Mercedes-Benz Bank AG', 'http://www.mercedes-benz-bank.de', 'Stuttgart, Germany', 'contain bank in page', NULL, 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.unitedinvestmentbank.ae', 'United Investment Bank Limited', 'http://www.unitedinvestmentbank.ae', 'Gate Village, 05 Sheikh Zayed Rd, Dubai, United Arab Emirates', 'contain bank in page', NULL, 'United Arab Emirates', NULL);
INSERT INTO public.rb VALUES ('www.bankofscotlandinternational.com', 'Bank of Scotland International', 'http://www.bankofscotlandinternational.com/home/home.asp', 'St Helier, Jersey, Channel Islands', 'contain bank in page', 'by words', 'Jersey', NULL);
INSERT INTO public.rb VALUES ('www.daishi-bank.co.jp', 'The Daishi Bank', 'https://www.daishi-bank.co.jp/english', '1071-1 Shichiban-cho, Higashiborimae-dori, Niigata, Niigata Prefecture, Japan', 'contain bank in page', 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.southeastbank.com.bd', 'Southeast Bank Limited', 'http://www.southeastbank.com.bd', 'Dhaka, Bangladesh', 'contain bank in page', 'by words', 'Bangladesh', NULL);
INSERT INTO public.rb VALUES ('www.canarabank.com', 'Canara Bank', 'http://www.canarabank.com', 'Bangalore, Karnataka, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.accessbank.tj', 'AccessBank Tajikistan', 'http://www.accessbank.tj/en', 'Dushanbe, Tajikistan', 'contain bank in page', 'by words', 'Tajikistan', NULL);
INSERT INTO public.rb VALUES ('www.armswissbank.am', 'ArmSwissBank CJSC', 'http://www.armswissbank.am', 'Yerevan, Armenia', 'contain bank in page', 'by words', 'Armenia', NULL);
INSERT INTO public.rb VALUES ('www.creditonebank.com', 'Credit One Bank', 'http://www.creditonebank.com/', '585 Pilot Road, Las Vegas, Nevada, 89119 U.S.[1]', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.77bank.co.jp', 'The 77 Bank Ltd 七十七銀行', 'http://www.77bank.co.jp/', 'Sendai, Japan (December 1878)', 'contain bank in page', 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.ccbank.bg', 'Central Cooperative Bank Plc.Централна кооперативна банка АД', 'http://www.ccbank.bg/en/', 'Sofia, Bulgaria', 'contain bank in page', 'by words', 'Bulgaria', NULL);
INSERT INTO public.rb VALUES ('www.fibank.bg', 'First Investment Bank Първа инвестиционна банка', 'http://www.fibank.bg/en', 'Sofia, Bulgaria', 'contain bank in page', 'by words', 'Bulgaria', NULL);
INSERT INTO public.rb VALUES ('www.apeksbank.com.ua', 'PJSC «APEKS-BANK» ПАТ «АПЕКС-БАНК»', 'http://www.apeksbank.com.ua', 'Kiev, Ukraine', 'contain bank in page', 'by words', 'Ukraine', NULL);
INSERT INTO public.rb VALUES ('alternabank.ca', 'Alterna Bank', 'http://alternabank.ca', 'Ottawa , Canada ', 'contain bank in name host', 'by words', 'Canada', NULL);
INSERT INTO public.rb VALUES ('www.newomnibank.com', 'New Omni Bank n.a.', 'http://www.newomnibank.com/', 'Alhambra, California
 asset = $182.9 million USD Return on assets = 0.92 Return on equity =
            8.48
        ', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.springbankplc.com', 'Spring Bank Plc.', 'http://www.springbankplc.com/', '143 Ahmadu Bello Way Victoria Island, Lagos, Nigeria', 'contain bank in page', 'by words', 'Nigeria', NULL);
INSERT INTO public.rb VALUES ('www.certusbank.com', 'CertusBank, N.A.', 'https://www.certusbank.com/', 'Greenville, South Carolina, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('bankandclients.com', 'Bank and Clients plc', 'http://bankandclients.com/', 'London (Registered Office), United Kingdom', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('ke.equitybankgroup.com', 'Equity Bank Kenya Limited', 'https://ke.equitybankgroup.com/', '9th Floor, Equity CentreHospital Road, Upper HillNairobi, Kenya', 'contain bank in page', 'by words', 'Kenya', NULL);
INSERT INTO public.rb VALUES ('www.landbank.com.tw', 'Land Bank of Taiwan Co., Ltd.', 'https://www.landbank.com.tw/En', 'Zhongzheng, Taipei, Taiwan', 'contain bank in page', 'by words', 'Taiwan', NULL);
INSERT INTO public.rb VALUES ('www.agribank.com.vn', 'Vietnam Bank for Agriculture and Rural Development', 'http://www.agribank.com.vn', 'Ba Dinh District, Hanoi, Vietnam', 'contain bank in page', 'by words', 'Vietnam', NULL);
INSERT INTO public.rb VALUES ('www.sevenbank.co.jp', 'Seven Bank, Ltd.株式会社セブン銀行', 'http://www.sevenbank.co.jp/intlcard/index2.html', 'Marunouchi, Chiyoda, Tokyo, Japan', 'contain bank in page', 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.oschadbank.ua', 'State Savings Bank of Ukraine (Ukrainian: Ощадбанк України)', 'http://www.oschadbank.ua/', 'Kiev, Ukraine', 'contain bank in page', 'by words', 'Ukraine', NULL);
INSERT INTO public.rb VALUES ('www.bankmandiri.co.id', 'PT Bank Mandiri (Persero) Tbk.', 'http://www.bankmandiri.co.id/index_en.asp', 'Jakarta, Indonesia', 'contain bank in page', 'by words', 'Indonesia', NULL);
INSERT INTO public.rb VALUES ('www.ctfoodbank.org', 'Connecticut Food Bank', 'http://www.ctfoodbank.org/', 'Wallingford,_Connecticut, Connecticut', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.cebbank.com', 'China Everbright Bank', 'http://www.cebbank.com', 'China Everbright Center, 25 Taipingqiao Avenue, Xicheng District, Beijing, China', 'contain bank in page', 'by words', 'China', NULL);
INSERT INTO public.rb VALUES ('www.bankalfalah.com', 'Bank Alfalah Limited', 'http://www.bankalfalah.com', 'Karachi, Pakistan', 'contain bank in page', 'by words', 'Pakistan', NULL);
INSERT INTO public.rb VALUES ('www.dnsbank.in', 'Dombivli Nagari Sahakari Bank Ltd.', 'http://www.dnsbank.in', 'Dombivli Nagari Sahakari Bank Ltd.
Scheduled Bank, "Madhukunj", P-52, M.I.D.C., Kalyan
            Shil Road, Sonarpada,, Dombivli (East), Thane, India
        ', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.bankofgreece.gr', 'Bank of GreeceΤράπεζα της Ελλάδος', 'https://www.bankofgreece.gr/', 'Athens', 'contain bank in page', 'by words', 'Greece', NULL);
INSERT INTO public.rb VALUES ('firstalliancebankzambia.com', 'First Alliance Bank Zambia Limited', 'http://firstalliancebankzambia.com/', 'Lusaka, Zambia', 'contain bank in page', 'by words', 'Zambia', NULL);
INSERT INTO public.rb VALUES ('www.gatehousebank.com', 'Gatehouse Bank PLC', 'http://www.gatehousebank.com', 'Mayfair, London, United Kingdom', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.mizuhobank.com', 'Mizuho Bank, Ltd.', 'http://www.mizuhobank.com/', 'Otemachi, Chiyoda-ku, Tokyo, Japan', 'contain bank in page', 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('eng.wooribank.com', 'Woori Bank 우리은행', 'http://eng.wooribank.com', 'Hoehyeon-dong, Jung-gu, Seoul, South Korea', 'contain bank in page', 'by words', 'South Korea', NULL);
INSERT INTO public.rb VALUES ('www.agvbank.co.in', 'Assam Gramin Vikash Bank', 'http://www.agvbank.co.in/', 'Guwahati, Assam, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.bankm.co.tz.', 'Bank M', 'http://www.bankm.co.tz.', 'Dar es Salaam, Tanzania', 'contain bank in page', 'by words', 'Tanzania', NULL);
INSERT INTO public.rb VALUES ('www.unicreditbank.ru', 'UniCredit Bank', 'http://www.unicreditbank.ru', 'Moscow, Russia', 'contain bank in page', 'by words', 'Russia', NULL);
INSERT INTO public.rb VALUES ('co-operativebank.co.uk', 'The Co-operative Bank plc', 'http://co-operativebank.co.uk', '1 Balloon StreetManchester, United Kingdom', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.royalbank.co.zw', 'Royal Bank Zimbabwe', 'http://www.royalbank.co.zw/', 'Harare, Zimbabwe', 'contain bank in page', 'by words', 'Zimbabwe', NULL);
INSERT INTO public.rb VALUES ('sonalibank.com.bd', 'Sonali Bank Limited', 'http://sonalibank.com.bd', 'Motijheel, Dhaka, Bangladesh', 'contain bank in page', 'by words', 'Bangladesh', NULL);
INSERT INTO public.rb VALUES ('www.roskildebank.dk', 'Roskilde Bank', 'http://www.roskildebank.dk/', 'Roskilde, Denmark', 'contain bank in page', NULL, 'Denmark', NULL);
INSERT INTO public.rb VALUES ('www.tiranabank.al', 'Tirana Bank', 'http://www.tiranabank.al/', 'Tirana, Albania', 'contain bank in page', 'by words', 'Albania', NULL);
INSERT INTO public.rb VALUES ('www.centralbank.ae', 'Central Bank of the United Arab Emiratesمصرف الإمارات العربية المتحدة المركزي (in Arabic)', 'https://www.centralbank.ae/en', 'Bainunah Street, Al Bateen Area, PO Box 854, Abu Dhabi, United Arab Emirates[clarification
            needed]
        ', 'contain bank in page', 'by words', 'United Arab Emirates', NULL);
INSERT INTO public.rb VALUES ('www.bankofengland.co.uk', 'Governor and Company of the Bank of England', 'https://www.bankofengland.co.uk', 'Threadneedle StreetLondon, EC2England, United Kingdom', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('preferredbank.com', 'Preferred Bank', 'http://preferredbank.com', 'Los Angeles County, California and Orange County, California', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.nationalbanken.dk', 'Danmarks Nationalbank', 'http://www.nationalbanken.dk', 'Havnegade 5, Copenhagen', 'contain bank in page', 'by words', 'Denmark', NULL);
INSERT INTO public.rb VALUES ('www.spks.dk', 'Sparekassen Sjælland (About)', 'https://www.spks.dk/', 'Holbæk, Denmark', 'contain bank in page', 'by words', 'Denmark', NULL);
INSERT INTO public.rb VALUES ('dahsing.com', 'Dah Sing Bank Limited', 'http://dahsing.com/', 'Hong Kong', 'contain bank in name', NULL, 'Hong Kong', NULL);
INSERT INTO public.rb VALUES ('www.pekao.com.pl', 'Bank Pekao S.A.', 'http://www.pekao.com.pl', 'Warsaw, Poland', 'contain bank in page', 'by words', 'Poland', NULL);
INSERT INTO public.rb VALUES ('www.bou.or.ug', 'Bank of UgandaBenki Kuu ya Uganda', 'https://www.bou.or.ug/bou/home.html', 'Kampala, Uganda', 'contain bank in page', 'by words', 'Uganda', NULL);
INSERT INTO public.rb VALUES ('www.americanexpress.com', 'The American Express Company', 'https://www.americanexpress.com/', '200 Vesey Street, New York City, New York, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.kd-bank.de', 'Bank für Kirche und Diakonie', 'http://www.kd-bank.de/', 'Dortmund, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.ptinews.com', 'The Press Trust of India Ltd.', 'http://www.ptinews.com', 'PTI Building, 4, Parliament Street, New Delhi, India[2]', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.directlinegroup.co.uk', 'Direct Line Insurance Group plc', 'http://www.directlinegroup.co.uk', 'Bromley, England, UK', NULL, 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.scb.co.th', 'The Siam Commercial Bank Public Company Limited', 'https://www.scb.co.th/en/about-us.html', 'SCB Park Plaza, Chatuchak, Bangkok, Thailand', 'contain bank in page', 'by words', 'Thailand', NULL);
INSERT INTO public.rb VALUES ('www.carnegie.se', 'Carnegie Investment Bank', 'http://www.carnegie.se/', 'Stockholm, Sweden', 'contain bank in page', 'by words', 'Sweden', NULL);
INSERT INTO public.rb VALUES ('www.cbt.tm', 'Central Bank of TurkmenistanTürkmenistanyň Merkezi Banky', 'http://www.cbt.tm', 'Bitarap Turkmenistan avenue 36, Ashgabat, Turkmenistan', 'contain bank in name', 'by words', 'Turkmenistan', NULL);
INSERT INTO public.rb VALUES ('www.americanpremierbank.com', 'American Premier Bank', 'http://www.americanpremierbank.com', 'Arcadia, California', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.santanderbank.com', 'Santander Bank, N. A.', 'http://www.santanderbank.com', '75 State StreetBoston, Massachusetts, 02109 U.S.', 'contain bank in name host', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.forchtgroup.com', 'Forcht Group of Kentucky', 'http://www.forchtgroup.com/', 'Lexington, Kentucky and Corbin, Kentucky, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.robinsonsbank.com.ph', 'Robinsons Bank Corporation', 'https://www.robinsonsbank.com.ph', 'Quezon City, Philippines', 'contain bank in page', 'by words', 'Philippines', NULL);
INSERT INTO public.rb VALUES ('www.sparebankstiftelsen.no', 'Sparebankstiftelsen DNB', 'http://www.sparebankstiftelsen.no', 'Oslo, Norway', 'contain bank in page', 'by words', 'Norway', NULL);
INSERT INTO public.rb VALUES ('www.fonplata.org', 'Plata Basin Financial Development Fund', 'http://www.fonplata.org', 'Avenida San Martín #155, barrio Equipetrol, edificio Ambassador Business Center Piso 3Santa Cruz
            de la SierraBolivia
        ', 'contain bank in page', 'by words', 'Bolivia', NULL);
INSERT INTO public.rb VALUES ('www.robinhood.com', 'Robinhood Markets Inc.', 'https://www.robinhood.com/', 'Menlo Park, California, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.bostonproperties.com', 'Boston Properties, Inc.', 'http://www.bostonproperties.com', 'Boston, Massachusetts, U.S.', 'contain bank in page', NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.co-operativebankinggroup.co.uk', 'Co-operative Banking Group', 'http://www.co-operativebankinggroup.co.uk', 'CIS Tower, Manchester, United Kingdom', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.dubuquebank.com', 'Dubuque Bank and Trust Company', 'http://www.dubuquebank.com/', 'Dubuque, Iowa, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.royalbank.az', 'Royal Bank', 'http://www.royalbank.az/new/view/default.phtml?lang=en', 'Baku, Azerbaijan', 'contain bank in page', 'by words', 'Azerbaijan', NULL);
INSERT INTO public.rb VALUES ('www.trustcobank.com', 'TrustCo Bank Corp. NY', 'http://www.trustcobank.com', 'Glenville, New York, United States', 'contain bank in page', NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('universalmusic.com', 'Universal Music Group', 'http://universalmusic.com', 'Santa Monica, California, US', NULL, NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.cbd.ae', 'Commercial Bank of Dubaiبنك دبي التجاري', 'https://www.cbd.ae', 'Dubai, United Arab Emirates', 'contain bank in page', 'by words', 'United Arab Emirates', NULL);
INSERT INTO public.rb VALUES ('www.tdautofinance.com', 'TD Auto Finance', 'https://www.tdautofinance.com', 'Farmington Hills, Michigan', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.abp.nl', 'Stichting Pensioenfonds ABP (National Civil Pension Fund)', 'http://www.abp.nl', 'Heerlen, Netherlands', NULL, 'by words', 'Netherlands', NULL);
INSERT INTO public.rb VALUES ('www.rics.org', 'The Royal Institution of Chartered Surveyors', 'http://www.rics.org', 'London, SW1United Kingdom', NULL, 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.northernrock.co.uk', 'Northern Rock', 'http://www.northernrock.co.uk/', 'Northern Rock House, Gosforth, Newcastle upon Tyne, England, UK', NULL, 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.amegybank.com', 'Amegy Bank of Texas', 'http://www.amegybank.com', 'Houston, Texas', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('ippbonline.com', 'India Post Payments Bank', 'https://ippbonline.com/', 'New Delhi, India', 'contain bank in name', NULL, 'India', NULL);
INSERT INTO public.rb VALUES ('www.republicghana.com', 'Republic Bank (Ghana) Limited', 'https://www.republicghana.com/', 'Accra, Ghana', 'contain bank in page', 'by words', 'Ghana', NULL);
INSERT INTO public.rb VALUES ('www.landsbankinn.is', 'Landsbankinn hf', 'http://www.landsbankinn.is/', 'Reykjavík, Iceland', 'contain bank in page', 'by words', 'Iceland', NULL);
INSERT INTO public.rb VALUES ('lsgkerala.in', 'Paravur Taluk', 'http://lsgkerala.in/paravurblock', 'North Paravur', NULL, NULL, 'India', NULL);
INSERT INTO public.rb VALUES ('www.capitalbankhaiti.com', 'Capital Bank', 'http://www.capitalbankhaiti.com', '38, rue Faubert Pétion-Ville, Haiti', 'contain bank in name host', NULL, 'Haiti', NULL);
INSERT INTO public.rb VALUES ('www.cbj.gov.jo', 'Central Bank of Jordanالبنك المركزي الاردني', 'http://www.cbj.gov.jo', 'Amman', 'contain bank in page', 'by words', 'Jordan', NULL);
INSERT INTO public.rb VALUES ('www.cbc.gov.tw', 'Central Bank of the Republic of China (Taiwan).mw-parser-output .nobold{font-weight:normal}中央銀行', 'http://www.cbc.gov.tw/mp2.html', 'Zhongzheng, Taipei', 'contain bank in name', 'by words', 'Taiwan', NULL);
INSERT INTO public.rb VALUES ('www.crediteuropebank.com', 'Credit Europe Bank N.V.', 'http://www.crediteuropebank.com', 'Amsterdam, Netherlands', 'contain bank in page', 'by words', 'Netherlands', NULL);
INSERT INTO public.rb VALUES ('www.capefearbank.com', 'Cape Fear Bank', 'http://www.capefearbank.com/', 'Wilmington, North Carolina, United States', 'contain bank in page', NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.tstartel.com', 'Taiwan Star Telecom Corporation Limited台灣之星電信股份有限公司', 'https://www.tstartel.com', 'Taipei, Taiwan', NULL, 'by words', 'Taiwan', NULL);
INSERT INTO public.rb VALUES ('www.ernakulam.nic.in', 'Ernakulam district', 'http://www.ernakulam.nic.in', 'Kakkanad', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.duncanlawrie.com', 'Duncan Lawrie Ltd', 'http://www.duncanlawrie.com', 'Belgravia, London, England, UK', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.kh.hu', 'K&H Bank', 'http://www.kh.hu/', 'Budapest, Hungary', 'contain bank in name', NULL, 'Hungary', NULL);
INSERT INTO public.rb VALUES ('www.ca-cib.com', 'Crédit Agricole CIB', 'http://www.ca-cib.com', 'Paris, France', 'contain bank in page', 'by words', 'France', NULL);
INSERT INTO public.rb VALUES ('www.paschimmedinipur.gov.in', 'Paschim Medinipur district (পশ্চিম মেদিনীপুর জেলা)', 'http://www.paschimmedinipur.gov.in/', 'Midnapore', NULL, 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('feedingamerica.org', 'Feeding America', 'http://feedingamerica.org', '35 East WackerChicago, Illinois', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.lankaclear.lk', 'Sri Lanka Interbank Payment System (SLIPS)', 'http://www.lankaclear.lk', 'Colombo, Sri Lanka', 'contain bank in name', 'by words', 'Sri Lanka', NULL);
INSERT INTO public.rb VALUES ('www.lippoltd.com.hk', 'Lippo Limited', 'http://www.lippoltd.com.hk', '24/F, Tower 1, Lippo Centre, Hong Kong Island, Hong Kong', NULL, NULL, 'Hong Kong', NULL);
INSERT INTO public.rb VALUES ('www.unipol.it', 'Unipol Gruppo S.p.A', 'http://www.unipol.it', 'Bologna, Italy', NULL, 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.birdlife.org', 'BirdLife International', 'https://www.birdlife.org', 'Cambridge, United Kingdom', NULL, 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.kbzbank.com', 'Kanbawza Bank', 'http://www.kbzbank.com', 'Yangon, Myanmar', 'contain bank in name host', 'by words', 'Myanmar', NULL);
INSERT INTO public.rb VALUES ('www.hooghly.gov.in', 'Hooghly district', 'http://www.hooghly.gov.in', 'Chinsurah', NULL, 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.klarna.com', 'Klarna', 'http://www.klarna.com/', 'Stockholm, Sweden', 'contain bank in page', NULL, 'Sweden', NULL);
INSERT INTO public.rb VALUES ('www.rothschildandco.com', 'Rothschild & Co', 'http://www.rothschildandco.com/', 'Paris, FranceLondon, England', 'contain bank in page', 'by words', 'France', NULL);
INSERT INTO public.rb VALUES ('www.greenbank.com', 'Green Bancorp, Inc.', 'https://www.greenbank.com/', 'Houston, Texas', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.bitfinex.com', 'Bitfinex, Inc.', 'https://www.bitfinex.com', 'Hong Kong', 'contain bank in page', 'by words', 'Hong Kong', NULL);
INSERT INTO public.rb VALUES ('www.nbs.ws', 'National Bank of Samoa', 'http://www.nbs.ws/', 'Apia, Samoa', 'contain bank in name', 'by words', 'Samoa', NULL);
INSERT INTO public.rb VALUES ('www.sbp.co.in', 'State Bank of Patiala', 'http://www.sbp.co.in/', 'Head Office, The Mall, Patiala 147 002 India', 'contain bank in name', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.belk.com', 'Belk, Inc.', 'https://www.belk.com/', 'Charlotte, North Carolina, United States', NULL, NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('ifdk.com', 'IFD Kapital Group', 'http://ifdk.com', 'Moscow, Russia', NULL, 'by words', 'Russia', NULL);
INSERT INTO public.rb VALUES ('www.flyaircairo.com', 'Air Cairo', 'http://www.flyaircairo.com', 'Cairo, Egypt', NULL, 'by words', 'Egypt', NULL);
INSERT INTO public.rb VALUES ('alcoa.com', 'Alcoa Corporation', 'https://alcoa.com', 'Pittsburgh, Pennsylvania', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.realtor.com', 'Realtor.com', 'https://www.realtor.com', '3315 Scott Blvd., Santa Clara, California, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.uralsib.com', 'Uralsib', 'http://www.uralsib.com/', 'Moscow, Russia', 'contain bank in page', 'by words', 'Russia', NULL);
INSERT INTO public.rb VALUES ('freetrade.io', 'Freetrade Ltd', 'http://freetrade.io', 'London, United Kingdom', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.bancofcal.com', 'Banc of California, Inc.', 'http://www.bancofcal.com', 'Santa Ana, California', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('banesco.com', 'Banesco Banco Universal S.A.', 'http://banesco.com', 'Caracas, Venezuela', 'contain bank in page', 'by words', 'Venezuela', NULL);
INSERT INTO public.rb VALUES ('www.dlshq.org', 'Divine Life Society', 'http://www.dlshq.org/', 'Rishikesh, Uttarakhand, India', NULL, NULL, 'India', NULL);
INSERT INTO public.rb VALUES ('www.berenberg.de', 'Joh. Berenberg, Gossler & Co.', 'http://www.berenberg.de/', 'Hamburg, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.apacer.com', 'Apacer Technology Inc.宇瞻科技股份有限公司', 'http://www.apacer.com', 'Tucheng, New Taipei, Taiwan', 'contain bank in page', 'by words', 'Taiwan', NULL);
INSERT INTO public.rb VALUES ('www.schwab.com', 'The Charles Schwab Corporation', 'https://www.schwab.com/', 'San Francisco, California, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.williamblair.com', 'William Blair & Company', 'http://www.williamblair.com', '150 North Riverside Plaza, Chicago, Illinois, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.pzu.pl', 'Powszechny Zakład Ubezpieczeń Spółka Akcyjna', 'http://www.pzu.pl', 'Warsaw, Poland', 'contain bank in page', 'by words', 'Poland', NULL);
INSERT INTO public.rb VALUES ('gabar.org', 'State Bar of Georgia', 'http://gabar.org', 'Atlanta, Georgia', 'contain bank in page', 'by words', 'Georgia', NULL);
INSERT INTO public.rb VALUES ('SallieMae.com', 'SLM Corporation', 'http://SallieMae.com', 'Newark, Delaware, U.S.', NULL, NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.binck.com', 'BinckBank N.V.', 'https://www.binck.com/', 'Amsterdam, Netherlands', 'contain bank in name', NULL, 'Netherlands', NULL);
INSERT INTO public.rb VALUES ('www.bankasya.com.tr', 'Bank Asya', 'http://www.bankasya.com.tr/', 'Istanbul, Turkey', 'contain bank in name host', NULL, 'Turkey', NULL);
INSERT INTO public.rb VALUES ('www.grohe.com', 'Grohe AG', 'http://www.grohe.com', 'Düsseldorf, Germany', NULL, NULL, 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.bcr.md', 'BCR Chișinău', 'http://www.bcr.md', 'Chisinau, Republic of Moldova', 'contain bank in page', 'by words', 'Moldova', NULL);
INSERT INTO public.rb VALUES ('burnleysavingsandloans.co.uk', 'Burnley Savings and Loans (BSAL)', 'http://burnleysavingsandloans.co.uk', 'Burnley, England', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('firstcapitalbank.co.zw', 'First Capital Bank Limited', 'https://firstcapitalbank.co.zw/', 'Harare, Zimbabwe', 'contain bank in page', 'by words', 'Zimbabwe', NULL);
INSERT INTO public.rb VALUES ('b2b.dab-bank.de', 'DAB BNP Paribas', 'http://b2b.dab-bank.de/', 'Munich, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('mobikwik.com', 'MobiKwik', 'http://mobikwik.com', 'Gurgaon, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.associatedbank.com', 'Associated Banc-Corp', 'http://www.associatedbank.com', 'Green Bay, Wisconsin, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('macysinc.com', 'Macy''s, Inc.', 'http://macysinc.com', 'Cincinnati, Ohio, U.S.', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.mlc.com.au', 'MLC Australia', 'http://www.mlc.com.au/', 'Australia ', NULL, 'by words', 'Australia', NULL);
INSERT INTO public.rb VALUES ('www.insightinvestment.com', 'Insight Investment', 'https://www.insightinvestment.com', 'London, United Kingdom', NULL, 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.qwant.com', 'Qwant', 'https://www.qwant.com/', 'France', NULL, 'by words', 'France', NULL);
INSERT INTO public.rb VALUES ('www.envision-energy.com', 'Envision Energy', 'http://www.envision-energy.com', 'Shanghai, China', NULL, 'by words', 'China', NULL);
INSERT INTO public.rb VALUES ('www.accessholding.com', 'AccessHolding', 'http://www.accessholding.com/index.html', 'Berlin, Germany', NULL, 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.schroders.com', 'Schroders plc', 'http://www.schroders.com', 'London, United Kingdom', NULL, 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.bancasassari.it', 'Banco di Sardegna S.p.A.', 'http://www.bancasassari.it', 'Sassari, Italy', 'contain bank in page', 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('veb.ru', 'VEB.RF', 'http://veb.ru/en', 'Moscow, Russia', 'contain bank in page', 'by words', 'Russia', NULL);
INSERT INTO public.rb VALUES ('alliancebernstein.com', 'AllianceBernstein Holding L.P.', 'http://alliancebernstein.com', 'Nashville, Tennessee', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.worldjewishcongress.org', 'World Jewish Congress', 'http://www.worldjewishcongress.org', 'New York City, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.bancopastor.es', 'Banco Popular Pastor, S.A.', 'http://www.bancopastor.es', 'A Coruña, Spain', 'contain bank in page', 'by words', 'Spain', NULL);
INSERT INTO public.rb VALUES ('www.mbna.co.uk', 'MBNA', 'https://www.mbna.co.uk/', 'Chester, United Kingdom', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.tamweel.ae', 'Tamweel', 'http://www.tamweel.ae/en/', 'Dubai, United Arab Emirates', NULL, NULL, 'United Arab Emirates', NULL);
INSERT INTO public.rb VALUES ('Nationwide.com', 'Nationwide Mutual Insurance Company', 'http://Nationwide.com/', 'One Nationwide PlazaColumbus, Ohio, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.rsandh.com', 'RS&H, Inc.', 'http://www.rsandh.com/', 'Jacksonville, Florida, USA', NULL, NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('newellbrands.com', 'Newell Brands Inc.', 'http://newellbrands.com', 'Atlanta, Georgia, U.S.', NULL, 'by words', 'Georgia', NULL);
INSERT INTO public.rb VALUES ('www.cignahealthbenefits.com', 'Vanbreda International', 'https://www.cignahealthbenefits.com/', 'Antwerp, Belgium', NULL, 'by words', 'Belgium', NULL);
INSERT INTO public.rb VALUES ('www.seforall.org', 'Sustainable Energy for All
', 'http://www.seforall.org', 'Vienna, Austria', 'contain bank in page', 'by words', 'Austria', NULL);
INSERT INTO public.rb VALUES ('www.smeg.com', 'Smeg Group S.p.A.', 'http://www.smeg.com', 'Guastalla, Italy', NULL, 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.pwc.com', 'PwC', 'https://www.pwc.com/', 'London, United Kingdom[2]', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.equitablepcib.com', 'Equitable PCI Bank, Inc.', 'http://www.equitablepcib.com', 'Makati, Philippines', 'contain bank in name', 'by words', 'Philippines', NULL);
INSERT INTO public.rb VALUES ('www.mercadolibre.com', 'Mercado Libre, Inc.', 'https://www.mercadolibre.com/', 'Buenos Aires, Argentina', 'contain bank in page', 'by words', 'Argentina', NULL);
INSERT INTO public.rb VALUES ('www.jobbank.gc.ca', 'Job Bank', 'http://www.jobbank.gc.ca', 'Gatineau, Canada', 'contain bank in page', 'by words', 'Canada', NULL);
INSERT INTO public.rb VALUES ('grofers.com', 'Grofers India Pvt Ltd', 'https://grofers.com/', 'Gurugram, India', NULL, NULL, 'India', NULL);
INSERT INTO public.rb VALUES ('www.dyerandblair.com', 'Dyer & Blair Investment Bank Limited', 'http://www.dyerandblair.com', '7th Floor , Goodman Towers,Waiyaki WayNairobi, Kenya', 'contain bank in name', 'by words', 'Kenya', NULL);
INSERT INTO public.rb VALUES ('www.efe.com', 'Agencia EFE, S.A.', 'http://www.efe.com', 'Madrid, Spain', NULL, 'by words', 'Spain', NULL);
INSERT INTO public.rb VALUES ('www.halliburton.com', 'Halliburton Company', 'https://www.halliburton.com/', 'Houston Center, Houston, Texas, U.S.', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.hdfc.com', 'Housing Development Finance Corporation Limited', 'http://www.hdfc.com', 'Mumbai, Maharashtra, India', NULL, NULL, 'India', NULL);
INSERT INTO public.rb VALUES ('www.kbw.com', 'Keefe, Bruyette & Woods', 'http://www.kbw.com', 'AXA Equitable CenterNew York, New York, United States', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.telerealtrillium.com', 'Telereal Trillum', 'http://www.telerealtrillium.com', 'London, England', NULL, 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.creberg.it', 'Credito Bergamasco', 'http://www.creberg.it/', 'Bergamo, Italy', NULL, NULL, 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.crveneto.it', 'Cassa di Risparmio del Veneto', 'http://www.crveneto.it', 'Padua, Italy', NULL, 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.bancacrs.it', 'Banca Cassa di Risparmio di Savigliano', 'https://www.bancacrs.it/', 'Savigliano, Italy', NULL, 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.vtbcapital.com', 'VTB Capital', 'http://www.vtbcapital.com', 'Moscow, Russia', 'contain bank in page', 'by words', 'Russia', NULL);
INSERT INTO public.rb VALUES ('islamic-relief.org', 'Islamic Relief Worldwide', 'http://islamic-relief.org', 'Birmingham, UK', NULL, NULL, 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.bancodesio.it', 'Banco Desio', 'http://www.bancodesio.it', 'Desio, Italy', 'contain bank in page', 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.thg.com', 'The Hut Group', 'http://www.thg.com/', 'Manchester Airport, Manchester, United Kingdom', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.businessdailyafrica.com', 'Business Daily Africa', 'http://www.businessdailyafrica.com', 'Nairobi, Kenya', 'contain bank in page', 'by words', 'Kenya', NULL);
INSERT INTO public.rb VALUES ('www.ifc.org', 'International Finance Corporation', 'http://www.ifc.org/', 'Washington, D.C., U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.karenmillen.com', 'Karen Millen Fashions Limited', 'http://www.karenmillen.com', 'Witney, Oxfordshire, England', NULL, 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('bittrex.com', 'Bittrex', 'http://bittrex.com', 'Seattle, Washington, United States[1]', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.westernunion.com', 'The Western Union Company', 'http://www.westernunion.com', 'Denver, Colorado, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.bancacrasti.it', 'Cassa di Risparmio di Asti', 'https://www.bancacrasti.it', '23 Piazza Libertà, Asti, Italy', 'contain bank in page', 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.bmocm.com', 'BMO Capital Markets', 'http://www.bmocm.com', 'First Canadian Place, Toronto, Ontario, Canada', NULL, NULL, 'Canada', NULL);
INSERT INTO public.rb VALUES ('www.tmz.com', 'TMZ', 'http://www.tmz.com/', '13031 West Jefferson BoulevardLos Angeles, California', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('fivebelow.com', 'Five Below', 'http://fivebelow.com', 'Philadelphia, Pennsylvania, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('visa.com', 'Visa Inc.', 'https://visa.com', 'Foster City,[1] California, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.bancopopular.es', 'Banco Popular Español S.A.', 'http://www.bancopopular.es', 'Madrid, Spain', 'contain bank in page', 'by words', 'Spain', NULL);
INSERT INTO public.rb VALUES ('www.carifermo.it', 'Cassa di Risparmio di Fermo', 'https://www.carifermo.it', '1 Via Don Ernesto Ricci, Fermo, Italy', 'contain bank in page', NULL, 'Italy', NULL);
INSERT INTO public.rb VALUES ('jndata.dk', 'JN Data A/S', 'http://jndata.dk', 'Silkeborg, Denmark', 'contain bank in page', 'by words', 'Denmark', NULL);
INSERT INTO public.rb VALUES ('www.allianz.com', 'Allianz SE', 'http://www.allianz.com/', 'Munich, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.testfunda.com', 'Testfunda.com', 'https://www.testfunda.com/', 'Mumbai, India', NULL, 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.crelan.be', 'Crelan', 'http://www.crelan.be/', 'Brussels, Belgium', NULL, NULL, 'Belgium', NULL);
INSERT INTO public.rb VALUES ('akita-bank.co.jp', 'The Akita Bank, Ltd. 株式会社秋田銀行', 'http://akita-bank.co.jp', 'Akita, Japan (October 20, 1941)', 'contain bank in name host', NULL, 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.nurol.com.tr', 'Nurol Holding A.Ş.', 'http://www.nurol.com.tr', 'Istanbul , Turkey ', 'contain bank in page', 'by words', 'Turkey', NULL);
INSERT INTO public.rb VALUES ('blme.com', 'BLME', 'http://blme.com', 'London, United Kingdom', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('bmo.com', 'Bank of MontrealBanque de Montréal', 'http://bmo.com', 'Montreal, Quebec, Canada', 'contain bank in page', 'by words', 'Canada', NULL);
INSERT INTO public.rb VALUES ('www.ritcap.co.uk', 'RIT Capital Partners plc', 'http://www.ritcap.co.uk', 'London, UK', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.beqom.com', 'beqom', 'http://www.beqom.com', 'Rue de la Colombière 28 Nyon Switzerland', NULL, 'by words', 'Switzerland', NULL);
INSERT INTO public.rb VALUES ('www.campbell-lutyens.com', 'Campbell Lutyens', 'http://www.campbell-lutyens.com/', 'London, England, UK', NULL, 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.banksdih.com', 'Banks DIH Ltd.', 'http://www.banksdih.com/', 'Georgetown, Guyana', 'contain bank in name host', 'by words', 'Guyana', NULL);
INSERT INTO public.rb VALUES ('www.eurazeo.com', 'Eurazeo', 'http://www.eurazeo.com/en/', '1 rue Georges Berger, Paris', NULL, 'by words', 'France', NULL);
INSERT INTO public.rb VALUES ('www.abeking.com', 'Abeking & Rasmussen Schiffs- und Yachtwerft SE', 'https://www.abeking.com/en.html', 'Lemwerder, Wesermarsch, Lower Saxony, Germany', NULL, NULL, 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.imiplc.com', 'IMI plc', 'http://www.imiplc.com', 'Birmingham, England', NULL, 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.rolandberger.com', 'Roland Berger Holding GmbH', 'http://www.rolandberger.com/', 'Munich, Germany50 offices in 36 countries', NULL, 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.virginholidays.co.uk', 'Virgin Holidays', 'http://www.virginholidays.co.uk', 'Crawley, West Sussex, UK', NULL, 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.ior.va', 'Institute for the Works of ReligionIstituto per le Opere di Religione', 'https://www.ior.va/', 'Vatican City', NULL, 'by words', 'Vatican', NULL);
INSERT INTO public.rb VALUES ('www.naturgy.com', 'Naturgy Energy Group, S.A.', 'http://www.naturgy.com/', 'Barcelona (administrative), Madrid (legal)', 'contain bank in page', NULL, 'Spain', NULL);
INSERT INTO public.rb VALUES ('www.medirect.com.mt', 'MeDirect Malta', 'http://www.medirect.com.mt', 'The Centre, Tigné Point, Sliema, Malta', 'contain bank in page', 'by words', 'Malta', NULL);
INSERT INTO public.rb VALUES ('www.gruppomps.it', 'Banca Monte dei Paschi di Siena S.p.A.', 'https://www.gruppomps.it', 'Siena, Italy', 'contain bank in page', 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.maxlifeinsurance.com', 'Max Life Insurance Company Limited', 'https://www.maxlifeinsurance.com/', 'New Delhi', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.muz.de', 'MZ Motorenwerke Zschopau GmbH, former MZ Motorrad- und Zweiradwerk GmbH', 'http://www.muz.de', 'Zschopau, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.dillards.com', 'Dillard''s Inc.', 'http://www.dillards.com/', 'Little Rock, Arkansas, U.S.', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.grupbancsabadell.com', 'Banco de Sabadell, S.A.', 'http://www.grupbancsabadell.com', 'Alicante, Spain', NULL, NULL, 'Spain', NULL);
INSERT INTO public.rb VALUES ('www.biz2credit.com', 'Biz2Credit', 'https://www.biz2credit.com/', 'New York, USA and Noida, India', NULL, NULL, 'India', NULL);
INSERT INTO public.rb VALUES ('www.mint.com', 'Mint.com', 'http://www.mint.com/', 'Mountain View, California, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.themobilestore.in', 'The MobileStore', 'http://www.themobilestore.in', 'Mumbai, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.ebchina.com', 'China Everbright Group', 'http://www.ebchina.com', 'Beijing, China', 'contain bank in page', 'by words', 'China', NULL);
INSERT INTO public.rb VALUES ('www.takenaka.co.jp', 'Takenaka Corporation株式会社竹中工務店', 'http://www.takenaka.co.jp', 'Chūō-ku, Osaka, Japan', 'contain bank in page', NULL, 'Japan', NULL);
INSERT INTO public.rb VALUES ('verizonmedia.com', 'Verizon Media', 'http://verizonmedia.com', 'New York City, New York and Sunnyvale, California, U.S.', NULL, NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.blackeaglefund.org', 'Black Eagle Litigation Fund', 'http://www.blackeaglefund.org/', 'Cayman Islands', 'contain bank in page', 'by words', 'Cayman Islands', NULL);
INSERT INTO public.rb VALUES ('www.arcandor.com', 'Arcandor AG', 'http://www.arcandor.com', 'Essen, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('natwestmarkets.com', 'NatWest Markets Plc', 'http://natwestmarkets.com', '250 Bishopsgate, London EC2M 4AA, United Kingdom', 'contain bank in page', NULL, 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.metrolyrics.com', 'MetroLyrics', 'http://www.metrolyrics.com/', 'Vancouver, British Columbia, Canada', 'contain bank in page', 'by words', 'Canada', NULL);
INSERT INTO public.rb VALUES ('nanded.nic.in', 'Nanded district', 'http://nanded.nic.in', 'Nanded', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.rbfcu.org', 'Randolph-Brooks Federal Credit Union', 'http://www.rbfcu.org', 'United States of America ', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.aubank.in', 'AU Small Finance Bank', 'https://www.aubank.in/', 'Jaipur, Rajasthan, India', 'contain bank in name host', NULL, 'India', NULL);
INSERT INTO public.rb VALUES ('www.nemeabank.com', 'Nemea Bank plc', 'http://www.nemeabank.com', 'St Julians, Malta', 'contain bank in name host', NULL, 'Malta', NULL);
INSERT INTO public.rb VALUES ('www.bancaakros.it', 'Banca Akros', 'https://www.bancaakros.it/', 'Milan, Italy', 'contain bank in page', 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.baloise.com', 'Bâloise Holding AG', 'https://www.baloise.com/en/home.html', 'Basel, Switzerland', 'contain bank in page', 'by words', 'Switzerland', NULL);
INSERT INTO public.rb VALUES ('www.wrhambrecht.com', 'W.R. Hambrecht + Co.', 'http://www.wrhambrecht.com', 'San Francisco, California, United States', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.fibsudan.com', 'Faisal Islamic Bank of Sudan', 'http://www.fibsudan.com/', 'Khartoum, Sudan', 'contain bank in page', 'by words', 'Sudan', NULL);
INSERT INTO public.rb VALUES ('www.nation.co.ke', 'Daily Nation', 'http://www.nation.co.ke', 'Nairobi, Kenya', 'contain bank in page', 'by words', 'Kenya', NULL);
INSERT INTO public.rb VALUES ('www.nationstrust.com', 'Nations Trust Bank PLC', 'http://www.nationstrust.com', 'Colombo, Sri Lanka', 'contain bank in name', 'by words', 'Sri Lanka', NULL);
INSERT INTO public.rb VALUES ('www.yokogawa.com', 'Yokogawa Electric Corporation', 'https://www.yokogawa.com', '2-9-32 Nakacho, Musashino, Tokyo, Tokyo 180-8750, Japan', 'contain bank in page', NULL, 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.bbsfbank.com', 'Banque Bemo Saudi Fransi', 'http://www.bbsfbank.com/', 'Damascus, Syria', 'contain bank in page', 'by words', 'Syria', NULL);
INSERT INTO public.rb VALUES ('www.fcbank.com.ua', 'Finance and Credit', 'http://www.fcbank.com.ua/', 'Kiev, Ukraine', 'contain bank in page', NULL, 'Ukraine', NULL);
INSERT INTO public.rb VALUES ('SPCcard.ca', 'Student Price Card', 'https://SPCcard.ca', 'Vaughan, Ontario, Canada', NULL, NULL, 'Canada', NULL);
INSERT INTO public.rb VALUES ('www.omron.com', 'Omron Corporation', 'http://www.omron.com/', 'Shiokoji Horikawa, Shimogyo-ku, Kyoto 600-8530, Japan', NULL, 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.ajc.com', 'The Atlanta Journal-Constitution', 'http://www.ajc.com', 'Dunwoody, GeorgiaU.S.', NULL, 'by words', 'Georgia', NULL);
INSERT INTO public.rb VALUES ('www.linode.com', 'Linode, LLC', 'https://www.linode.com', 'Philadelphia, Pennsylvania, United States', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.argos.co.uk', 'Argos Ltd', 'http://www.argos.co.uk', 'Milton Keynes, Buckinghamshire, England', NULL, 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.chownow.com', 'ChowNow, Inc.', 'http://www.chownow.com', 'Los Angeles, California, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.hilltop-holdings.com', 'Hilltop Holdings Inc.', 'http://www.hilltop-holdings.com/', 'One Victory ParkDallas, Texas, US', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('ukar.co.uk', 'UK Asset Resolution Limited', 'http://ukar.co.uk', 'Croft Road, Crossflatts, Bingley, West Yorkshire, United Kingdom', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('uttarkashi.nic.in', 'Uttarkashi district', 'http://uttarkashi.nic.in', 'Uttarkashi', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('desjardins.com', 'Desjardins Group', 'http://desjardins.com', 'Levis, Quebec, Canada', 'contain bank in page', 'by words', 'Canada', NULL);
INSERT INTO public.rb VALUES ('www.legalandgeneralgroup.com', 'Legal & General Group plc', 'http://www.legalandgeneralgroup.com/', 'London, United Kingdom', 'contain bank in page', NULL, 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.quaylemunro.com', 'Quayle Munro', 'http://www.quaylemunro.com', 'London, England', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.chsinc.com', 'CHS Inc.', 'http://www.chsinc.com', 'Inver Grove Heights, Minnesota, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.pfr.pl', 'Polish Development Fund', 'http://www.pfr.pl/', 'ul. Krucza 50, Warsaw, Poland', 'contain bank in page', 'by words', 'Poland', NULL);
INSERT INTO public.rb VALUES ('www.yahoo.com', 'Yahoo!', 'https://www.yahoo.com/', 'Sunnyvale, California, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.50hertz.com', '50Hertz Transmission GmbH', 'http://www.50hertz.com/en/', 'Berlin, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('weatherbys.co.uk', 'Weatherbys', 'http://weatherbys.co.uk', 'Wellingborough, Northamptonshire, England', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.artlebedev.com', 'Art. Lebedev Studio', 'http://www.artlebedev.com', 'Moscow, Russia', 'contain bank in page', 'by words', 'Russia', NULL);
INSERT INTO public.rb VALUES ('www.bpf.it', 'Banca Popolare del Frusinate', 'https://www.bpf.it', 'Frosinone, Italy', 'contain bank in page', 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.six-group.com', 'SIX Group Ltd.', 'http://www.six-group.com/', 'Zurich, Switzerland', 'contain bank in page', 'by words', 'Switzerland', NULL);
INSERT INTO public.rb VALUES ('www.kni.gl', 'KNIGreenland Trade', 'http://www.kni.gl/', 'Sisimiut, Greenland', 'contain bank in page', 'by words', 'Greenland', NULL);
INSERT INTO public.rb VALUES ('www.santander.com', 'Banco Santander S.A.', 'http://www.santander.com', 'Santander, Spain', 'contain bank in page', 'by words', 'Spain', NULL);
INSERT INTO public.rb VALUES ('www.myncb.com', 'NCB Financial Group Limited', 'http://www.myncb.com/', 'Kingston, Jamaica', 'contain bank in page', 'by words', 'Jamaica', NULL);
INSERT INTO public.rb VALUES ('www.agbar.es', 'Sociedad General de Aguas de Barcelona, SA', 'http://www.agbar.es/en', 'Barcelona, Spain', NULL, NULL, 'Spain', NULL);
INSERT INTO public.rb VALUES ('www.cantor.com', 'Cantor Fitzgerald, L.P.', 'http://www.cantor.com/', 'New York City', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.oddo-bhf.com', 'ODDO BHF', 'http://www.oddo-bhf.com/', '12, boulevard de la Madeleine, 75009 Paris, France', 'contain bank in page', NULL, 'France', NULL);
INSERT INTO public.rb VALUES ('www.cmbwinglungbank.com', '招商永隆銀行CMB Wing Lung Bank', 'http://www.cmbwinglungbank.com', '45 Des Voeux Road, Central Hong Kong', 'contain bank in page', 'by words', 'Hong Kong', NULL);
INSERT INTO public.rb VALUES ('www.tokyostarbank.co.jp', 'The Tokyo Star Bank, Limited', 'http://www.tokyostarbank.co.jp/profile/en/', 'Tokyo, Japan', 'contain bank in name host', 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.metrobank-na.com', 'MetroCorp Bancshares, Inc.', 'http://www.metrobank-na.com', 'TexasCalifornia', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('thercs.org', 'Royal Commonwealth Society', 'http://thercs.org/', 'Commonwealth House, 55-58 Pall Mall, St James''s, London', NULL, 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.banrep.gov.co', 'Bank of the RepublicBanco de la República', 'http://www.banrep.gov.co/en/', 'Bogotá, Colombia', 'contain bank in name', 'by words', 'Colombia', NULL);
INSERT INTO public.rb VALUES ('www.bdp.com', 'BDP', 'http://www.bdp.com', '11 Ducie Street, Piccadilly Gardens, Manchester, England', NULL, 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('democrats.org', 'Democratic National Committee', 'http://democrats.org', '430 South Capitol St SE,Washington, D.C. 20003, U.S.', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.matthey.com', 'Johnson Matthey', 'http://www.matthey.com/', 'London, United Kingdom', NULL, 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.shapoorjipallonji.com', 'Shapoorji Pallonji Group', 'http://www.shapoorjipallonji.com/', 'Mumbai, India', NULL, 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.bancoazteca.com', 'Banco Azteca', 'http://www.bancoazteca.com/', 'Mexico City, Mexico', 'contain bank in page', NULL, 'Mexico', NULL);
INSERT INTO public.rb VALUES ('goldmansachs.com', 'The Goldman Sachs Group, Inc.', 'http://goldmansachs.com', '200 West Street, Manhattan, New York City, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.jdsports.co.uk', 'JD Sports Fashion plc', 'http://www.jdsports.co.uk', 'Bury , United Kingdom ', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.newvision.co.ug', 'Vision Group', 'http://www.newvision.co.ug', '2/4 First Street, Kampala, Uganda', 'contain bank in page', 'by words', 'Uganda', NULL);
INSERT INTO public.rb VALUES ('www.hanafn.com', 'Hana Financial Group, Inc.하나금융그룹', 'http://www.hanafn.com/', 'Seoul, South Korea', 'contain bank in page', 'by words', 'South Korea', NULL);
INSERT INTO public.rb VALUES ('www.hsbc.fr', 'HSBC France', 'http://www.hsbc.fr/', 'Paris, France', 'contain bank in page', NULL, 'France', NULL);
INSERT INTO public.rb VALUES ('udhampur.nic.in', 'Udhampur district', 'http://udhampur.nic.in/', 'Udhampur', NULL, NULL, 'India', NULL);
INSERT INTO public.rb VALUES ('www.bonhote.ch', 'Banque Bonhôte & Cie SA', 'http://www.bonhote.ch/', 'Neuchâtel, Switzerland', NULL, 'by words', 'Switzerland', NULL);
INSERT INTO public.rb VALUES ('www.snohetta.com', 'Snøhetta', 'http://www.snohetta.com', 'Norway ', 'contain bank in page', 'by words', 'Norway', NULL);
INSERT INTO public.rb VALUES ('nexi.it', 'Nexi', 'http://nexi.it', '55 Corso Sempione, Milan, Italy[1]:16, 366(registered office)', 'contain bank in page', 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('banesto.es', 'Banco Español de Crédito, S.A.', 'http://banesto.es', 'Madrid, Spain', 'contain bank in page', 'by words', 'Spain', NULL);
INSERT INTO public.rb VALUES ('www.greenhill.com', 'Greenhill', 'http://www.greenhill.com', '300 Park Avenue (Manhattan)New York City, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.bbva.com', 'Banco Bilbao Vizcaya Argentaria, S.A.', 'http://www.bbva.com', 'Bilbao and Madrid, Spain', 'contain bank in page', 'by words', 'Spain', NULL);
INSERT INTO public.rb VALUES ('www.pcl.com', 'PCL Construction', 'http://www.pcl.com/', 'Edmonton, Alberta, Canada', 'contain bank in page', NULL, 'Canada', NULL);
INSERT INTO public.rb VALUES ('www.paramountbank.co.ke', 'Paramount Universal Bank Limited', 'http://www.paramountbank.co.ke/', 'Nairobi, Kenya', 'contain bank in name host', NULL, 'Kenya', NULL);
INSERT INTO public.rb VALUES ('barpeta.gov.in', 'Barpeta district', 'http://barpeta.gov.in/', 'Barpeta', 'contain bank in page', NULL, 'India', NULL);
INSERT INTO public.rb VALUES ('www.yatra.com', 'Yatra', 'http://www.yatra.com', 'Gurgaon, Haryana, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.webank.it', 'Webank', 'http://www.webank.it/', 'Milan, Italy', 'contain bank in page', 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('caterpillar.com', 'Caterpillar Inc.', 'http://caterpillar.com', 'Deerfield, Illinois, U.S.', NULL, NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.wsfsbank.com', 'Wilmington Savings Fund Society', 'http://www.wsfsbank.com', 'Wilmington, Delaware, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.cix.co.uk', 'CIX Online Ltd', 'http://www.cix.co.uk', 'Croydon, UK', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.lonestarfunds.com', 'Lone Star Funds', 'http://www.lonestarfunds.com', 'Tower at CityplaceDallas, Texas, United States', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.ubssecurities.com', 'UBS Securities', 'http://www.ubssecurities.com', 'Beijing, China', 'contain bank in page', 'by words', 'China', NULL);
INSERT INTO public.rb VALUES ('seb.lv', 'SEB banka AS', 'https://seb.lv', 'Riga , Latvia ', 'contain bank in page', 'by words', 'Latvia', NULL);
INSERT INTO public.rb VALUES ('www.copart.com', 'Copart, Inc.', 'https://www.copart.com/', 'Dallas, Texas, U.S.', NULL, NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.haier.net', 'Haier Group Corporation', 'http://www.haier.net', 'Qingdao, China', NULL, 'by words', 'China', NULL);
INSERT INTO public.rb VALUES ('www.iga.com', 'IGA', 'https://www.iga.com/', 'Chicago, Illinois, U.S.', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.travelodge.co.uk', 'Travelodge Hotels Limited', 'http://www.travelodge.co.uk', 'Thame, England, UK', NULL, 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('thinkmoney.co.uk', 'thinkmoney', 'http://thinkmoney.co.uk', 'Trafford Park, Greater Manchester, UK', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('korba.gov.in', 'Korba district', 'http://korba.gov.in/', 'Korba, Chhattisgarh', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.hexisgroup.com', 'Hexis S.A.', 'http://www.hexisgroup.com', 'Frontignan, France', NULL, NULL, 'France', NULL);
INSERT INTO public.rb VALUES ('www.gourmetpakistan.com', 'Gourmet Foods', 'http://www.gourmetpakistan.com', 'Lahore, Punjab, Pakistan', 'contain bank in page', 'by words', 'Pakistan', NULL);
INSERT INTO public.rb VALUES ('www.mlp-ag.com', 'MLP AG', 'http://www.mlp-ag.com', 'Wiesloch, Germany', 'contain bank in page', NULL, 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.zong.com.pk', 'CMPak Limited', 'http://www.zong.com.pk', 'Islamabad, Pakistan', 'contain bank in page', 'by words', 'Pakistan', NULL);
INSERT INTO public.rb VALUES ('www.walmart.ca', 'Walmart Canada', 'https://www.walmart.ca/', 'Mississauga, Ontario, Canada', 'contain bank in page', 'by words', 'Canada', NULL);
INSERT INTO public.rb VALUES ('www.avon-rubber.com', 'Avon Rubber PLC', 'https://www.avon-rubber.com', 'Melksham, Wiltshire, England', NULL, NULL, 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('jcfco.com', 'J.C. Flowers & Companies', 'http://jcfco.com', 'New York, New York, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.bayernlb.de', 'BayernLB', 'http://www.bayernlb.de', 'München, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.homebancshares.com', 'Home BancShares, Inc.', 'https://www.homebancshares.com/', 'Conway, Arkansas', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.pnbmetlife.com', 'PNB MetLife India Insurance Company Limited', 'http://www.pnbmetlife.com', 'Mumbai, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('economist.com', 'The Economist', 'http://economist.com', 'Westminster,London, United Kingdom', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.AgStar.com', 'AgStar Financial Services, ACA', 'http://www.AgStar.com/', 'Mankato, Minnesota', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.buraq.aero', 'Buraq Airالبراق', 'http://www.buraq.aero/', 'Mittiga International AirportTripoli, Libya', NULL, 'by words', 'Libya', NULL);
INSERT INTO public.rb VALUES ('creditmutuel.com', 'Crédit Mutuel', 'http://creditmutuel.com', 'Strasbourg, France', 'contain bank in page', 'by words', 'France', NULL);
INSERT INTO public.rb VALUES ('www.youandb.co.uk', 'B', 'http://www.youandb.co.uk', 'Glasgow, Scotland', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.resona-gr.co.jp', 'Resona Holdings, Inc.株式会社りそなホールディングス', 'http://www.resona-gr.co.jp/holdings/english', 'Koto, Tokyo, Japan', 'contain bank in page', 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('yacenter.org', 'Young Americans Center for Financial Education', 'http://yacenter.org', 'Denver, Colorado', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.gcbbank.com.gh', 'GCB Bank Ltd', 'http://www.gcbbank.com.gh', 'Accra, Ghana', 'contain bank in name host', NULL, 'Ghana', NULL);
INSERT INTO public.rb VALUES ('civilbank.com.np', 'Civil Bank', 'http://civilbank.com.np', 'Kamaladi, KMC-31, Kathmandu', 'contain bank in name host', NULL, 'Nepal', NULL);
INSERT INTO public.rb VALUES ('www.volga-resources.com', 'Volga Group', 'http://www.volga-resources.com/', 'Luxembourg, Luxembourg', NULL, NULL, 'Luxembourg', NULL);
INSERT INTO public.rb VALUES ('www.fh.ae', 'Finance House', 'http://www.fh.ae/', 'Abu Dhabi, United Arab Emirates.', 'contain bank in page', 'by words', 'United Arab Emirates', NULL);
INSERT INTO public.rb VALUES ('detroitmedia.com', 'Detroit Media Partnership, L.P.', 'http://detroitmedia.com', 'Detroit, Michigan, U.S.', NULL, NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.worldpay.com', 'Worldpay', 'https://www.worldpay.com', 'London, United Kingdom', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.vpbank.com', 'VP Bank AG', 'http://www.vpbank.com', 'Vaduz, Liechtenstein', 'contain bank in page', 'by words', 'Liechtenstein', NULL);
INSERT INTO public.rb VALUES ('www.ds-pharma.com', 'Sumitomo Dainippon Pharma Co., Ltd.', 'http://www.ds-pharma.com/index.html', '6-8, Doshomachi 2-chome, Chuo-ku, Osaka, Osaka 541-0045, Japan', NULL, NULL, 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.ibmsecu.org', 'IBM Southeast Employees'' Credit Union', 'https://www.ibmsecu.org/', 'Delray Beach, Florida, United States', NULL, NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.vakifbank.com.tr', 'Türkiye Vakıflar Bankası T.A.O.', 'http://www.vakifbank.com.tr', 'Levent, Beşiktaş, Istanbul', 'contain bank in name host', 'by words', 'Turkey', NULL);
INSERT INTO public.rb VALUES ('www.nicnbk.kz', 'National Investment Corporation', 'http://www.nicnbk.kz', 'Almaty', NULL, 'by words', 'Kazakhstan', NULL);
INSERT INTO public.rb VALUES ('www.itau.com', 'Itaú Unibanco Holding S.A.', 'http://www.itau.com/', 'São Paulo, Brazil', 'contain bank in page', 'by words', 'Brazil', NULL);
INSERT INTO public.rb VALUES ('www.adambank.com', 'Adam and Company', 'https://www.adambank.com/', 'Edinburgh, Scotland, UK', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.titanmotorcycles.com', 'Titan Motorcycle Company', 'http://www.titanmotorcycles.com', 'Phoenix, Arizona; Toronto, Canada', NULL, NULL, 'Canada', NULL);
INSERT INTO public.rb VALUES ('sprint.com', 'Sprint Corporation', 'http://sprint.com', 'Overland Park, Kansas, U.S.', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('siemens.com', 'Siemens Financial Services GmbH', 'http://siemens.com/finance', 'Munich, Germany', NULL, 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.mabetex.eu', 'Mabetex Group', 'http://www.mabetex.eu/', 'Lugano, Switzerland', NULL, 'by words', 'Switzerland', NULL);
INSERT INTO public.rb VALUES ('www.shv.nl', 'SHV Holdings N.V.', 'http://www.shv.nl/', 'Utrecht, the Netherlands', NULL, 'by words', 'Netherlands', NULL);
INSERT INTO public.rb VALUES ('www.minsur.com', 'Minsur', 'http://www.minsur.com', 'Lima, Peru', NULL, 'by words', 'Peru', NULL);
INSERT INTO public.rb VALUES ('www.aflcioefcu.org', 'AFL-CIO Employees Federal Credit Union', 'https://www.aflcioefcu.org/', 'Washington D.C., United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.dgbfg.co.kr', 'DGB Financial Group', 'http://www.dgbfg.co.kr/jsp/EN/main/index.jsp', 'Daegu, South Korea', 'contain bank in page', 'by words', 'South Korea', NULL);
INSERT INTO public.rb VALUES ('silkspan.com', 'SILKSPAN', 'http://silkspan.com/', 'Bangkok, Thailand', 'contain bank in page', 'by words', 'Thailand', NULL);
INSERT INTO public.rb VALUES ('www.carife.it', 'Nuova Cassa di Risparmio di Ferrara', 'http://www.carife.it', 'Ferrara, Italy', 'contain bank in page', 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.bfc.com.ve', 'Banco Fondo Común', 'https://www.bfc.com.ve', 'Caracas, Estado Miranda, Venezuela', 'contain bank in page', 'by words', 'Venezuela', NULL);
INSERT INTO public.rb VALUES ('www.leaseplan.com', 'LeasePlan', 'https://www.leaseplan.com', 'Netherlands', 'contain bank in page', 'by words', 'Netherlands', NULL);
INSERT INTO public.rb VALUES ('gfh.com', 'GFH', 'http://gfh.com/', 'Bahrain Financial Harbour, Manama, Bahrain', 'contain bank in page', 'by words', 'Bahrain', NULL);
INSERT INTO public.rb VALUES ('www.who.int', 'World Health Organization', 'https://www.who.int/', 'Geneva, Switzerland', 'contain bank in page', 'by words', 'Switzerland', NULL);
INSERT INTO public.rb VALUES ('www.g24.org', 'Intergovernmental Group of Twenty-Four', 'https://www.g24.org/', 'Washington, D.C., United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.brd.ro', 'Banca Română pentru Dezvoltare', 'https://www.brd.ro', 'Bucharest, Romania', 'contain bank in page', 'by words', 'Romania', NULL);
INSERT INTO public.rb VALUES ('www.atlasmara.com', 'Atlas Mara Limited', 'http://www.atlasmara.com', 'Tortola, British Virgin Islands', 'contain bank in page', NULL, 'British Virgin Islands', NULL);
INSERT INTO public.rb VALUES ('www.booking.com', 'Booking.com', 'https://www.booking.com/', 'Amsterdam, Netherlands', 'contain bank in page', 'by words', 'Netherlands', NULL);
INSERT INTO public.rb VALUES ('alliancedata.com', 'Alliance Data Systems Corporation', 'http://alliancedata.com', 'Columbus, Ohio, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.university-bank.com', 'University Bank', 'http://www.university-bank.com/', 'Ann Arbor, Michigan, U.S.', 'contain bank in name host', NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.bca.cv', 'Banco Comercial do Atlântico', 'http://www.bca.cv', 'Praia, Santiago, Cape Verde', 'contain bank in page', 'by words', 'Cape Verde', NULL);
INSERT INTO public.rb VALUES ('airbnb.com', 'Airbnb, Inc.', 'https://airbnb.com', '888 Brannan Street, San Francisco, California', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.caript.it', 'Cassa di Risparmio di Pistoia e della Lucchesia', 'http://www.caript.it', '3 via Roma, Pistoia, Italy', 'contain bank in page', 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('kadapa.ap.nic.in', 'YSR district', 'http://kadapa.ap.nic.in/', 'Kadapa', NULL, NULL, 'India', NULL);
INSERT INTO public.rb VALUES ('www.axisbank.com', 'Axis Bank', 'http://www.axisbank.com', 'Mumbai, Maharashtra, India[1]', 'contain bank in name host', NULL, 'India', NULL);
INSERT INTO public.rb VALUES ('www.sydneyairport.com.au', 'Sydney Airport Holdings', 'http://www.sydneyairport.com.au', 'Sydney, Australia', NULL, NULL, 'Australia', NULL);
INSERT INTO public.rb VALUES ('www.oskgroup.com', 'OSK Holdings Berhad', 'http://www.oskgroup.com/', 'Kuala Lumpur, Malaysia', 'contain bank in page', 'by words', 'Malaysia', NULL);
INSERT INTO public.rb VALUES ('www.dubaibank.ae', 'Dubai Bank', 'https://www.dubaibank.ae', 'Dubai, UAE', 'contain bank in page', 'by words', 'United Arab Emirates', NULL);
INSERT INTO public.rb VALUES ('www.xacbank.mn', 'XacBank', 'http://www.xacbank.mn', 'Ulaanbataar, Mongolia', 'contain bank in name host', 'by words', 'Mongolia', NULL);
INSERT INTO public.rb VALUES ('cnb.com', 'City National Bank', 'http://cnb.com', 'City National PlazaLos Angeles, California', 'contain bank in name', NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('aeg.com', 'AEG AG', 'http://aeg.com', 'Berlin, later Frankfurt am Main, Germany', NULL, 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.quickenloans.com', 'Quicken Loans Inc.', 'http://www.quickenloans.com', 'One Campus Martius, Detroit, Michigan, U.S.', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.goodsamclub.com', 'Good Sam Enterprises, LLC', 'http://www.goodsamclub.com', 'Lincolnshire, Illinois, U.S.', NULL, NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.bancodinapoli.it', 'Banco di Napoli', 'http://www.bancodinapoli.it', '177 via Toledo, Naples, Italy', NULL, 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.grupofamsa.com', 'Grupo Famsa S.A.B. de C.V.', 'http://www.grupofamsa.com/english.html', 'Monterrey, Mexico', NULL, 'by words', 'Mexico', NULL);
INSERT INTO public.rb VALUES ('www.cerberus.com', 'Cerberus Capital Management, L.P.', 'https://www.cerberus.com', 'New York City, United States', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.bancoestado.cl', 'Banco del Estado de Chile (BancoEstado)', 'https://www.bancoestado.cl', 'Av. Libertador Bernardo O''Higgins nº 1111, Santiago, Chile', NULL, 'by words', 'Chile', NULL);
INSERT INTO public.rb VALUES ('www.sbtpg.com', 'Santa Barbara Tax Products Group', 'http://www.sbtpg.com', 'San Diego, California', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('hdfclife.com', 'HDFC Life', 'http://hdfclife.com', 'Mumbai, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('idlc.com', 'IDLC Finance Limited', 'http://idlc.com/', 'Bay''s Galleria (1st Floor), 57 Gulshan Avenue, Dhaka-1212, Bangladesh', 'contain bank in page', 'by words', 'Bangladesh', NULL);
INSERT INTO public.rb VALUES ('www.barclays.co.uk', 'Barclays plc', 'https://www.barclays.co.uk/', 'London, United Kingdom', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('svb.com', 'SVB Financial Group', 'http://svb.com', 'Santa Clara, California', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.ba-ca.com', 'Creditanstalt AG', 'http://www.ba-ca.com/', 'Vienna, Austria', 'contain bank in page', 'by words', 'Austria', NULL);
INSERT INTO public.rb VALUES ('greenseal.org', 'Green Seal', 'http://greenseal.org/', 'Washington, DC USA', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.lycap.com', 'Lightyear Capital', 'http://www.lycap.com', 'New York, New York, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.fonspa.it', 'Credito Fondiario', 'http://www.fonspa.it/', 'Rome, Italy', 'contain bank in page', 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.un.org', 'United Nations Economic and Social Council', 'https://www.un.org/ecosoc/en/', 'New York, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('fiducia.de', 'Fiducia IT AG', 'http://fiducia.de', 'Fiduciastr 20, 76227 Karlsruhe,Baden-Württemberg, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.la-z-boy.com', 'La-Z-Boy Inc.', 'http://www.la-z-boy.com/', 'Monroe, Michigan, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('ocwen.com', 'Ocwen Financial Corporation', 'http://ocwen.com', 'West Palm Beach, Florida', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.rcibs.com', 'RCI Banque SA', 'https://www.rcibs.com/en', 'Paris, France[2]', 'contain bank in page', 'by words', 'France', NULL);
INSERT INTO public.rb VALUES ('www.zigamacss.rw', 'Zigama Credit and Savings Bank', 'http://www.zigamacss.rw/', 'Kigali, Rwanda', 'contain bank in name', NULL, 'Rwanda', NULL);
INSERT INTO public.rb VALUES ('golaghat.gov.in', 'Golaghat district', 'http://golaghat.gov.in/', 'Golaghat', NULL, 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.crypto.ch', 'Crypto AG', 'http://www.crypto.ch', 'Steinhausen (Canton of Zug), Switzerland', NULL, NULL, 'Switzerland', NULL);
INSERT INTO public.rb VALUES ('www.bsbl.org.bd', 'Bangladesh Samabaya Bank Limited', 'http://www.bsbl.org.bd', 'Dhaka, Bangladesh', 'contain bank in name', NULL, 'Bangladesh', NULL);
INSERT INTO public.rb VALUES ('www.nsandi.com', 'National Savings and Investments', 'http://www.nsandi.com', '1 Drummond Gate, London SW1V 2QX', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('religare.com', 'Religare Enterprises Limited.', 'http://religare.com', 'New Delhi, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.britannia.co.uk', 'Britannia Building Society', 'http://www.britannia.co.uk', 'Leek, Staffordshire, United Kingdom', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('smth.jp', 'Sumitomo Mitsui Trust Holdings, Inc.三井住友トラスト・ホールディングス株式会社', 'http://smth.jp/en', 'Tokyo, Japan', 'contain bank in page', 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.bancodichiavari.it', 'Banco di Chiavari e della Riviera Ligure', 'http://www.bancodichiavari.it', 'Chiavari, Italy', 'contain bank in page', 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.tsb.co.nz', 'TSB', 'http://www.tsb.co.nz/', 'New Plymouth, New Zealand', 'contain bank in page', 'by words', 'New Zealand', NULL);
INSERT INTO public.rb VALUES ('www.keba.com', 'Keba AG', 'http://www.keba.com/', 'Linz, Austria', 'contain bank in page', 'by words', 'Austria', NULL);
INSERT INTO public.rb VALUES ('euroinvestor.com', 'Euroinvestor.com A/S', 'http://euroinvestor.com', 'Hellerup, Denmark', NULL, 'by words', 'Denmark', NULL);
INSERT INTO public.rb VALUES ('www.peoples.com', 'People''s United Financial, Inc.', 'http://www.peoples.com/', 'Bridgeport, Connecticut, USA', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.achmea.nl', 'Achmea Holding N.V.', 'http://www.achmea.nl', 'Zeist, Netherlands', NULL, NULL, 'Netherlands', NULL);
INSERT INTO public.rb VALUES ('www.kbc.com', 'KBC Group N.V.', 'http://www.kbc.com/', 'Brussels, Belgium', 'contain bank in page', 'by words', 'Belgium', NULL);
INSERT INTO public.rb VALUES ('www.mbandt.com', 'MBT Financial Corp.', 'https://www.mbandt.com/', 'Monroe, Michigan', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.active.ai', 'Active Intelligence Pte Ltd (Active.Ai)', 'https://www.active.ai', 'Singapore, Singapore', 'contain bank in page', 'by words', 'Singapore', NULL);
INSERT INTO public.rb VALUES ('www.wipo.int', 'World Intellectual Property Organization', 'http://www.wipo.int/portal/en/index.html', 'Geneva, Switzerland', 'contain bank in page', 'by words', 'Switzerland', NULL);
INSERT INTO public.rb VALUES ('finam.ru', 'FINAM Holdings', 'http://finam.ru', 'Moscow, Russia', 'contain bank in page', 'by words', 'Russia', NULL);
INSERT INTO public.rb VALUES ('banaskantha.gujarat.gov.in', 'Banaskantha district', 'http://banaskantha.gujarat.gov.in', 'Palanpur', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.moelis.com', 'Moelis & Company', 'http://www.moelis.com', '399 Park AvenueNew York, New York, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.samba.com', 'Samba Financial Group SJSC', 'https://www.samba.com', 'Riyadh, Saudi Arabia', 'contain bank in page', 'by words', 'Saudi Arabia', NULL);
INSERT INTO public.rb VALUES ('www.paysafe.com', 'Paysafe Group Limited', 'https://www.paysafe.com/', 'London, UK', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.comac.cc', 'Commercial Aircraft Corporation of China, Ltd.', 'http://www.comac.cc', 'Shanghai, China', 'contain bank in page', 'by words', 'China', NULL);
INSERT INTO public.rb VALUES ('www.roth.com', 'Roth Capital Partners, LLC', 'http://www.roth.com/', 'California, USA', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.riversbirs.gov.ng', 'Rivers State Internal Revenue Service', 'http://www.riversbirs.gov.ng/', '22 William Jumbo Street, Old GRA, Port Harcourt', 'contain bank in page', 'by words', 'Nigeria', NULL);
INSERT INTO public.rb VALUES ('www.homestreet.com', 'HomeStreet Inc.', 'https://www.homestreet.com//', '601 Union StreetSeattle, Washington, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('ibamoscow.ru', 'IBA-Moscow', 'http://ibamoscow.ru/', 'Moscow, Russia', 'contain bank in page', 'by words', 'Russia', NULL);
INSERT INTO public.rb VALUES ('www.bunq.com', 'bunq', 'https://www.bunq.com', 'Naritaweg 131-133, 1043 BS, Amsterdam, Netherlands', 'contain bank in page', 'by words', 'Netherlands', NULL);
INSERT INTO public.rb VALUES ('www.parmalat.com', 'Parmalat S.p.A.', 'http://www.parmalat.com', 'Collecchio, Italy', NULL, NULL, 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.hbl.com', 'Habib Bank Limited', 'http://www.hbl.com/', 'Habib Bank Plaza, Karachi, Pakistan', 'contain bank in name', NULL, 'Pakistan', NULL);
INSERT INTO public.rb VALUES ('www.bm.ru', 'Bank of Moscow', 'http://www.bm.ru/en', 'Moscow, Russia', 'contain bank in page', 'by words', 'Russia', NULL);
INSERT INTO public.rb VALUES ('bgvb.co.in', 'Bangiya Gramin Vikash Bank', 'http://bgvb.co.in/', 'Berhampore, West Bengal, India', 'contain bank in name', NULL, 'India', NULL);
INSERT INTO public.rb VALUES ('sivasagar.nic.in', 'Sivasagar district', 'http://sivasagar.nic.in', 'Sivasagar', NULL, 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.cls-group.com', 'CLS Group Holdings AG', 'http://www.cls-group.com', 'New York', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.bank-maskan.ir', 'Bank Maskan', 'http://www.bank-maskan.ir', 'Tehran, Iran', 'contain bank in page', 'by words', 'Iran', NULL);
INSERT INTO public.rb VALUES ('www.maersk.com', 'A.P. Møller – Mærsk A/S', 'http://www.maersk.com', 'Copenhagen, Denmark', 'contain bank in page', 'by words', 'Denmark', NULL);
INSERT INTO public.rb VALUES ('www.usbank.com', 'U.S. Bancorp', 'https://www.usbank.com/', 'US Bancorp Center, Minneapolis, Minnesota, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('iconectiv.com', 'iconectiv', 'http://iconectiv.com', 'Bridgewater, NJ U.S.A', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.rightmove.co.uk', 'Rightmove plc', 'http://www.rightmove.co.uk/', 'London, England, UK', NULL, 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.phcompany.com', 'Principal Hotel Company', 'https://www.phcompany.com', 'Harrogate, North Yorkshire, UK', 'contain bank in page', NULL, 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.lgt.com', 'LGT Group', 'https://www.lgt.com', 'Vaduz, Liechtenstein', 'contain bank in page', 'by words', 'Liechtenstein', NULL);
INSERT INTO public.rb VALUES ('www.bcf.ch', 'Banque Cantonale de Fribourg', 'http://www.bcf.ch', 'Fribourg , Switzerland ', 'contain bank in page', 'by words', 'Switzerland', NULL);
INSERT INTO public.rb VALUES ('www.crctrust.com', 'China Resources SZITIC Trust Co. , Ltd. 華潤信託', 'http://www.crctrust.com/index.jsp', 'Shenzhen, People''s Republic of China', NULL, NULL, 'China', NULL);
INSERT INTO public.rb VALUES ('honeywell.com', 'Honeywell International Inc.', 'http://honeywell.com', 'Charlotte, North Carolina, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('lulugroupinternational.com', 'LuLu Group International', 'http://lulugroupinternational.com', 'Abu Dhabi, UAE', NULL, NULL, 'United Arab Emirates', NULL);
INSERT INTO public.rb VALUES ('zionsbancorporation.com', 'Zions Bancorporation', 'http://zionsbancorporation.com', 'Salt Lake City, Utah, U.S.', NULL, NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('gibtele.com', 'Gibtelecom Limited', 'http://gibtele.com', '15/21 John Mackintosh Square, Gibraltar', NULL, NULL, 'Gibraltar', NULL);
INSERT INTO public.rb VALUES ('www.unicreditbanca.it', 'UniCredit Banca', 'http://www.unicreditbanca.it', 'Palazzo Magnani, Bologna, Italy', 'contain bank in page', 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('shop.nordstrom.com', 'Nordstrom, Inc.', 'https://shop.nordstrom.com/', 'Seattle, Washington, U.S.', 'contain bank in page', NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('amravati.nic.in', 'Amravati district', 'http://amravati.nic.in', 'Amravati', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.mackenzieinvestments.com', 'Mackenzie Investments', 'http://www.mackenzieinvestments.com/', 'Toronto, Ontario, Canada', 'contain bank in page', 'by words', 'Canada', NULL);
INSERT INTO public.rb VALUES ('www.RateSetter.com', 'RateSetter', 'https://www.RateSetter.com/', 'London, United Kingdom', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.worldfishcenter.org', 'WorldFish', 'http://www.worldfishcenter.org/', 'Penang, Malaysia', NULL, 'by words', 'Malaysia', NULL);
INSERT INTO public.rb VALUES ('transferwise.com', 'TransferWise Limited', 'https://transferwise.com', 'London, United Kingdom', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.nicehash.com', 'NiceHash', 'https://www.nicehash.com', 'Ljubljana, Slovenia', NULL, NULL, 'Slovenia', NULL);
INSERT INTO public.rb VALUES ('bloomberg.com', 'Bloomberg L.P', 'http://bloomberg.com', 'Bloomberg Tower731 Lexington Avenue, New York City, New York, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('nhb.org.in', 'National Housing Board', 'http://nhb.org.in/', 'New Delhi, India [1]', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.bisa.com', 'Banco BISA S.A.', 'https://www.bisa.com', 'La Paz, Bolivia', 'contain bank in page', 'by words', 'Bolivia', NULL);
INSERT INTO public.rb VALUES ('www.paulsonco.com', 'Paulson & Co. Inc.', 'http://www.paulsonco.com', 'New York City', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.commsec.com.au', 'Commonwealth Securities (CommSec)', 'http://www.commsec.com.au', 'Sydney, Australia', 'contain bank in page', 'by words', 'Australia', NULL);
INSERT INTO public.rb VALUES ('www.cafonline.org', 'Charities Aid Foundation', 'http://www.cafonline.org', 'Kings Hill, Kent, UK', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.cardinalbank.com', 'Cardinal Financial Corporation', 'http://www.cardinalbank.com', 'McLean, Virginia, U.S.', 'contain bank in host host', NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('sodastream.com', 'SodaStream International Ltd.', 'https://sodastream.com', 'Airport City, Israel', NULL, 'by words', 'Israel', NULL);
INSERT INTO public.rb VALUES ('www.banquemisr.com', 'Banque Misr S.A.E.بنك مصر ش.م.م.', 'http://www.banquemisr.com/', 'Cairo, Egypt', 'contain bank in page', 'by words', 'Egypt', NULL);
INSERT INTO public.rb VALUES ('www.cam.es', 'Caja de Ahorros del Mediterráneo', 'http://www.cam.es', 'Alicante, Spain', 'contain bank in page', 'by words', 'Spain', NULL);
INSERT INTO public.rb VALUES ('fmi.com.mm', 'First Myanmar Investment', 'http://fmi.com.mm', '380 Bogyoke Aung San Road, Pabedan Township, Yangon, Myanmar', NULL, 'by words', 'Myanmar', NULL);
INSERT INTO public.rb VALUES ('www.aktia.fi', 'Aktia Bank plc', 'http://www.aktia.fi', 'Helsinki, Finland', 'contain bank in page', 'by words', 'Finland', NULL);
INSERT INTO public.rb VALUES ('www.oceanbank.com', 'Ocean Bank', 'http://www.oceanbank.com/', '780 NW 42nd AvenueMiami, Florida, United States', 'contain bank in name host', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.integ.com', 'Integral Systems, Inc.', 'http://www.integ.com/', 'Columbia, Maryland, United States', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.bov.com', 'Bank of Valletta p.l.c.', 'http://www.bov.com', 'BOV Centre, Triq il-Kanun, Santa Venera SVR 9030, Malta', 'contain bank in name', 'by words', 'Malta', NULL);
INSERT INTO public.rb VALUES ('raiffeisen.ch', 'Raiffeisen Switzerland', 'http://raiffeisen.ch', 'St. Gallen, Switzerland', 'contain bank in page', 'by words', 'Switzerland', NULL);
INSERT INTO public.rb VALUES ('www.northeastbank.com', 'Northeast Bancorp', 'https://www.northeastbank.com', 'Lewiston, Maine, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.bcu.gub.uy', 'Central Bank of UruguayBanco Central del Uruguay', 'http://www.bcu.gub.uy', 'Montevideo', 'contain bank in name', 'by words', 'Uruguay', NULL);
INSERT INTO public.rb VALUES ('lendingtree.com', 'LendingTree, Inc.', 'http://lendingtree.com', 'Charlotte, North Carolina, United States', NULL, NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.tennessean.com', 'The Tennessean', 'http://www.tennessean.com/', '1100 BroadwayNashville, Tennessee 37203 United States', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('cbz.co.zw', 'CBZ Holdings', 'http://cbz.co.zw', 'Harare, Zimbabwe', NULL, 'by words', 'Zimbabwe', NULL);
INSERT INTO public.rb VALUES ('www.leo.org', 'LEO GmbH', 'http://www.leo.org', 'Sauerlach, Germany', NULL, 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.emiratesislamic.ae', 'Emirates Islamic', 'https://www.emiratesislamic.ae', 'Dubai, Dubai', NULL, 'by words', 'United Arab Emirates', NULL);
INSERT INTO public.rb VALUES ('www.bpifrance.fr', 'Bpifrance', 'http://www.bpifrance.fr', 'France', NULL, 'by words', 'France', NULL);
INSERT INTO public.rb VALUES ('nagaon.nic.in', 'Nagaon', 'http://nagaon.nic.in/', 'Nagaon', NULL, NULL, 'India', NULL);
INSERT INTO public.rb VALUES ('www.santander.co.uk', 'Santander UK plc', 'http://www.santander.co.uk', 'London, England, UK', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.postoffice.co.uk', 'Post Office Money', 'http://www.postoffice.co.uk/money', 'London', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.veeam.com', 'Veeam Software Group GmbH', 'https://www.veeam.com/', 'Baar, Switzerland', 'contain bank in page', 'by words', 'Switzerland', NULL);
INSERT INTO public.rb VALUES ('www.brownshipley.com', 'Brown Shipley', 'http://www.brownshipley.com', 'London, England, United Kingdom', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.dynadot.com', 'Dynadot', 'http://www.dynadot.com', 'San Mateo, California, USA', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.sebalulule.co.ug', 'Sebalu & Lule', 'http://www.sebalulule.co.ug/', 'East African Development Bank, Plot 4, Nile Avenue, Kampala, Uganda', 'contain bank in page', 'by words', 'Uganda', NULL);
INSERT INTO public.rb VALUES ('en.psfcu.com', 'Polish & Slavic Federal Credit Union', 'https://en.psfcu.com/', 'Greenpoint, Brooklyn, United States', 'contain bank in page', NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('bauknecht.eu', 'Bauknecht Hausgeräte GmbH', 'http://bauknecht.eu', 'Stuttgart, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.aeon.info', 'ÆON Co., Ltd.', 'https://www.aeon.info/en/', 'Chiba, Japan', NULL, 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.northerntrust.com', 'Northern Trust Corporation', 'https://www.northerntrust.com/', 'Chicago, Illinois, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.sovcomflot.ru', 'Sovcomflot', 'http://www.sovcomflot.ru', 'Saint Petersburg', 'contain bank in page', 'by words', 'Russia', NULL);
INSERT INTO public.rb VALUES ('www.bil.com', 'Banque internationale à Luxembourg', 'http://www.bil.com', 'Luxembourg , Luxembourg ', 'contain bank in page', 'by words', 'Luxembourg', NULL);
INSERT INTO public.rb VALUES ('southindianbank.com', 'South Indian Bank Ltd.', 'http://southindianbank.com', 'Thrissur, Kerala, India.', 'contain bank in name host', NULL, 'India', NULL);
INSERT INTO public.rb VALUES ('www.fxall.com', 'FX Alliance Inc', 'http://www.fxall.com/', 'New York, NY, US', NULL, NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('gpabr.com', 'Companhia Brasileira de Distribuição', 'http://gpabr.com', 'São Paulo, SP, Brazil', NULL, 'by words', 'Brazil', NULL);
INSERT INTO public.rb VALUES ('www.Check.me', 'Check', 'http://www.Check.me/', 'Palo Alto, California', 'contain bank in page', 'by words', 'Montenegro', NULL);
INSERT INTO public.rb VALUES ('www.aboc.com', 'Amalgamated Bank of Chicago', 'https://www.aboc.com/', 'Chicago, IL, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('haveri.nic.in', 'Haveri district', 'http://haveri.nic.in/', 'Haveri', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.ppcb.com.kh', 'PPCBank', 'http://www.ppcb.com.kh', 'Phnom Penh, Cambodia', 'contain bank in page', 'by words', 'Cambodia', NULL);
INSERT INTO public.rb VALUES ('www.itt.com', 'ITT Inc.', 'http://www.itt.com', 'White Plains, New York, United States', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.lppsa.com', 'LPP Spółka Akcyjna', 'http://www.lppsa.com', 'Gdańsk, Poland', NULL, 'by words', 'Poland', NULL);
INSERT INTO public.rb VALUES ('www.coe.int', 'Council of Europe', 'http://www.coe.int', 'Strasbourg, France', NULL, 'by words', 'France', NULL);
INSERT INTO public.rb VALUES ('www.purolator.com', 'Purolator Inc.', 'https://www.purolator.com/', 'Mississauga, Ontario[1], Canada', NULL, 'by words', 'Canada', NULL);
INSERT INTO public.rb VALUES ('www.alleanza.it', 'Alleanza Assicurazioni S.p.A.', 'http://www.alleanza.it', 'Milan, Italy', NULL, 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.mtn.co.ug', 'MTN Uganda', 'http://www.mtn.co.ug/', 'Plot 69-71 Jinja RoadKampala, Uganda', NULL, 'by words', 'Uganda', NULL);
INSERT INTO public.rb VALUES ('www.aecom.com', 'AECOM', 'https://www.aecom.com/', 'Los Angeles, California', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('change.org', 'Change.org, Inc.', 'http://change.org', 'San Francisco, California, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.ilfsindia.com', 'Infrastructure Leasing & Financial Services (IL&FS)', 'http://www.ilfsindia.com/', 'Mumbai, Maharashtra, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.gruppobancasella.it', 'Banca Sella Holding', 'https://www.gruppobancasella.it', 'Biella, Italy', 'contain bank in page', 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('themuse.com', 'The Muse', 'http://themuse.com', 'New York City, New York, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('nordion.com', 'Nordion Inc.', 'http://nordion.com', 'Ottawa, Ontario, Canada', 'contain bank in page', 'by words', 'Canada', NULL);
INSERT INTO public.rb VALUES ('hpbilaspur.nic.in', 'Bilaspur', 'http://hpbilaspur.nic.in/', ' • Zonal Mandi', NULL, NULL, 'India', NULL);
INSERT INTO public.rb VALUES ('www.tandem.co.uk', 'Tandem Money Limited', 'https://www.tandem.co.uk/', '123 Pentonville Road,Clerkenwell,London N1 9LZ', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('haworth.com', 'Haworth Inc.', 'http://haworth.com', 'Holland, Michigan, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.dskhyp.de', 'DSK Hyp AG', 'http://www.dskhyp.de/', 'Frankfurt, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.fno.no', 'Finance Norway', 'https://www.fno.no', 'Hansteens gate 2, Oslo', 'contain bank in page', 'by words', 'Norway', NULL);
INSERT INTO public.rb VALUES ('www.arbuthnotlatham.co.uk', 'Arbuthnot Latham & Co. Ltd.', 'http://www.arbuthnotlatham.co.uk/', 'Arbuthnot House,7 Wilson Street, London EC2M 2SN', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('bagpat.nic.in', 'Baghpat district', 'http://bagpat.nic.in/', 'Baghpat', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('rajgarh.nic.in', 'Rajgarh district', 'http://rajgarh.nic.in', 'Rajgarh (Madhya Pradesh)', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.caesars.com', 'Caesars Entertainment Corporation', 'https://www.caesars.com/', 'Paradise, Nevada, U.S.', 'contain bank in page', NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.canadacouncil.ca', 'Canada Council for the Arts', 'http://www.canadacouncil.ca', 'Ottawa, Ontario', 'contain bank in page', NULL, 'Canada', NULL);
INSERT INTO public.rb VALUES ('www.gfmag.com', 'Global Finance', 'http://www.gfmag.com', 'Manhattan, New York City, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.bnpparibasfortis.com', 'BNP Paribas Fortis', 'http://www.bnpparibasfortis.com/', 'Brussels, Belgium', 'contain bank in page', 'by words', 'Belgium', NULL);
INSERT INTO public.rb VALUES ('www.ubp.com', 'Union Bancaire Privée', 'http://www.ubp.com', 'Geneva, Switzerland', 'contain bank in page', 'by words', 'Switzerland', NULL);
INSERT INTO public.rb VALUES ('www.ithmaarbank.com', 'Ithmaar Bank', 'http://www.ithmaarbank.com', 'Seef Tower, Manama, Kingdom of Bahrain', 'contain bank in name host', NULL, 'Bahrain', NULL);
INSERT INTO public.rb VALUES ('www.mikud4u.co.il', 'Mikud Israel Ltd.', 'http://www.mikud4u.co.il/', 'Tel Aviv, Israel', 'contain bank in page', 'by words', 'Israel', NULL);
INSERT INTO public.rb VALUES ('www.pabcbank.com', 'Pan Asia Banking Corporation PLC', 'http://www.pabcbank.com', 'Kollupitiya, Sri Lanka', 'contain bank in name host', NULL, 'Sri Lanka', NULL);
INSERT INTO public.rb VALUES ('group.bnpparibas', 'BNP Paribas S.A.', 'https://group.bnpparibas/en/', 'Boulevard des Italiens, Paris, France', 'contain bank in page', 'by words', 'France', NULL);
INSERT INTO public.rb VALUES ('www.fatf-gafi.org', 'Financial Action Task Force', 'http://www.fatf-gafi.org', 'Paris, France', 'contain bank in page', NULL, 'France', NULL);
INSERT INTO public.rb VALUES ('www.nordea.com', 'Nordea Bank Abp', 'http://www.nordea.com/', 'Helsinki, Finland[1]', 'contain bank in page', 'by words', 'Finland', NULL);
INSERT INTO public.rb VALUES ('www.gnbankghana.com', 'GN Bank', 'http://www.gnbankghana.com', 'Accra, Ghana', 'contain bank in name host', 'by words', 'Ghana', NULL);
INSERT INTO public.rb VALUES ('www.qudosbank.com.au', 'Qudos Mutual Limited', 'http://www.qudosbank.com.au', 'Mascot, Sydney, Australia', 'contain bank in page', 'by words', 'Australia', NULL);
INSERT INTO public.rb VALUES ('www.pigglywiggly.com', 'Piggly Wiggly', 'http://www.pigglywiggly.com/', 'Keene, New Hampshire, U.S.', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.cpic.com.cn', 'China Pacific Insurance (Group)', 'http://www.cpic.com.cn', 'Shanghai, China', 'contain bank in page', 'by words', 'China', NULL);
INSERT INTO public.rb VALUES ('www.tempocentar.com', 'Tempo CentarТемпо Центар', 'http://www.tempocentar.com/', 'Belgrade, Serbia', NULL, NULL, 'Serbia', NULL);
INSERT INTO public.rb VALUES ('www.snsreaal.nl', 'SNS REAAL N.V.', 'http://www.snsreaal.nl/', 'Utrecht, Netherlands', NULL, NULL, 'Netherlands', NULL);
INSERT INTO public.rb VALUES ('www.aol.com', 'AOL', 'https://www.aol.com/', '770 Broadway, New York City, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('tishmanspeyer.com', 'Tishman Speyer Properties', 'http://tishmanspeyer.com/', '45 Rockefeller PlazaNew York City, New York, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('nationalamusements.com', 'National Amusements, Inc.', 'http://nationalamusements.com', 'Norwood, Massachusetts, U.S.', 'contain bank in page', NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.mitsubishi.com', 'Mitsubishi Group', 'http://www.mitsubishi.com/', 'Tokyo, Japan', 'contain bank in page', NULL, 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.fiocchigfl.it', 'Fiocchi Munizioni', 'http://www.fiocchigfl.it', 'Lecco, Italy', 'contain bank in page', 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.standard.co.uk', 'Evening Standard', 'https://www.standard.co.uk/', 'Northcliffe House, Derry Street, KensingtonLondon', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.bcr.ro', 'Banca Comercialǎ Românǎ', 'http://www.bcr.ro', 'Bucharest, Romania', 'contain bank in page', 'by words', 'Romania', NULL);
INSERT INTO public.rb VALUES ('www.obracaja.es', 'Caja Madrid', 'http://www.obracaja.es/', 'Madrid, Spain', 'contain bank in page', 'by words', 'Spain', NULL);
INSERT INTO public.rb VALUES ('www.daiwa-grp.jp', 'Daiwa Securities Group Inc.', 'http://www.daiwa-grp.jp/english/', 'Tokyo, Japan', 'contain bank in page', 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.53.com', 'Fifth Third Bancorp', 'http://www.53.com/', 'Cincinnati, Ohio, USA', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.unionefiduciaria.it', 'Unione Fiduciaria', 'http://www.unionefiduciaria.it', '4 via Amedei, Milan, Italy', 'contain bank in page', 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.banadesa.hn', 'BANADESA', 'http://www.banadesa.hn', 'Tegucigalpa, Honduras', NULL, NULL, 'Honduras', NULL);
INSERT INTO public.rb VALUES ('www.kommersant.ru', 'Kommersant', 'http://www.kommersant.ru/', 'Moscow', 'contain bank in page', 'by words', 'Russia', NULL);
INSERT INTO public.rb VALUES ('www.kansai-airports.co.jp', 'Kansai Airports', 'http://www.kansai-airports.co.jp//', 'Kansai Airport, Osaka, Japan', NULL, 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.eximbank-ug.com', 'Exim Bank (Uganda)', 'http://www.eximbank-ug.com/', '6 Hannington RoadKampala, Uganda', 'contain bank in name host', NULL, 'Uganda', NULL);
INSERT INTO public.rb VALUES ('www.cbs.sc', 'Central Bank of Seychelles', 'http://www.cbs.sc', 'Victoria', 'contain bank in name', NULL, 'Seychelles', NULL);
INSERT INTO public.rb VALUES ('www.bancodebogota.com', 'Banco de Bogotá S.A.', 'http://www.bancodebogota.com/', 'Bogotá, Colombia', 'contain bank in page', 'by words', 'Colombia', NULL);
INSERT INTO public.rb VALUES ('www.esfg.com', 'Banco Espirito Santo Financial Group', 'http://www.esfg.com/', 'Luxembourg, Luxembourg', NULL, NULL, 'Luxembourg', NULL);
INSERT INTO public.rb VALUES ('thecitybank.com', 'The City Bank Limited', 'http://thecitybank.com', 'Dhaka, Bangladesh', 'contain bank in page', 'by words', 'Bangladesh', NULL);
INSERT INTO public.rb VALUES ('www.caterallen.co.uk', 'Cater Allen Limited', 'http://www.caterallen.co.uk', 'London, England, UK', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('eldoninsurance.co.uk', 'Eldon Insurance Services', 'https://eldoninsurance.co.uk/', 'Bristol, United Kingdom', NULL, 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.eharmony.com', 'eharmony.com', 'http://www.eharmony.com/', 'Los Angeles, California, U.S.', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('advansgroup.com', 'Advans', 'http://advansgroup.com', 'Luxembourg', 'contain bank in page', 'by words', 'Luxembourg', NULL);
INSERT INTO public.rb VALUES ('www.adib.ae', 'Abu Dhabi Islamic Bank PJSC', 'http://www.adib.ae/', 'Abu Dhabi, United Arab Emirates', 'contain bank in name', 'by words', 'United Arab Emirates', NULL);
INSERT INTO public.rb VALUES ('www.polaroid.com', 'Polaroid Corporation', 'http://www.polaroid.com/', 'Minnetonka, Minnesota, U.S.', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.hsbc.lk', 'HSBC Sri Lanka', 'https://www.hsbc.lk', 'Colombo, Sri Lanka', NULL, 'by words', 'Sri Lanka', NULL);
INSERT INTO public.rb VALUES ('www.ahava.com', 'Ahava Dead Sea Laboratories, Limited', 'http://www.ahava.com/', 'Holon, Israel', NULL, 'by words', 'Israel', NULL);
INSERT INTO public.rb VALUES ('hudl.com', 'Agile Sports Technologies, Inc.', 'http://hudl.com', 'Lincoln, Nebraska, United States', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.macegroup.com', 'Mace Group Ltd', 'http://www.macegroup.com/', 'London, United Kingdom (headquarters)', NULL, 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.salemfive.com', 'Salem Five', 'https://www.salemfive.com', 'Salem, Massachusetts, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.midcapadvisors.com', 'MidCap Advisors, LLC', 'http://www.midcapadvisors.com', 'New York, New York, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('munger.bih.nic.in', 'Munger district', 'http://munger.bih.nic.in', 'Munger', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('revolut.com', 'Revolut Ltd', 'http://revolut.com', 'London, United Kingdom', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.synchrony.com', 'Synchrony', 'https://www.synchrony.com/', 'Stamford, Connecticut, United States[2]', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.ebaclearing.eu', 'EBA Clearing S.A.S', 'https://www.ebaclearing.eu/', 'Paris, France', 'contain bank in page', 'by words', 'France', NULL);
INSERT INTO public.rb VALUES ('www.mg.co.za', 'The Mail & Guardian', 'http://www.mg.co.za', 'Johannesburg, Gauteng, South Africa', 'contain bank in page', 'by words', 'South Africa', NULL);
INSERT INTO public.rb VALUES ('khabar.kz', 'Khabar Agency', 'http://khabar.kz/', 'Almaty', 'contain bank in page', 'by words', 'Kazakhstan', NULL);
INSERT INTO public.rb VALUES ('eurodw.eu', 'EuropeanDataWarehouse', 'https://eurodw.eu/', 'Frankfurt, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.merckfinck.de', 'Merck Finck', 'http://www.merckfinck.de/', 'Pacellistraße 16, Munich, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.euroclear.com', 'Euroclear', 'https://www.euroclear.com', 'Brussels, Belgium', 'contain bank in page', 'by words', 'Belgium', NULL);
INSERT INTO public.rb VALUES ('www.absa.africa', 'Absa Group Limited', 'https://www.absa.africa/absaafrica/', 'Johannesburg, South Africa[2]', 'contain bank in page', 'by words', 'South Africa', NULL);
INSERT INTO public.rb VALUES ('www.becu.org', 'BECU', 'https://www.becu.org/', 'Tukwila, Washington, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.bancosardegna.it', 'Banco di Sardegna S.p.A.', 'http://www.bancosardegna.it/home.jlcm', 'Sassari, Italy', 'contain bank in page', 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.bancacambiano.it', 'Banca di Cambiano', 'http://www.bancacambiano.it/', '6 Piazza Giovanni XXIII, Castelfiorentino, Italy', 'contain bank in page', 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.PennyMacUSA.com', 'PennyMac Loan Services, LLC', 'https://www.PennyMacUSA.com/', 'Westlake Village, California, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.cogebanque.co.rw', 'Compagnie Générale de Banque (Cogebanque)', 'http://www.cogebanque.co.rw/', 'Kigali, Rwanda', 'contain bank in page', 'by words', 'Rwanda', NULL);
INSERT INTO public.rb VALUES ('www.unitybankng.com', 'Unity Bank plc', 'http://www.unitybankng.com/', 'Victoria Island, Lagos, Nigeria', 'contain bank in name host', NULL, 'Nigeria', NULL);
INSERT INTO public.rb VALUES ('bb.com.br', 'Banco do Brasil S.A.', 'http://bb.com.br', 'Brasília, Federal District, Brazil', 'contain bank in page', 'by words', 'Brazil', NULL);
INSERT INTO public.rb VALUES ('www.zesco.co.zm', 'ZESCO', 'http://www.zesco.co.zm/', 'Lusaka, Zambia', NULL, NULL, 'Zambia', NULL);
INSERT INTO public.rb VALUES ('telenorbank.pk', 'Telenor Microfinance Bank', 'http://telenorbank.pk', 'Karachi, Pakistan', 'contain bank in name host', NULL, 'Pakistan', NULL);
INSERT INTO public.rb VALUES ('www.ahlibank.com.qa', 'Ahli Bank QSC', 'http://www.ahlibank.com.qa', 'Doha, Qatar', 'contain bank in name host', NULL, 'Qatar', NULL);
INSERT INTO public.rb VALUES ('marayobankinc.ph', 'Marayo Bank, Inc. (A Rural Bank)', 'http://marayobankinc.ph', 'Pontevedra, Negros Occidental, Philippines', 'contain bank in name host', NULL, 'Philippines', NULL);
INSERT INTO public.rb VALUES ('www.bam.it', 'Banca Agricola Mantovana', 'http://www.bam.it', '30 Corso Vittorio Emanuele II, Mantua, Italy', 'contain bank in page', 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.sekerbank.com.tr', 'Şekerbank T.A.Ş.', 'http://www.sekerbank.com.tr/en', 'Turkey', 'contain bank in page', 'by words', 'Turkey', NULL);
INSERT INTO public.rb VALUES ('sangli.gov.in', 'Sangli district', 'http://sangli.gov.in/', 'Sangli', NULL, 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.ocbcnisp.com', 'PT Bank OCBC NISP Tbk', 'http://www.ocbcnisp.com/', 'OCBC NISP Tower, South Jakarta, Indonesia', 'contain bank in name', NULL, 'Indonesia', NULL);
INSERT INTO public.rb VALUES ('dunelm.com', 'Dunelm', 'http://dunelm.com', 'Syston, Leicestershire, UK', NULL, 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.ashland.com', 'Ashland Global Holdings Inc.', 'http://www.ashland.com/', 'Covington, Kentucky, U.S.', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.eq.fi', 'eQ Bank Ltd', 'https://www.eq.fi/', 'Helsinki, Finland', 'contain bank in name', 'by words', 'Finland', NULL);
INSERT INTO public.rb VALUES ('www.airindia.com', 'Air India', 'http://www.airindia.com', 'Airlines House, Delhi, India[4]', NULL, 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.woorifg.com', 'Woori Financial Group', 'http://www.woorifg.com/pr/eng/index.jsp', 'Seoul, South Korea', NULL, NULL, 'South Korea', NULL);
INSERT INTO public.rb VALUES ('www.chubb.co.uk', 'Chubb Fire & Security', 'http://www.chubb.co.uk/', 'Middlesex, United Kingdom', NULL, 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.hitachi.com', 'Hitachi, Ltd.', 'http://www.hitachi.com', 'Marunouchi, Chiyoda-ku, Tokyo, Japan', NULL, 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.bcge.ch', 'Banque cantonale de Genève', 'https://www.bcge.ch', 'Case postale 2251 1211 Genève 2 Switzerland', 'contain bank in page', 'by words', 'Switzerland', NULL);
INSERT INTO public.rb VALUES ('www.saudioger.com', 'Saudi Oger Limitedشركة سعودي أوجيه المحدودة', 'http://www.saudioger.com', 'Riyadh ', 'contain bank in page', 'by words', 'Saudi Arabia', NULL);
INSERT INTO public.rb VALUES ('www.ampcapital.com', 'AMP Capital', 'http://www.ampcapital.com/', 'Sydney, Australia', 'contain bank in page', 'by words', 'Australia', NULL);
INSERT INTO public.rb VALUES ('federalreserve.gov', 'Federal Reserve', 'https://federalreserve.gov/', 'Eccles Building, Washington, D.C., U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.kantega.no', 'Kantega AS', 'http://www.kantega.no/', 'Oslo, Norway', 'contain bank in page', NULL, 'Norway', NULL);
INSERT INTO public.rb VALUES ('globalpaymentsinc.com', 'Global Payments Inc.', 'http://globalpaymentsinc.com', 'Three Alliance CenterAtlanta, Georgia, U.S.', 'contain bank in page', 'by words', 'Georgia', NULL);
INSERT INTO public.rb VALUES ('www.xoom.com', 'Xoom Corporation', 'https://www.xoom.com', 'San Francisco, California, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.simplii.com', 'Simplii Financial', 'https://www.simplii.com', 'Toronto, Ontario, Canada', 'contain bank in page', 'by words', 'Canada', NULL);
INSERT INTO public.rb VALUES ('www.koc.com.tr', 'Koç Holding A.Ş.', 'http://www.koc.com.tr/en-us/', 'Nakkaştepe, Istanbul', 'contain bank in page', 'by words', 'Turkey', NULL);
INSERT INTO public.rb VALUES ('www.consorsfinanz.de', 'Consors Finanz BNP Paribas', 'http://www.consorsfinanz.de/', 'Munich', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.e-coop.it', 'Coop Italia', 'http://www.e-coop.it/', 'Casalecchio di Reno, Italy, European Union', NULL, NULL, 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.madarail.mg', 'MADARAIL', 'http://www.madarail.mg', 'Antananarivo', 'contain bank in page', NULL, 'Madagascar', NULL);
INSERT INTO public.rb VALUES ('www.clubpremier.com', 'Club Premier', 'http://www.clubpremier.com', 'Mexico City, D.F., Mexico', NULL, NULL, 'Mexico', NULL);
INSERT INTO public.rb VALUES ('www.onespan.com', 'OneSpan', 'https://www.onespan.com/', 'Chicago, Illinois', 'contain bank in page', NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.uba.com.al', 'United Bank of Albania', 'http://www.uba.com.al/', 'Tirana, Albania', 'contain bank in page', NULL, 'Albania', NULL);
INSERT INTO public.rb VALUES ('www.nbs.rs', 'National Bank of SerbiaНародна банка СрбијеNarodna Banka Srbije', 'http://www.nbs.rs', 'Nemanjina 17, Belgrade', 'contain bank in name', 'by words', 'Serbia', NULL);
INSERT INTO public.rb VALUES ('www.heidelbergcement.com', 'HeidelbergCement AG', 'http://www.heidelbergcement.com', 'Heidelberg, Germany', NULL, 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.carilo.it', 'Cassa di Risparmio di Loreto', 'http://www.carilo.it', 'Loreto, Italy', NULL, NULL, 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.caixa.cv', 'Caixa Económica de Cabo Verde', 'http://www.caixa.cv', 'Praia, Cape Verde', 'contain bank in page', 'by words', 'Cape Verde', NULL);
INSERT INTO public.rb VALUES ('www.tescobank.com', 'Tesco Personal Finance plc', 'http://www.tescobank.com', 'Edinburgh, Scotland, UK', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('originenergy.com.au', 'Origin Energy Ltd', 'http://originenergy.com.au', 'Australia SquareSydney, New South Wales, Australia', NULL, 'by words', 'Australia', NULL);
INSERT INTO public.rb VALUES ('www.bcncv.com', 'Banco Caboverdiano de Negócios', 'http://www.bcncv.com/', 'Av. Amílcar Cabral, Praia, Cape Verde', NULL, NULL, 'Cape Verde', NULL);
INSERT INTO public.rb VALUES ('www.lanbusa.com', 'Los Angeles National Bank', 'http://www.lanbusa.com', 'Buena Park, California', 'contain bank in name', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.bi.cv', 'Banco Interatlântico', 'http://www.bi.cv', 'Praia, Santiago, Cape Verde', NULL, 'by words', 'Cape Verde', NULL);
INSERT INTO public.rb VALUES ('www.hudson.co.jp', 'Hudson Soft Company, Limited', 'http://www.hudson.co.jp', 'Midtown Tower, Tokyo MidtownAkasaka, Minato, Tokyo', NULL, 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.citgo.com', 'Citgo Petroleum Corporation', 'http://www.citgo.com', 'Houston, Texas, U.S.', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.sage.com', 'The Sage Group plc', 'https://www.sage.com/', 'Newcastle upon Tyne, England, United Kingdom', NULL, NULL, 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.gfgsa.com', 'Grupo Financiero Galícia S.A.', 'http://www.gfgsa.com', 'Buenos Aires, Argentina', NULL, NULL, 'Argentina', NULL);
INSERT INTO public.rb VALUES ('www.next.co.uk', 'Next', 'https://www.next.co.uk/', 'Enderby, Leicestershire, England, United Kingdom', NULL, 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('yavatmal.nic.in', 'Yavatmal district', 'http://yavatmal.nic.in/', 'Yavatmal', NULL, 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.greendot.com', 'Green Dot Corporation', 'http://www.greendot.com', 'Pasadena, California', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('comerica.com', 'Comerica Incorporated', 'http://comerica.com', 'Comerica Bank TowerDallas, Texas, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.burlington.com', 'Burlington Stores, Inc.', 'https://www.burlington.com', 'Burlington, New Jersey, U.S.', 'contain bank in page', 'by words', 'Jersey', NULL);
INSERT INTO public.rb VALUES ('www.qia.qa', 'Qatar Investment Authority', 'http://www.qia.qa/', 'Doha, Qatar', 'contain bank in page', 'by words', 'Qatar', NULL);
INSERT INTO public.rb VALUES ('hpmandi.nic.in', 'Mandi district', 'http://hpmandi.nic.in/', 'Mandi, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.swissquote.com', 'Swissquote Group Holding Ltd', 'http://www.swissquote.com', 'Gland, Switzerland', 'contain bank in page', 'by words', 'Switzerland', NULL);
INSERT INTO public.rb VALUES ('karimnagar.nic.in', 'Karimnagar district', 'http://karimnagar.nic.in', 'Karimnagar', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.bpay.com.au', 'BPAY Pty Ltd', 'http://www.bpay.com.au/', 'Australia', NULL, NULL, 'Australia', NULL);
INSERT INTO public.rb VALUES ('wessexwater.co.uk', 'Wessex Water', 'http://wessexwater.co.uk', 'Bath, Somerset', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.greateasternlife.com', 'Great Eastern Life Assurance Co. Ltd大東方人壽保險有限公司', 'http://www.greateasternlife.com', 'Singapore', NULL, 'by words', 'Singapore', NULL);
INSERT INTO public.rb VALUES ('www.metlife.com', 'MetLife, Inc.', 'https://www.metlife.com/', 'MetLife BuildingNew York, New York, U.S.', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.gtja.com', 'Guotai Junan Securities', 'http://www.gtja.com', 'Shanghai, China', 'contain bank in page', 'by words', 'China', NULL);
INSERT INTO public.rb VALUES ('www.img.com', 'IMG', 'http://www.img.com', 'New York City, New York, United States', NULL, NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.sbigroup.co.jp', 'SBI Holdings', 'http://www.sbigroup.co.jp/english/', 'Tokyo, Japan', 'contain bank in page', NULL, 'Japan', NULL);
INSERT INTO public.rb VALUES ('coins.ph', 'Coins.ph', 'https://coins.ph/', 'Pasig City, Metro Manila, Philippines', 'contain bank in page', 'by words', 'Philippines', NULL);
INSERT INTO public.rb VALUES ('www.csb.co.in', 'CSB Bank Limited', 'http://www.csb.co.in/', 'Thrissur, Kerala, India.', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.standardbank.co.mw', 'Standard Bank of Malawi Limited', 'http://www.standardbank.co.mw/', 'Limbe, Malawi', 'contain bank in name host', 'by words', 'Malawi', NULL);
INSERT INTO public.rb VALUES ('www.bushmills.com', 'Old Bushmills Distillery', 'http://www.bushmills.com', 'Bushmills, County Antrim, Northern Ireland', NULL, NULL, 'Ireland', NULL);
INSERT INTO public.rb VALUES ('www.bmb.co.in', 'Bharatiya Mahila Bank', 'http://www.bmb.co.in', 'Delhi, India', 'contain bank in name', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.arqiva.com', 'Arqiva', 'https://www.arqiva.com', 'Winchester, England, United Kingdom', NULL, 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.bnc.com.ve', 'Banco Nacional de Crédito C.A.', 'http://www.bnc.com.ve/', 'Caracas, Venezuela', 'contain bank in page', 'by words', 'Venezuela', NULL);
INSERT INTO public.rb VALUES ('www.prosperitybankusa.com', 'Prosperity Bancshares, Inc.', 'http://www.prosperitybankusa.com', 'Houston, Texas, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('cpipg.com', 'CPI Property Group', 'http://cpipg.com', 'Luxembourg City, Luxembourg', NULL, 'by words', 'Luxembourg', NULL);
INSERT INTO public.rb VALUES ('www.djarum.com', 'PT Djarum[1][2][3]', 'https://www.djarum.com', 'Kudus, Central Java, Indonesia', NULL, 'by words', 'Indonesia', NULL);
INSERT INTO public.rb VALUES ('www.mercedes-benz.co.in', 'Mercedes-Benz India Pvt Ltd', 'https://www.mercedes-benz.co.in/', 'Pune, Maharashtra, India', NULL, 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.dogusgrubu.com.tr', 'Doğuş Group', 'https://www.dogusgrubu.com.tr', 'Istanbul, Turkey', 'contain bank in page', 'by words', 'Turkey', NULL);
INSERT INTO public.rb VALUES ('www.psk.at', 'Österreichische Postsparkasse AG', 'http://www.psk.at/', 'Vienna, Austria', 'contain bank in page', 'by words', 'Austria', NULL);
INSERT INTO public.rb VALUES ('suncorpgroup.com.au', 'Suncorp Group', 'http://suncorpgroup.com.au/', 'Brisbane, Australia', 'contain bank in page', 'by words', 'Australia', NULL);
INSERT INTO public.rb VALUES ('www.oppenheim.de', 'Sal. Oppenheim Jr. & Cie. AG & Co. KGaA', 'https://www.oppenheim.de/', 'Cologne, Germany', NULL, NULL, 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.dinersclub.com', 'Diners Club International', 'https://www.dinersclub.com/', 'Riverwoods, Illinois, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.freecharge.in', 'FreeCharge', 'https://www.freecharge.in/', 'Gurugram, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.gjensidigenor.no', 'Gjensidige NOR ASA', 'http://www.gjensidigenor.no/', 'Oslo, Norway', 'contain bank in page', 'by words', 'Norway', NULL);
INSERT INTO public.rb VALUES ('www2.wakefern.com', 'Wakefern Food Corporation', 'http://www2.wakefern.com/', 'Keasbey, New Jersey, U.S.', 'contain bank in page', 'by words', 'Jersey', NULL);
INSERT INTO public.rb VALUES ('www.slsp.sk', 'Slovenská sporiteľňa, a.s.', 'https://www.slsp.sk/sk/ludia', 'Bratislava, Slovakia', 'contain bank in page', 'by words', 'Slovakia', NULL);
INSERT INTO public.rb VALUES ('www.upcinsurance.com', 'UPC Insurance', 'http://www.upcinsurance.com', 'St. Petersburg, Florida, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.anz.co.nz', 'ANZ New Zealand', 'https://www.anz.co.nz/personal/', 'Auckland, New Zealand', 'contain bank in page', 'by words', 'New Zealand', NULL);
INSERT INTO public.rb VALUES ('primark.com', 'Primark Stores Limited', 'http://primark.com', 'Dublin, Ireland', NULL, 'by words', 'Ireland', NULL);
INSERT INTO public.rb VALUES ('www.bbk.es', 'Bilbao Bizkaia Kutxa', 'http://www.bbk.es/', 'Bilbao, Spain', 'contain bank in page', 'by words', 'Spain', NULL);
INSERT INTO public.rb VALUES ('www.viabcp.com', 'Banco de Crédito del Perú', 'http://www.viabcp.com', 'Lima, Peru', 'contain bank in page', 'by words', 'Peru', NULL);
INSERT INTO public.rb VALUES ('www.invesco.com', 'Invesco Ltd.', 'http://www.invesco.com', 'Atlanta, Georgia, U.S.', 'contain bank in page', 'by words', 'Georgia', NULL);
INSERT INTO public.rb VALUES ('www.redventures.com', 'Red Ventures', 'http://www.redventures.com', 'Indian Land, South Carolina', 'contain bank in page', NULL, 'India', NULL);
INSERT INTO public.rb VALUES ('first-solution.co.uk', 'First Solution Money Transfer', 'http://first-solution.co.uk', 'London, England', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.nbctz.com', 'NBC (Tanzania) Limited', 'http://www.nbctz.com/', 'Sokoine Drive, Kivukoni, Dar es Salaam, Tanzania', 'contain bank in page', 'by words', 'Tanzania', NULL);
INSERT INTO public.rb VALUES ('www.chainreactioncycles.com', 'Wiggle-CRC Group', 'http://www.chainreactioncycles.com', 'Portsmouth, England, UK', NULL, 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.ubb.bg', 'United Bulgarian Bank', 'https://www.ubb.bg', 'Sofia, Bulgaria', 'contain bank in name', NULL, 'Bulgaria', NULL);
INSERT INTO public.rb VALUES ('gettyimages.com', 'Getty Images, Inc.', 'http://gettyimages.com', 'Seattle, Washington, United States', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('morestore.com', 'More.', 'http://morestore.com/', 'Mumbai, India', NULL, 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.forever.com', 'Forever', 'https://www.forever.com/', 'Pittsburgh, Pennsylvania', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('fatehpur.nic.in', 'Fatehpur district', 'http://fatehpur.nic.in', 'Fatehpur', NULL, NULL, 'India', NULL);
INSERT INTO public.rb VALUES ('equifax.com', 'Equifax Inc.', 'https://equifax.com', 'Atlanta, Georgia, U.S.', 'contain bank in page', 'by words', 'Georgia', NULL);
INSERT INTO public.rb VALUES ('www.kutxa.net', 'Gipuzkoa Donostia Kutxa', 'http://www.kutxa.net/', 'San Sebastián, Basque Autonomous Community, Spain', 'contain bank in page', 'by words', 'Spain', NULL);
INSERT INTO public.rb VALUES ('www.snapdeal.com', 'Snapdeal', 'https://www.snapdeal.com/', 'New Delhi, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.hypovereinsbank.de', 'UniCredit Bank AG', 'http://www.hypovereinsbank.de/', 'Munich, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.forcepoint.com', 'Forcepoint LLC', 'http://www.forcepoint.com', 'Austin, Texas', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('gtbank.co.ke', 'Guaranty Trust Bank (Kenya)', 'http://gtbank.co.ke/', 'Nairobi, Kenya', 'contain bank in name host', 'by words', 'Kenya', NULL);
INSERT INTO public.rb VALUES ('topsoe.com', 'Haldor Topsøe', 'http://topsoe.com', 'Kgs. Lyngby, Denmark', NULL, 'by words', 'Denmark', NULL);
INSERT INTO public.rb VALUES ('www.madurai.tn.nic.in', 'Madurai District', 'http://www.madurai.tn.nic.in/', 'Madurai', NULL, 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.astoriabank.com', 'Astoria Financial Corporation', 'https://www.astoriabank.com', 'Lake Success, New York', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.parsian-bank.com', 'Parsian Financial Group', 'http://www.parsian-bank.com/', 'Iran, Tehran', 'contain bank in page', NULL, 'Iran', NULL);
INSERT INTO public.rb VALUES ('eastgarohills.gov.in', 'East Garo Hills district', 'http://eastgarohills.gov.in', 'Williamnagar', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.reliantbank.com', 'Reliant Bancorp', 'https://www.reliantbank.com/', '1736 Carothers Parkway, Brentwood, Tennessee, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.jica.go.jp', 'Japan International Cooperation Agency', 'http://www.jica.go.jp/english', '1F–6F Ninbancho Building Center, Chiyoda, Tokyo, Japan', NULL, 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.icmai.in', 'The Institute of Cost Accountants of India', 'https://www.icmai.in', 'CMA Bhawan, 12 Sudder Street, Kolkata - 700016 India Kolkata, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.theonion.com', 'The Onion', 'https://www.theonion.com/', 'Chicago, Illinois', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('corp.aimia.com', 'Aimia Inc.', 'https://corp.aimia.com/', 'Montreal, Quebec, Canada', 'contain bank in page', 'by words', 'Canada', NULL);
INSERT INTO public.rb VALUES ('kota.rajasthan.gov.in', 'Kota district', 'http://kota.rajasthan.gov.in', 'Kota, Rajasthan', 'contain bank in page', NULL, 'India', NULL);
INSERT INTO public.rb VALUES ('www.bbva.mx', 'BBVA México', 'http://www.bbva.mx/', 'Mexico City, Mexico', 'contain bank in page', 'by words', 'Mexico', NULL);
INSERT INTO public.rb VALUES ('www.zopa.com', 'Zopa Limited', 'https://www.zopa.com/', 'Cottons Centre, Tooley Street, London, England, UK', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('bhplayhouse.com', 'Beverly Hills Playhouse', 'http://bhplayhouse.com', 'Beverly Hills, California', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.pochta.ru', 'Russian Post', 'https://www.pochta.ru/', 'Varshavskoye shosse 37, Moscow, Russia', 'contain bank in page', 'by words', 'Russia', NULL);
INSERT INTO public.rb VALUES ('bancagenerali.com', 'Banca Generali', 'http://bancagenerali.com', 'Trieste, Italy', 'contain bank in page', 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.eblf.com', 'Banque Libano-Française S.A.L', 'http://www.eblf.com', 'Liberty Plaza building, Rome Street, Beirut, Lebanon', 'contain bank in page', 'by words', 'Lebanon', NULL);
INSERT INTO public.rb VALUES ('www.hkma.gov.hk', 'Hong Kong Monetary Authority香港金融管理局', 'http://www.hkma.gov.hk', 'International Finance Centre, Finance Street, Central', 'contain bank in page', 'by words', 'Hong Kong', NULL);
INSERT INTO public.rb VALUES ('www.rmbh.co.za', 'RMB Holdings Limited', 'http://www.rmbh.co.za/', 'Sandton, South Africa', 'contain bank in page', 'by words', 'South Africa', NULL);
INSERT INTO public.rb VALUES ('www.argenta.be', 'Argenta', 'http://www.argenta.be', 'Antwerp, Belgium', 'contain bank in page', 'by words', 'Belgium', NULL);
INSERT INTO public.rb VALUES ('privatbank.ua', 'PrivatBank', 'http://privatbank.ua', 'Dnipro, Ukraine', 'contain bank in name host', NULL, 'Ukraine', NULL);
INSERT INTO public.rb VALUES ('www.mediaworks.co.nz', 'Mediaworks', 'http://www.mediaworks.co.nz', 'Auckland, New Zealand', 'contain bank in page', 'by words', 'New Zealand', NULL);
INSERT INTO public.rb VALUES ('www.dialamerica.com', 'DialAmerica', 'https://www.dialamerica.com/', 'Mahwah, New Jersey, U.S.', NULL, 'by words', 'Jersey', NULL);
INSERT INTO public.rb VALUES ('pamirairways.af', 'Pamir Airways', 'http://pamirairways.af/index-new.php', 'Kabul, Afghanistan', 'contain bank in page', 'by words', 'Afghanistan', NULL);
INSERT INTO public.rb VALUES ('www.bancoprovincia.com.ar', 'Banco de la Provincia de Buenos Aires', 'http://www.bancoprovincia.com.ar', 'San Martín 137Ciudad Autónoma de Buenos Aires, Argentina', 'contain bank in page', 'by words', 'Argentina', NULL);
INSERT INTO public.rb VALUES ('www.dnb.nl', 'De Nederlandsche Bank', 'http://www.dnb.nl', 'Amsterdam', 'contain bank in page', 'by words', 'Netherlands', NULL);
INSERT INTO public.rb VALUES ('www.bpi.com', 'Bank Policy Institute', 'http://www.bpi.com', 'Washington, DC', 'contain bank in name', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.poyry.com', 'Pöyry Oyj', 'http://www.poyry.com/', 'Helsinki, Finland', 'contain bank in page', 'by words', 'Finland', NULL);
INSERT INTO public.rb VALUES ('www.stern-cie.com', 'Banque Stern', 'http://www.stern-cie.com', 'Paris(incorporation)Paris, France(operational)', NULL, NULL, 'France', NULL);
INSERT INTO public.rb VALUES ('www.tcfbank.com', 'TCF Financial Corporation', 'https://www.tcfbank.com', 'Detroit, Michigan, USA', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.virgin.com', 'Virgin Group Ltd.', 'https://www.virgin.com', 'London, England, UK', NULL, 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('brevillegroup.com', 'Breville Group Limited', 'https://brevillegroup.com/', 'Alexandria, Sydney, Australia', 'contain bank in page', 'by words', 'Australia', NULL);
INSERT INTO public.rb VALUES ('cbb-bank.com', 'CBB Bancorp, Inc.', 'http://cbb-bank.com/en', 'Los Angeles, California', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.iciciprulife.com', 'ICICI Prudential Life Insurance Company''s', 'http://www.iciciprulife.com/', 'Mumbai, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.lionbank.com', 'Fidelity Southern Corporation', 'http://www.lionbank.com/', 'Atlanta, Georgia, U.S.', 'contain bank in page', 'by words', 'Georgia', NULL);
INSERT INTO public.rb VALUES ('www.interlinebrands.com', 'The Home Depot Pro', 'https://www.interlinebrands.com', 'Jacksonville, Florida, U.S.', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('robeco.com', 'Robeco', 'http://robeco.com', 'Rotterdam, Netherlands', NULL, 'by words', 'Netherlands', NULL);
INSERT INTO public.rb VALUES ('www.unicef.org', 'UNICEF', 'http://www.unicef.org', 'New York City, U.S.', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.kwsp.gov.my', 'Employees Provident Fund', 'http://www.kwsp.gov.my', 'Bangunan KWSP, Jalan Raja Laut, 50350 Kuala Lumpur, Malaysia', NULL, 'by words', 'Malaysia', NULL);
INSERT INTO public.rb VALUES ('bancontactpayconiq.com', 'Bancontact Payconiq Company', 'http://bancontactpayconiq.com', 'Brussels, Belgium', 'contain bank in page', 'by words', 'Belgium', NULL);
INSERT INTO public.rb VALUES ('www.cib.bnpparibas.com', 'BNP Paribas CIB', 'http://www.cib.bnpparibas.com', 'France ', 'contain bank in page', 'by words', 'France', NULL);
INSERT INTO public.rb VALUES ('coutts.com', 'Coutts & Company', 'http://coutts.com', '440 StrandLondon, WC2United Kingdom', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.sds.at', 'Software Daten Service', 'http://www.sds.at/en/', 'Vienna, Austria', 'contain bank in page', 'by words', 'Austria', NULL);
INSERT INTO public.rb VALUES ('www.winstead.com', 'Winstead PC', 'http://www.winstead.com', 'Dallas, Texas', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.johannus.com', 'Johannus Orgelbouw', 'http://www.johannus.com', 'Keplerlaan 2, 6716 BS Ede, Netherlands', 'contain bank in page', 'by words', 'Netherlands', NULL);
INSERT INTO public.rb VALUES ('www.brookstone.com', 'Brookstone', 'http://www.brookstone.com/', 'Merrimack, New Hampshire, United States', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.imf.org', 'International Monetary Fund', 'https://www.imf.org/', 'Washington, D.C. U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.ametek.com', 'AMETEK, Inc.', 'http://www.ametek.com/', 'Berwyn, Pennsylvania, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.icbc.com.tr', 'ICBC Turkey', 'http://www.icbc.com.tr/', 'Maslak, Istanbul, Turkey', 'contain bank in page', 'by words', 'Turkey', NULL);
INSERT INTO public.rb VALUES ('www.bylinebank.com', 'Byline Bancorp, Inc.', 'https://www.bylinebank.com/', 'Chicago, Illinois, USA', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.apmex.com', 'APMEX, Inc.', 'http://www.apmex.com/', 'Oklahoma City, Oklahoma, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.philtrustbank.com', 'Philippine Trust Company', 'http://www.philtrustbank.com/', 'Manila, Philippines', 'contain bank in page', 'by words', 'Philippines', NULL);
INSERT INTO public.rb VALUES ('www.shamilbank.net', 'Shamil Bank of Bahrain B.S.C.', 'http://www.shamilbank.net/', 'Manama, Bahrain', 'contain bank in name host', NULL, 'Bahrain', NULL);
INSERT INTO public.rb VALUES ('www.barings.com', 'Barings', 'http://www.barings.com/', 'Charlotte, North Carolina', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('nnpcgroup.com', 'Nigerian National Petroleum Corporation', 'http://nnpcgroup.com', 'Abuja, FCT, Nigeria', NULL, 'by words', 'Nigeria', NULL);
INSERT INTO public.rb VALUES ('asoriba.com', 'Asoriba', 'http://asoriba.com', 'Accra, Ghana', NULL, 'by words', 'Ghana', NULL);
INSERT INTO public.rb VALUES ('www.jamesedition.com', 'JamesEdition.com', 'https://www.jamesedition.com', 'Amsterdam, Netherlands[2]', NULL, 'by words', 'Netherlands', NULL);
INSERT INTO public.rb VALUES ('www.evobanco.com', 'EVO Banco, S.A.U', 'http://www.evobanco.com/', 'Madrid, Spain', 'contain bank in page', 'by words', 'Spain', NULL);
INSERT INTO public.rb VALUES ('www.klakki.is', 'Klakki', 'http://www.klakki.is/', 'Reykjavík, Iceland', NULL, 'by words', 'Iceland', NULL);
INSERT INTO public.rb VALUES ('www.ricoh.com', 'Ricoh Company, Ltd.', 'http://www.ricoh.com/', 'Chūō, Tokyo, Japan', NULL, 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.izb.co.zm', 'Indo–Zambia Bank', 'http://www.izb.co.zm', 'Lusaka, Zambia', 'contain bank in page', 'by words', 'Zambia', NULL);
INSERT INTO public.rb VALUES ('ppbi.com', 'Pacific Premier Bancorp, Inc.', 'http://ppbi.com', 'Irvine, California[1]', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('credit-du-nord.fr', 'Crédit du Nord', 'http://credit-du-nord.fr', 'Lille , France ', NULL, NULL, 'France', NULL);
INSERT INTO public.rb VALUES ('www.yetumfplc.co.tz', 'Yetu Microfinance Bank PLC', 'http://www.yetumfplc.co.tz/', 'Dar es Salaam, Tanzania', 'contain bank in name', 'by words', 'Tanzania', NULL);
INSERT INTO public.rb VALUES ('websterbank.com', 'Webster Bank', 'http://websterbank.com', 'Waterbury, Connecticut, United States', 'contain bank in name host', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.umma-bank.com.ly', 'Umma Bank', 'http://www.umma-bank.com.ly/', 'Tripoli , Libya', 'contain bank in name host', 'by words', 'Libya', NULL);
INSERT INTO public.rb VALUES ('www.econetafrica.com', 'Econet', 'http://www.econetafrica.com', 'Johannesburg, South Africa', NULL, 'by words', 'South Africa', NULL);
INSERT INTO public.rb VALUES ('pockit.com', 'Pockit', 'http://pockit.com', 'United Kingdom', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.eastwestbank.com', 'East West Bancorp, Inc.', 'http://www.eastwestbank.com', 'Pasadena, California', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.storebrand.com', 'Storebrand ASA', 'http://www.storebrand.com', 'Lysaker, Norway', 'contain bank in page', 'by words', 'Norway', NULL);
INSERT INTO public.rb VALUES ('www.aegon.com', 'Aegon N.V.', 'http://www.aegon.com/', 'The Hague, Netherlands', 'contain bank in page', 'by words', 'Netherlands', NULL);
INSERT INTO public.rb VALUES ('www.lhv.ee', 'LHV Pank', 'https://www.lhv.ee/en/', 'Tallinn, Estonia', 'contain bank in page', 'by words', 'Estonia', NULL);
INSERT INTO public.rb VALUES ('firsthorizon.com', 'First Horizon National Corporation', 'http://firsthorizon.com/', 'Memphis, Tennessee, USA', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('huntington.com', 'Huntington Bancshares Incorporated', 'http://huntington.com', 'Columbus, Ohio, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('yandex.ru', 'Yandex N.V.', 'https://yandex.ru/', 'ul. Lva Tolstogo, 16, Moscow, Russia, 119021', 'contain bank in page', 'by words', 'Russia', NULL);
INSERT INTO public.rb VALUES ('www.coca-colahellenic.com', 'Coca-Cola HBC', 'http://www.coca-colahellenic.com', 'Zug, Switzerland[1]', 'contain bank in page', 'by words', 'Switzerland', NULL);
INSERT INTO public.rb VALUES ('www.hq.se', 'HQ AB', 'http://www.hq.se/', 'Stockholm, Sweden', 'contain bank in page', 'by words', 'Sweden', NULL);
INSERT INTO public.rb VALUES ('www.lambdachi.org', 'Lambda Chi Alpha', 'http://www.lambdachi.org', '11711 N. Pennsylvania Street Suite 250Carmel, Indiana USA', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('credit-agricole.com', 'Crédit Agricole Group', 'http://credit-agricole.com', 'Montrouge, France', 'contain bank in page', 'by words', 'France', NULL);
INSERT INTO public.rb VALUES ('www.eds.com', 'Electronic Data Systems (EDS)', 'http://www.eds.com', 'Plano, Texas, USA', 'contain bank in page', NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.standardmedia.co.ke', 'The Standard', 'http://www.standardmedia.co.ke', 'Nairobi, Kenya', 'contain bank in page', 'by words', 'Kenya', NULL);
INSERT INTO public.rb VALUES ('www.avh.be', 'Ackermans & van Haaren N.V.', 'https://www.avh.be/', 'Antwerp, Belgium', 'contain bank in page', 'by words', 'Belgium', NULL);
INSERT INTO public.rb VALUES ('spcbl.org.bd', 'The Security Printing Corporation (Bangladesh) Ltd.', 'http://spcbl.org.bd', 'Gazipur, Bangladesh', 'contain bank in page', 'by words', 'Bangladesh', NULL);
INSERT INTO public.rb VALUES ('www.ameriprise.com', 'Ameriprise Financial, Inc.', 'http://www.ameriprise.com', 'Ameriprise Financial CenterMinneapolis, Minnesota, U.S.', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('twitter.com', 'Twitter, Inc.', 'https://twitter.com', 'San Francisco, California, United States', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.an.no', 'Avisa Nordland', 'http://www.an.no', 'Bodø, Norway', NULL, 'by words', 'Norway', NULL);
INSERT INTO public.rb VALUES ('pnbindia.in', 'Punjab National Bank', 'https://pnbindia.in', 'New Delhi, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.dbsa.org', 'Development Bank of Southern Africa', 'http://www.dbsa.org', 'Johannesburg, South Africa[2]', 'contain bank in name', 'by words', 'South Africa', NULL);
INSERT INTO public.rb VALUES ('www.landstar.com', 'Landstar System, Inc.', 'http://www.landstar.com/', 'Jacksonville, Florida, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.tazur.com', 'T’azur Companyشركة تآزر', 'http://www.tazur.com', 'Manama, Bahrain', 'contain bank in page', 'by words', 'Bahrain', NULL);
INSERT INTO public.rb VALUES ('www.kkionline.com', 'Khanani and Kalia International', 'http://www.kkionline.com/', 'Karachi, Pakistan', NULL, 'by words', 'Pakistan', NULL);
INSERT INTO public.rb VALUES ('www.bsibank.com', 'BSI Ltd', 'https://www.bsibank.com', 'Via Magatti 2 Lugano, Switzerland', 'contain bank in host host', 'by words', 'Switzerland', NULL);
INSERT INTO public.rb VALUES ('www.haypost.am', 'HayPost', 'https://www.haypost.am/en', 'Yerevan', NULL, 'by words', 'Armenia', NULL);
INSERT INTO public.rb VALUES ('www.paho.org', 'Pan American Health Organization', 'http://www.paho.org', 'Washington, DC, United States', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.rlb-tirol.at', 'Raiffeisen-Landesbank Tirol', 'http://www.rlb-tirol.at', '1–7 Adamgasse, Innsbruck, Austria', 'contain bank in name', 'by words', 'Austria', NULL);
INSERT INTO public.rb VALUES ('www.onurair.com', 'Onur Air', 'https://www.onurair.com/en/', 'Istanbul, Turkey', NULL, 'by words', 'Turkey', NULL);
INSERT INTO public.rb VALUES ('www.gruppovenetobanca.it', 'Veneto Banca', 'http://www.gruppovenetobanca.it', 'Montebelluna, Italy', NULL, NULL, 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.prubsn.com.my', 'Prudential BSN Takaful Berhad', 'http://www.prubsn.com.my/', 'Menara Prudential10 Jalan Sultan Ismail, Kuala Lumpur, Malaysia', NULL, 'by words', 'Malaysia', NULL);
INSERT INTO public.rb VALUES ('www.syncada.com', 'Syncada from Visa', 'http://www.syncada.com/', 'AT&T TowerMinneapolis, MN, U.S.', NULL, NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.vitra.com', 'Vitra', 'http://www.vitra.com', 'Birsfelden, Switzerland', 'contain bank in page', 'by words', 'Switzerland', NULL);
INSERT INTO public.rb VALUES ('www.hanwha.com', 'Hanwha', 'http://www.hanwha.com/', 'Seoul, South Korea', 'contain bank in page', 'by words', 'South Korea', NULL);
INSERT INTO public.rb VALUES ('www.grawe.at', 'Grazer Wechselseitige Versicherung', 'http://www.grawe.at/en/index.htm', 'Graz, Austria', 'contain bank in page', 'by words', 'Austria', NULL);
INSERT INTO public.rb VALUES ('www.elavon.com', 'Elavon', 'http://www.elavon.com/', 'Atlanta, Georgia', 'contain bank in page', 'by words', 'Georgia', NULL);
INSERT INTO public.rb VALUES ('www.gensler.com', 'Gensler', 'https://www.gensler.com', 'San Francisco , United States of America ', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.ridgemontep.com', 'Ridgemont Equity Partners', 'http://www.ridgemontep.com/', 'Charlotte, North Carolina, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.bancodevalencia.com', 'Banco de Valencia', 'http://www.bancodevalencia.com', 'Valencia, Spain, Spain', 'contain bank in page', 'by words', 'Spain', NULL);
INSERT INTO public.rb VALUES ('www.firstrand.co.za', 'FirstRand Limited', 'http://www.firstrand.co.za/', 'Johannesburg, South Africa', NULL, NULL, 'South Africa', NULL);
INSERT INTO public.rb VALUES ('www.cdp.it', 'Cassa Depositi e Prestiti', 'http://www.cdp.it', 'Rome, Italy', 'contain bank in page', 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.caferico.com', 'Café Rico', 'http://www.caferico.com/', 'Ponce, Puerto Rico', 'contain bank in page', 'by words', 'Puerto Rico', NULL);
INSERT INTO public.rb VALUES ('www.sca.com', 'Svenska Cellulosa AB', 'http://www.sca.com/', 'Sundsvall, Sweden', 'contain bank in page', 'by words', 'Sweden', NULL);
INSERT INTO public.rb VALUES ('www.oppenheimer.com', 'Oppenheimer Holdings', 'http://www.oppenheimer.com', 'New York City, USA', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('montecarloresort.com', 'Société des Bains de Mer et le Cercle des Étrangers à Monaco', 'http://montecarloresort.com', 'Monte Carlo, Monaco', 'contain bank in page', 'by words', 'Monaco', NULL);
INSERT INTO public.rb VALUES ('www.ibercaja.es', 'Ibercaja Banco, S.A.', 'http://www.ibercaja.es', 'Zaragoza, Spain', 'contain bank in page', 'by words', 'Spain', NULL);
INSERT INTO public.rb VALUES ('moga.nic.in', 'Moga District', 'http://moga.nic.in/', 'Moga', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('rudraprayag.nic.in', 'Rudraprayag district', 'http://rudraprayag.nic.in', 'Rudraprayag', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.finca.org', 'FINCA International', 'https://www.finca.org/', 'Washington, DC, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.posted.co.rs', 'Poštanska štedionica', 'http://www.posted.co.rs', 'Kraljice Marije 3, Belgrade, Serbia', 'contain bank in page', 'by words', 'Serbia', NULL);
INSERT INTO public.rb VALUES ('www.sofitasa.com', 'Banco Sofitasa, Universal C.A', 'http://www.sofitasa.com', 'San Cristobal, Venezuela', 'contain bank in page', 'by words', 'Venezuela', NULL);
INSERT INTO public.rb VALUES ('www.sizzler.com', 'Sizzler USA Restaurants, Inc.', 'http://www.sizzler.com', 'Mission Viejo, California, U.S.', 'contain bank in page', NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.csas.cz', 'Česká spořitelna', 'http://www.csas.cz', 'Prague, Czech Republic', 'contain bank in page', 'by words', 'Czechia', NULL);
INSERT INTO public.rb VALUES ('money.yandex.ru', 'Yandex.Money', 'https://money.yandex.ru', 'Russia ', 'contain bank in page', 'by words', 'Russia', NULL);
INSERT INTO public.rb VALUES ('home.fage', 'FAGEΦΑΓΕ', 'http://home.fage/', 'Strassen, Luxembourg[1]', 'contain bank in page', NULL, 'Luxembourg', NULL);
INSERT INTO public.rb VALUES ('www.boc.cn', 'Bank of China Limited中国银行股份有限公司', 'http://www.boc.cn', 'Beijing, China[1]', 'contain bank in name', NULL, 'China', NULL);
INSERT INTO public.rb VALUES ('www.westernjournal.com', 'The Western Journal', 'https://www.westernjournal.com', 'Phoenix, Arizona, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.goldensecurity.com', 'Golden Security Bank', 'http://www.goldensecurity.com', 'Rosemead, California', 'contain bank in name', NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('ayabank.com', 'AYA Bank', 'http://ayabank.com', 'Yangon, Myanmar', 'contain bank in name host', NULL, 'Myanmar', NULL);
INSERT INTO public.rb VALUES ('ford.eu', 'Ford of Europe AG', 'http://ford.eu', 'Cologne, Germany', NULL, NULL, 'Germany', NULL);
INSERT INTO public.rb VALUES ('alterna.ca', 'Alterna Savings', 'http://alterna.ca', 'Ottawa , Canada ', 'contain bank in page', 'by words', 'Canada', NULL);
INSERT INTO public.rb VALUES ('www.bankofshanghai.com', 'Bank of Shanghai', 'http://www.bankofshanghai.com', 'Shanghai, China', 'contain bank in page', 'by words', 'China', NULL);
INSERT INTO public.rb VALUES ('www.ojiholdings.co.jp', 'Oji Holdings Corporation', 'http://www.ojiholdings.co.jp/english/', '7-5, Ginza 4-chome, Chuo-ku, Tokyo 104-0061, Japan', NULL, NULL, 'Japan', NULL);
INSERT INTO public.rb VALUES ('localfirstbank.com', 'First Bancorp', 'https://localfirstbank.com/', 'Southern Pines , United States of America ', 'contain bank in host host', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('cabelas.com', 'Cabela''s Inc.', 'http://cabelas.com', 'Sidney, Nebraska, U.S.', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.airblue.com', 'Airblue', 'http://www.airblue.com/', 'Islamabad Stock Exchange TowersIslamabad, Pakistan', NULL, 'by words', 'Pakistan', NULL);
INSERT INTO public.rb VALUES ('intralinks.com', 'Intralinks', 'http://intralinks.com', 'New York City ', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.boku.com', 'Boku, Inc.', 'http://www.boku.com', 'San Francisco, California', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.bpn.it', 'Banca Popolare di Novara', 'http://www.bpn.it', 'Novara, Italy', 'contain bank in page', 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.bancaribe.com.ve', 'Bancaribe', 'http://www.bancaribe.com.ve/', 'Caracas, Venezuela', 'contain bank in page', 'by words', 'Venezuela', NULL);
INSERT INTO public.rb VALUES ('www.swift.com', 'S.W.I.F.T. SCRL', 'https://www.swift.com/', 'La Hulpe, Belgium', 'contain bank in page', 'by words', 'Belgium', NULL);
INSERT INTO public.rb VALUES ('www.goldsgym.com', 'Gold''s Gym International, Inc.', 'http://www.goldsgym.com/', 'Dallas, Texas, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.zaporizhstal.com', 'Zaporizhstal', 'http://www.zaporizhstal.com/en/', 'Zaporizhia, Ukraine', NULL, 'by words', 'Ukraine', NULL);
INSERT INTO public.rb VALUES ('www.altria.com', 'Altria Group, Inc.', 'http://www.altria.com/', 'Reynolds Metals Company International HeadquartersHenrico County, Virginia, U.S.', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.cii.in', 'Confederation of Indian Industry', 'http://www.cii.in/', 'New Delhi, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('seic.com', 'SEI Investments Company', 'http://seic.com', 'Oaks, Pennsylvania, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.clarkconstruction.com', 'Clark Construction Group, LLC', 'http://www.clarkconstruction.com', 'Bethesda, Maryland, U.S.', NULL, NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.cic.fr', 'CIC (Crédit Industriel et Commercial)', 'http://www.cic.fr', 'Paris', 'contain bank in page', 'by words', 'France', NULL);
INSERT INTO public.rb VALUES ('www.thestreet.com', 'TheStreet, Inc.', 'https://www.thestreet.com/', '14 Wall StreetNew York City, New York, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.rbnz.govt.nz', 'Reserve Bank of New ZealandTe Pūtea Matua  (Māori)', 'http://www.rbnz.govt.nz/index.html', 'Wellington, New Zealand', 'contain bank in name', NULL, 'New Zealand', NULL);
INSERT INTO public.rb VALUES ('www.tompkinsfinancial.com', 'Tompkins Financial Corporation', 'http://www.tompkinsfinancial.com/', 'Ithaca, New York, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('tp-link.com', 'TP-LINK Technologies Co., Ltd.', 'http://tp-link.com', 'Shenzhen, Guangdong, China', 'contain bank in page', 'by words', 'China', NULL);
INSERT INTO public.rb VALUES ('www.northamericanbancard.com', 'North American Bancard', 'https://www.northamericanbancard.com/', 'Troy, Michigan', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.damen.com', 'Damen Shipyards Group', 'http://www.damen.com', 'Gorinchem, South Holland, Netherlands', 'contain bank in page', 'by words', 'Netherlands', NULL);
INSERT INTO public.rb VALUES ('www.home.saxo', 'Saxo Bank A/S', 'https://www.home.saxo/', 'Copenhagen, Denmark', 'contain bank in page', 'by words', 'Denmark', NULL);
INSERT INTO public.rb VALUES ('www.jr-shikoku.co.jp', 'Shikoku Railway Company', 'https://www.jr-shikoku.co.jp', 'Takamatsu, Kagawa, Japan', NULL, 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('atwimaruralbank.com', 'Atwima Rural Bank Ltd', 'http://atwimaruralbank.com', 'P.O.Box KW 33 Kwadaso, Kumasi, Ghana', 'contain bank in name host', 'by words', 'Ghana', NULL);
INSERT INTO public.rb VALUES ('www.rolobanca.it', 'Rolo Banca 1473', 'http://www.rolobanca.it', 'Palazzo Magnani, 20 via Zamboni, Bologna, Italy', 'contain bank in page', 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('imexbank.com.ua', 'JSCB "IMEXBANK"', 'http://imexbank.com.ua/eng', 'Odessa, Ukraine', 'contain bank in name host', 'by words', 'Ukraine', NULL);
INSERT INTO public.rb VALUES ('windrose.aero', 'Windrose AirlinesWind Rose AviationАвіакомпанія Роза Вітрів', 'http://windrose.aero', 'Kiev, Ukraine', NULL, 'by words', 'Ukraine', NULL);
INSERT INTO public.rb VALUES ('tcfbank.com', 'TCF Financial Corporation', 'http://tcfbank.com', 'Wayzata, MN, USA', 'contain bank in host host', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.stanfordfinancialgroup.com', 'Stanford Financial Group', 'http://www.stanfordfinancialgroup.com/', 'Houston, Texas, United States', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.ufa.de', 'UFA', 'http://www.ufa.de/', 'Babelsberg, Potsdam, Brandenburg, Germany', NULL, 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.wnbvernon.com', 'Waggoner National Bank of Vernon', 'http://www.wnbvernon.com', 'VernonElectra, United States of America', 'contain bank in name', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.credem.it', 'Credito Emiliano', 'http://www.credem.it', '4 via Emilia San Pietro, Reggio Emilia, Italy', 'contain bank in page', 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.hochtief.com', 'Hochtief AG', 'http://www.hochtief.com', 'Essen, Germany', NULL, 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.unionpayintl.com', 'UnionPay', 'http://www.unionpayintl.com/en/', 'Pudong, Shanghai, China', NULL, 'by words', 'China', NULL);
INSERT INTO public.rb VALUES ('www.maruha-nichiro.co.jp', 'Maruha Nichiro Corporation', 'http://www.maruha-nichiro.co.jp/english/', '2-20 3-chome, Toyosu, Koto-ku, Tokyo 135-8603, Japan', 'contain bank in page', 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.banca121.it', 'Banca 121 S.p.A.', 'http://www.banca121.it', 'Lecce, Italy', 'contain bank in page', 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.bbvausa.com', 'BBVA USA', 'https://www.bbvausa.com/', 'Daniel BuildingBirmingham, Alabama, USA', NULL, NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('global.canon', 'Canon Inc.', 'http://global.canon/', 'Ōta, Tokyo, Japan', 'contain bank in page', 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.nsdl.co.in', 'National Securities Depository Limited', 'http://www.nsdl.co.in', 'Mumbai, India [1]', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.pof.com', 'Plenty of Fish', 'http://www.pof.com', 'Vancouver,British Columbia, Canada', 'contain bank in page', 'by words', 'Canada', NULL);
INSERT INTO public.rb VALUES ('www.ubs.com', 'UBS Group AG', 'https://www.ubs.com/', '
Bahnhofstrasse 45 Zürich, Switzerland 8001
Aeschenvorstadt 1 Basel, Switzerland 4051
        ', 'contain bank in page', 'by words', 'Switzerland', NULL);
INSERT INTO public.rb VALUES ('bancamarche.it', 'Banca AdriaticaNuova Banca delle Marche', 'http://bancamarche.it', 'Jesi, Italy (de facto)Bergamo, Italy (registered office)', 'contain bank in page', 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.ammetlife.com', 'AmMetLife Insurance Berhad', 'http://www.ammetlife.com/', 'Menara AmMetLifeJalan Lumut, Kuala Lumpur, Malaysia', 'contain bank in page', 'by words', 'Malaysia', NULL);
INSERT INTO public.rb VALUES ('www.santander.com.br', 'Banco Santander (Brasil) S.A.', 'http://www.santander.com.br', 'São Paulo, Brazil', 'contain bank in page', 'by words', 'Brazil', NULL);
INSERT INTO public.rb VALUES ('srikakulam.ap.nic.in', 'Srikakulam district', 'http://srikakulam.ap.nic.in/', 'Srikakulam', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.afreximbank.com', 'African Export–Import Bank (Afreximbank)', 'http://www.afreximbank.com', '72B, El Maahad El-Eshteraky Street, Heliopolis, Cairo, Egypt.', 'contain bank in name host', NULL, 'Egypt', NULL);
INSERT INTO public.rb VALUES ('www.stanbicibtc.com', 'Stanbic IBTC Holdings PLC', 'http://www.stanbicibtc.com/', 'I.B.T.C. Place, Walter Carrington Crescent, Victoria Island, Lagos State, Nigeria', NULL, 'by words', 'Nigeria', NULL);
INSERT INTO public.rb VALUES ('www.dab.gov.af', 'Da Afghanistan BankPashto: دافغانستان بانک Dari: بانک مرکزی افغانستان', 'http://www.dab.gov.af', 'Kabul', 'contain bank in name', NULL, 'Afghanistan', NULL);
INSERT INTO public.rb VALUES ('vnpt.vn', 'Vietnam Posts and Telecommunications Group (VNPT)', 'https://vnpt.vn/', '57 Huynh Thuc Khang Str., Lang Ha Ward, Dong Da District, Ha Noi, Vietnam', NULL, NULL, 'Vietnam', NULL);
INSERT INTO public.rb VALUES ('www.bancovotorantim.com.br', 'Banco Votorantim S.A.', 'http://www.bancovotorantim.com.br/', 'São Paulo, Brazil', NULL, NULL, 'Brazil', NULL);
INSERT INTO public.rb VALUES ('www.meridiancu.ca', 'Meridian Credit Union Ltd.', 'https://www.meridiancu.ca/', 'St. Catharines, Ontario and Toronto, Ontario, Canada', 'contain bank in page', 'by words', 'Canada', NULL);
INSERT INTO public.rb VALUES ('www.independentbank.com', 'Independent Bank Corporation', 'https://www.independentbank.com', 'Ionia, Michigan', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.suedwestbank.de', 'Südwestbank AG', 'https://www.suedwestbank.de/', 'Stuttgart, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.shca.com', 'Swanke Hayden Connell Architects', 'http://www.shca.com', 'New York City, New York, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('bmcebank.ma', 'Banque Marocaine du Commerce Extérieur', 'http://bmcebank.ma/', 'Casablanca, Morocco', 'contain bank in page', 'by words', 'Morocco', NULL);
INSERT INTO public.rb VALUES ('www.bbg.co.uk', 'Bradford & Bingley', 'http://www.bbg.co.uk', 'Bingley, West Yorkshire, UK', NULL, 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.jdeco.net', 'Jerusalem District Electricity Company', 'http://www.jdeco.net', 'Jerusalem, Israel', NULL, 'by words', 'Israel', NULL);
INSERT INTO public.rb VALUES ('www.fuddruckers.com', 'Luby’s Fuddruckers Restaurants, LLC', 'http://www.fuddruckers.com', 'Houston, Texas, U.S.', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.ukfi.co.uk', 'UK Financial Investments Limited', 'http://www.ukfi.co.uk', '100 Parliament Street, London, SW1A 2BQ, United Kingdom', 'contain bank in page', NULL, 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.steinhoffinternational.com', 'Steinhoff International Holdings N.V.', 'http://www.steinhoffinternational.com/', 'Stellenbosch, Western Cape, South Africa', 'contain bank in page', 'by words', 'South Africa', NULL);
INSERT INTO public.rb VALUES ('pnfp.com', 'Pinnacle Financial Partners', 'http://pnfp.com', 'The Pinnacle at Symphony PlaceNashville, Tennessee, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('aa.com', 'American Airlines Group Inc.', 'http://aa.com', 'CentrePort, Fort Worth, Texas, United States[1]', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.phonepe.com', 'PhonePe Private Limited', 'https://www.phonepe.com/', 'Ashford Park View, Bangalore, Karnataka, India[2]', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.tv-asahi.co.jp', 'TV Asahi Holdings Corporation', 'https://www.tv-asahi.co.jp', '9-1, Roppongi Rokuchome, Minato, Tokyo, Japan', 'contain bank in page', 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.cordlife.com', 'Cordlife Group Limited', 'https://www.cordlife.com', 'Singapore', 'contain bank in page', 'by words', 'Singapore', NULL);
INSERT INTO public.rb VALUES ('www.harbortouch.com', 'Harbortouch Payments, LLC', 'http://www.harbortouch.com/', 'Number of locations(1) In addition to Morrisville, North Carolina, US', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.clericalmedical.co.uk', 'Clerical Medical Investment Group Limited', 'http://www.clericalmedical.co.uk', 'London, England', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.yahoo.co.jp', 'Yahoo! Japan Corporationヤフー株式会社', 'http://www.yahoo.co.jp', 'Kioi Tower, Tokyo Garden Terrace Kioicho, 1-3, Kioi-cho, Chiyoda-ku, Tokyo, Japan', NULL, NULL, 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.dfcufinancial.com', 'DFCU Financial', 'http://www.dfcufinancial.com', 'Dearborn, Michigan, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.alrajhibank.com.my', 'Al Rajhi Bank Malaysia', 'http://www.alrajhibank.com.my/', 'Kuala Lumpur, Malaysia', 'contain bank in name host', NULL, 'Malaysia', NULL);
INSERT INTO public.rb VALUES ('www.fult.com', 'Fulton Financial Corporation', 'http://www.fult.com/', 'Lancaster, Pennsylvania, USA', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.simplyhired.com', 'SimplyHired.com', 'http://www.simplyhired.com', 'Sunnyvale, California, US', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.wincor-nixdorf.com', 'Wincor Nixdorf AG', 'http://www.wincor-nixdorf.com', 'Paderborn, Ostwestfalen-Lippe, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.hlfg.com.my', 'Hong Leong Financial Group Berhad', 'http://www.hlfg.com.my/', 'Level 8, Wisma Hong Leong, 18, Jalan Perak, 50450 Kuala Lumpur, Malaysia', 'contain bank in page', NULL, 'Malaysia', NULL);
INSERT INTO public.rb VALUES ('www.koopsut.com', 'Koop DairyDairy and Oil Products Production and Marketing Cooperative Ltd', 'http://www.koopsut.com', '35°11′45″N 33°20′43″E﻿ / ﻿35.195858°N 33.345334°E﻿ / 35.195858; 33.345334, Ortakoy, Nicosia,
            Cyprus
        ', NULL, NULL, 'Cyprus', NULL);
INSERT INTO public.rb VALUES ('www.avanza.se', 'Avanza Bank Holding AB (publ.)', 'https://www.avanza.se/start', 'Stockholm, Sweden', 'contain bank in page', 'by words', 'Sweden', NULL);
INSERT INTO public.rb VALUES ('www.sainsburysbank.co.uk', 'Sainsbury''s Bank plc', 'http://www.sainsburysbank.co.uk', '
Edinburgh, Scotland, UK (Head office)
London, England, UK (Registered office)
        ', 'contain bank in page', NULL, 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.monitor.co.ug', 'The Daily Monitor', 'http://www.monitor.co.ug/', '29-35 Namuwongo Road (8th Street) Industrial AreaKampala, Uganda', NULL, 'by words', 'Uganda', NULL);
INSERT INTO public.rb VALUES ('www.stanbicbank.co.ke', 'Stanbic Holdings plc', 'https://www.stanbicbank.co.ke/', 'CfC Stanbic Center Chiromo Road Nairobi, Kenya', 'contain bank in host host', 'by words', 'Kenya', NULL);
INSERT INTO public.rb VALUES ('www.idbz.co.zw', 'Infrastructure Development Bank of Zimbabwe', 'https://www.idbz.co.zw/', 'IDBZ House, 99 Rotten Row, Harare, Zimbabwe', 'contain bank in name', 'by words', 'Zimbabwe', NULL);
INSERT INTO public.rb VALUES ('www.npci.org.in', 'National Payments Corporation of India', 'https://www.npci.org.in/', 'Mumbai, Maharashtra, India[1]', NULL, NULL, 'India', NULL);
INSERT INTO public.rb VALUES ('www.caisse-epargne.fr', 'Groupe Caisse d''épargne', 'http://www.caisse-epargne.fr', 'Paris, France', NULL, 'by words', 'France', NULL);
INSERT INTO public.rb VALUES ('www.regions.com', 'Regions Financial Corporation', 'https://www.regions.com/', 'Regions CenterBirmingham, AlabamaUnited States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.versapay.com', 'VersaPay Corporation', 'http://www.versapay.com/', 'Toronto, Ontario, Canada', NULL, 'by words', 'Canada', NULL);
INSERT INTO public.rb VALUES ('www.homebargains.co.uk', 'Home Bargains', 'http://www.homebargains.co.uk/', 'Liverpool, England', NULL, 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.anadolusigorta.com.tr', 'Anadolu Anonim Türk Sigorta Şirketi', 'https://www.anadolusigorta.com.tr/', 'Rüzgarlıbahçe Mahallesi, Kavak Sokak, No:31, 34805 Kavacık / Istanbul', NULL, 'by words', 'Turkey', NULL);
INSERT INTO public.rb VALUES ('www.bi.is', 'Agricultural Bank of Iceland', 'http://www.bi.is', 'Reykjavík, Iceland', 'contain bank in name', 'by words', 'Iceland', NULL);
INSERT INTO public.rb VALUES ('www.iceplc.com', 'ICE - International Currency Exchange', 'http://www.iceplc.com', 'London, W1United Kingdom', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.chongryon.com', 'General Association of Korean Residents in Japan', 'http://www.chongryon.com/', 'of Ch''ongryŏn, Chiyoda, Tokyo', 'contain bank in page', 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.puregold.com.ph', 'Puregold', 'http://www.puregold.com.ph/', 'Ermita, Manila, Philippines', 'contain bank in page', 'by words', 'Philippines', NULL);
INSERT INTO public.rb VALUES ('citigroupglobalmarkets.co.jp', 'Citigroup Global Markets Japan Inc.シティグループ証券株式会社', 'http://citigroupglobalmarkets.co.jp', 'Chiyoda, Tokyo (HQ)Osaka, Osaka (Branch), Japan', 'contain bank in page', NULL, 'Japan', NULL);
INSERT INTO public.rb VALUES ('pathao.com', 'Pathao Ltd', 'http://pathao.com', 'Gulshan 2, Dhaka, Bangladesh', NULL, 'by words', 'Bangladesh', NULL);
INSERT INTO public.rb VALUES ('www.volkswind.com', 'Volkswind GmbH', 'http://www.volkswind.com', 'Ganderkesee, Germany, Ganderkesee, Germany', NULL, NULL, 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.bfsaul.com', 'B. F. Saul Company', 'http://www.bfsaul.com/', 'Bethesda, Maryland, United States', NULL, NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.bucyrus.com', 'Bucyrus International, Inc.', 'http://www.bucyrus.com/', 'South Milwaukee, Wisconsin, United States', NULL, NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('conocophillips.com', 'ConocoPhillips', 'http://conocophillips.com', 'Houston Energy Corridor,Houston, Texas, U.S. [2]', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('johnsonbanks.co.uk', 'Johnson Banks', 'http://johnsonbanks.co.uk', 'London, UK', 'contain bank in name host', NULL, 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.stwarchitects.com', 'Scott Tallon Walker', 'http://www.stwarchitects.com', 'Dublin, Ireland', 'contain bank in page', 'by words', 'Ireland', NULL);
INSERT INTO public.rb VALUES ('www.nlb.si', 'NLB', 'https://www.nlb.si/exchange-rates-for-individuals', 'Ljubljana, Slovenia, Ljubljana', 'contain bank in page', 'by words', 'Slovenia', NULL);
INSERT INTO public.rb VALUES ('www.hakluytandco.com', 'Holdingham Group Limited', 'http://www.hakluytandco.com/', 'London, United Kingdom', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.capfed.com', 'Capitol Federal Savings Bank', 'http://www.capfed.com', 'Topeka, Kansas, United States', 'contain bank in name', NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.icagruppen.se', 'ICA Gruppen AB (publ)', 'http://www.icagruppen.se/en/', 'Solna, Stockholm, Sweden', 'contain bank in page', 'by words', 'Sweden', NULL);
INSERT INTO public.rb VALUES ('www.vbank.ru', 'Vozrozhdenie Bank', 'http://www.vbank.ru/', 'Moscow, Russia', 'contain bank in page', 'by words', 'Russia', NULL);
INSERT INTO public.rb VALUES ('corefirstbank.com', 'CoreFirst Bank & Trust', 'http://corefirstbank.com', 'Topeka, Kansas, USA', 'contain bank in name host', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('virginhotels.com', 'Virgin Hotels', 'https://virginhotels.com/', 'Miami, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.aufbaubank.de', 'Thüringer Aufbaubank', 'http://www.aufbaubank.de/', 'Erfurt, Germany', 'contain bank in name host', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('prio.org', 'Peace Research Institute Oslo', 'http://prio.org', 'Oslo, Norway', 'contain bank in page', NULL, 'Norway', NULL);
INSERT INTO public.rb VALUES ('www.integralforex.com.tr', 'Integral Forex', 'https://www.integralforex.com.tr', 'Istanbul, Turkey', 'contain bank in page', 'by words', 'Turkey', NULL);
INSERT INTO public.rb VALUES ('tplants.com', 'Concern Tractor Plants', 'http://tplants.com/en', 'Cheboksary, Chuvash Republic, Russia', NULL, NULL, 'Russia', NULL);
INSERT INTO public.rb VALUES ('www.royalbusinessbankusa.com', 'RBB Bancorp', 'https://www.royalbusinessbankusa.com/', 'Los Angeles, California', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.getgocafe.com', 'GetGo', 'https://www.getgocafe.com', 'Pittsburgh, Pennsylvania, U.S.', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.Nissui.co.jp', 'Nippon Suisan Kaisha, Ltd.', 'http://www.Nissui.co.jp/english/index.html', 'Nishi-Shimbashi Square, 1-3-1, Nishi-Shimbashi, Minato-ku, Tokyo 105-8676, Japan', NULL, NULL, 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.hipotecario.com.ar', 'Banco Hipotecario S.A.', 'http://www.hipotecario.com.ar/', 'Buenos Aires, Argentina', NULL, 'by words', 'Argentina', NULL);
INSERT INTO public.rb VALUES ('www.telegraph.co.uk', 'The Daily Telegraph', 'https://www.telegraph.co.uk', 'London, England', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.veem.com', 'Veem', 'https://www.veem.com/', 'San Francisco, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.bbbs.org', 'Big Brothers Big Sisters of America', 'http://www.bbbs.org', 'Tampa, Florida, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.johnhancock.com', 'John Hancock Life Insurance Company, U.S.A.', 'http://www.johnhancock.com/', '601 Congress StreetBoston, Massachusetts, US', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.gecapital.com', 'GE Capital', 'http://www.gecapital.com', 'Norwalk, Connecticut, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.ralcorp.com', 'Ralcorp Holdings, Inc.', 'http://www.ralcorp.com/', 'Bank of America PlazaSt. Louis, Missouri, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('bwater.com', 'Bridgewater Associates LP', 'http://bwater.com', 'Westport, Connecticut, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('tabunghaji.gov.my', 'Lembaga Tabung Haji', 'http://tabunghaji.gov.my', '201, Jalan Tun Razak, 50400 Kuala Lumpur, Malaysia', 'contain bank in page', 'by words', 'Malaysia', NULL);
INSERT INTO public.rb VALUES ('www.dss.gov.bd', 'Department of Social Services', 'http://www.dss.gov.bd/', 'Dhaka, Bangladesh', 'contain bank in page', 'by words', 'Bangladesh', NULL);
INSERT INTO public.rb VALUES ('www.yalelock.com', 'Yale', 'http://www.yalelock.com', 'Berlin, Connecticut, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.paralympic.org', 'International Paralympic CommitteeInternationales Paralympisches Komitee', 'http://www.paralympic.org/', 'Bonn, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.cloudflare.com', 'Cloudflare, Inc.', 'https://www.cloudflare.com/', 'San Francisco, California, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('mizuho-fg.com', 'Mizuho Financial Group, Inc.', 'http://mizuho-fg.com', 'Marunouchi, Chiyoda, Tokyo, Japan', 'contain bank in page', 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.gfnational.com', 'Glens Falls National Bank', 'https://www.gfnational.com/', 'Glens Falls, New York, United States', 'contain bank in name', NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.bankofirelanduk.com', 'Bristol & West plc', 'https://www.bankofirelanduk.com/bristol-west-plc/', 'Bristol, England, UK', 'contain bank in host host', NULL, 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.licindia.in', 'Life Insurance Corporation', 'http://www.licindia.in/', 'Mumbai, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.swedbank.com', 'Swedbank AB', 'http://www.swedbank.com/', 'Stockholm, Sweden', 'contain bank in page', NULL, 'Sweden', NULL);
INSERT INTO public.rb VALUES ('www.hdec.co.kr', 'Hyundai Engineering & Construction Co., Ltd.', 'http://www.hdec.co.kr/', 'Seoul, South Korea', NULL, 'by words', 'South Korea', NULL);
INSERT INTO public.rb VALUES ('british-business-bank.co.uk', 'British Business Bank plc', 'https://british-business-bank.co.uk', 'Sheffield, United Kingdom', 'contain bank in name host', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.knightfrank.com', 'Knight Frank LLP', 'http://www.knightfrank.com/', '55 Baker Street, London, England', NULL, 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.hancockwhitney.com', 'Hancock Whitney Corp.', 'http://www.hancockwhitney.com/', 'Gulfport, Mississippi, USA', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.southernbank.com', 'Southern BancShares (N.C.), Inc.', 'http://www.southernbank.com/', 'Mount Olive, North Carolina', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.bancafinnat.it', 'Banca Finnat', 'http://www.bancafinnat.it', 'Palazzo Altieri, Piazza del Gesù, 49 - 00186 Rome', NULL, 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.devex.com', 'Devex', 'https://www.devex.com', 'Washington, D.C., U.S.', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('rscapital.com', 'Robertson Stephens', 'https://rscapital.com/', 'San Francisco, California', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('corporate.saisoncard.co.jp', 'Credit Saison Co., Ltd.', 'http://corporate.saisoncard.co.jp/co.nsf/en/index.html', 'Sunshine 60, Tokyo, Japan', 'contain bank in page', 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.simcorp.com', 'SimCorp A/S', 'http://www.simcorp.com/', 'Copenhagen, Denmark', 'contain bank in page', 'by words', 'Denmark', NULL);
INSERT INTO public.rb VALUES ('www.union-investment.de', 'Union Asset Management Holding AG', 'http://www.union-investment.de', 'Frankfurt, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.rse.rw', 'Rwanda Stock Exchange', 'http://www.rse.rw/', 'Kigali, Rwanda', 'contain bank in page', 'by words', 'Rwanda', NULL);
INSERT INTO public.rb VALUES ('www.eagleinvsys.com', 'Eagle Investment Systems', 'http://www.eagleinvsys.com', 'Wellesley, MA, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.intesasanpaolo.com', 'Intesa Sanpaolo S.p.A.', 'https://www.intesasanpaolo.com', 'Torre Intesa Sanpaolo, Turin, Italy', 'contain bank in page', 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.pcsb.com', 'PCSB Financial Corporation', 'https://www.pcsb.com/', 'Brewster, New York', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.firstunion.com', 'First Union Corporation', 'http://www.firstunion.com/', 'Charlotte, North Carolina, United States', 'contain bank in page', NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.aa.com', 'American Airlines, Inc.', 'http://www.aa.com', 'Fort Worth, Texas, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.panmure.com', 'Panmure Gordon & Co. Limited.', 'http://www.panmure.com', 'London, United Kingdom', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.gulahmed.com', 'Gul Ahmed Textile Mills Ltd.', 'http://www.gulahmed.com', 'Karachi, Pakistan', 'contain bank in page', 'by words', 'Pakistan', NULL);
INSERT INTO public.rb VALUES ('www.wbpr.com', 'W Holding Company', 'http://www.wbpr.com/', 'Mayagüez, Puerto Rico', 'contain bank in page', 'by words', 'Puerto Rico', NULL);
INSERT INTO public.rb VALUES ('www.bnl.it', 'Banca Nazionale del Lavoro S.p.A.', 'https://www.bnl.it', 'Via Vittorio Veneto 119, Rome, Italy', 'contain bank in page', 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('societegenerale.com.gh', 'Société Générale (SG)', 'https://societegenerale.com.gh', 'Ring Road Central, Accra, Greater Accra, Ghana', 'contain bank in page', 'by words', 'Ghana', NULL);
INSERT INTO public.rb VALUES ('www.cariromagna.it', 'Cassa dei Risparmi di Forlì e della Romagna S.p.A.', 'http://www.cariromagna.it', 'Forlì, Italy', 'contain bank in page', 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.nbbl.com.np', 'Nepal Bangladesh Bank Ltd.', 'http://www.nbbl.com.np/index.php', 'Kamladi, Kathmandu, Nepal', 'contain bank in page', 'by words', 'Nepal', NULL);
INSERT INTO public.rb VALUES ('www.unido.org', 'United Nations Industrial Development Organization', 'https://www.unido.org/', 'Vienna, Austria', NULL, 'by words', 'Austria', NULL);
INSERT INTO public.rb VALUES ('www.argentina.citibank.com', 'Citibank Argentina', 'https://www.argentina.citibank.com/ARGCB/JPS/portal/Index.do', 'Buenos Aires, Argentina', 'contain bank in name host', 'by words', 'Argentina', NULL);
INSERT INTO public.rb VALUES ('www.bcl.lu', 'Central Bank of LuxembourgBanque centrale du Luxembourg (in French)', 'http://www.bcl.lu', 'Luxembourg City', 'contain bank in name', NULL, 'Luxembourg', NULL);
INSERT INTO public.rb VALUES ('www.bncbanking.com', 'BNC Bank', 'http://www.bncbanking.com/', 'High Point, North Carolina, USA', 'contain bank in name host', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.pacificwesternbank.com', 'PacWest Bancorp', 'https://www.pacificwesternbank.com/', 'Los Angeles, California, U.S.', 'contain bank in page', NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.abanca.com', 'ABANCA Corporación Bancaria, S.A.', 'http://www.abanca.com', 'Betanzos, Spain', NULL, 'by words', 'Spain', NULL);
INSERT INTO public.rb VALUES ('www.bacardilimited.com', 'Bacardi Limited', 'http://www.bacardilimited.com', 'Hamilton, Bermuda', NULL, 'by words', 'Bermuda', NULL);
INSERT INTO public.rb VALUES ('www.efginternational.com', 'EFG International AG[1]', 'http://www.efginternational.com', 'Zürich, Switzerland', 'contain bank in page', 'by words', 'Switzerland', NULL);
INSERT INTO public.rb VALUES ('www.cariboucoffee.com', 'Caribou Coffee Company', 'http://www.cariboucoffee.com/', 'Brooklyn Center, Minnesota, U.S., [1]', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.currentbyge.com', 'GE Current, a Daintree company', 'http://www.currentbyge.com', 'Boston, Massachusetts, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.unfcu.org', 'United Nations Federal Credit Union', 'https://www.unfcu.org', 'Long Island City, New York, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.rwbaird.com', 'Robert W. Baird & Co. Incorporated', 'http://www.rwbaird.com/', 'U.S. Bank CenterMilwaukee, WisconsinUnited States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.gbl.be', 'Groupe Bruxelles Lambert S.A. Groep Brussel Lambert N.V.', 'http://www.gbl.be/en', 'Brussels, Belgium', 'contain bank in page', 'by words', 'Belgium', NULL);
INSERT INTO public.rb VALUES ('www.unicreditgroup.eu', 'UniCredit S.p.A.', 'http://www.unicreditgroup.eu', 'Milan, Italy', 'contain bank in page', 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('cms.law', 'CMS Cameron McKenna Nabarro Olswang LLP', 'https://cms.law/en/GBR/', '78 Cannon StreetLondonEC4N 6AFUnited Kingdom', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.banca-romaneasca.ro', 'Banca Românească', 'http://www.banca-romaneasca.ro', 'Bucharest, Romania', 'contain bank in page', 'by words', 'Romania', NULL);
INSERT INTO public.rb VALUES ('servpro.com', 'Servpro Industries, LLC', 'http://servpro.com', 'Gallatin, Tennessee, USA', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.gbp.ma', 'La Banque Centrale Populaire', 'http://www.gbp.ma', 'Casablanca, Morocco', 'contain bank in page', 'by words', 'Morocco', NULL);
INSERT INTO public.rb VALUES ('www.hkchinese.com.hk', 'Hongkong Chinese Limited', 'http://www.hkchinese.com.hk', '24/th, Tower 1, Lippo Centre, Hong Kong Island, Hong Kong', NULL, NULL, 'Hong Kong', NULL);
INSERT INTO public.rb VALUES ('sigos.com', 'SIGOS', 'http://sigos.com', 'Nuremberg, Nuremberg, Germany', NULL, 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.molsoncoors.com', 'Molson Coors Canada Inc.', 'http://www.molsoncoors.com/', 'Montreal, Canada', NULL, 'by words', 'Canada', NULL);
INSERT INTO public.rb VALUES ('www.idbiintech.com', 'IDBI Intech Ltd.', 'http://www.idbiintech.com', 'Navi Mumbai, India', NULL, 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.thp.org', 'The Hunger Project', 'http://www.thp.org/', 'New York, New York', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.bancaintesa.it', 'Banca Intesa S.p.A.', 'http://www.bancaintesa.it', 'Milan, Italy', NULL, 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.bancadelladriatico.it', 'Banca dell''Adriatico', 'http://www.bancadelladriatico.it', 'Pesaro, Marche, Italy', NULL, 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.etas.com', 'ETAS', 'https://www.etas.com/en/', 'Stuttgart, Germany', NULL, 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.kleinworthambros.com', 'Kleinwort Hambros', 'http://www.kleinworthambros.com', 'London, United Kingdom', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.dbs.com.hk', 'DBS Bank (Hong Kong) Limited', 'http://www.dbs.com.hk/', 'Hong Kong', 'contain bank in page', 'by words', 'Hong Kong', NULL);
INSERT INTO public.rb VALUES ('www.farmingtonbankct.com', 'Farmington Bank', 'https://www.farmingtonbankct.com/', 'Farmington, Connecticut, United States', 'contain bank in name host', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.softbank.com', 'SoftBank Capital', 'http://www.softbank.com/', 'Newton, Massachusetts, United States[1]', 'contain bank in name host', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('target.com', 'Target', 'https://target.com', 'Target Plaza, 1000 Nicollet MallMinneapolis, Minnesota, United States', NULL, NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.goldenwestworld.com', 'Golden West Financial', 'http://www.goldenwestworld.com/', 'Oakland, California, USA', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.bankmnb.com', 'Mountain National Bancshares, Inc.', 'http://www.bankmnb.com/', 'Sevierville, Tennessee', 'contain bank in host host', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.lombard.co.uk', 'Lombard North Central Plc', 'http://www.lombard.co.uk', 'Crawley, United Kingdom', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.mcxindia.com', 'Multi Commodity Exchange of India Ltd', 'https://www.mcxindia.com/', 'Mumbai, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.johnsonbank.com', 'Johnson Financial Group, Inc.', 'https://www.johnsonbank.com', 'Racine , United States of America ', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.aif.org.my', 'Asian Institute of Finance Berhad', 'http://www.aif.org.my/', 'Kuala Lumpur, Malaysia', 'contain bank in page', 'by words', 'Malaysia', NULL);
INSERT INTO public.rb VALUES ('www.bannerbank.com', 'Banner Corporation', 'http://www.bannerbank.com', 'Walla Walla, Washington, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.ugbbh.com', 'United Gulf Bank', 'https://www.ugbbh.com', 'UGB Tower, Diplomatic Area, PO Box 5964, Manama, Bahrain', 'contain bank in name', 'by words', 'Bahrain', NULL);
INSERT INTO public.rb VALUES ('www.sfm-offshore.com', 'SFM Corporate Services', 'http://www.sfm-offshore.com/', 'Dubai, United Arab Emirates', 'contain bank in page', 'by words', 'United Arab Emirates', NULL);
INSERT INTO public.rb VALUES ('skipperlaug.dk', 'Københavns Skipperforening', 'http://skipperlaug.dk/', 'Copenhagen, Denmark', 'contain bank in page', 'by words', 'Denmark', NULL);
INSERT INTO public.rb VALUES ('www.americannational.com', 'American National Insurance Company, Inc', 'http://www.americannational.com', 'One Moody PlazaGalveston, Texas, U.S.', 'contain bank in page', NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.popular.com', 'Popular, Inc.', 'http://www.popular.com', 'Hato Rey, San Juan', 'contain bank in page', 'by words', 'Puerto Rico', NULL);
INSERT INTO public.rb VALUES ('www.bcv.ch', 'Banque Cantonale Vaudoise', 'http://www.bcv.ch/', 'Lausanne, Switzerland', 'contain bank in page', 'by words', 'Switzerland', NULL);
INSERT INTO public.rb VALUES ('www.statestreet.com', 'State Street Corporation', 'http://www.statestreet.com', 'One Lincoln StreetBoston, Massachusetts, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.virginmoney.com.au', 'Virgin Money (Australia) Pty Limited', 'http://www.virginmoney.com.au', 'Australia ', 'contain bank in page', 'by words', 'Australia', NULL);
INSERT INTO public.rb VALUES ('www.ssga.com', 'State Street Global Advisors', 'http://www.ssga.com', 'Boston, Massachusetts, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('mironline.ru', 'Mir', 'http://mironline.ru/', 'Russia ', 'contain bank in page', 'by words', 'Russia', NULL);
INSERT INTO public.rb VALUES ('www.landmarkmortgages.com', 'Landmark Mortgages Limited', 'http://www.landmarkmortgages.com/', 'Admiral House, Harlington Way, Fleet, Hampshire, England, UK', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('americanbible.org', 'American Bible Society', 'http://americanbible.org', 'Philadelphia, Pennsylvania', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('stripe.com', 'Stripe, Inc.', 'https://stripe.com', 'San Francisco, California', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.countryfinancial.com', 'Country Financial', 'http://www.countryfinancial.com', 'Bloomington, Illinois, US', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.tsonline.co.uk', 'The Stationery Office Ltd', 'http://www.tsonline.co.uk/', 'London, SW1United Kingdom', NULL, 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('leave.eu', 'Leave.EU', 'http://leave.eu/', 'Millbank Tower, London', NULL, 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('equitygroupholdings.com', 'Equity Group Holdings Limited', 'https://equitygroupholdings.com/', '9th Floor, Equity Centre Hospital Road, Upper HillNairobi, Kenya', 'contain bank in page', 'by words', 'Kenya', NULL);
INSERT INTO public.rb VALUES ('paytm.com', 'Paytm, LLC', 'https://paytm.com', 'B-121, Sector 5, Noida, Uttar Pradesh, India[1]', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.tailoredbrands.com', 'Tailored Brands, Inc.', 'http://www.tailoredbrands.com', 'Houston, Texas, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.dtp-entertainment.com', 'DTP Entertainment AG', 'http://www.dtp-entertainment.com', 'Hamburg, Germany', NULL, 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.newburyportbank.com', 'Newburyport Five Cents Savings Bank', 'https://www.newburyportbank.com/', 'Newburyport, Massachusetts, United States', 'contain bank in page', NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.tiaa.org', 'TIAA', 'http://www.tiaa.org', 'Manhattan, New York City, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.popmantova.it', 'Banca Popolare di Mantova', 'http://www.popmantova.it', '7 Piazza Martiri di Belfiore, Mantua, Italy', 'contain bank in page', NULL, 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.bank.gov.ua', 'National Bank of UkraineНаціональний банк України', 'http://www.bank.gov.ua/', '9, Instytutska st, Kiev, 01601', 'contain bank in page', 'by words', 'Ukraine', NULL);
INSERT INTO public.rb VALUES ('statebankoftravancore.com', 'State Bank of Travancore', 'http://statebankoftravancore.com', 'Poojappura, Thiruvananthapuram, India', 'contain bank in name host', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.realbank.com.ph', 'The Real Bank', 'http://www.realbank.com.ph', 'Timog Ave., Diliman, Quezon City, Philippines', 'contain bank in name host', 'by words', 'Philippines', NULL);
INSERT INTO public.rb VALUES ('www.mdcp.com', 'Madison Dearborn Partners, LLC', 'http://www.mdcp.com/', 'Chicago, Illinois, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.affinbank.com.my', 'Affin Holdings Berhad', 'http://www.affinbank.com.my', '17th Floor, Menara Affin, 80, Jalan Raja Chulan, 50200 Kuala Lumpur, Malaysia', 'contain bank in page', 'by words', 'Malaysia', NULL);
INSERT INTO public.rb VALUES ('www.axa.com', 'AXA S.A.', 'https://www.axa.com', '25 Avenue Matignon, Paris, France', 'contain bank in page', 'by words', 'France', NULL);
INSERT INTO public.rb VALUES ('www.lfg.com', 'Lincoln National Corporation', 'http://www.lfg.com', 'Radnor, Pennsylvania, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.almbrand.dk', 'Alm. Brand', 'http://www.almbrand.dk/abdk/english/index.htm', 'Copenhagen, Denmark', 'contain bank in page', 'by words', 'Denmark', NULL);
INSERT INTO public.rb VALUES ('www.tencent.com', 'Tencent Holdings Limited', 'https://www.tencent.com/en-us/index.html', 'Tencent Binhai Mansion, Nanshan District, Shenzhen, ChinaMacau, China', 'contain bank in page', 'by words', 'China', NULL);
INSERT INTO public.rb VALUES ('www.sees.com', 'See''s Candies Shops, Inc.', 'http://www.sees.com', 'South San Francisco, California, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.alerus.com', 'Alerus Financial Corporation', 'https://www.alerus.com/', 'Grand Forks, North Dakota, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.pa.hsbc.com', 'HSBC Panama', 'http://www.pa.hsbc.com/', 'Panama City, Panama', 'contain bank in page', 'by words', 'Panama', NULL);
INSERT INTO public.rb VALUES ('www.lewiss.co.uk', 'Lewis''s', 'http://www.lewiss.co.uk', 'Liverpool, England', NULL, NULL, 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.smile.co.uk', 'smile', 'http://www.smile.co.uk/', '1 Balloon StreetManchesterM60 4EP, United Kingdom', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.icicilombard.com', 'ICICI Lombard General Insurance Company Ltd', 'http://www.icicilombard.com', 'Mumbai, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.bper.it', 'BPER Banca', 'http://www.bper.it', 'Modena, Italy', 'contain bank in page', 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.csx.com', 'CSX Corporation', 'http://www.csx.com/', 'CSX Transportation Building500 Water StreetJacksonville, Florida, U.S.', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.alfanet.com.br', 'Banco Alfa', 'http://www.alfanet.com.br/', 'São Paulo, São Paulo, Brazil', NULL, 'by words', 'Brazil', NULL);
INSERT INTO public.rb VALUES ('JohnsonPublishing.com', 'Johnson Publishing Company', 'http://JohnsonPublishing.com', '200 S. Michigan AvenueChicago, Illinois, U.S.[1]', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.mbusa.com', 'Mercedes-Benz USA, LLC', 'http://www.mbusa.com/', 'Sandy Springs, Georgia, U.S.', 'contain bank in page', 'by words', 'Georgia', NULL);
INSERT INTO public.rb VALUES ('www.lyonandturnbull.com', 'Lyon & Turnbull', 'https://www.lyonandturnbull.com', '33 Broughton PlaceEdinburgh, ScotlandUnited Kingdom', NULL, 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.kakaocorp.com', 'Kakao Corporation', 'http://www.kakaocorp.com', 'Jeju City, South Korea', 'contain bank in page', 'by words', 'South Korea', NULL);
INSERT INTO public.rb VALUES ('gbcib.com', 'GBC International Bank', 'http://gbcib.com', 'California', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.pmcbank.com', 'Punjab & Maharashtra Co-operative Bank', 'https://www.pmcbank.com/', 'Mumbai, India', 'contain bank in page', NULL, 'India', NULL);
INSERT INTO public.rb VALUES ('www.prudentialbank.com.gh', 'Prudential Bank Limited', 'http://www.prudentialbank.com.gh', '8 John Hammond Street (formerly 8 Nima Avenue), Ring Road Central, Accra, Ghana', 'contain bank in name host', 'by words', 'Ghana', NULL);
INSERT INTO public.rb VALUES ('www.bancobai.ao', 'Banco Angolano de Investimentos', 'https://www.bancobai.ao/', 'Luanda', 'contain bank in page', NULL, 'Angola', NULL);
INSERT INTO public.rb VALUES ('www.citibank.com.au', 'Citigroup Pty Limited', 'https://www.citibank.com.au/', 'Sydney, Australia', 'contain bank in host host', 'by words', 'Australia', NULL);
INSERT INTO public.rb VALUES ('www.fmbwpa.com', 'Farmers and Merchants Bank of Western PA', 'http://www.fmbwpa.com/', 'Kittanning, Pennsylvania, United States', 'contain bank in name', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.heartland.co.nz', 'Heartland Bank Limited', 'http://www.heartland.co.nz/', 'Auckland, New Zealand', 'contain bank in name', 'by words', 'New Zealand', NULL);
INSERT INTO public.rb VALUES ('www.jawwal.ps', 'Palestine Cellular Communications Company (Jawwal)شركة الاتصالات الخلوية الفلسطينية (جوال)‎', 'http://www.jawwal.ps', 'Ramallah, Palestine', NULL, 'by words', 'Palestinian Territory', NULL);
INSERT INTO public.rb VALUES ('www.wmeentertainment.com', 'Endeavor Talent Agency', 'http://www.wmeentertainment.com', 'Beverly Hills, California, United States', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.indiafirstlife.com', 'India India', 'http://www.indiafirstlife.com', 'Mumbai, Maharashtra, India', NULL, 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.daimler-trucksasia.in', 'Daimler India Commercial Vehicles Pvt.Ltd.', 'http://www.daimler-trucksasia.in', 'Chennai, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.dallasnews.com', 'The Dallas Morning News', 'https://www.dallasnews.com/', '1954 Commerce StreetDallas, Texas 75201United States', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.liveramp.com', 'LiveRamp Holdings, Inc.', 'http://www.liveramp.com/', 'San Francisco, California, U.S.', 'contain bank in page', NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('wintrust.com', 'Wintrust Financial Corporation', 'http://wintrust.com', 'Rosemont, Illinois', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.microsoft.com', 'Microsoft Corporation', 'http://www.microsoft.com', 'One Microsoft Way, Redmond, Washington, US', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.funko.com', 'Funko Inc.', 'https://www.funko.com/', 'Everett, Washington, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.cartaworldwide.com', 'Carta Worldwide', 'http://www.cartaworldwide.com/', 'Oakville, Ontario, Canada', 'contain bank in page', 'by words', 'Canada', NULL);
INSERT INTO public.rb VALUES ('www.ml.com', 'Merrill', 'https://www.ml.com/', '250 Vesey StreetNew York City, New York, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('the-numbers.com', 'The Numbers', 'http://the-numbers.com', 'Beverly Hills, California, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.hdfcsec.com', 'HDFC securities', 'http://www.hdfcsec.com/', 'Mumbai, Maharashtra, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.ecocash.co.zw', 'EcoCash', 'https://www.ecocash.co.zw/%20Homepage', 'Harare, Zimbabwe', NULL, 'by words', 'Zimbabwe', NULL);
INSERT INTO public.rb VALUES ('www.citifxpro.com', 'CitiFX Pro', 'http://www.citifxpro.com/', 'New York, NY, US', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.flagstar.com', 'Flagstar Bancorp, Inc.', 'https://www.flagstar.com/', 'Troy, Michigan, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.worldwatercouncil.org', 'World Water Council', 'http://www.worldwatercouncil.org/', 'Marseille,  France', NULL, NULL, 'France', NULL);
INSERT INTO public.rb VALUES ('www.ncbi.nlm.nih.gov', 'National Center for Biotechnology Information', 'https://www.ncbi.nlm.nih.gov/', 'Bethesda, Maryland, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.pcf-p.com', 'Pei Cobb Freed & Partners', 'http://www.pcf-p.com', '88 Pine StreetManhattan, NY, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.grundig.com', 'Grundig', 'http://www.grundig.com', 'Nuremberg , Germany ', NULL, 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('financetrust.co.ug', 'Finance Trust Bank', 'http://financetrust.co.ug', 'Plot 121 & 115, Block 6,Finance Trust Building,Katwe, Kampala, Uganda', 'contain bank in name', 'by words', 'Uganda', NULL);
INSERT INTO public.rb VALUES ('www.bancaintesa.rs', 'Banca Intesa Beograd', 'http://www.bancaintesa.rs', 'Belgrade, Serbia', NULL, 'by words', 'Serbia', NULL);
INSERT INTO public.rb VALUES ('www.equitorialtrustbank.com', 'Equitorial Trust Bank', 'http://www.equitorialtrustbank.com/', '1092 Adeola Odeku StreetVictoria IslandLagos, Nigeria', 'contain bank in page', 'by words', 'Nigeria', NULL);
INSERT INTO public.rb VALUES ('www.metrobank.com.ph', 'Metrobank', 'https://www.metrobank.com.ph/', 'Makati, Philippines', 'contain bank in name host', 'by words', 'Philippines', NULL);
INSERT INTO public.rb VALUES ('icsid.worldbank.org', 'International Centres forSettlement of Investment Disputes', 'https://icsid.worldbank.org/', 'Washington, D.C., United States', 'contain bank in host host', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.carnivalcorp.com', 'Carnival Corporation & plc', 'http://www.carnivalcorp.com', 'Miami, Florida, United States', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.nokair.com', 'Nok Air นกแอร์', 'http://www.nokair.com', 'Rajanakarn Building 17th Floor, 3 South Sathon Road, Yannawa, Sathorn, Bangkok, Thailand
        ', NULL, 'by words', 'Thailand', NULL);
INSERT INTO public.rb VALUES ('www.generali.com', 'Assicurazioni Generali S.p.A.', 'http://www.generali.com', 'Trieste, Italy', NULL, 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.banamex.com', 'Grupo Financiero Banamex, S.A. de C.V', 'http://www.banamex.com', 'Mexico City, Mexico', NULL, 'by words', 'Mexico', NULL);
INSERT INTO public.rb VALUES ('www.chiantibanca.it', 'ChiantiBanca', 'http://www.chiantibanca.it', 'Monteriggioni, Italy (legal)San Casciano in Val di Pesa, Italy (general office)', 'contain bank in page', 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.bancadelterritoriolombardo.it', 'Banca del Territorio Lombardo', 'http://www.bancadelterritoriolombardo.it', '12 Piazza S. Andrea, Pompiano, Italy', 'contain bank in page', 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.bsa.org.uk', 'Building Societies Association', 'https://www.bsa.org.uk', 'London, England, UK', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.eika.no', 'Eika Gruppen AS', 'https://www.eika.no', 'Oslo, Norway', 'contain bank in page', 'by words', 'Norway', NULL);
INSERT INTO public.rb VALUES ('www.ofgbancorp.com', 'OFG Bancorp', 'http://www.ofgbancorp.com/', 'San Juan, Puerto Rico', 'contain bank in page', 'by words', 'Puerto Rico', NULL);
INSERT INTO public.rb VALUES ('www.vocalink.com', 'Vocalink', 'http://www.vocalink.com/', 'Rickmansworth, United Kingdom', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('busey.com', 'First Busey Corporation', 'http://busey.com', 'Champaign, Illinois, USA', 'contain bank in page', NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.goznak.ru', 'JSC Goznak', 'http://www.goznak.ru', '17 Mytnaya Street, Moscow, Russia', 'contain bank in page', NULL, 'Russia', NULL);
INSERT INTO public.rb VALUES ('www.wilmingtontrust.com', 'Wilmington Trust', 'http://www.wilmingtontrust.com', 'Wilmington, Delaware, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('cherkizovo.com', 'OJSC "Cherkizovo"', 'http://cherkizovo.com/', 'Russia, Moscow', 'contain bank in page', 'by words', 'Russia', NULL);
INSERT INTO public.rb VALUES ('company.vice.com', 'Vice Media LLC', 'https://company.vice.com', 'Brooklyn, New York, United States', 'contain bank in page', NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('dieboldnixdorf.com', 'Diebold Nixdorf', 'http://dieboldnixdorf.com', 'Green, Ohio (North Canton mailing address), United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.scmholding.com', 'SCM Holdings', 'http://www.scmholding.com', 'Donetsk, Ukraine', 'contain bank in page', 'by words', 'Ukraine', NULL);
INSERT INTO public.rb VALUES ('www.bmonb.com', 'BMO Nesbitt Burns', 'http://www.bmonb.com', 'Toronto, Ontario, Canada', 'contain bank in page', 'by words', 'Canada', NULL);
INSERT INTO public.rb VALUES ('www.sabanci.com', 'Hacı Ömer Sabancı Holding A.Ş.', 'https://www.sabanci.com/en', 'Istanbul, Turkey', 'contain bank in page', 'by words', 'Turkey', NULL);
INSERT INTO public.rb VALUES ('www.ibb-ag.de', 'Internationales Bankhaus Bodensee', 'http://www.ibb-ag.de/', 'Friedrichshafen, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.hokkokubank.co.jp', 'Hokkoku Bank', 'http://www.hokkokubank.co.jp', 'Kanazawa, Ishikawa, Japan', 'contain bank in name host', 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.americancentury.com', 'American Century Companies, Inc.', 'http://www.americancentury.com', 'Kansas City, Missouri, U.S.', 'contain bank in page', NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.softbankcr.co.jp', 'SB Creative Corp.', 'http://www.softbankcr.co.jp/en/index.html', 'Tokyo, Japan', 'contain bank in page', 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.bceao.int', 'Central Bank of West African StatesBanque Centrale des États de l''Afrique de l''Ouest (BCEAO) (in
            French)
        ', 'http://www.bceao.int', 'Dakar, Senegal', 'contain bank in name', 'by words', 'Senegal', NULL);
INSERT INTO public.rb VALUES ('www.firstdata.com', 'First Data Corporation', 'https://www.firstdata.com/', 'New York, NY, U.S.', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.su155.com', 'SU-155 Group of CompaniesГруппа компаний "СУ-155"', 'http://www.su155.com/', 'Moscow, Russia', NULL, 'by words', 'Russia', NULL);
INSERT INTO public.rb VALUES ('www.virginmoney.com', 'Virgin Money', 'http://www.virginmoney.com', 'Norwich , United Kingdom ', NULL, 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('supaul.bih.nic.in', 'Supaul district', 'http://supaul.bih.nic.in/', 'Supaul', NULL, 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.transamerica.com', 'Transamerica Corporation', 'http://www.transamerica.com', 'Cedar Rapids, Iowa, US', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.snpgroup.com', 'SNP Schneider-Neureither & Partner SE', 'https://www.snpgroup.com', 'Heidelberg, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.op.fi', 'OP Financial Group', 'http://www.op.fi', 'Helsinki, Finland', 'contain bank in page', 'by words', 'Finland', NULL);
INSERT INTO public.rb VALUES ('dippindots.com', 'Dippin'' Dots, Inc.', 'http://dippindots.com', 'Paducah, Kentucky, U.S.', NULL, NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.gjensidige.no', 'Gjensidige Forsikring ASA', 'https://www.gjensidige.no', 'Oslo, Norway', 'contain bank in page', 'by words', 'Norway', NULL);
INSERT INTO public.rb VALUES ('www.adyen.com', 'Adyen N.V.', 'http://www.adyen.com', 'Amsterdam, Netherlands', 'contain bank in page', 'by words', 'Netherlands', NULL);
INSERT INTO public.rb VALUES ('www.unibanco.com.br', 'Unibanco - União de Bancos Brasileiros S.A.', 'http://www.unibanco.com.br', 'São Paulo, Brazil', 'contain bank in page', NULL, 'Brazil', NULL);
INSERT INTO public.rb VALUES ('www.baccredomatic.com', 'BAC Credomatic', 'https://www.baccredomatic.com/', 'San José, Costa Rica', 'contain bank in page', 'by words', 'Costa Rica', NULL);
INSERT INTO public.rb VALUES ('www.payoneer.com', 'Payoneer Inc.', 'https://www.payoneer.com', 'New York, NY United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.computershare.com', 'Computershare Limited', 'http://www.computershare.com/', 'Yarra FallsAbbotsford, Victoria, Australia', 'contain bank in page', NULL, 'Australia', NULL);
INSERT INTO public.rb VALUES ('www.bitmari.com', 'BitMari', 'http://www.bitmari.com', 'Harare, Zimbabwe', NULL, 'by words', 'Zimbabwe', NULL);
INSERT INTO public.rb VALUES ('pay.amazon.com', 'Amazon Pay', 'https://pay.amazon.com/', 'Seattle, Washington United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.cheltglos.co.uk', 'Cheltenham & Gloucester plc', 'http://www.cheltglos.co.uk', 'Barnwood, Gloucestershire, United Kingdom', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.paccity.net', 'Pacific City Financial Corporation', 'https://www.paccity.net/EN/Home', 'Los Angeles, California', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.wpshealth.com', 'Wisconsin Physicians Service Insurance Corporation', 'http://www.wpshealth.com/index.shtml', 'Madison, Wisconsin, USA', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.juliusbaer.com', 'Julius Bär Group AG', 'http://www.juliusbaer.com', 'Zurich, Switzerland', 'contain bank in page', 'by words', 'Switzerland', NULL);
INSERT INTO public.rb VALUES ('www.dfcbelize.org', 'Development Finance Corporation', 'http://www.dfcbelize.org/', 'Belmopan, Belize', NULL, 'by words', 'Belize', NULL);
INSERT INTO public.rb VALUES ('www.wesbanco.com', 'WESBANCO, INC.', 'http://www.wesbanco.com/', 'Wheeling, West Virginia, U.S.', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.jair.co.jp', 'J-Airジェイ エア', 'http://www.jair.co.jp', 'Osaka International Airport, Osaka, Japan', NULL, 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.telenor.com.mm', 'Telenor Myanmar', 'https://www.telenor.com.mm/', 'Yangon, Myanmar', NULL, 'by words', 'Myanmar', NULL);
INSERT INTO public.rb VALUES ('www.bravissimo.com', 'Bravissimo', 'http://www.bravissimo.com/', 'Leamington Spa, United Kingdom', NULL, 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('wdl-aviation.de', 'WDL Aviation', 'http://wdl-aviation.de/en/home-en/', 'Cologne, Germany', NULL, 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('bync.com', 'Bync', 'http://bync.com', 'Louisville, Colorado', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.pacificlife.com', 'Pacific Life Insurance Company', 'http://www.pacificlife.com/', 'Corporate: Newport Beach, California Operations: Omaha, Nebraska', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.suncorp.com.au', 'Suncorp Bank', 'http://www.suncorp.com.au', 'Brisbane, Queensland, Australia', 'contain bank in page', 'by words', 'Australia', NULL);
INSERT INTO public.rb VALUES ('www.konga.com', 'Konga', 'http://www.konga.com', 'Gbagada, Kosofe, Lagos State, Nigeria', NULL, 'by words', 'Nigeria', NULL);
INSERT INTO public.rb VALUES ('filinvestgroup.com', 'Filinvest Development Corporation', 'http://filinvestgroup.com/', '6th Floor, The Beaufort, 5th Ave corner 23rd St., Bonifacio Global City, Taguig City, Metro Manila
            1634, Philippines
        ', NULL, 'by words', 'Philippines', NULL);
INSERT INTO public.rb VALUES ('www.janatabank.com.np', 'Janata Bank Nepal Limited', 'http://www.janatabank.com.np', 'Naya Baneshwor, Kathmandu, Nepal', 'contain bank in page', 'by words', 'Nepal', NULL);
INSERT INTO public.rb VALUES ('www.gutmann.at', 'Gutmann Bank', 'https://www.gutmann.at', 'Vienna, Austria', 'contain bank in page', NULL, 'Austria', NULL);
INSERT INTO public.rb VALUES ('meb.gov.mm', 'Myanma Economic Bank', 'http://meb.gov.mm', 'No. 26, Thiri Kyaw Swa Street, Naypyidaw, Myanmar', 'contain bank in name', NULL, 'Myanmar', NULL);
INSERT INTO public.rb VALUES ('jcp.com', 'JCPenney Company, Inc.', 'https://jcp.com/', '6501 Legacy Drive, Plano, Texas, United States', NULL, NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.legacytexas.com', 'LegacyTexas Financial Group, Inc.', 'https://www.legacytexas.com/', 'Plano, Texas', NULL, NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.bydgoszcz.pl', 'Bydgoszcz', 'http://www.bydgoszcz.pl', 'Left to right: Banks of the Brda RiverHotel "Pod Orłem"The Archer of BydgoszczMill Island
            of Bank PekaoCourthouse with equestrian monument of Casimir the Great
        ', NULL, 'by words', 'Poland', NULL);
INSERT INTO public.rb VALUES ('www.carverbank.com', 'RegusWachovia Global Group & Co. / Carver Bancorp, Inc.', 'http://www.carverbank.com/', 'New York, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.mtgfoundation.com', 'Mortgage Foundation Inc.', 'http://www.mtgfoundation.com/', 'Ft Lauderdale, Florida', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.btn.co.id', 'PT Bank Tabungan Negara (Persero) Tbk', 'http://www.btn.co.id/', 'Menara Bank BTN Jakarta, Indonesia', 'contain bank in name', NULL, 'Indonesia', NULL);
INSERT INTO public.rb VALUES ('www.cbhbank.com', 'CBH Compagnie Bancaire Helvétique SA', 'http://www.cbhbank.com/', 'Boulevard Emile-Jaques-Dalcroze 7, Geneva, Switzerland', 'contain bank in page', 'by words', 'Switzerland', NULL);
INSERT INTO public.rb VALUES ('www.alinma.com', 'Alinma Bank مصرف الإنماء', 'http://www.alinma.com/', 'Riyadh, Saudi Arabia', 'contain bank in name', 'by words', 'Saudi Arabia', NULL);
INSERT INTO public.rb VALUES ('www.etrade.com', 'E-Trade Financial Corporation', 'https://www.etrade.com/', 'New York City, New York, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.hoh.net', 'House of Habib', 'http://www.hoh.net', 'Karachi, Pakistan', 'contain bank in page', 'by words', 'Pakistan', NULL);
INSERT INTO public.rb VALUES ('www.esl.org', 'ESL Federal Credit Union', 'https://www.esl.org', 'Rochester, New York', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.frpadvisory.com', 'FRP Advisory', 'http://www.frpadvisory.com/', 'London, United Kingdom', 'contain bank in page', NULL, 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.bancodevenezuela.com', 'Banco de Venezuela', 'http://www.bancodevenezuela.com', 'Caracas, Venezuela', 'contain bank in page', 'by words', 'Venezuela', NULL);
INSERT INTO public.rb VALUES ('www.metzler.com', 'B. Metzler seel. Sohn & Co.', 'http://www.metzler.com/', 'Frankfurt am Main, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.ageas.com', 'Ageas SA/NV', 'http://www.ageas.com', 'Brussels, Belgium', 'contain bank in page', 'by words', 'Belgium', NULL);
INSERT INTO public.rb VALUES ('www.ceifx.com', 'Currency Exchange International, Corp', 'http://www.ceifx.com', 'Orlando, Florida, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.cdb-intl.com', 'China Development Bank International Investment', 'http://www.cdb-intl.com', 'Room 4506-4509, 2 IFC, Hong Kong S.A.R., China[1](de facto)Grand Cayman,
            Cayman Islands(registered office)
        ', 'contain bank in name', NULL, 'China', NULL);
INSERT INTO public.rb VALUES ('www.virginmoneyukplc.com', 'Virgin Money UK plc', 'https://www.virginmoneyukplc.com/', 'Glasgow, Scotland, UK (Operational headquarters)
 Newcastle upon Tyne, England, UK (Registered
            Office)
        ', 'contain bank in page', NULL, 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.alliance-leicester.co.uk', 'Alliance & Leicester plc', 'http://www.alliance-leicester.co.uk', 'Narborough, Leicestershire, UK', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.jal.co.jp', 'Japan Airlines.mw-parser-output .nobold{font-weight:normal}日本航空株式会社Nihon Kōkū Kabushiki-gaisha', 'https://www.jal.co.jp/en/', 'Shinagawa, Tokyo, Japan', 'contain bank in page', 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.ipb.citibank.com.sg', 'Citibank International Personal Bank Singapore', 'https://www.ipb.citibank.com.sg', '8 Marina View Asia Square Tower 1, #21-00 Singapore 018960, Singapore, Singapore', 'contain bank in page', 'by words', 'Singapore', NULL);
INSERT INTO public.rb VALUES ('www.spirebank.co.ke', 'Spire Bank', 'http://www.spirebank.co.ke/', 'Nairobi, Kenya', 'contain bank in name host', 'by words', 'Kenya', NULL);
INSERT INTO public.rb VALUES ('www.pepsico.com', 'PepsiCo, Inc.', 'http://www.pepsico.com/', 'Harrison, New York (in the hamlet of Purchase), United States', NULL, NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.kpf.com', 'Kohn Pedersen Fox Associates', 'http://www.kpf.com', '11 West 42nd Street, New York City, New York, U.S.(Additional offices in London, Shanghai, Hong
            Kong, Seoul, Abu Dhabi, San Francisco, Singapore, Berlin)
        ', NULL, 'by words', 'Singapore', NULL);
INSERT INTO public.rb VALUES ('www.bct.gov.tn', 'Central Bank of Tunisiaالبنك المركزي التونسيBanque Centrale de Tunisie', 'http://www.bct.gov.tn', 'Tunis', 'contain bank in name', NULL, 'Tunisia', NULL);
INSERT INTO public.rb VALUES ('www.affiniagroup.com', 'Affinia Group', 'http://www.affiniagroup.com/home', '1 Wix Way, off U.S. Highway 321 on the south side of Gastonia.[1], Gastonia, North Carolina, USA
        ', NULL, NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.digitalreasoning.com', 'Digital Reasoning', 'https://www.digitalreasoning.com', 'Franklin, Tennessee, United States', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('lawson.jp', 'Lawson, Inc.', 'http://lawson.jp/en', 'Shinagawa, Tokyo, Japan', NULL, NULL, 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.kaplanfinancial.co.uk', 'Kaplan Financial Ltd. (U.K.)', 'http://www.kaplanfinancial.co.uk', 'Ground Floor, Palace House, 3 Cathedral Street, London, SE1 9DE England', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.lombardstreetresearch.com', 'Lombard Street Research Limited', 'http://www.lombardstreetresearch.com/', 'London, City of London, United Kingdom', NULL, NULL, 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.littlewoods.com', 'Littlewoods', 'http://www.littlewoods.com/', 'Liverpool, England', NULL, NULL, 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.thesouthgroup.com', 'The South Financial Group', 'http://www.thesouthgroup.com', 'Greenville, South Carolina, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.mas.gov.sg', 'Monetary Authority of Singapore', 'http://www.mas.gov.sg', '10 Shenton Way MAS Building, Singapore 079117', 'contain bank in page', 'by words', 'Singapore', NULL);
INSERT INTO public.rb VALUES ('rbcauayan.com', 'Rural Bank of Cauayan', 'http://rbcauayan.com', 'Don Jose Canciller Avenue, District I, Cauayan City, Isabela, Philippines', 'contain bank in name', NULL, 'Philippines', NULL);
INSERT INTO public.rb VALUES ('www.bancobpm.it', 'Banco BPM S.p.A.', 'https://www.bancobpm.it', 'Milan, Italy(registered office)Verona, Italy(general office)', 'contain bank in page', 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('bndes.gov.br', 'Banco Nacional de Desenvolvimento Econômico e Social', 'http://bndes.gov.br/english', 'Rio de Janeiro, Brazil', 'contain bank in page', 'by words', 'Brazil', NULL);
INSERT INTO public.rb VALUES ('irena.org', 'International Renewable Energy Agency', 'http://irena.org/', 'Masdar City, United Arab Emirates', 'contain bank in page', 'by words', 'United Arab Emirates', NULL);
INSERT INTO public.rb VALUES ('www.klk.com.my', 'Kuala Lumpur Kepong Berhad', 'http://www.klk.com.my', 'Wisma Taiko, No. 1, Jalan S.P. Seenivasagam, 30000 Ipoh, Perak, Malaysia', NULL, 'by words', 'Malaysia', NULL);
INSERT INTO public.rb VALUES ('www.oneaccount.com', 'The One account Ltd', 'http://www.oneaccount.com', 'Norwich, England, UK', 'contain bank in page', NULL, 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.spron.is', 'Sparisjóður Reykjavíkur og nágrennis', 'http://www.spron.is', 'Reykjavík, Iceland', 'contain bank in page', 'by words', 'Iceland', NULL);
INSERT INTO public.rb VALUES ('www.centerviewpartners.com', 'Centerview Partners', 'http://www.centerviewpartners.com/', '31 West 52nd StreetNew York, New York, United States', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('latitudefinancial.com.au', 'Latitude Financial Services', 'http://latitudefinancial.com.au', 'Melbourne, VIC, Australia', 'contain bank in page', 'by words', 'Australia', NULL);
INSERT INTO public.rb VALUES ('williamsandglyn.rbs.com', 'Williams & Glyn', 'https://williamsandglyn.rbs.com/', 'Manchester (proposed HQ), United Kingdom [1]', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.catalunyacaixa.com', 'CatalunyaCaixa', 'http://www.catalunyacaixa.com', 'Barcelona, Catalonia, Spain', 'contain bank in page', 'by words', 'Spain', NULL);
INSERT INTO public.rb VALUES ('www.umpquabank.com', 'Umpqua Holdings Corporation', 'https://www.umpquabank.com/', 'Portland, Oregon, United States45°30′47″N 122°40′31″W﻿ / ﻿45.51306°N 122.67528°W﻿ / 45.51306;
            -122.67528Coordinates: 45°30′47″N 122°40′31″W﻿ / ﻿45.51306°N 122.67528°W﻿ / 45.51306; -122.67528
        ', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.ymobile.jp', 'Y!mobile Corporationワイモバイル株式会社', 'https://www.ymobile.jp', 'Shiodome-building 1-9-1 Higashi-shinbashi, Minato-ku, Tokyo, Japan', 'contain bank in page', 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.okura-nikko.com', 'Okura Nikko Hotel Management Co., Ltd.', 'https://www.okura-nikko.com/', 'Shinagawa, Tokyo, Japan', 'contain bank in page', 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.videoconindustriesltd.com', 'Videocon Industries Private Limited', 'http://www.videoconindustriesltd.com/', 'Mumbai, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.standardlifeaberdeen.com', 'Standard Life Aberdeen plc', 'https://www.standardlifeaberdeen.com/', 'Edinburgh, Scotland, United Kingdom', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.aozorabank.co.jp', 'Aozora Bank, Ltd. 株式会社あおぞら銀行', 'http://www.aozorabank.co.jp/', 'Chiyoda, Tokyo[2], Japan', 'contain bank in name host', NULL, 'Japan', NULL);
INSERT INTO public.rb VALUES ('stifel.com', 'Stifel Financial Corp.', 'http://stifel.com', 'St. Louis, Missouri, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.banobras.gob.mx', 'Banco Nacional de Obras y Servicios Públicos, S.N.C.', 'http://www.banobras.gob.mx', 'Mexico City, Mexico', NULL, 'by words', 'Mexico', NULL);
INSERT INTO public.rb VALUES ('www.unitedutilities.com', 'United Utilities Group plc', 'http://www.unitedutilities.com/', 'Warrington, England, UK', NULL, NULL, 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('investors.axosfinancial.com', 'Axos Financial, Inc.', 'http://investors.axosfinancial.com/CorporateProfile', 'San Diego, California', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.wuestenrotdirect.de', 'Wüstenrot Bank AG Pfandbriefbank', 'http://www.wuestenrotdirect.de/', 'Ludwigsburg, Germany[1]', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.bpb.it', 'Banca Popolare di Bergamo', 'http://www.bpb.it', '8 Piazza Vittorio Veneto, Bergamo, Italy', 'contain bank in page', 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.danskebank.se', 'Danske Bank', 'http://www.danskebank.se', 'City Palace ', 'contain bank in page', 'by words', 'Sweden', NULL);
INSERT INTO public.rb VALUES ('www.umb.com', 'UMB Financial Corporation', 'http://www.umb.com/', 'Kansas City, Missouri, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.commerzbank.com', 'Commerzbank AG', 'https://www.commerzbank.com/', 'Kaiserplatz, Frankfurt am Main, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.nccbank.com.bd', 'NCC Bank Limited', 'http://www.nccbank.com.bd/', 'Dhaka, Bangladesh', 'contain bank in page', 'by words', 'Bangladesh', NULL);
INSERT INTO public.rb VALUES ('www.hbosplc.com', 'HBOS plc', 'http://www.hbosplc.com/', '
Edinburgh, Scotland, UK (Registered office)
Halifax, England, UK (Head Office)
        ', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.northwest.bank', 'Northwest Bancshares, Inc.', 'https://www.northwest.bank/', 'Warren, Pennsylvania', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.startribune.com', 'Star Tribune', 'http://www.startribune.com', 'Star Tribune Building 650 3rd Ave S.Suite 1300Minneapolis, MNUnited States', NULL, 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.temenos.com', 'Temenos AG', 'http://www.temenos.com', 'Temenos Headquarters SA, 2 Rue de l''Ecole-de-Chimie, CH - 1205 Geneva, Switzerland
        ', 'contain bank in page', 'by words', 'Switzerland', NULL);
INSERT INTO public.rb VALUES ('www.fnb-online.com', 'F.N.B. Corporation', 'https://www.fnb-online.com/', 'Pittsburgh, Pennsylvania, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.zjtlcb.com', 'Zhejiang Tailong Commercial Bank', 'http://www.zjtlcb.com', 'Taizhou, Zhejiang province, People''s Republic of China', 'contain bank in name', 'by words', 'China', NULL);
INSERT INTO public.rb VALUES ('www.poczta-polska.pl', 'Poczta Polska', 'http://www.poczta-polska.pl/', 'Warsaw', 'contain bank in page', 'by words', 'Poland', NULL);
INSERT INTO public.rb VALUES ('www.fnni.com', 'First National of Nebraska', 'http://www.fnni.com', 'Omaha, Nebraska, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('banco.bradesco', 'Banco Bradesco S.A.', 'https://banco.bradesco', 'Osasco, São Paulo, Brazil', 'contain bank in page', 'by words', 'Brazil', NULL);
INSERT INTO public.rb VALUES ('www.hometrustbanking.com', 'HomeTrust Bancshares', 'http://www.hometrustbanking.com/', 'Asheville, North Carolina', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.mmwarburg.com', 'M.M.Warburg & CO (AG & Co.) KGaA', 'http://www.mmwarburg.com/', 'Ferdinandstraße 7520095 Hamburg, Germany', 'contain bank in page', NULL, 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.amp.com.au', 'AMP Limited', 'http://www.amp.com.au/', 'Sydney, New South Wales, Australia', 'contain bank in page', 'by words', 'Australia', NULL);
INSERT INTO public.rb VALUES ('www.firstcitizens.com', 'First Citizens BancShares', 'http://www.firstcitizens.com/', 'Raleigh, North Carolina, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.architecture.com', 'Royal Institute of British Architects', 'http://www.architecture.com', '66 Portland PlaceLondon, W1RIBA North, Mann Island, Liverpool', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.bankofhope.com', 'Hope Bancorp, Inc.', 'https://www.bankofhope.com/', 'Los Angeles, California', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.citizensbank.com', 'Citizens Financial Group, Inc.', 'http://www.citizensbank.com/', 'Providence, Rhode Island, United States', 'contain bank in page', NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.idfc.com', 'Infrastructure Development Finance Company', 'http://www.idfc.com', 'Chennai, Tamilnadu, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.daikin.com', 'Daikin Industries', 'http://www.daikin.com', 'Umeda Center Bldg., 2-4-12, Nakazaki-Nishi, Kita-ku, Osaka 530-8323, Japan', 'contain bank in page', 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.amerisbank.com', 'Ameris Bancorp', 'http://www.amerisbank.com', 'Atlanta, Georgia, U.S.', 'contain bank in page', 'by words', 'Georgia', NULL);
INSERT INTO public.rb VALUES ('www.tdsecurities.com', 'TD Securities', 'http://www.tdsecurities.com', 'Toronto, Ontario, Canada', 'contain bank in page', 'by words', 'Canada', NULL);
INSERT INTO public.rb VALUES ('www.creditandorra.ad', 'Crèdit Andorrà', 'http://www.creditandorra.ad/', 'Andorra la Vella, Andorra', 'contain bank in page', 'by words', 'Andorra', NULL);
INSERT INTO public.rb VALUES ('www.tavant.com', 'Tavant', 'http://www.tavant.com', 'Santa Clara, California, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.wmtransfer.com', 'WebMoney Transfer', 'http://www.wmtransfer.com/', 'Moscow, Russia[1]', 'contain bank in page', 'by words', 'Russia', NULL);
INSERT INTO public.rb VALUES ('www.munichre.com', 'Munich Re Group', 'https://www.munichre.com/', 'Munich, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.btgpactual.com', 'Banco BTG Pactual S.A.', 'https://www.btgpactual.com/home_en/', 'Rio de Janeiro, BrazilSão Paulo, Brazil', 'contain bank in page', 'by words', 'Brazil', NULL);
INSERT INTO public.rb VALUES ('home.komatsu', 'Komatsu Ltd.', 'https://home.komatsu/en/', 'Tokyo, Japan', 'contain bank in page', 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('premiertaxfree.com', 'Planet Payment', 'http://premiertaxfree.com', 'Galway, Ireland', 'contain bank in page', 'by words', 'Ireland', NULL);
INSERT INTO public.rb VALUES ('www.firstmerit.com', 'FirstMerit Corporation', 'https://www.firstmerit.com/', '106 King James Way, Akron, Ohio, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('identrust.com', 'IdenTrust', 'https://identrust.com', 'San Francisco, California', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.abbey.com', 'Abbey National plc', 'http://www.abbey.com', 'United Kingdom', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.hbgary.com', 'HBGary', 'http://www.hbgary.com/', 'Offices in Sacramento, California, Washington, D.C., and Bethesda, Maryland.[2]', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.use.or.ug', 'Uganda Securities Exchange', 'http://www.use.or.ug', 'Kampala, Uganda', 'contain bank in page', 'by words', 'Uganda', NULL);
INSERT INTO public.rb VALUES ('www.twfhc.com.tw', 'Taiwan Financial Holdings Co., Ltd.臺灣金融控股公司', 'http://www.twfhc.com.tw', 'Taipei, Taiwan', 'contain bank in page', 'by words', 'Taiwan', NULL);
INSERT INTO public.rb VALUES ('www.bostonglobe.com', 'The Boston Globe', 'https://www.bostonglobe.com', 'Exchange PlaceBoston, Massachusetts, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.pma.ps', 'Palestine Monetary Authorityسلطة النقد الفلسطينية (Arabic)', 'http://www.pma.ps', 'Ramallah, Palestine', 'contain bank in page', 'by words', 'Palestinian Territory', NULL);
INSERT INTO public.rb VALUES ('www.acbtz.com', 'Akiba Commercial Bank', 'http://www.acbtz.com/', 'Dar es Salaam, Tanzania', 'contain bank in page', 'by words', 'Tanzania', NULL);
INSERT INTO public.rb VALUES ('www.cmegroup.com', 'New York Mercantile Exchange', 'http://www.cmegroup.com/', 'Manhattan, New York City, New York, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.fordcredit.com', 'Ford Motor Credit Company', 'http://www.fordcredit.com', 'Dearborn, Michigan, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.ally.com', 'Ally Financial Inc.', 'https://www.ally.com/', 'Ally Detroit CenterDetroit, Michigan (Corporate)Sandy, Utah (Ally Bank)', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.gruppocarige.it', 'Banca del Monte di Lucca', 'https://www.gruppocarige.it/grpwps/portal/bmlucca', 'Lucca, Italy', 'contain bank in page', 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('alfransi.com.sa', 'Banque Saudi Fransiالبنك السعودي الفرنسي', 'http://alfransi.com.sa/', 'Riyadh, Saudi Arabia', 'contain bank in page', 'by words', 'Saudi Arabia', NULL);
INSERT INTO public.rb VALUES ('glacierbancorp.com', 'Glacier Bancorp, Inc', 'http://glacierbancorp.com', '49 Commons LoopKalispell, Montana, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.taikang.com', 'Taikang Life Insurance Company Limited 泰康人寿保险股份有限公司', 'http://www.taikang.com/', 'Beijing, China', 'contain bank in page', 'by words', 'China', NULL);
INSERT INTO public.rb VALUES ('www.bancaifisimpresa.it', 'Interbanca', 'http://www.bancaifisimpresa.it', 'Milan, Italy', 'contain bank in page', 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.hoaresbank.co.uk', 'C. Hoare & Co.', 'http://www.hoaresbank.co.uk', 'London, England, UK', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.somalichamber.so', 'Somali Chamber of Commerce and Industry', 'http://www.somalichamber.so', 'Mogadishu, Somalia', 'contain bank in page', 'by words', 'Somalia', NULL);
INSERT INTO public.rb VALUES ('www.taishinholdings.com.tw', 'Taishin Financial Holding Co., Ltd.', 'http://www.taishinholdings.com.tw', 'Taipei, Taiwan', NULL, 'by words', 'Taiwan', NULL);
INSERT INTO public.rb VALUES ('www.optimizecapitalmarkets.com', 'Optimize Capital Markets', 'http://www.optimizecapitalmarkets.com/', 'Toronto, Ontario, Canada', 'contain bank in page', 'by words', 'Canada', NULL);
INSERT INTO public.rb VALUES ('ShelterInsurance.com', 'Shelter Insurance', 'http://ShelterInsurance.com', 'Columbia, Missouri, USA', 'contain bank in page', NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.homecredit.net', 'Home Credit B.V.', 'http://www.homecredit.net/', 'Amsterdam, Netherlands', 'contain bank in page', 'by words', 'Netherlands', NULL);
INSERT INTO public.rb VALUES ('www.1stsource.com', '1st Source Corporation', 'http://www.1stsource.com/', 'South Bend, Indiana', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.ottogroup.com', 'Otto GmbH & Co KG', 'http://www.ottogroup.com/en/index.php', 'Hamburg, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.group.pictet', 'Pictet Group', 'http://www.group.pictet', 'Geneva, Switzerland', 'contain bank in page', 'by words', 'Switzerland', NULL);
INSERT INTO public.rb VALUES ('www.Reverta.lv', 'Reverta AS', 'http://www.Reverta.lv', 'Riga, Latvia', 'contain bank in page', 'by words', 'Latvia', NULL);
INSERT INTO public.rb VALUES ('www.mutualofomaha.com', 'Mutual of Omaha Insurance Company', 'http://www.mutualofomaha.com', 'Omaha, Nebraska, USA', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.wellsfargo.com', 'Wells Fargo & Company', 'https://www.wellsfargo.com/', '420 Montgomery Street, San Francisco, California, U.S.', 'contain bank in page', NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.nisshinbo.co.jp', 'Nisshinbo Holdings Inc.', 'http://www.nisshinbo.co.jp/english/', 'Nihonbashi, Chuo-ku, Tokyo 103-8650, Japan', 'contain bank in page', 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.chartercourtfs.co.uk', 'Charter Court Financial Services Group plc', 'http://www.chartercourtfs.co.uk', 'Wolverhampton, England', 'contain bank in page', NULL, 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.bokf.com', 'BOK Financial Corporation', 'http://www.bokf.com/', 'Tulsa, Oklahoma, US', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('hampdenandco.com', 'Hampden & Co.', 'http://hampdenandco.com', 'Edinburgh, United Kingdom', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.delarue.com', 'De La Rue plc', 'http://www.delarue.com', 'Basingstoke, England', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.statefarm.com', 'State Farm Mutual Automobile Insurance Company', 'http://www.statefarm.com/', 'Bloomington, Illinois, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.santander.pt', 'Banco Santander Portugal', 'http://www.santander.pt', 'Rua do Ouro nº 88, 1100-063, Lisbon, Portugal', 'contain bank in page', 'by words', 'Portugal', NULL);
INSERT INTO public.rb VALUES ('www.cima.ky', 'Cayman Islands Monetary Authority', 'http://www.cima.ky', 'Grand Cayman, Cayman Islands', 'contain bank in page', 'by words', 'Cayman Islands', NULL);
INSERT INTO public.rb VALUES ('www.aig.com', 'American International Group, Inc.', 'http://www.aig.com', 'New York City, New York, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('uk.virginmoney.com', 'Virgin Money', 'http://uk.virginmoney.com', 'Newcastle upon Tyne, United Kingdom', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.challengerlimited.com', 'Challenger Limited', 'http://www.challengerlimited.com', 'Heliopolis Cairo, Egypt', 'contain bank in page', 'by words', 'Egypt', NULL);
INSERT INTO public.rb VALUES ('ing.com', 'ING Groep N.V.', 'http://ing.com', 'Amsterdam, Netherlands', 'contain bank in page', 'by words', 'Netherlands', NULL);
INSERT INTO public.rb VALUES ('www.popso.it', 'Banca Popolare di Sondrio', 'http://www.popso.it', 'Sondrio, Italy', 'contain bank in page', 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.liberty.co.ke', 'Liberty Life', 'http://www.liberty.co.ke/', 'Liberty House, Nairobi, Kenya', 'contain bank in page', 'by words', 'Kenya', NULL);
INSERT INTO public.rb VALUES ('www.ge.com', 'General Electric Company', 'https://www.ge.com/', 'Boston, Massachusetts, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.sparkasse.at', 'Allgemeine Sparkasse Oberosterreich', 'https://www.sparkasse.at/oberoesterreich/privatkunden', 'Linz, Austria', 'contain bank in page', 'by words', 'Austria', NULL);
INSERT INTO public.rb VALUES ('www.samint.co.za', 'South African Mint', 'http://www.samint.co.za', 'Centurion, Gauteng, South Africa', 'contain bank in page', 'by words', 'South Africa', NULL);
INSERT INTO public.rb VALUES ('www.morganstanley.com', 'Morgan Stanley', 'https://www.morganstanley.com', 'Morgan Stanley BuildingNew York City, New York, U.S.', 'contain bank in page', 'by words', 'Falkland Islands', NULL);
INSERT INTO public.rb VALUES ('ismailindustries.com.pk', 'Ismail Industries Limited', 'http://ismailindustries.com.pk', 'Pakistan', 'contain bank in page', 'by words', 'Pakistan', NULL);
INSERT INTO public.rb VALUES ('www.circuitcity.com', 'Circuit City Corporation', 'http://www.circuitcity.com/', 'Richmond, Virginia, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.bancadicreditosardo.it', 'Banca di Credito Sardo', 'http://www.bancadicreditosardo.it/', 'Cagliari, Sardinia, Italy', 'contain bank in page', 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('pnc.com', 'The PNC Financial Services Group, Inc.', 'http://pnc.com', 'Tower at PNC PlazaPittsburgh, Pennsylvania, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.rohmhaas.com', 'Rohm and Haas Company', 'http://www.rohmhaas.com/', 'Philadelphia, Pennsylvania, USA', 'contain bank in page', NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.postfinance.ch', 'PostFinance', 'https://www.postfinance.ch/', 'Bern, Switzerland', 'contain bank in page', 'by words', 'Switzerland', NULL);
INSERT INTO public.rb VALUES ('www.marstons.co.uk', 'Marston''s plc', 'http://www.marstons.co.uk/', 'Wolverhampton, West Midlands, England', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.bcee.lu', 'Banque et Caisse d''Épargne de l''État', 'http://www.bcee.lu/', 'Luxembourg City, Luxembourg', 'contain bank in page', 'by words', 'Luxembourg', NULL);
INSERT INTO public.rb VALUES ('utpma.com', 'Utah Property Management Associates', 'https://utpma.com/', 'Salt Lake City, Utah, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.nomura.com', 'Nomura Holdings, Inc.', 'http://www.nomura.com', '1-9-1, Nihonbashi, Chuo, Tokyo, Japan', 'contain bank in page', 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.halifax.co.uk', 'Halifax', 'http://www.halifax.co.uk', 'The Halifax Building Halifax, West Yorkshire, UK', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('singpost.com', 'Singapore Post Limited', 'http://singpost.com', 'Geylang, Singapore', 'contain bank in page', 'by words', 'Singapore', NULL);
INSERT INTO public.rb VALUES ('www.bankofbaghdad.com', 'Bank of Baghdad', 'http://www.bankofbaghdad.com', 'Baghdad, Iraq', 'contain bank in page', 'by words', 'Iraq', NULL);
INSERT INTO public.rb VALUES ('www.bbva.com.ar', 'BBVA Argentina', 'https://www.bbva.com.ar', 'Buenos Aires, Argentina', 'contain bank in page', 'by words', 'Argentina', NULL);
INSERT INTO public.rb VALUES ('www.advansgroup.com', 'Advans Banque Congo S.A.', 'http://www.advansgroup.com/', 'Avenue du Bas Congo, N°4, Kinshasa, DRC', 'contain bank in page', 'by words', 'Democratic Republic of the Congo', NULL);
INSERT INTO public.rb VALUES ('www.oakhillcapital.com', 'Oak Hill Capital Management, LLC', 'http://www.oakhillcapital.com', '65 East 55th StreetNew York City, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.lazard.com', 'Lazard Ltd.', 'http://www.lazard.com', 'Hamilton, Bermuda(incorporation)30 Rockefeller PlazaNew York City, New York, United
            States(operational)
        ', 'contain bank in page', 'by words', 'Bermuda', NULL);
INSERT INTO public.rb VALUES ('www.hellerehrman.com', 'Heller Ehrman LLP', 'http://www.hellerehrman.com/', 'San Francisco, California', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.miga.org', 'Multilateral InvestmentGuarantee Agency', 'https://www.miga.org/', '12th floor, 1800 G Street NW, Washington, D.C., U.S.[1]', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.DataStax.com', 'DataStax', 'http://www.DataStax.com', 'Santa Clara, CA, USA, United States', 'contain bank in page', NULL, 'United States', NULL);
INSERT INTO public.rb VALUES ('www.uni.ca', 'Caisse populaire acadienne ltée', 'https://www.uni.ca/en/', 'Caraquet, New Brunswick, Canada', 'contain bank in page', 'by words', 'Canada', NULL);
INSERT INTO public.rb VALUES ('www.mwalimusacco.coop', 'Mwalimu Cooperative Savings & Credit Society Limited', 'http://www.mwalimusacco.coop/', 'Nairobi, Kenya', 'contain bank in page', 'by words', 'Kenya', NULL);
INSERT INTO public.rb VALUES ('www.bkam.ma', 'Bank Al-Maghribبنك المغرب', 'http://www.bkam.ma/', 'Rabat, Morocco', 'contain bank in page', 'by words', 'Morocco', NULL);
INSERT INTO public.rb VALUES ('www.isolaralliance.org', 'International Solar Alliance', 'http://www.isolaralliance.org/', 'Gwal Pahari, Gurugram, Haryana, India', 'contain bank in page', 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('societegenerale.com', 'Société Générale S.A.', 'http://societegenerale.com', '29 Boulevard Haussmann, 9th arrondissement, Paris (registered office) Tours Société Générale,
            Nanterre/La Défense, France (operational headquarters)
        ', 'contain bank in page', 'by words', 'France', NULL);
INSERT INTO public.rb VALUES ('www.pcfinancial.ca', 'President''s Choice Financial', 'http://www.pcfinancial.ca/', 'Toronto, Ontario', 'contain bank in page', 'by words', 'Canada', NULL);
INSERT INTO public.rb VALUES ('www.sunseeker.com', 'Sunseeker International', 'http://www.sunseeker.com', 'Poole, United Kingdom', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.auf.org', 'Agence universitaire de la Francophonie', 'https://www.auf.org', 'Montreal, Quebec, Canada', 'contain bank in page', 'by words', 'Canada', NULL);
INSERT INTO public.rb VALUES ('www.communitywest.com', 'Community West Bancshares', 'http://www.communitywest.com', 'Goleta, California, USA', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.liveoakbank.com', 'Live Oak Bancshares, Inc.', 'http://www.liveoakbank.com/', 'Wilmington, North Carolina', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.lendingclub.com', 'LendingClub Corporation', 'https://www.lendingclub.com/', '595 Market StreetSan Francisco,[1] California, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.bcdc.cd', 'Banque Commerciale du Congo (BCDC)', 'http://www.bcdc.cd/', 'Kinshasa, Democratic Republic of Congo', 'contain bank in page', 'by words', 'Democratic Republic of the Congo', NULL);
INSERT INTO public.rb VALUES ('www.nextierbank.com', 'NexTier', 'https://www.nextierbank.com', 'Butler, Pennsylvania, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.cinda.com.cn', 'China Cinda', 'http://www.cinda.com.cn', 'No. 1 Building, 9 Naoshikou Street, Xicheng District, Beijing, China', NULL, 'by words', 'China', NULL);
INSERT INTO public.rb VALUES ('www.scottishwidows.co.uk', 'Scottish Widows Limited', 'http://www.scottishwidows.co.uk', 'Edinburgh, Scotland, UK', 'contain bank in page', NULL, 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('greeninvestmentgroup.com', 'Green Investment Group', 'http://greeninvestmentgroup.com/', 'Edinburgh, Scotland, UK[1]', 'contain bank in page', 'by words', 'United Kingdom', NULL);
INSERT INTO public.rb VALUES ('www.tdameritrade.com', 'TD Ameritrade Holding Corporation', 'https://www.tdameritrade.com/', 'Omaha, Nebraska, U.S.', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.hl.com', 'Houlihan Lokey, Inc.', 'http://www.hl.com', 'Constellation PlaceLos Angeles, California, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.mediocredito.fvg.it', 'Banca Mediocredito del Friuli Venezia Giulia', 'http://www.mediocredito.fvg.it', '1 via Aquileia, Udine, Italy', 'contain bank in page', 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.caixa-enginyers.com', 'Caja de Ingenieros', 'https://www.caixa-enginyers.com', 'Vía Layetana, 39, 8003 Barcelona, Catalonia, Spain', 'contain bank in page', 'by words', 'Spain', NULL);
INSERT INTO public.rb VALUES ('www.igloocoolers.com', 'Igloo Products Corp.', 'http://www.igloocoolers.com/', 'Katy, Texas Waller County, Texas, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.garantibbva.com.tr', 'Garanti BBVA', 'https://www.garantibbva.com.tr/en', 'Levent, Beşiktaş, Istanbul, Turkey', 'contain bank in page', 'by words', 'Turkey', NULL);
INSERT INTO public.rb VALUES ('www.pasha-holding.az', 'PASHA Holding LLC', 'http://www.pasha-holding.az/', 'Baku, Azerbaijan', 'contain bank in page', 'by words', 'Azerbaijan', NULL);
INSERT INTO public.rb VALUES ('unaitas.com', 'Unaitas Sacco Society Limited', 'https://unaitas.com/', 'Nairobi, Kenya', NULL, 'by words', 'Kenya', NULL);
INSERT INTO public.rb VALUES ('www.bancatransilvania.ro', 'Banca Transilvania S.A.', 'https://www.bancatransilvania.ro/', 'Cluj-Napoca, Romania', 'contain bank in page', 'by words', 'Romania', NULL);
INSERT INTO public.rb VALUES ('www.turnerconstruction.com', 'Turner Construction Company', 'http://www.turnerconstruction.com', '375 Hudson Street, New York City, NY 10014, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.sandleroneill.com', 'Sandler O''Neill + Partners, L.P', 'http://www.sandleroneill.com/index.htm', '1251 Avenue of the Americas, New York, New York, US', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.davivienda.com.sv', 'Banco Davivienda Salvadoreño, S.A.', 'https://www.davivienda.com.sv/', 'San Salvador, El Salvador', 'contain bank in page', 'by words', 'El Salvador', NULL);
INSERT INTO public.rb VALUES ('www.nhqv.com', 'NH Investment and Securities', 'https://www.nhqv.com/', 'Seoul, South Korea', 'contain bank in page', 'by words', 'South Korea', NULL);
INSERT INTO public.rb VALUES ('www.bncr.fi.cr', 'Banco Nacional de Costa Rica', 'http://www.bncr.fi.cr', 'Avenida 3, Calle 4, San José, Costa Rica', 'contain bank in page', 'by words', 'Costa Rica', NULL);
INSERT INTO public.rb VALUES ('www.transunioncibil.com', 'TransUnion CIBIL Limited', 'https://www.transunioncibil.com/', 'One Indiabulls Centre, Tower 2A-2B,19th Floor, Senapati Bapat Marg, Lower Parel, Mumbai,
            Maharashtra, India
        ', NULL, 'by words', 'India', NULL);
INSERT INTO public.rb VALUES ('www.nbkr.kg', 'National Bank of the Kyrgyz Republic Национальный банк Кыргызской Республики  (Russian)
        ', 'http://www.nbkr.kg/index.jsp?lang=ENG', '168 Chuy Avenue, Bishkek, 720001, Kyrgyz Republic', 'contain bank in page', 'by words', 'Kyrgyzstan', NULL);
INSERT INTO public.rb VALUES ('us.hsbc.com', 'Marine Midland Bank, N.A. (1980–1999)Marine Midland Banks Inc (1929–1995)HSBC Americas (1995–1999)', 'http://us.hsbc.com', 'Buffalo, NY, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.snb.ch', 'Swiss National Bank(in German) Schweizerische Nationalbank(in French)
        ', 'http://www.snb.ch/', 'Bern and Zurich', 'contain bank in page', 'by words', 'Switzerland', NULL);
INSERT INTO public.rb VALUES ('www.fondazionemontedipietadivicenza.it', 'Fondazione Monte di Pietà di Vicenza', 'http://www.fondazionemontedipietadivicenza.it', 'Palazzo del Monte di Pietà, Vicenza, Italy', 'contain bank in page', 'by words', 'Italy', NULL);
INSERT INTO public.rb VALUES ('www.nbad.com', 'National Bank of Abu Dhabiبنك أبوظبي الوطني', 'http://www.nbad.com/', '1 NBAD Tower, Abu Dhabi, United Arab Emirates', 'contain bank in page', 'by words', 'United Arab Emirates', NULL);
INSERT INTO public.rb VALUES ('www.tokuyama.co.jp', 'Tokuyama Corporation', 'http://www.tokuyama.co.jp/eng/', 'Kasumigaseki Common Gate West Tower, 2-1, Kasumigaseki 3-chome, Chiyoda-ku, Tokyo 100-8983,
            Japan
        ', 'contain bank in page', 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.bsnb.com', 'Ballston Spa National Bank', 'https://www.bsnb.com', '990 State Route 67, Ballston Spa, New York, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.bankofbeijing.com.cn', 'Bank of Beijing', 'http://www.bankofbeijing.com.cn', 'Beijing, China', 'contain bank in page', 'by words', 'China', NULL);
INSERT INTO public.rb VALUES ('www.moreover.com', 'Moreover Technologies', 'http://www.moreover.com/', '1902 Campus Commons Dr, Suite 400, Reston, Virginia, 20191-1563, United States', 'contain bank in page', 'by words', 'United States', NULL);
INSERT INTO public.rb VALUES ('www.kktcmerkezbankasi.org', 'Central Bank of the Turkish Republic of Northern CyprusKuzey Kıbrıs Türk Cumhuriyeti Merkez Bankası (in
            Turkish)
        ', 'http://www.kktcmerkezbankasi.org/', 'North Nicosia, Northern Cyprus', 'contain bank in page', 'by words', 'Cyprus', NULL);
INSERT INTO public.rb VALUES ('www.condor.com', 'Condor Flugdienst GmbH', 'http://www.condor.com/eu/index.jsp', 'Frankfurt, Germany', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.bcc.cd', 'Central Bank of the CongoBanque Centrale du Congo', 'http://www.bcc.cd', 'Kinshasa, Democratic Republic of the Congo', 'contain bank in page', 'by words', 'Democratic Republic of the Congo', NULL);
INSERT INTO public.rb VALUES ('www.lufthansacityline.com', 'Lufthansa CityLine', 'http://www.lufthansacityline.com/', 'Munich Airport, Germany[1]', 'contain bank in page', 'by words', 'Germany', NULL);
INSERT INTO public.rb VALUES ('www.capitecbank.co.za', 'Capitec Bank', 'http://www.capitecbank.co.za', '1 Quantum Street, Techno Park, Stellenbosch, Western Cape, South Africa', 'contain bank in page', 'by words', 'South Africa', NULL);
INSERT INTO public.rb VALUES ('www.thanachartbank.co.th', 'Thanachart Bank', 'http://www.thanachartbank.co.th/', 'Pathum Wan, Bangkok[1], Thailand', 'contain bank in page', 'by words', 'Thailand', NULL);
INSERT INTO public.rb VALUES ('www.citibank.com.my', 'Citibank Berhad', 'https://www.citibank.com.my/index.htm', 'Past – Medan PasarKuala Lumpur,[6] Current - Menara Citibank, Jalan Ampang, Kuala Lumpur[5][7]
        ', 'contain bank in page', 'by words', 'Malaysia', NULL);
INSERT INTO public.rb VALUES ('www.tr.mufg.jp', 'Mitsubishi UFJ Trust and Banking Corporation三菱UFJ信託銀行株式会社', 'http://www.tr.mufg.jp/english', 'Tokyo, Japan', 'contain bank in page', 'by words', 'Japan', NULL);
INSERT INTO public.rb VALUES ('www.suntrustng.com', 'SunTrust Bank Nigeria Limited', 'https://www.suntrustng.com/', '1 Oladele Olashore Street, Off Sanusi Fafunwa Street, Victoria Island, Lagos, Lagos State,
            Nigeria
        ', 'contain bank in page', 'by words', 'Nigeria', NULL);


--
-- Data for Name: requests; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: banks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.banks_id_seq', 3362, true);


--
-- Name: countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.countries_id_seq', 1, false);


--
-- Name: rates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rates_id_seq', 1280, true);


--
-- Name: banks banks_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banks
    ADD CONSTRAINT banks_pk PRIMARY KEY (id);


--
-- Name: countries countries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);


--
-- Name: rates rates_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rates
    ADD CONSTRAINT rates_pk PRIMARY KEY (id);


--
-- Name: countries_iso_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX countries_iso_uindex ON public.countries USING btree (iso);


--
-- Name: countries_name_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX countries_name_uindex ON public.countries USING btree (name);


--
-- Name: banks banks_countries_iso_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banks
    ADD CONSTRAINT banks_countries_iso_fk FOREIGN KEY (country_code) REFERENCES public.countries(iso);


--
-- Name: banks banks_countries_name_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banks
    ADD CONSTRAINT banks_countries_name_fk FOREIGN KEY (country_name) REFERENCES public.countries(name);


--
-- Name: rates rates_banks_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rates
    ADD CONSTRAINT rates_banks_id_fk FOREIGN KEY (bank_id) REFERENCES public.banks(id);


--
-- PostgreSQL database dump complete
--

