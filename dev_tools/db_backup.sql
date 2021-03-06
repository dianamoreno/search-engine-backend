PGDMP                           z            search_engine    13.3    13.3 ?    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    72716    search_engine    DATABASE     i   CREATE DATABASE search_engine WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE search_engine;
                postgres    false            ?            1259    72760    admin_permissions    TABLE     J  CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    action character varying(255),
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 %   DROP TABLE public.admin_permissions;
       public         heap    postgres    false            ?            1259    72758    admin_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.admin_permissions_id_seq;
       public          postgres    false    209            ?           0    0    admin_permissions_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;
          public          postgres    false    208            ?            1259    72872    admin_permissions_role_links    TABLE     e   CREATE TABLE public.admin_permissions_role_links (
    permission_id integer,
    role_id integer
);
 0   DROP TABLE public.admin_permissions_role_links;
       public         heap    postgres    false            ?            1259    72786    admin_roles    TABLE     ;  CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.admin_roles;
       public         heap    postgres    false            ?            1259    72784    admin_roles_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_roles_id_seq;
       public          postgres    false    213            ?           0    0    admin_roles_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;
          public          postgres    false    212            ?            1259    72773    admin_users    TABLE     B  CREATE TABLE public.admin_users (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.admin_users;
       public         heap    postgres    false            ?            1259    72771    admin_users_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_users_id_seq;
       public          postgres    false    211            ?           0    0    admin_users_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;
          public          postgres    false    210            ?            1259    72877    admin_users_roles_links    TABLE     Z   CREATE TABLE public.admin_users_roles_links (
    user_id integer,
    role_id integer
);
 +   DROP TABLE public.admin_users_roles_links;
       public         heap    postgres    false            ?            1259    72812    files    TABLE     {  CREATE TABLE public.files (
    id integer NOT NULL,
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.files;
       public         heap    postgres    false            ?            1259    72810    files_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.files_id_seq;
       public          postgres    false    217            ?           0    0    files_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;
          public          postgres    false    216            ?            1259    72882    files_related_morphs    TABLE     ?   CREATE TABLE public.files_related_morphs (
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" integer
);
 (   DROP TABLE public.files_related_morphs;
       public         heap    postgres    false            ?            1259    72861    i18n_locale    TABLE       CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.i18n_locale;
       public         heap    postgres    false            ?            1259    72859    i18n_locale_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.i18n_locale_id_seq;
       public          postgres    false    225            ?           0    0    i18n_locale_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;
          public          postgres    false    224            ?            1259    73064    posts    TABLE     ?  CREATE TABLE public.posts (
    id integer NOT NULL,
    title character varying(255),
    description text,
    short_description character varying(255),
    created_date timestamp(6) without time zone,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.posts;
       public         heap    postgres    false            ?            1259    73062    posts_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.posts_id_seq;
       public          postgres    false    232            ?           0    0    posts_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;
          public          postgres    false    231            ?            1259    72799    strapi_api_tokens    TABLE     h  CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 %   DROP TABLE public.strapi_api_tokens;
       public         heap    postgres    false            ?            1259    72797    strapi_api_tokens_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_api_tokens_id_seq;
       public          postgres    false    215            ?           0    0    strapi_api_tokens_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;
          public          postgres    false    214            ?            1259    72738    strapi_core_store_settings    TABLE     ?   CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);
 .   DROP TABLE public.strapi_core_store_settings;
       public         heap    postgres    false            ?            1259    72736 !   strapi_core_store_settings_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.strapi_core_store_settings_id_seq;
       public          postgres    false    205            ?           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;
          public          postgres    false    204            ?            1259    72727    strapi_database_schema    TABLE     ?   CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);
 *   DROP TABLE public.strapi_database_schema;
       public         heap    postgres    false            ?            1259    72725    strapi_database_schema_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_database_schema_id_seq;
       public          postgres    false    203            ?           0    0    strapi_database_schema_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;
          public          postgres    false    202            ?            1259    72719    strapi_migrations    TABLE     ?   CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);
 %   DROP TABLE public.strapi_migrations;
       public         heap    postgres    false            ?            1259    72717    strapi_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_migrations_id_seq;
       public          postgres    false    201            ?           0    0    strapi_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;
          public          postgres    false    200            ?            1259    72749    strapi_webhooks    TABLE     ?   CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);
 #   DROP TABLE public.strapi_webhooks;
       public         heap    postgres    false            ?            1259    72747    strapi_webhooks_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_webhooks_id_seq;
       public          postgres    false    207            ?           0    0    strapi_webhooks_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;
          public          postgres    false    206            ?            1259    72825    up_permissions    TABLE     ?   CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 "   DROP TABLE public.up_permissions;
       public         heap    postgres    false            ?            1259    72823    up_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.up_permissions_id_seq;
       public          postgres    false    219            ?           0    0    up_permissions_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;
          public          postgres    false    218            ?            1259    72889    up_permissions_role_links    TABLE     b   CREATE TABLE public.up_permissions_role_links (
    permission_id integer,
    role_id integer
);
 -   DROP TABLE public.up_permissions_role_links;
       public         heap    postgres    false            ?            1259    72835    up_roles    TABLE     8  CREATE TABLE public.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.up_roles;
       public         heap    postgres    false            ?            1259    72833    up_roles_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_roles_id_seq;
       public          postgres    false    221            ?           0    0    up_roles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;
          public          postgres    false    220            ?            1259    72848    up_users    TABLE     ?  CREATE TABLE public.up_users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.up_users;
       public         heap    postgres    false            ?            1259    72846    up_users_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_users_id_seq;
       public          postgres    false    223            ?           0    0    up_users_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;
          public          postgres    false    222            ?            1259    72894    up_users_role_links    TABLE     V   CREATE TABLE public.up_users_role_links (
    user_id integer,
    role_id integer
);
 '   DROP TABLE public.up_users_role_links;
       public         heap    postgres    false            ?           2604    72763    admin_permissions id    DEFAULT     |   ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);
 C   ALTER TABLE public.admin_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            ?           2604    72789    admin_roles id    DEFAULT     p   ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);
 =   ALTER TABLE public.admin_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            ?           2604    72776    admin_users id    DEFAULT     p   ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);
 =   ALTER TABLE public.admin_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            ?           2604    72815    files id    DEFAULT     d   ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);
 7   ALTER TABLE public.files ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            ?           2604    72864    i18n_locale id    DEFAULT     p   ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);
 =   ALTER TABLE public.i18n_locale ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            ?           2604    73067    posts id    DEFAULT     d   ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);
 7   ALTER TABLE public.posts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231    232            ?           2604    72802    strapi_api_tokens id    DEFAULT     |   ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);
 C   ALTER TABLE public.strapi_api_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            ?           2604    72741    strapi_core_store_settings id    DEFAULT     ?   ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);
 L   ALTER TABLE public.strapi_core_store_settings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            ?           2604    72730    strapi_database_schema id    DEFAULT     ?   ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);
 H   ALTER TABLE public.strapi_database_schema ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            ?           2604    72722    strapi_migrations id    DEFAULT     |   ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);
 C   ALTER TABLE public.strapi_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201            ?           2604    72752    strapi_webhooks id    DEFAULT     x   ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);
 A   ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            ?           2604    72828    up_permissions id    DEFAULT     v   ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);
 @   ALTER TABLE public.up_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            ?           2604    72838    up_roles id    DEFAULT     j   ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);
 :   ALTER TABLE public.up_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            ?           2604    72851    up_users id    DEFAULT     j   ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);
 :   ALTER TABLE public.up_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            ?          0    72760    admin_permissions 
   TABLE DATA           ?   COPY public.admin_permissions (id, action, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    209   ??       ?          0    72872    admin_permissions_role_links 
   TABLE DATA           N   COPY public.admin_permissions_role_links (permission_id, role_id) FROM stdin;
    public          postgres    false    226   ??       ?          0    72786    admin_roles 
   TABLE DATA           x   COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    213   ??       ?          0    72773    admin_users 
   TABLE DATA           ?   COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    211   v?       ?          0    72877    admin_users_roles_links 
   TABLE DATA           C   COPY public.admin_users_roles_links (user_id, role_id) FROM stdin;
    public          postgres    false    227   ?       ?          0    72812    files 
   TABLE DATA           ?   COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    217   9?       ?          0    72882    files_related_morphs 
   TABLE DATA           a   COPY public.files_related_morphs (file_id, related_id, related_type, field, "order") FROM stdin;
    public          postgres    false    228   "?       ?          0    72861    i18n_locale 
   TABLE DATA           k   COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    225   q?       ?          0    73064    posts 
   TABLE DATA           ?   COPY public.posts (id, title, description, short_description, created_date, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    232   ??       ?          0    72799    strapi_api_tokens 
   TABLE DATA           ?   COPY public.strapi_api_tokens (id, name, description, type, access_key, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    215   ??       |          0    72738    strapi_core_store_settings 
   TABLE DATA           \   COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
    public          postgres    false    205   Q?       z          0    72727    strapi_database_schema 
   TABLE DATA           J   COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
    public          postgres    false    203   ?      x          0    72719    strapi_migrations 
   TABLE DATA           =   COPY public.strapi_migrations (id, name, "time") FROM stdin;
    public          postgres    false    201         ~          0    72749    strapi_webhooks 
   TABLE DATA           R   COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
    public          postgres    false    207   (      ?          0    72825    up_permissions 
   TABLE DATA           j   COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    219   E      ?          0    72889    up_permissions_role_links 
   TABLE DATA           K   COPY public.up_permissions_role_links (permission_id, role_id) FROM stdin;
    public          postgres    false    229         ?          0    72835    up_roles 
   TABLE DATA           u   COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    221   S      ?          0    72848    up_users 
   TABLE DATA           ?   COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    223   ?      ?          0    72894    up_users_role_links 
   TABLE DATA           ?   COPY public.up_users_role_links (user_id, role_id) FROM stdin;
    public          postgres    false    230         ?           0    0    admin_permissions_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.admin_permissions_id_seq', 83, true);
          public          postgres    false    208            ?           0    0    admin_roles_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);
          public          postgres    false    212            ?           0    0    admin_users_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);
          public          postgres    false    210            ?           0    0    files_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.files_id_seq', 6, true);
          public          postgres    false    216            ?           0    0    i18n_locale_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);
          public          postgres    false    224            ?           0    0    posts_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.posts_id_seq', 6, true);
          public          postgres    false    231            ?           0    0    strapi_api_tokens_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, true);
          public          postgres    false    214            ?           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 18, true);
          public          postgres    false    204            ?           0    0    strapi_database_schema_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 6, true);
          public          postgres    false    202            ?           0    0    strapi_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);
          public          postgres    false    200            ?           0    0    strapi_webhooks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);
          public          postgres    false    206            ?           0    0    up_permissions_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.up_permissions_id_seq', 16, true);
          public          postgres    false    218            ?           0    0    up_roles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);
          public          postgres    false    220            ?           0    0    up_users_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);
          public          postgres    false    222            ?           2606    72768 (   admin_permissions admin_permissions_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_pkey;
       public            postgres    false    209            ?           2606    72794    admin_roles admin_roles_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_pkey;
       public            postgres    false    213            ?           2606    72781    admin_users admin_users_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_pkey;
       public            postgres    false    211            ?           2606    72820    files files_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.files DROP CONSTRAINT files_pkey;
       public            postgres    false    217            ?           2606    72869    i18n_locale i18n_locale_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_pkey;
       public            postgres    false    225            ?           2606    73072    posts posts_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_pkey;
       public            postgres    false    232            ?           2606    72807 (   strapi_api_tokens strapi_api_tokens_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_pkey;
       public            postgres    false    215            ?           2606    72746 :   strapi_core_store_settings strapi_core_store_settings_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.strapi_core_store_settings DROP CONSTRAINT strapi_core_store_settings_pkey;
       public            postgres    false    205            ?           2606    72735 2   strapi_database_schema strapi_database_schema_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_database_schema DROP CONSTRAINT strapi_database_schema_pkey;
       public            postgres    false    203            ?           2606    72724 (   strapi_migrations strapi_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_migrations DROP CONSTRAINT strapi_migrations_pkey;
       public            postgres    false    201            ?           2606    72757 $   strapi_webhooks strapi_webhooks_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_webhooks DROP CONSTRAINT strapi_webhooks_pkey;
       public            postgres    false    207            ?           2606    72830 "   up_permissions up_permissions_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_pkey;
       public            postgres    false    219            ?           2606    72843    up_roles up_roles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_pkey;
       public            postgres    false    221            ?           2606    72856    up_users up_users_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_pkey;
       public            postgres    false    223            ?           1259    72769 "   admin_permissions_created_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);
 6   DROP INDEX public.admin_permissions_created_by_id_fk;
       public            postgres    false    209            ?           1259    72875    admin_permissions_role_links_fk    INDEX     q   CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);
 3   DROP INDEX public.admin_permissions_role_links_fk;
       public            postgres    false    226            ?           1259    72876 #   admin_permissions_role_links_inv_fk    INDEX     o   CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);
 7   DROP INDEX public.admin_permissions_role_links_inv_fk;
       public            postgres    false    226            ?           1259    72770 "   admin_permissions_updated_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);
 6   DROP INDEX public.admin_permissions_updated_by_id_fk;
       public            postgres    false    209            ?           1259    72795    admin_roles_created_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);
 0   DROP INDEX public.admin_roles_created_by_id_fk;
       public            postgres    false    213            ?           1259    72796    admin_roles_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);
 0   DROP INDEX public.admin_roles_updated_by_id_fk;
       public            postgres    false    213            ?           1259    72782    admin_users_created_by_id_fk    INDEX     ]   CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);
 0   DROP INDEX public.admin_users_created_by_id_fk;
       public            postgres    false    211            ?           1259    72880    admin_users_roles_links_fk    INDEX     a   CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);
 .   DROP INDEX public.admin_users_roles_links_fk;
       public            postgres    false    227            ?           1259    72881    admin_users_roles_links_inv_fk    INDEX     e   CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);
 2   DROP INDEX public.admin_users_roles_links_inv_fk;
       public            postgres    false    227            ?           1259    72783    admin_users_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);
 0   DROP INDEX public.admin_users_updated_by_id_fk;
       public            postgres    false    211            ?           1259    72821    files_created_by_id_fk    INDEX     Q   CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);
 *   DROP INDEX public.files_created_by_id_fk;
       public            postgres    false    217            ?           1259    72888    files_related_morphs_fk    INDEX     [   CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);
 +   DROP INDEX public.files_related_morphs_fk;
       public            postgres    false    228            ?           1259    72822    files_updated_by_id_fk    INDEX     Q   CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);
 *   DROP INDEX public.files_updated_by_id_fk;
       public            postgres    false    217            ?           1259    72870    i18n_locale_created_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);
 0   DROP INDEX public.i18n_locale_created_by_id_fk;
       public            postgres    false    225            ?           1259    72871    i18n_locale_updated_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);
 0   DROP INDEX public.i18n_locale_updated_by_id_fk;
       public            postgres    false    225            ?           1259    73073    posts_created_by_id_fk    INDEX     Q   CREATE INDEX posts_created_by_id_fk ON public.posts USING btree (created_by_id);
 *   DROP INDEX public.posts_created_by_id_fk;
       public            postgres    false    232            ?           1259    73074    posts_updated_by_id_fk    INDEX     Q   CREATE INDEX posts_updated_by_id_fk ON public.posts USING btree (updated_by_id);
 *   DROP INDEX public.posts_updated_by_id_fk;
       public            postgres    false    232            ?           1259    72808 "   strapi_api_tokens_created_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);
 6   DROP INDEX public.strapi_api_tokens_created_by_id_fk;
       public            postgres    false    215            ?           1259    72809 "   strapi_api_tokens_updated_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);
 6   DROP INDEX public.strapi_api_tokens_updated_by_id_fk;
       public            postgres    false    215            ?           1259    72831    up_permissions_created_by_id_fk    INDEX     c   CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);
 3   DROP INDEX public.up_permissions_created_by_id_fk;
       public            postgres    false    219            ?           1259    72892    up_permissions_role_links_fk    INDEX     k   CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);
 0   DROP INDEX public.up_permissions_role_links_fk;
       public            postgres    false    229            ?           1259    72893     up_permissions_role_links_inv_fk    INDEX     i   CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);
 4   DROP INDEX public.up_permissions_role_links_inv_fk;
       public            postgres    false    229            ?           1259    72832    up_permissions_updated_by_id_fk    INDEX     c   CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);
 3   DROP INDEX public.up_permissions_updated_by_id_fk;
       public            postgres    false    219            ?           1259    72844    up_roles_created_by_id_fk    INDEX     W   CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);
 -   DROP INDEX public.up_roles_created_by_id_fk;
       public            postgres    false    221            ?           1259    72845    up_roles_updated_by_id_fk    INDEX     W   CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);
 -   DROP INDEX public.up_roles_updated_by_id_fk;
       public            postgres    false    221            ?           1259    72857    up_users_created_by_id_fk    INDEX     W   CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);
 -   DROP INDEX public.up_users_created_by_id_fk;
       public            postgres    false    223            ?           1259    72897    up_users_role_links_fk    INDEX     Y   CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);
 *   DROP INDEX public.up_users_role_links_fk;
       public            postgres    false    230            ?           1259    72898    up_users_role_links_inv_fk    INDEX     ]   CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);
 .   DROP INDEX public.up_users_role_links_inv_fk;
       public            postgres    false    230            ?           1259    72858    up_users_updated_by_id_fk    INDEX     W   CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);
 -   DROP INDEX public.up_users_updated_by_id_fk;
       public            postgres    false    223            ?           2606    72899 4   admin_permissions admin_permissions_created_by_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_created_by_id_fk;
       public          postgres    false    211    2989    209            ?           2606    72989 <   admin_permissions_role_links admin_permissions_role_links_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_fk;
       public          postgres    false    226    209    2985            ?           2606    72994 @   admin_permissions_role_links admin_permissions_role_links_inv_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_inv_fk;
       public          postgres    false    226    2993    213            ?           2606    72904 4   admin_permissions admin_permissions_updated_by_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_updated_by_id_fk;
       public          postgres    false    211    209    2989            ?           2606    72919 (   admin_roles admin_roles_created_by_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_created_by_id_fk;
       public          postgres    false    2989    211    213            ?           2606    72924 (   admin_roles admin_roles_updated_by_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_updated_by_id_fk;
       public          postgres    false    211    213    2989            ?           2606    72909 (   admin_users admin_users_created_by_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_created_by_id_fk;
       public          postgres    false    2989    211    211            ?           2606    72999 2   admin_users_roles_links admin_users_roles_links_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_fk;
       public          postgres    false    2989    227    211            ?           2606    73004 6   admin_users_roles_links admin_users_roles_links_inv_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_inv_fk;
       public          postgres    false    227    213    2993            ?           2606    72914 (   admin_users admin_users_updated_by_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_updated_by_id_fk;
       public          postgres    false    211    2989    211            ?           2606    72939    files files_created_by_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_created_by_id_fk;
       public          postgres    false    211    2989    217            ?           2606    73009 ,   files_related_morphs files_related_morphs_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_fk;
       public          postgres    false    228    3001    217            ?           2606    72944    files files_updated_by_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_updated_by_id_fk;
       public          postgres    false    211    2989    217            ?           2606    72979 (   i18n_locale i18n_locale_created_by_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_created_by_id_fk;
       public          postgres    false    211    225    2989            ?           2606    72984 (   i18n_locale i18n_locale_updated_by_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_updated_by_id_fk;
       public          postgres    false    211    2989    225            ?           2606    73075    posts posts_created_by_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_created_by_id_fk;
       public          postgres    false    2989    211    232            ?           2606    73080    posts posts_updated_by_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_updated_by_id_fk;
       public          postgres    false    2989    211    232            ?           2606    72929 4   strapi_api_tokens strapi_api_tokens_created_by_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_created_by_id_fk;
       public          postgres    false    215    211    2989            ?           2606    72934 4   strapi_api_tokens strapi_api_tokens_updated_by_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_updated_by_id_fk;
       public          postgres    false    2989    211    215            ?           2606    72949 .   up_permissions up_permissions_created_by_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_created_by_id_fk;
       public          postgres    false    219    211    2989            ?           2606    73014 6   up_permissions_role_links up_permissions_role_links_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_fk;
       public          postgres    false    229    219    3005            ?           2606    73019 :   up_permissions_role_links up_permissions_role_links_inv_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_inv_fk;
       public          postgres    false    3009    229    221            ?           2606    72954 .   up_permissions up_permissions_updated_by_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_updated_by_id_fk;
       public          postgres    false    211    219    2989            ?           2606    72959 "   up_roles up_roles_created_by_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_created_by_id_fk;
       public          postgres    false    221    2989    211            ?           2606    72964 "   up_roles up_roles_updated_by_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_updated_by_id_fk;
       public          postgres    false    211    221    2989            ?           2606    72969 "   up_users up_users_created_by_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_created_by_id_fk;
       public          postgres    false    223    211    2989            ?           2606    73024 *   up_users_role_links up_users_role_links_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_fk;
       public          postgres    false    230    223    3013            ?           2606    73029 .   up_users_role_links up_users_role_links_inv_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_inv_fk;
       public          postgres    false    3009    230    221            ?           2606    72974 "   up_users up_users_updated_by_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_updated_by_id_fk;
       public          postgres    false    223    2989    211            ?   ?  x??Y?n?8}v?"??J?x?>??Cߚ?P,6,K?$'??K?}?X??n8??9????d?.?z?\5y????(?^???????????%i?&?$?)??	? n~???9'-?A?C?2䣞ag
???`?v?<;?Χ?3??l???? ????7m??U??????ڍ.?rc????e???Q?Qj2J~??3?=???????$?U?f?wJ xϞ&?v
	R??j?Q7c?)??Y????H?惻?A?C??~SC?6?]?,~-V?.?e~?}i?????_?K?)??~????*u??lyk??~????k?X??g?o??H??z?sOu?Z???m?????Azȼ??'??Rw.?y?S??}? ع??](u?.?g` ?N??U?\?h|??-ƀ?m???J?]?,߾ŝ? UWm]??5??(
?NY^Q?tmc?cͺxo???*P?ء??U\????rz??5???ơA?2?6?=?+0?`?;??V䁘?????L?_??=4?a&1&?#??=4??Z2&?'?zȦ̲??gq?p1?ݐ5<	??;zq?n?ډ?i????ŝ??B?C?x??G??`R????lq'??
??p]?Bl????q?????R)J
e? Ą#W?v?1????*:?%q??(?A?Hw???dQ??J??Z??d?%?M??8I?7?;?C?R??f?*j??X?
?2H?0x[???T?e
?"?;?,H??
B????ݎ!Y?_\7E?֣I????w?i?y??cQ?3"@?L?b&?+?'?-?h??$???^?v??d"??ӳ?y?eNs?;Z~A??C??????X\crP?V?^??D??4({%X?gU??o??<gvʉ2h?ҷK????\???}???????????"\U???⎓?r?\? ?̳?SV??*	?Zܱ??UtU4ڭ?Z??K???P???H?[?? 1?dL??O?\?QNoM??&???h?y?cl?TI?ʜ???ĝ*bw?m??jx?A???N?*tYv?z????m?J=????????????3p?W??y?[???cXq??f9??s]D?qbշK???<??qbQ???????W?.
x?wK>?????sBQ?-x??m??D䉈???r????}">?>=,*@܅/+oɺO?Iw?]?Co????p?? ???E??v???/????Y?D?Sw1 ??e:?? ??@?k?p??%?*?*????O???SS?=?www?7?J      ?   ?   x?л??0?X,枸?ԋ???8??`_??$O??O>W?9yNޓ}?}??C?*???F=?=?"?"? ?"? ?H"?$?H"?$?H??"?(??"?(??"?h??&?h??&??1?1?i??>r?xi?s?s??<?????????/d      ?   ?   x?u??n?0@g???,sD?2t??5??\?%b?ϮԿ???ڨB??{?;??{\??y?[WH???J6T???,`??"@n?;9?1?<Õ)Dϙ?`?MT???uUk@=4?ТB???[:eS?c????<e?+vu?????ݿ`??D|???@?/O??t??S???xm??s?2|?oˮ?c?2=2?3s???h??
Kj???џ ??j:??i????,??K~%      ?   ?   x?3?t?L?K???/J??????L??r?|3????????\N?DC?_?$c?????p??*?,??H?H???(3?lww_???@Gs??????`??@T????tu???M?LM?L,Lp??5s??qqq ?#.]      ?      x?3?4?????? ]      ?   ?  x??X[O?0}???I?????h{ۄ&?'$?iK???]?????_2?e4?8??n??w??`?&Y?N?^^?z1S??Q?O?Rގ??i?B^?s?P
)??c}?J~?UU???????0?v~??|??????rZ5??_???Frk??mZ??{?*#????j>???8cRN??('?A_=N?
?V????`??h???̧y???Q
4???j????B?c??ē=?.??ć???t??6?	(??Zr??!Ͱ?p1^N?Z?^??e?	???u????) $-6ME?MH??S?I?R?M???%/???ܽO?f?*?J?L?%L??l?9?a?Pr}#?蹞}nʙ?o??B??|??~?Y????焕9??9??a????ո???ׇ??[?!Q?CI@??jő!??5?1?C?b?	?ѡ8?(?x??پ???t_g? mtƗ?e?b?S?e?9n????]??$W?`?Dy&,?????nФε`?A????????lN ?n????p=^}??1??C?:????/?????/?<?-???L?????r?R?Ѯ?p2???	ZS΅s?>n?\W?۴\L????Ha??*?٧ߴ9jBI?ڸ-XI??S?
|?0??}Cgo?;???-
hm?ÍC8#????!?n?vA?ZD?؆pf???LC?b;?!B?d???tON"my???T??<?F6?VUh??Ɵz??m#??Z^7?E??b?ND&??N?^g?"\p<6?????(??=a?2?ٺ?n1?Oq?I?2???V???A?:???W????	Q???A@?W??-
;?~??t?m??v?"h???2Ǟ???j9???|?U?|????????j?u+?xa?T???l?K1?Lc4?a??K^?;w?ǆt?~i,?????փ1?f?<?E	??z?Ƿ?G??<???!??ى??vi5_???w???? ?P??      ?   ?   x?3?4?L,ȴ?*?/.???%???\F?F???9?qI?p???2?4?%e?i?K*F??? ٞ2?      ?   <   x?3?t?K??,?P?H???L??4202?50?54P02?26?21?34??)?D\1z\\\ ??/      ?      x??Z???6??=y
????)?J?|ۿ??;?ؾ????f@$$!CZ?Y???p??>?}??$??H?9?ڪĦI l4N?>?????T?ׅz???zk6????wmPs?s?M??[5??|?R?V??koL?t8??k??????lB?/?r?1??M՘?JW?ze??*U??2:?c?	W?d???VT????J?z?\?[??????쑺?y?6????J׵????&???????h?G??v?7Fb?n?K?7(???V%?o????Ui\=:O?]?X-?+?A?????d7t2?????9TV???????&?e%?
???}?k?????m?????cP?d?uUx"???|Y???|?M??j????y????٘?VF?h???[???!`?&????????x????ͷC?й?'}g?7?u??V}ֵ??S??8??S??p??[???ja??{,F(?x8?fE??l?^?J?6dؼ??7~?????0??_????_?wv?U?k???B[?%????7A?X?f? ? ????g?t?#f?[U????A??????C?????C???~ɩ???$ë?G??lv2??L'j6{2?࿽{??ON??????????zv??????h???????ԛP????
?X??t^??8??!?????h???hf7A?w?^e[?qF???,??x?Ix???.?????i?RW[?JP[??k?6?!?[J? 4cs?????d?3?׹n?*?|??_?ۢ??S????1??k??a???1Rw?I??M??uC&Ln0??Mō???}?%v]l? ??Lǳ?P??hB?V????#?? 9?O?fe???8??
L?
g?????????gP/?0q$???4?????????-?'?l??'?5????`??2??F?"RAm?6n]?@?yS?AX?????????d?w??Y ?&??? ???̕?????3Y?|ʷ?#w???J???Q?if?!??4#?@NҁǩL?/'??i?-ޙRZi??qu??⍹ɀ,???????~???\o#S?6zLskK??	???δM???f?T?`P?b??o?a??69???[?ȍ-r????FP??[I?I???
]?;O??????JϹ$.?0j???w#?X?b??ͼ????	??4?r?5??<ޝ?Wd$?Cn??uV?͑????????ν???C? 1q???F?릣!??+??^?vK?c???!	'??-????#sz?l???S?X?N:????????F?V???$??HԳ????'?g??}bO?'??Ϗ??v?????Bnja?;??:k???h ????gL7??w?? ??*ҁo????)
??[?C?:??. 3\ݙ:^g?"Y׼p!??u??v??¹4r??????Z&!??f9???2?pp?4)l,(??????}?ذ
??yO??"8H%I?R??N4̴E?E?F?L??C??y????!0??w????%S+?X`?j#????J?????S???d????b|??d????^?ZX?R-??B??M?c[l0fb?f?\??jy^?I?n?GSFcam??????+?X?}sw}????؍`l?\??????M?<?7??F͚ dv^7???'?hG!8?(?????s$??^r???z:?\À?_1/??????JYj ??Rb?ϭH???$r9w???۽?l!˼????=T,?k?? ?*Iя5??!?d*c?iY?n?nw΁?ՀA t?}???^]]?W/4&o;?e???iY?f?n?|K??X??}?Av?A;9???????????f$W???9ཋj?
N??Z?{m?*?#SmX.d?N?????p??R"?"?f???YS??&:xz}J? ???'խC???C`a???7Y??9???pP????!4???8?]?(?{??L?X? ?e?L?_ ????-K??\???I???sa5?i$1???):?(?S1[?!????uF?T??v)???w
??`$G״?7k?????TL??????fP?_?A?=?Ֆi?^????A7V?6?.?{'?E?????????Kݧj???'g?????@????]~??TR??ѫ??:?oQq?M???7??X?i<Տs?R?Ǜ???+?????#??B?????F?H*?^?K̥!??ҽ???Ij?Hi[??>5?ZCa??0VlxW????U??(?ը-?jWw?~???/???N/N		ПE?Q̢@k?7?B??
??_`?????c?rk????-=aE?	????4??(_????z?5?1!s6????H^?.o?5WX??C????t%L?͵-?^??|Y ?H%??Os???1t	?0?mA=?ZG????.J?7???e8'??+6??@.}:Lۖ*~??K??%??t?L???Z'N?g?@;?.?W??C???@G??[?SLJi3B?A%??z????,?^i?c?K??r?8?tp8AU?6-?d?F;ŵ?p?'M???T?JH-?,???M,?V??@䫊?\fz???z?k6?Lb!?'????[6YǠ???C??c?-*^]SRK?؉]i?}??L=G}d?????~???
?"??EI?vOD?5?\ ?ض!??:?ݚ?&N?A ????V????????b???ȶ??*?|:???Y?e???Ow)$?;???k?IR?o??o???-?uB???)?s?!?\?
b??ag"?T?G??CsK9??ҡ?_Ŕ????	?Y]B??{??jI?o\?>??x+????ϖ???$?T? d?H!??0O~r?&?ݻt4???6?t???,??Ik?1܎?@<????????K-]*#??D?l??Y~z??zv???l|z}?0??f??ɟ?/?%?ώ????0?)??5?\???L?_??@???y??b???????26????????$A???S??@LE??joQ????oC???o?K
#1I?;>ic??sE?????߶?qJn? ????v#P???ZE?ΰM8>?:a'B=?????Q??l???[.SE?"?fP?פ?Oz?l/??1l??T?????:L?f=U?X叅??MA???E??7???R??-?WU:??g,?M։?i??1?w'nC
?@????X`?	k?Y,?????5??!?ީ?_???~C??N9P??D??E?t???1-????u??????i????j??1/?c??+????.7U?	9MD?N???u??;??VK?????GL8????&fŏz)t;?n)o?$!z??? c{eG?UV7???V?S悍R??+M^U????8ϭ??D???A?K??4?;BAU#?|????&???????	?g?l2???bҎIc??l)??yAL??K?o????fN???o1?{\%?Y??=?Ɋ???eS??p?o?K?O&?A?\/5?լd?p?+~IY?KH?1??]????/?C???!?Q??+???\o?D>??Nu潯?{tq?*?>????W?Ǟ^=??Ɠ???~1??8?p??Z?????)؉cU%U\?sĞvЋ?)?[-???mxH??:?b????mգ??Q????޵F?E??-?^?$??n' ? ®e.m?ꄭ???Q%???y?u'?ny(r??????????˵sj?٪???*'??aꐻ? ?? A?g??#݆?????#?????pfM!Oº ?vE???r??Sʒ?z"??]?L?z?q?y?????Q?ش??zn4??l!?{?dW?V[??<???????D?????{_k????G??s?&m??)7??Ȍ?ۜ?'??AD:2?????b?k???f???X_??@2 H???????{????^5̖*?d[o???>?7????	?y???????B
؜??s??j;?u[L?5tD?J???]Ǖ??Za	1o7?r[?r??ڥ?????????V?)Z??J?z??/?b?Gk???Q?7????$?(?M?[?b}???p? ?"9?????H)???j?:??Xi!?PXaOr??&?y?I????]????xi??ԡ?uz?dq???t0?	??[?#?7o`????B1?'$/v??.g>h???F??b ?   i/?_n<?Hau?B?????X榈???#
 ??q?]??Z?D&?N4??ؿ??\A????6?W?5Fu?
5e?=j*Mj??r[?%N
?~T???5?<??r<4`???'???lf?????(m??q????#g?I?˯f???Y??h:??f?]?c????ڀ??|?銴=_L5W'??ӯ????????o???=?S      ?   ?   x?u?KnB1 ?y????	??H(q	?Z???v_i?L?~9?n??>?????t???G??|o?????Ll@??P?欁?g?Ym?@T7??Nba?J8ظ?@?a]ra???9????U?7??0Pt??BG!,:?y??]?
?"??P{??????r?/???L=
      |      x??]}o?6?;??????M??zƶ?4k?޺$H??0h??y?%M/μ??}??z?I??"%R?l+u{??ɇ???>??%a1C?؏?F?x"0?)?=E?"9???|??l4?E?Q??2\???W??y????`??h?y??ޤ??$??(Ox?MQ??T}?A??s?I??E?ߧO??@?+Cڛ??.8E???????Rp?0?egoϽ5?s?PX?G(???e?_^&0?m^?	Y?ɖ?׸!??$&I???2?E	???I|8?C?X?)?JJ/ut??¬????	?[^?ƒ??$?1?f&?WeiP5?*?)3.}@?b??T1#?????y7?iL~֑^??;cԅ4?`??\??O!?apf??sY?
8?ͣ??w?Z$???,??J~3VB ??"?L?h?#???ԟ?[?2?k???????G6??Ψ?~?>?E%YQ???l?h?4?S???????a?>?)????ϣov1oEӪa#?:5iS?f9}˺U??=?a+?6??+ؾ??J?j?H߀?*ĝ4?%?[Q?N??N??34?|I?@((;?
 ???40!?e??	%q?)?ZC??????M?????????aRLo6?D?R7?P???PF??Q?^??. +ĝ?V??yM?Msw,'a??A?,??E]?lI?mu?0???
l??k?J?nV?Nzw? ?a??
K#/??-Ό~?J??+?M?q???Z[(̦ɩV?U???6???տ?R-?V#2)???+?]$??{??.?=???{??5iW??ų?DN????????p?:?80b;'ϻ	??ش??R??@??w]j]?[Z?gW?Tp?Ň??Q?͑@?x?/??&??u? ?M?Úl?Q???0??3??n&?m?????ti???v1f A'9??U?&z?vf??3??LHo??. r?n?m>̲_?ʼ?&
??s+??k??5 ????l0 ?t?E?+*??,\k
T??Z?g[Y?f4*?0?+?ryc(???A?@?9d?|?0J?Y?J'??և?RVCv?3b%m??(??&??т. 
?.?????y???tP?v????ȍ??W???m?I?m?5?q?&?;DF?i?,?/;?????@f??+?H5r?N?JԴҔ??Nr?a')5??ަ???2??{K?o????Ҏ?3J??y^KD?3fy???r??68??Ai\V???K?:?%H??+??]W"uʦՈ?k??½?T?4s?$
??u6%h͹m?oQYa.??-3??(?446I4EdN1???P?	?=??/?-?H??D	=??.?;]?????s??4??@8???}?rvK??k?S???N?Gc.??0?A?<yGY?b????߳F?6ۛ?????L?{ܨ?R??6?@?:??F?[?C?}??C0Y?[2u??=[<??Hs?N-^??$Э???A,_???ms?a??3WM?6????b??>?Au	?4??8?U????i???粰????????C??]?&?M??9?R[?#?9???B?t??y???Gb'C3??vJY?8??!? ???'?o????]W9?B??仱PX??V?x??O?F???B?-?Oh#7be????a?ě? G?ӧ????s<KA???˥MD?0 ?N??0?j????y???ڢƱwG?q=:]x?s?o??	????ǏA?㷘????R??']?I?o??+i?>?L$?N?8?k "??d? ?? ??FD%?Yϸ/e?+?꛵??3??Ť?gV?]ϴ??g? ?J??qO? ?(
???I?
f?7? ?{??|?k? j???? pW(?r??f??YY?Uw?????x?O?u?K/?Xy׮??&>'c??7???o??????#2?
??(?N?P?*?p?VF$?8D9#???"A?UsF???,By܀???+&AL?:?s?ʟC?^X?&????#j?T?Ia???)?`?-?4?fh?@?"?W	?????x?`?۰!,?cE;2??#$?L)???t???b2L?Ā?y3?"^ͫ??n?)Ul?i,k?Fް??.?J?9\??9V??7?V?O?*[W?4?j???g䔙<>???b?)>Ia??Nj$h?bo-?8?H?V:?(PX??%??ɏ?????? ??|?]?Ag??l3??O??	?iů?????}??`/?? ???????{R????1!D<??L?0??	????񀎐?ψS?$?????????????8????7?????O??o? ?ˆ??'??c5\?8O??r??9???!?????"?`???7?36???G ??}r?L???1??ب?~\W!x???w?d??\?uC|??hj?S"??t~????I?J޷v??D>Hp B?r???N?j,^].+, ?G??*?Q??f?b?Rȳ?X-????T?u??ՏW}???>0??F	??!?_y?T{?iH???1<???ה? ?=?S??3;?????o ??V??C?^ZD|?u??AV?ItJ??i?ns??eG:ٯ???????	?Z?
???h???-	??rS???\??M???d?????#???o?a?k?ի?|????~$3?<U????.(?Ɗ{v??s?x!?&?A??i???z? ??м,?Q^ԺX?????og\??#???G:???ZZ??ɤ@a`?H?y??I?????n????T?:???f???)߇"????)????N ?^??z'r???K?9?e??HHǃ???zI?N??}P6t?m9???4?a??%&?V7?e)?-??1?L??tF׷??XU??;"??#???i:C9o?b?????8?`xh????)ʵU???#FэV)I?RF:??8l????\???:??i<?UQ???DUde~???ް?9Sp??%&???"?|?/x??eơ???????eѹ[U	v?wQUd?63??U???M?E]?(??3???h???䛭$E????j?????>,''??
?gNz??&{?F?y_j??Mw?iΞ???v??????(??=s????Yl??6q1???N??W????2kT|?u??'?٘???ꦫ??f????y80w?"{??۬?f?6?˶Y?/7J=?q?Q*??%?P??X?uʿ?PQԶ3 E?'RSԂ????y???-?m
Oנ??q[܋???S?lp90?Z9???⛋?$	d1?F7d];?ܾc????5t?h???o<?????:???g??vw	?s??%(???%?^??$??	#??Jq<KР?؋&?????ʂ?0??*"???^D??2N?}?0??N?,*0?M~?4f??8
	_O?0<a?O????}??֕{??1\?M?????^?????????ʆ.F?¶͖?+cW??z?,~}????4P????n?=xޤ???j6???`??E?U1	?b[?U*U?[??jp????+ǧȟ?????ϟ<?%???????lV-?AZe?$???"??.0려I@hv8Ȝ???h???2r:??M?[?????e???Vc?ua?UW??ާ?`n{-??????????U?q?zs??qFb?T?B4???g?k?1??hL?-^????d??ޢ??ޯ?)?t????Gh?f?[lF?^?[??^?ם???Z???c??"????7>??Vc%???]W??BW@r?ܜ^b???O@???z?ܶ?>??2???j?}??`?&s??0xG8?ke=?t?4*?ϑmu??Do'z;??	w;???̕??sV<?[???fQ\_??8?:?%/??t{???Be????B?Vxr?A??x	??YZ5?e3t??g?<L?y ?Rs???\?^?@?vW?r?,??6_??'????_?>????&?>?d?@???]??????\5?f????|LLꢍߑi8P֛?C????3\_J6m˵e/?_?d?!V?pPT??	p?;?Y????-ɒiWɒ?⏈ݘo\?n???JD??C%?9?Ё?5???&n???'??]1???p`?jJ?DooD{?ի??Eu??+4?t7x	:?Z??"d?C?EW?p7?4?ua??`?d妄&;MGSu??? ?ގ???|??pv?ã??ro?^(m`s????\j??}?C?)X f   sFW???1???W??T??:A+???⣳??????????ݽ????H&???K??q
???-????dc?+??Z?M??wHSz?x?????G??FD2?      z   /  x??[Ko?8>'????-lg?l}+Ҟ?????n P??fM?I9M????3?+[?)??hu?c??y??o>????'1???????D?Ȝh?h?O*p??>?&??>|???G$H?B?????q(??1??e????? L???E.)R?H?F???h?!?17w??E???i?$_ROs???N,?O???F?W𸱘Ē8??vP{??I???6|7??K??~jo(3??5SR?Ái??E???+?t} w)??u?h???Ǌ?#E?@}Pzcꛖ??4I??H??`e?])9P?m?R?d@?Lk&?v??s?\?|?}t??+R?_??J:q?7h?jM4?&NW>??? ????*c??Ҧ?v?%?*?G?`?>_?ݽ????Ϥ???w텠?L?40?F??7?P?H?d2??&xR???H1#h?y??hXV?? ɺ???"K???g?S?p?(r??:???Ia`??3?&N=Z$Cu?-c/?g-?=??-?[?????????揜??H????qԪD?~??Ǵ? Y;?%???s?.??:?o?i'?'?JtF?7V\.?
ͯ2?Q|?S???5???$?F?	?$??nI??_?$?"?ޒ???IU??S,?^? ?g?-^????51k??k?
v[??	?-? ?eC$?.?<??A?????@Im??{?d?y??@??L????`m???Gk??[???8gf?i?? d0>?]???w???R???l?&?R?????X??Yj,??m??^Pn?}????S<???????f?霮rb??A5??Ґ?sZR???D
????G??$e.?|c`2M;>??q@?t3r??,??m8!??>E?-?3c???åG???VV??fU]14k?0y?u?[{?i????????mk?EMW0??;L$lno???? W=???#Oek??????GȰ4s??TP??	?Q??6???=;??Qu??ҷ??x????!?Kw+?r9???|q??C???[?y??p?3?j????G??l?????ab]S?5?|??x??ھ?????R?n?|????S?%?c#?r?\??rjw=?~ ??]v??????`Rׄ?L)?h??\??.?O??*=J*wLΞۙҵ???'j~?H?0??*Z6?ږ?C*t?)?c?8??I??G???9?E?籂??#`?Q?y?ȫ+?-???c??	?c?[?????9U?k?m?@Ow??N2?_????
E.v?k????pz.?(N?I???????t<??O?N?o????j>?????\?W??????^O?o?+o<?a??f??=????w?????m?      x      x?????? ? ?      ~      x?????? ? ?      ?   ?   x???M? ൜?? ?Z?^?թ%E$?????Fk??d/?/?G3g?^[)? >???CУXM????Zhc?c9?9%Fd?%g??jޜ??????e???2?????#???㗻????[??^?>ѧ4??m?e?i)?"~?????Q!???ƔW??+????T?Ͻփ?ɜ?s??vp????@2?`??`???      ?   -   x?3?4?2bSN#.3 ?bCCa"?AH??D?T??qqq ?%       ?   ?   x?3?t,-?H?+?LN,IM?tIMK,?)Q(??IUH?,K?S(?WHDV?PZ?Z?ǉ"?id`d?k`?kh?`d`elbeb?g`h?S<????8J?r2?qX[??????&??hlehjeb?ghl?1F??? /%E      ?      x?????? ? ?      ?      x?????? ? ?     