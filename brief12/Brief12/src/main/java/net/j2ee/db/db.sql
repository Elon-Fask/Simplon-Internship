PGDMP             
            z           Brief12_Ecole    14.3    14.3 "               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    49985    Brief12_Ecole    DATABASE     q   CREATE DATABASE "Brief12_Ecole" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Arabic_Saudi Arabia.1256';
    DROP DATABASE "Brief12_Ecole";
                postgres    false            ?            1259    50448    admin    TABLE     ?   CREATE TABLE public.admin (
    id_admin integer NOT NULL,
    email character varying(255),
    lastname character varying(255),
    pwd character varying(255)
);
    DROP TABLE public.admin;
       public         heap    postgres    false            ?            1259    50447    admin_id_admin_seq    SEQUENCE     ?   CREATE SEQUENCE public.admin_id_admin_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_id_admin_seq;
       public          postgres    false    210                       0    0    admin_id_admin_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_id_admin_seq OWNED BY public.admin.id_admin;
          public          postgres    false    209            ?            1259    50457    cours    TABLE     ?   CREATE TABLE public.cours (
    id_cours integer NOT NULL,
    name_cours character varying(255),
    etudiant_id_etudi integer,
    professeurs_id_prof integer
);
    DROP TABLE public.cours;
       public         heap    postgres    false            ?            1259    50456    cours_id_cours_seq    SEQUENCE     ?   CREATE SEQUENCE public.cours_id_cours_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.cours_id_cours_seq;
       public          postgres    false    212                       0    0    cours_id_cours_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.cours_id_cours_seq OWNED BY public.cours.id_cours;
          public          postgres    false    211            ?            1259    50464    etudiant    TABLE     ?   CREATE TABLE public.etudiant (
    id_etudi integer NOT NULL,
    age_etudi integer,
    name_etudi character varying(255),
    niveau_etudi character varying(255),
    presnom_etudi character varying(255)
);
    DROP TABLE public.etudiant;
       public         heap    postgres    false            ?            1259    50463    etudiant_id_etudi_seq    SEQUENCE     ?   CREATE SEQUENCE public.etudiant_id_etudi_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.etudiant_id_etudi_seq;
       public          postgres    false    214                       0    0    etudiant_id_etudi_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.etudiant_id_etudi_seq OWNED BY public.etudiant.id_etudi;
          public          postgres    false    213            ?            1259    50473    professeurs    TABLE     ?   CREATE TABLE public.professeurs (
    id_prof integer NOT NULL,
    name_prof character varying(255),
    presnom_prof character varying(255)
);
    DROP TABLE public.professeurs;
       public         heap    postgres    false            ?            1259    50472    professeurs_id_prof_seq    SEQUENCE     ?   CREATE SEQUENCE public.professeurs_id_prof_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.professeurs_id_prof_seq;
       public          postgres    false    216                       0    0    professeurs_id_prof_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.professeurs_id_prof_seq OWNED BY public.professeurs.id_prof;
          public          postgres    false    215            k           2604    50451    admin id_admin    DEFAULT     p   ALTER TABLE ONLY public.admin ALTER COLUMN id_admin SET DEFAULT nextval('public.admin_id_admin_seq'::regclass);
 =   ALTER TABLE public.admin ALTER COLUMN id_admin DROP DEFAULT;
       public          postgres    false    210    209    210            l           2604    50460    cours id_cours    DEFAULT     p   ALTER TABLE ONLY public.cours ALTER COLUMN id_cours SET DEFAULT nextval('public.cours_id_cours_seq'::regclass);
 =   ALTER TABLE public.cours ALTER COLUMN id_cours DROP DEFAULT;
       public          postgres    false    212    211    212            m           2604    50467    etudiant id_etudi    DEFAULT     v   ALTER TABLE ONLY public.etudiant ALTER COLUMN id_etudi SET DEFAULT nextval('public.etudiant_id_etudi_seq'::regclass);
 @   ALTER TABLE public.etudiant ALTER COLUMN id_etudi DROP DEFAULT;
       public          postgres    false    214    213    214            n           2604    50476    professeurs id_prof    DEFAULT     z   ALTER TABLE ONLY public.professeurs ALTER COLUMN id_prof SET DEFAULT nextval('public.professeurs_id_prof_seq'::regclass);
 B   ALTER TABLE public.professeurs ALTER COLUMN id_prof DROP DEFAULT;
       public          postgres    false    216    215    216                      0    50448    admin 
   TABLE DATA           ?   COPY public.admin (id_admin, email, lastname, pwd) FROM stdin;
    public          postgres    false    210   ?%                 0    50457    cours 
   TABLE DATA           ]   COPY public.cours (id_cours, name_cours, etudiant_id_etudi, professeurs_id_prof) FROM stdin;
    public          postgres    false    212   ?%       	          0    50464    etudiant 
   TABLE DATA           `   COPY public.etudiant (id_etudi, age_etudi, name_etudi, niveau_etudi, presnom_etudi) FROM stdin;
    public          postgres    false    214   ?%                 0    50473    professeurs 
   TABLE DATA           G   COPY public.professeurs (id_prof, name_prof, presnom_prof) FROM stdin;
    public          postgres    false    216   ?%                  0    0    admin_id_admin_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.admin_id_admin_seq', 1, false);
          public          postgres    false    209                       0    0    cours_id_cours_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.cours_id_cours_seq', 1, true);
          public          postgres    false    211                       0    0    etudiant_id_etudi_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.etudiant_id_etudi_seq', 1, false);
          public          postgres    false    213                       0    0    professeurs_id_prof_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.professeurs_id_prof_seq', 1, false);
          public          postgres    false    215            p           2606    50455    admin admin_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (id_admin);
 :   ALTER TABLE ONLY public.admin DROP CONSTRAINT admin_pkey;
       public            postgres    false    210            r           2606    50462    cours cours_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.cours
    ADD CONSTRAINT cours_pkey PRIMARY KEY (id_cours);
 :   ALTER TABLE ONLY public.cours DROP CONSTRAINT cours_pkey;
       public            postgres    false    212            t           2606    50471    etudiant etudiant_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.etudiant
    ADD CONSTRAINT etudiant_pkey PRIMARY KEY (id_etudi);
 @   ALTER TABLE ONLY public.etudiant DROP CONSTRAINT etudiant_pkey;
       public            postgres    false    214            v           2606    50480    professeurs professeurs_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.professeurs
    ADD CONSTRAINT professeurs_pkey PRIMARY KEY (id_prof);
 F   ALTER TABLE ONLY public.professeurs DROP CONSTRAINT professeurs_pkey;
       public            postgres    false    216            w           2606    50481 !   cours fkeq3i8gojq9wv9hycexfy35ncm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.cours
    ADD CONSTRAINT fkeq3i8gojq9wv9hycexfy35ncm FOREIGN KEY (etudiant_id_etudi) REFERENCES public.etudiant(id_etudi);
 K   ALTER TABLE ONLY public.cours DROP CONSTRAINT fkeq3i8gojq9wv9hycexfy35ncm;
       public          postgres    false    3188    212    214            x           2606    50486 !   cours fkj2yor1awgmmblsegfg2uwdax6    FK CONSTRAINT     ?   ALTER TABLE ONLY public.cours
    ADD CONSTRAINT fkj2yor1awgmmblsegfg2uwdax6 FOREIGN KEY (professeurs_id_prof) REFERENCES public.professeurs(id_prof);
 K   ALTER TABLE ONLY public.cours DROP CONSTRAINT fkj2yor1awgmmblsegfg2uwdax6;
       public          postgres    false    216    3190    212                  x?????? ? ?            x?3??*???"?=... 0      	      x?????? ? ?            x?????? ? ?     