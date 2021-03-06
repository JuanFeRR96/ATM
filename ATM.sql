PGDMP                          y            ATM    13.1    13.1 5    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16394    ATM    DATABASE     d   CREATE DATABASE "ATM" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE "ATM";
                postgres    false            �            1259    16431    balance    TABLE     �   CREATE TABLE public.balance (
    "codBalance" smallint NOT NULL,
    "codUser" bigint NOT NULL,
    amount bigint NOT NULL,
    active smallint DEFAULT 1 NOT NULL
);
    DROP TABLE public.balance;
       public         heap    postgres    false            �            1259    16427    BALANCE_codBalance_seq    SEQUENCE     �   CREATE SEQUENCE public."BALANCE_codBalance_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."BALANCE_codBalance_seq";
       public          postgres    false    207            �           0    0    BALANCE_codBalance_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."BALANCE_codBalance_seq" OWNED BY public.balance."codBalance";
          public          postgres    false    205            �            1259    16429    BALANCE_codUser_seq    SEQUENCE     ~   CREATE SEQUENCE public."BALANCE_codUser_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."BALANCE_codUser_seq";
       public          postgres    false    207            �           0    0    BALANCE_codUser_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."BALANCE_codUser_seq" OWNED BY public.balance."codUser";
          public          postgres    false    206            �            1259    16532    movement    TABLE       CREATE TABLE public.movement (
    "codMovement" integer NOT NULL,
    "codUser" bigint NOT NULL,
    "codTypeUser" smallint NOT NULL,
    "codTransference" smallint NOT NULL,
    amount integer NOT NULL,
    "DateMovement" date NOT NULL,
    codbalance smallint NOT NULL
);
    DROP TABLE public.movement;
       public         heap    postgres    false            �            1259    16526    MOVEMENT_codMovement_seq    SEQUENCE     �   CREATE SEQUENCE public."MOVEMENT_codMovement_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."MOVEMENT_codMovement_seq";
       public          postgres    false    211            �           0    0    MOVEMENT_codMovement_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."MOVEMENT_codMovement_seq" OWNED BY public.movement."codMovement";
          public          postgres    false    208            �            1259    16528    MOVEMENT_codUser_seq    SEQUENCE        CREATE SEQUENCE public."MOVEMENT_codUser_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."MOVEMENT_codUser_seq";
       public          postgres    false    211            �           0    0    MOVEMENT_codUser_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."MOVEMENT_codUser_seq" OWNED BY public.movement."codUser";
          public          postgres    false    209            �            1259    16530    MOVEMENT_codbalance_seq    SEQUENCE     �   CREATE SEQUENCE public."MOVEMENT_codbalance_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."MOVEMENT_codbalance_seq";
       public          postgres    false    211            �           0    0    MOVEMENT_codbalance_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."MOVEMENT_codbalance_seq" OWNED BY public.movement.codbalance;
          public          postgres    false    210            �            1259    16397    typeuser    TABLE     �   CREATE TABLE public.typeuser (
    "codTypeUser" smallint NOT NULL,
    name character varying(20) NOT NULL,
    "Active" smallint DEFAULT 1 NOT NULL
);
    DROP TABLE public.typeuser;
       public         heap    postgres    false            �            1259    16395    TypeUser_codTypeUser_seq    SEQUENCE     �   CREATE SEQUENCE public."TypeUser_codTypeUser_seq"
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."TypeUser_codTypeUser_seq";
       public          postgres    false    201            �           0    0    TypeUser_codTypeUser_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."TypeUser_codTypeUser_seq" OWNED BY public.typeuser."codTypeUser";
          public          postgres    false    200            �            1259    16415    users    TABLE     �   CREATE TABLE public.users (
    "codUser" bigint NOT NULL,
    identity integer NOT NULL,
    name character varying(50) NOT NULL,
    password integer NOT NULL,
    active smallint DEFAULT 1 NOT NULL,
    "codTypeUser" smallint NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16413    USER_codUser_seq    SEQUENCE     {   CREATE SEQUENCE public."USER_codUser_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."USER_codUser_seq";
       public          postgres    false    204            �           0    0    USER_codUser_seq    SEQUENCE OWNED BY     J   ALTER SEQUENCE public."USER_codUser_seq" OWNED BY public.users."codUser";
          public          postgres    false    203            �            1259    16404    transference    TABLE     �   CREATE TABLE public.transference (
    "codTransference" smallint NOT NULL,
    name character varying NOT NULL,
    active smallint DEFAULT 1 NOT NULL
);
     DROP TABLE public.transference;
       public         heap    postgres    false            F           2604    16555    balance codBalance    DEFAULT     |   ALTER TABLE ONLY public.balance ALTER COLUMN "codBalance" SET DEFAULT nextval('public."BALANCE_codBalance_seq"'::regclass);
 C   ALTER TABLE public.balance ALTER COLUMN "codBalance" DROP DEFAULT;
       public          postgres    false    207    205    207            D           2604    16435    balance codUser    DEFAULT     v   ALTER TABLE ONLY public.balance ALTER COLUMN "codUser" SET DEFAULT nextval('public."BALANCE_codUser_seq"'::regclass);
 @   ALTER TABLE public.balance ALTER COLUMN "codUser" DROP DEFAULT;
       public          postgres    false    206    207    207            G           2604    16535    movement codMovement    DEFAULT     �   ALTER TABLE ONLY public.movement ALTER COLUMN "codMovement" SET DEFAULT nextval('public."MOVEMENT_codMovement_seq"'::regclass);
 E   ALTER TABLE public.movement ALTER COLUMN "codMovement" DROP DEFAULT;
       public          postgres    false    208    211    211            H           2604    16536    movement codUser    DEFAULT     x   ALTER TABLE ONLY public.movement ALTER COLUMN "codUser" SET DEFAULT nextval('public."MOVEMENT_codUser_seq"'::regclass);
 A   ALTER TABLE public.movement ALTER COLUMN "codUser" DROP DEFAULT;
       public          postgres    false    209    211    211            I           2604    16569    movement codbalance    DEFAULT     |   ALTER TABLE ONLY public.movement ALTER COLUMN codbalance SET DEFAULT nextval('public."MOVEMENT_codbalance_seq"'::regclass);
 B   ALTER TABLE public.movement ALTER COLUMN codbalance DROP DEFAULT;
       public          postgres    false    211    210    211            ?           2604    16400    typeuser codTypeUser    DEFAULT     �   ALTER TABLE ONLY public.typeuser ALTER COLUMN "codTypeUser" SET DEFAULT nextval('public."TypeUser_codTypeUser_seq"'::regclass);
 E   ALTER TABLE public.typeuser ALTER COLUMN "codTypeUser" DROP DEFAULT;
       public          postgres    false    200    201    201            B           2604    16418    users codUser    DEFAULT     q   ALTER TABLE ONLY public.users ALTER COLUMN "codUser" SET DEFAULT nextval('public."USER_codUser_seq"'::regclass);
 >   ALTER TABLE public.users ALTER COLUMN "codUser" DROP DEFAULT;
       public          postgres    false    204    203    204            �          0    16431    balance 
   TABLE DATA           J   COPY public.balance ("codBalance", "codUser", amount, active) FROM stdin;
    public          postgres    false    207   ~=       �          0    16532    movement 
   TABLE DATA           �   COPY public.movement ("codMovement", "codUser", "codTypeUser", "codTransference", amount, "DateMovement", codbalance) FROM stdin;
    public          postgres    false    211   �=       �          0    16404    transference 
   TABLE DATA           G   COPY public.transference ("codTransference", name, active) FROM stdin;
    public          postgres    false    202   �=       �          0    16397    typeuser 
   TABLE DATA           A   COPY public.typeuser ("codTypeUser", name, "Active") FROM stdin;
    public          postgres    false    201   �=       �          0    16415    users 
   TABLE DATA           [   COPY public.users ("codUser", identity, name, password, active, "codTypeUser") FROM stdin;
    public          postgres    false    204   �=       �           0    0    BALANCE_codBalance_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."BALANCE_codBalance_seq"', 1, false);
          public          postgres    false    205            �           0    0    BALANCE_codUser_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."BALANCE_codUser_seq"', 1, false);
          public          postgres    false    206            �           0    0    MOVEMENT_codMovement_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."MOVEMENT_codMovement_seq"', 1, false);
          public          postgres    false    208            �           0    0    MOVEMENT_codUser_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."MOVEMENT_codUser_seq"', 1, false);
          public          postgres    false    209            �           0    0    MOVEMENT_codbalance_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."MOVEMENT_codbalance_seq"', 1, false);
          public          postgres    false    210            �           0    0    TypeUser_codTypeUser_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."TypeUser_codTypeUser_seq"', 1, false);
          public          postgres    false    200            �           0    0    USER_codUser_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."USER_codUser_seq"', 1, false);
          public          postgres    false    203            Q           2606    16575    balance BALANCE_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.balance
    ADD CONSTRAINT "BALANCE_pkey" PRIMARY KEY ("codBalance");
 @   ALTER TABLE ONLY public.balance DROP CONSTRAINT "BALANCE_pkey";
       public            postgres    false    207            S           2606    16539    movement MOVEMENT_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.movement
    ADD CONSTRAINT "MOVEMENT_pkey" PRIMARY KEY ("codMovement");
 B   ALTER TABLE ONLY public.movement DROP CONSTRAINT "MOVEMENT_pkey";
       public            postgres    false    211            M           2606    16412    transference TRANSFERENCE_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.transference
    ADD CONSTRAINT "TRANSFERENCE_pkey" PRIMARY KEY ("codTransference");
 J   ALTER TABLE ONLY public.transference DROP CONSTRAINT "TRANSFERENCE_pkey";
       public            postgres    false    202            K           2606    16402    typeuser TypeUser_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.typeuser
    ADD CONSTRAINT "TypeUser_pkey" PRIMARY KEY ("codTypeUser");
 B   ALTER TABLE ONLY public.typeuser DROP CONSTRAINT "TypeUser_pkey";
       public            postgres    false    201            O           2606    16421    users USER_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.users
    ADD CONSTRAINT "USER_pkey" PRIMARY KEY ("codUser");
 ;   ALTER TABLE ONLY public.users DROP CONSTRAINT "USER_pkey";
       public            postgres    false    204            U           2606    16556    balance fk_balance_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.balance
    ADD CONSTRAINT fk_balance_user FOREIGN KEY ("codBalance") REFERENCES public.users("codUser");
 A   ALTER TABLE ONLY public.balance DROP CONSTRAINT fk_balance_user;
       public          postgres    false    2895    204    207            Y           2606    16576    movement fk_movement_balance    FK CONSTRAINT     �   ALTER TABLE ONLY public.movement
    ADD CONSTRAINT fk_movement_balance FOREIGN KEY ("codMovement") REFERENCES public.balance("codBalance") NOT VALID;
 F   ALTER TABLE ONLY public.movement DROP CONSTRAINT fk_movement_balance;
       public          postgres    false    207    2897    211            X           2606    16550 !   movement fk_movement_transference    FK CONSTRAINT     �   ALTER TABLE ONLY public.movement
    ADD CONSTRAINT fk_movement_transference FOREIGN KEY ("codMovement") REFERENCES public.transference("codTransference");
 K   ALTER TABLE ONLY public.movement DROP CONSTRAINT fk_movement_transference;
       public          postgres    false    202    211    2893            W           2606    16545    movement fk_movement_typeUser    FK CONSTRAINT     �   ALTER TABLE ONLY public.movement
    ADD CONSTRAINT "fk_movement_typeUser" FOREIGN KEY ("codMovement") REFERENCES public.typeuser("codTypeUser");
 I   ALTER TABLE ONLY public.movement DROP CONSTRAINT "fk_movement_typeUser";
       public          postgres    false    211    201    2891            V           2606    16540    movement fk_movement_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.movement
    ADD CONSTRAINT fk_movement_user FOREIGN KEY ("codMovement") REFERENCES public.users("codUser");
 C   ALTER TABLE ONLY public.movement DROP CONSTRAINT fk_movement_user;
       public          postgres    false    211    204    2895            T           2606    16422    users fk_user_typeUser    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT "fk_user_typeUser" FOREIGN KEY ("codTypeUser") REFERENCES public.typeuser("codTypeUser");
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT "fk_user_typeUser";
       public          postgres    false    2891    204    201            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     