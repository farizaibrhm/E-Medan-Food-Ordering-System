PGDMP     *                     z            postgres    14.1    14.1 >    9           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            :           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ;           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            <           1262    13754    postgres    DATABASE     g   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Malaysia.1252';
    DROP DATABASE postgres;
                postgres    false            =           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3388                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            >           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            ?            1259    16394 
   cafeworker    TABLE     ?  CREATE TABLE public.cafeworker (
    "CWORKID" integer NOT NULL,
    "CWORKSTALLNAME" character varying(50) NOT NULL,
    "CWORKPHONENO" character varying(11) NOT NULL,
    "CWORKEMAIL" character varying(30) NOT NULL,
    "CWORKPASSWORD" character varying(30) NOT NULL,
    "CWORKACCNUM" character varying(50) NOT NULL,
    "CWORKACCNAME" character varying(50) NOT NULL,
    "CWORKBANKNAME" character varying(50) NOT NULL
);
    DROP TABLE public.cafeworker;
       public         heap    postgres    false            ?            1259    16400    cart    TABLE     ?   CREATE TABLE public.cart (
    "CARTID" integer NOT NULL,
    "ORDERID" integer NOT NULL,
    "MENUID" integer NOT NULL,
    "STUDENTID" integer NOT NULL
);
    DROP TABLE public.cart;
       public         heap    postgres    false            ?            1259    16399    cart_CARTID_seq    SEQUENCE     ?   CREATE SEQUENCE public."cart_CARTID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."cart_CARTID_seq";
       public          postgres    false    212            ?           0    0    cart_CARTID_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."cart_CARTID_seq" OWNED BY public.cart."CARTID";
          public          postgres    false    211            ?            1259    16407    feedback    TABLE     -  CREATE TABLE public.feedback (
    "FEEDBACKID" integer NOT NULL,
    "FEEDBACKMESSAGE" text NOT NULL,
    "FEEDBACKRATING" numeric(2,1) NOT NULL,
    "FEEDBACKDATE" date NOT NULL,
    "FEEDBACKTIME" time without time zone NOT NULL,
    "STUDENTID" integer NOT NULL,
    "ORDERID" integer NOT NULL
);
    DROP TABLE public.feedback;
       public         heap    postgres    false            ?            1259    16406    feedback_FEEDBACKID_seq    SEQUENCE     ?   CREATE SEQUENCE public."feedback_FEEDBACKID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."feedback_FEEDBACKID_seq";
       public          postgres    false    214            @           0    0    feedback_FEEDBACKID_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."feedback_FEEDBACKID_seq" OWNED BY public.feedback."FEEDBACKID";
          public          postgres    false    213            ?            1259    16416    forder    TABLE     R  CREATE TABLE public.forder (
    "ORDERID" integer NOT NULL,
    "ORDERQUANTITY" integer NOT NULL,
    "ORDERDATE" date NOT NULL,
    "ORDERTIME" time without time zone NOT NULL,
    "ORDERPRICE" numeric(10,2) NOT NULL,
    "ORDERSTATUS" character varying(20) NOT NULL,
    "STUDENTID" integer NOT NULL,
    "CWORKID" integer NOT NULL
);
    DROP TABLE public.forder;
       public         heap    postgres    false            ?            1259    16415    forder_ORDERID_seq    SEQUENCE     ?   CREATE SEQUENCE public."forder_ORDERID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."forder_ORDERID_seq";
       public          postgres    false    216            A           0    0    forder_ORDERID_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."forder_ORDERID_seq" OWNED BY public.forder."ORDERID";
          public          postgres    false    215            ?            1259    16423    menu    TABLE     !  CREATE TABLE public.menu (
    "MENUID" integer NOT NULL,
    "MENUNAME" character varying(30) NOT NULL,
    "MENUIMAGE" bytea NOT NULL,
    "MENUDESC" text NOT NULL,
    "MENUTPRICE" numeric(10,2) NOT NULL,
    "MENUTYPE" character varying(20) NOT NULL,
    "CWORKID" integer NOT NULL
);
    DROP TABLE public.menu;
       public         heap    postgres    false            ?            1259    16422    menu_MENUID_seq    SEQUENCE     ?   CREATE SEQUENCE public."menu_MENUID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."menu_MENUID_seq";
       public          postgres    false    218            B           0    0    menu_MENUID_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."menu_MENUID_seq" OWNED BY public.menu."MENUID";
          public          postgres    false    217            ?            1259    16432    payment    TABLE     1  CREATE TABLE public.payment (
    "PAYMENTID" integer NOT NULL,
    "PAYMENTDATE" date NOT NULL,
    "PAYMENTTIME" time without time zone NOT NULL,
    "PAYMENTRECEIPT" bytea NOT NULL,
    "PAYMENTSTATUS" character varying(20) NOT NULL,
    "STUDENTID" integer NOT NULL,
    "ORDERID" integer NOT NULL
);
    DROP TABLE public.payment;
       public         heap    postgres    false            ?            1259    16431    payment_PAYMENTID_seq    SEQUENCE     ?   CREATE SEQUENCE public."payment_PAYMENTID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."payment_PAYMENTID_seq";
       public          postgres    false    220            C           0    0    payment_PAYMENTID_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."payment_PAYMENTID_seq" OWNED BY public.payment."PAYMENTID";
          public          postgres    false    219            ?            1259    16441    paymentreport    TABLE     ?   CREATE TABLE public.paymentreport (
    "PAYMENTREPORTID" integer NOT NULL,
    "PAYMENTID" integer NOT NULL,
    "REPORTID" integer NOT NULL
);
 !   DROP TABLE public.paymentreport;
       public         heap    postgres    false            ?            1259    16440 !   paymentreport_PAYMENTREPORTID_seq    SEQUENCE     ?   CREATE SEQUENCE public."paymentreport_PAYMENTREPORTID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."paymentreport_PAYMENTREPORTID_seq";
       public          postgres    false    222            D           0    0 !   paymentreport_PAYMENTREPORTID_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public."paymentreport_PAYMENTREPORTID_seq" OWNED BY public.paymentreport."PAYMENTREPORTID";
          public          postgres    false    221            ?            1259    16448    report    TABLE     ?   CREATE TABLE public.report (
    "REPORTID" integer NOT NULL,
    "REPORTTSALES" numeric(10,2) NOT NULL,
    "REPORTDATE" date NOT NULL,
    "CWORKID" integer NOT NULL
);
    DROP TABLE public.report;
       public         heap    postgres    false            ?            1259    16447    report_REPORTID_seq    SEQUENCE     ?   CREATE SEQUENCE public."report_REPORTID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."report_REPORTID_seq";
       public          postgres    false    224            E           0    0    report_REPORTID_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."report_REPORTID_seq" OWNED BY public.report."REPORTID";
          public          postgres    false    223            ?            1259    16454    student    TABLE       CREATE TABLE public.student (
    "STUDENTID" integer NOT NULL,
    "STUDENTNAME" character varying(50) NOT NULL,
    "STUDENTPHONENO" character varying(11) NOT NULL,
    "STUDENTEMAIL" character varying(30) NOT NULL,
    "STUDENTPASSWORD" character varying(30) NOT NULL
);
    DROP TABLE public.student;
       public         heap    postgres    false            ?           2604    16403    cart CARTID    DEFAULT     n   ALTER TABLE ONLY public.cart ALTER COLUMN "CARTID" SET DEFAULT nextval('public."cart_CARTID_seq"'::regclass);
 <   ALTER TABLE public.cart ALTER COLUMN "CARTID" DROP DEFAULT;
       public          postgres    false    211    212    212            ?           2604    16410    feedback FEEDBACKID    DEFAULT     ~   ALTER TABLE ONLY public.feedback ALTER COLUMN "FEEDBACKID" SET DEFAULT nextval('public."feedback_FEEDBACKID_seq"'::regclass);
 D   ALTER TABLE public.feedback ALTER COLUMN "FEEDBACKID" DROP DEFAULT;
       public          postgres    false    214    213    214            ?           2604    16419    forder ORDERID    DEFAULT     t   ALTER TABLE ONLY public.forder ALTER COLUMN "ORDERID" SET DEFAULT nextval('public."forder_ORDERID_seq"'::regclass);
 ?   ALTER TABLE public.forder ALTER COLUMN "ORDERID" DROP DEFAULT;
       public          postgres    false    215    216    216            ?           2604    16426    menu MENUID    DEFAULT     n   ALTER TABLE ONLY public.menu ALTER COLUMN "MENUID" SET DEFAULT nextval('public."menu_MENUID_seq"'::regclass);
 <   ALTER TABLE public.menu ALTER COLUMN "MENUID" DROP DEFAULT;
       public          postgres    false    217    218    218            ?           2604    16435    payment PAYMENTID    DEFAULT     z   ALTER TABLE ONLY public.payment ALTER COLUMN "PAYMENTID" SET DEFAULT nextval('public."payment_PAYMENTID_seq"'::regclass);
 B   ALTER TABLE public.payment ALTER COLUMN "PAYMENTID" DROP DEFAULT;
       public          postgres    false    220    219    220            ?           2604    16444    paymentreport PAYMENTREPORTID    DEFAULT     ?   ALTER TABLE ONLY public.paymentreport ALTER COLUMN "PAYMENTREPORTID" SET DEFAULT nextval('public."paymentreport_PAYMENTREPORTID_seq"'::regclass);
 N   ALTER TABLE public.paymentreport ALTER COLUMN "PAYMENTREPORTID" DROP DEFAULT;
       public          postgres    false    222    221    222            ?           2604    16451    report REPORTID    DEFAULT     v   ALTER TABLE ONLY public.report ALTER COLUMN "REPORTID" SET DEFAULT nextval('public."report_REPORTID_seq"'::regclass);
 @   ALTER TABLE public.report ALTER COLUMN "REPORTID" DROP DEFAULT;
       public          postgres    false    223    224    224            '          0    16394 
   cafeworker 
   TABLE DATA           ?   COPY public.cafeworker ("CWORKID", "CWORKSTALLNAME", "CWORKPHONENO", "CWORKEMAIL", "CWORKPASSWORD", "CWORKACCNUM", "CWORKACCNAME", "CWORKBANKNAME") FROM stdin;
    public          postgres    false    210   ?G       )          0    16400    cart 
   TABLE DATA           J   COPY public.cart ("CARTID", "ORDERID", "MENUID", "STUDENTID") FROM stdin;
    public          postgres    false    212   H       +          0    16407    feedback 
   TABLE DATA           ?   COPY public.feedback ("FEEDBACKID", "FEEDBACKMESSAGE", "FEEDBACKRATING", "FEEDBACKDATE", "FEEDBACKTIME", "STUDENTID", "ORDERID") FROM stdin;
    public          postgres    false    214   4H       -          0    16416    forder 
   TABLE DATA           ?   COPY public.forder ("ORDERID", "ORDERQUANTITY", "ORDERDATE", "ORDERTIME", "ORDERPRICE", "ORDERSTATUS", "STUDENTID", "CWORKID") FROM stdin;
    public          postgres    false    216   QH       /          0    16423    menu 
   TABLE DATA           r   COPY public.menu ("MENUID", "MENUNAME", "MENUIMAGE", "MENUDESC", "MENUTPRICE", "MENUTYPE", "CWORKID") FROM stdin;
    public          postgres    false    218   nH       1          0    16432    payment 
   TABLE DATA           ?   COPY public.payment ("PAYMENTID", "PAYMENTDATE", "PAYMENTTIME", "PAYMENTRECEIPT", "PAYMENTSTATUS", "STUDENTID", "ORDERID") FROM stdin;
    public          postgres    false    220   ?H       3          0    16441    paymentreport 
   TABLE DATA           S   COPY public.paymentreport ("PAYMENTREPORTID", "PAYMENTID", "REPORTID") FROM stdin;
    public          postgres    false    222   ?H       5          0    16448    report 
   TABLE DATA           U   COPY public.report ("REPORTID", "REPORTTSALES", "REPORTDATE", "CWORKID") FROM stdin;
    public          postgres    false    224   ?H       6          0    16454    student 
   TABLE DATA           r   COPY public.student ("STUDENTID", "STUDENTNAME", "STUDENTPHONENO", "STUDENTEMAIL", "STUDENTPASSWORD") FROM stdin;
    public          postgres    false    225   ?H       F           0    0    cart_CARTID_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."cart_CARTID_seq"', 1, false);
          public          postgres    false    211            G           0    0    feedback_FEEDBACKID_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."feedback_FEEDBACKID_seq"', 1, false);
          public          postgres    false    213            H           0    0    forder_ORDERID_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."forder_ORDERID_seq"', 1, false);
          public          postgres    false    215            I           0    0    menu_MENUID_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."menu_MENUID_seq"', 1, false);
          public          postgres    false    217            J           0    0    payment_PAYMENTID_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."payment_PAYMENTID_seq"', 1, false);
          public          postgres    false    219            K           0    0 !   paymentreport_PAYMENTREPORTID_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public."paymentreport_PAYMENTREPORTID_seq"', 1, false);
          public          postgres    false    221            L           0    0    report_REPORTID_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."report_REPORTID_seq"', 1, false);
          public          postgres    false    223            ?           2606    16398    cafeworker cafeworker_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.cafeworker
    ADD CONSTRAINT cafeworker_pkey PRIMARY KEY ("CWORKID");
 D   ALTER TABLE ONLY public.cafeworker DROP CONSTRAINT cafeworker_pkey;
       public            postgres    false    210            ?           2606    16405    cart cart_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_pkey PRIMARY KEY ("CARTID");
 8   ALTER TABLE ONLY public.cart DROP CONSTRAINT cart_pkey;
       public            postgres    false    212            ?           2606    16414    feedback feedback_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.feedback
    ADD CONSTRAINT feedback_pkey PRIMARY KEY ("FEEDBACKID");
 @   ALTER TABLE ONLY public.feedback DROP CONSTRAINT feedback_pkey;
       public            postgres    false    214            ?           2606    16421    forder forder_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.forder
    ADD CONSTRAINT forder_pkey PRIMARY KEY ("ORDERID");
 <   ALTER TABLE ONLY public.forder DROP CONSTRAINT forder_pkey;
       public            postgres    false    216            ?           2606    16430    menu menu_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.menu
    ADD CONSTRAINT menu_pkey PRIMARY KEY ("MENUID");
 8   ALTER TABLE ONLY public.menu DROP CONSTRAINT menu_pkey;
       public            postgres    false    218            ?           2606    16439    payment payment_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_pkey PRIMARY KEY ("PAYMENTID");
 >   ALTER TABLE ONLY public.payment DROP CONSTRAINT payment_pkey;
       public            postgres    false    220            ?           2606    16446     paymentreport paymentreport_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.paymentreport
    ADD CONSTRAINT paymentreport_pkey PRIMARY KEY ("PAYMENTREPORTID");
 J   ALTER TABLE ONLY public.paymentreport DROP CONSTRAINT paymentreport_pkey;
       public            postgres    false    222            ?           2606    16453    report report_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.report
    ADD CONSTRAINT report_pkey PRIMARY KEY ("REPORTID");
 <   ALTER TABLE ONLY public.report DROP CONSTRAINT report_pkey;
       public            postgres    false    224            ?           2606    16458    student student_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_pkey PRIMARY KEY ("STUDENTID");
 >   ALTER TABLE ONLY public.student DROP CONSTRAINT student_pkey;
       public            postgres    false    225            '      x?????? ? ?      )      x?????? ? ?      +      x?????? ? ?      -      x?????? ? ?      /      x?????? ? ?      1      x?????? ? ?      3      x?????? ? ?      5      x?????? ? ?      6   S   x?3202040442?tI??L?QH??SJ??L????2Krz??dV%??K2???L?CS#??M,,??q?????? ?k!?     