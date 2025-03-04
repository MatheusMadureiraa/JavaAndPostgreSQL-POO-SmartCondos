PGDMP  %    
                }         
   smartcondo    16.4    16.4 C    ]           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ^           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            _           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            `           1262    16438 
   smartcondo    DATABASE     l   CREATE DATABASE smartcondo WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE smartcondo;
                postgres    false            �            1259    16439    Aviso    TABLE     `   CREATE TABLE public."Aviso" (
    "idAviso" integer NOT NULL,
    "textoAviso" text NOT NULL
);
    DROP TABLE public."Aviso";
       public         heap    postgres    false            �            1259    16444 	   Condomino    TABLE     n   CREATE TABLE public."Condomino" (
    "cpfCondomino" bigint NOT NULL,
    "aptoCondomino" integer NOT NULL
);
    DROP TABLE public."Condomino";
       public         heap    postgres    false            �            1259    16447 	   Encomenda    TABLE     �   CREATE TABLE public."Encomenda" (
    "idEncomenda" integer NOT NULL,
    "dataEncomenda" date NOT NULL,
    "aptoEncomenda" integer NOT NULL,
    "cpfFuncionario" bigint NOT NULL
);
    DROP TABLE public."Encomenda";
       public         heap    postgres    false            a           0    0    TABLE "Encomenda"    COMMENT     R   COMMENT ON TABLE public."Encomenda" IS 'Encomenda recebida pelo ''Funcionario''';
          public          postgres    false    217            �            1259    16450    Funcionario    TABLE     �   CREATE TABLE public."Funcionario" (
    cpf bigint NOT NULL,
    "cargoFuncionario" text NOT NULL,
    "turnoFuncionario" text NOT NULL
);
 !   DROP TABLE public."Funcionario";
       public         heap    postgres    false            �            1259    16455 
   Ocorrencia    TABLE     �   CREATE TABLE public."Ocorrencia" (
    "idOcorrencia" integer NOT NULL,
    "textoOcorrencia" text NOT NULL,
    "cpfOcorrencia" bigint
);
     DROP TABLE public."Ocorrencia";
       public         heap    postgres    false            �            1259    16460    Pessoa    TABLE     �   CREATE TABLE public."Pessoa" (
    cpf bigint NOT NULL,
    nome text NOT NULL,
    telefone text NOT NULL,
    email text,
    endereco text,
    condomino boolean NOT NULL
);
    DROP TABLE public."Pessoa";
       public         heap    postgres    false            �            1259    16465    Reserva    TABLE     �   CREATE TABLE public."Reserva" (
    "idReserva" integer NOT NULL,
    "localReserva" text NOT NULL,
    "dataReserva" date NOT NULL,
    "cpfReserva" bigint NOT NULL
);
    DROP TABLE public."Reserva";
       public         heap    postgres    false            �            1259    16470    Sindico    TABLE     �   CREATE TABLE public."Sindico" (
    "mandatoInicio" date NOT NULL,
    "mandatoFim" date NOT NULL,
    "cpfSindico" bigint NOT NULL
);
    DROP TABLE public."Sindico";
       public         heap    postgres    false            �            1259    16473    Tag    TABLE     _   CREATE TABLE public."Tag" (
    "idTag" integer NOT NULL,
    "cpfCodomino" bigint NOT NULL
);
    DROP TABLE public."Tag";
       public         heap    postgres    false            �            1259    16549 
   Tag_id_seq    SEQUENCE     u   CREATE SEQUENCE public."Tag_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."Tag_id_seq";
       public          postgres    false            �            1259    16476 	   Visitante    TABLE     g   CREATE TABLE public."Visitante" (
    cpf bigint NOT NULL,
    data date NOT NULL,
    apto integer
);
    DROP TABLE public."Visitante";
       public         heap    postgres    false            �            1259    16554    aviso_id_seq    SEQUENCE     u   CREATE SEQUENCE public.aviso_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.aviso_id_seq;
       public          postgres    false    215            b           0    0    aviso_id_seq    SEQUENCE OWNED BY     F   ALTER SEQUENCE public.aviso_id_seq OWNED BY public."Aviso"."idAviso";
          public          postgres    false    228            �            1259    16552    encom_id_seq    SEQUENCE     u   CREATE SEQUENCE public.encom_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.encom_id_seq;
       public          postgres    false    217            c           0    0    encom_id_seq    SEQUENCE OWNED BY     N   ALTER SEQUENCE public.encom_id_seq OWNED BY public."Encomenda"."idEncomenda";
          public          postgres    false    227            �            1259    16556    reserva_id_seq    SEQUENCE     w   CREATE SEQUENCE public.reserva_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.reserva_id_seq;
       public          postgres    false    221            d           0    0    reserva_id_seq    SEQUENCE OWNED BY     L   ALTER SEQUENCE public.reserva_id_seq OWNED BY public."Reserva"."idReserva";
          public          postgres    false    229            �            1259    16550 
   tag_id_seq    SEQUENCE     s   CREATE SEQUENCE public.tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.tag_id_seq;
       public          postgres    false    223            e           0    0 
   tag_id_seq    SEQUENCE OWNED BY     @   ALTER SEQUENCE public.tag_id_seq OWNED BY public."Tag"."idTag";
          public          postgres    false    226            �           2604    16555    Aviso idAviso    DEFAULT     m   ALTER TABLE ONLY public."Aviso" ALTER COLUMN "idAviso" SET DEFAULT nextval('public.aviso_id_seq'::regclass);
 @   ALTER TABLE public."Aviso" ALTER COLUMN "idAviso" DROP DEFAULT;
       public          postgres    false    228    215            �           2604    16553    Encomenda idEncomenda    DEFAULT     u   ALTER TABLE ONLY public."Encomenda" ALTER COLUMN "idEncomenda" SET DEFAULT nextval('public.encom_id_seq'::regclass);
 H   ALTER TABLE public."Encomenda" ALTER COLUMN "idEncomenda" DROP DEFAULT;
       public          postgres    false    227    217            �           2604    16557    Reserva idReserva    DEFAULT     s   ALTER TABLE ONLY public."Reserva" ALTER COLUMN "idReserva" SET DEFAULT nextval('public.reserva_id_seq'::regclass);
 D   ALTER TABLE public."Reserva" ALTER COLUMN "idReserva" DROP DEFAULT;
       public          postgres    false    229    221            �           2604    16551 	   Tag idTag    DEFAULT     g   ALTER TABLE ONLY public."Tag" ALTER COLUMN "idTag" SET DEFAULT nextval('public.tag_id_seq'::regclass);
 <   ALTER TABLE public."Tag" ALTER COLUMN "idTag" DROP DEFAULT;
       public          postgres    false    226    223            L          0    16439    Aviso 
   TABLE DATA           :   COPY public."Aviso" ("idAviso", "textoAviso") FROM stdin;
    public          postgres    false    215   bJ       M          0    16444 	   Condomino 
   TABLE DATA           F   COPY public."Condomino" ("cpfCondomino", "aptoCondomino") FROM stdin;
    public          postgres    false    216   �J       N          0    16447 	   Encomenda 
   TABLE DATA           h   COPY public."Encomenda" ("idEncomenda", "dataEncomenda", "aptoEncomenda", "cpfFuncionario") FROM stdin;
    public          postgres    false    217   �J       O          0    16450    Funcionario 
   TABLE DATA           T   COPY public."Funcionario" (cpf, "cargoFuncionario", "turnoFuncionario") FROM stdin;
    public          postgres    false    218   K       P          0    16455 
   Ocorrencia 
   TABLE DATA           Z   COPY public."Ocorrencia" ("idOcorrencia", "textoOcorrencia", "cpfOcorrencia") FROM stdin;
    public          postgres    false    219   `K       Q          0    16460    Pessoa 
   TABLE DATA           S   COPY public."Pessoa" (cpf, nome, telefone, email, endereco, condomino) FROM stdin;
    public          postgres    false    220   }K       R          0    16465    Reserva 
   TABLE DATA           ]   COPY public."Reserva" ("idReserva", "localReserva", "dataReserva", "cpfReserva") FROM stdin;
    public          postgres    false    221   �L       S          0    16470    Sindico 
   TABLE DATA           P   COPY public."Sindico" ("mandatoInicio", "mandatoFim", "cpfSindico") FROM stdin;
    public          postgres    false    222   �L       T          0    16473    Tag 
   TABLE DATA           7   COPY public."Tag" ("idTag", "cpfCodomino") FROM stdin;
    public          postgres    false    223   )M       U          0    16476 	   Visitante 
   TABLE DATA           6   COPY public."Visitante" (cpf, data, apto) FROM stdin;
    public          postgres    false    224   gM       f           0    0 
   Tag_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."Tag_id_seq"', 1, false);
          public          postgres    false    225            g           0    0    aviso_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.aviso_id_seq', 5, true);
          public          postgres    false    228            h           0    0    encom_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.encom_id_seq', 3, true);
          public          postgres    false    227            i           0    0    reserva_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.reserva_id_seq', 5, true);
          public          postgres    false    229            j           0    0 
   tag_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.tag_id_seq', 12, true);
          public          postgres    false    226            �           2606    16480    Aviso Aviso_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public."Aviso"
    ADD CONSTRAINT "Aviso_pkey" PRIMARY KEY ("idAviso");
 >   ALTER TABLE ONLY public."Aviso" DROP CONSTRAINT "Aviso_pkey";
       public            postgres    false    215            �           2606    16482    Condomino Condomino_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."Condomino"
    ADD CONSTRAINT "Condomino_pkey" PRIMARY KEY ("cpfCondomino");
 F   ALTER TABLE ONLY public."Condomino" DROP CONSTRAINT "Condomino_pkey";
       public            postgres    false    216            �           2606    16484    Encomenda Encomenda_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public."Encomenda"
    ADD CONSTRAINT "Encomenda_pkey" PRIMARY KEY ("idEncomenda");
 F   ALTER TABLE ONLY public."Encomenda" DROP CONSTRAINT "Encomenda_pkey";
       public            postgres    false    217            �           2606    16486    Funcionario Funcionario_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."Funcionario"
    ADD CONSTRAINT "Funcionario_pkey" PRIMARY KEY (cpf);
 J   ALTER TABLE ONLY public."Funcionario" DROP CONSTRAINT "Funcionario_pkey";
       public            postgres    false    218            �           2606    16488    Ocorrencia Ocorrencia_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."Ocorrencia"
    ADD CONSTRAINT "Ocorrencia_pkey" PRIMARY KEY ("idOcorrencia");
 H   ALTER TABLE ONLY public."Ocorrencia" DROP CONSTRAINT "Ocorrencia_pkey";
       public            postgres    false    219            �           2606    16490    Pessoa Pessoa_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public."Pessoa"
    ADD CONSTRAINT "Pessoa_pkey" PRIMARY KEY (cpf);
 @   ALTER TABLE ONLY public."Pessoa" DROP CONSTRAINT "Pessoa_pkey";
       public            postgres    false    220            �           2606    16492    Reserva Reserva_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."Reserva"
    ADD CONSTRAINT "Reserva_pkey" PRIMARY KEY ("idReserva");
 B   ALTER TABLE ONLY public."Reserva" DROP CONSTRAINT "Reserva_pkey";
       public            postgres    false    221            �           2606    16494    Sindico Sindico_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Sindico"
    ADD CONSTRAINT "Sindico_pkey" PRIMARY KEY ("cpfSindico");
 B   ALTER TABLE ONLY public."Sindico" DROP CONSTRAINT "Sindico_pkey";
       public            postgres    false    222            �           2606    16496    Tag Tag_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public."Tag"
    ADD CONSTRAINT "Tag_pkey" PRIMARY KEY ("idTag");
 :   ALTER TABLE ONLY public."Tag" DROP CONSTRAINT "Tag_pkey";
       public            postgres    false    223            �           2606    16498    Visitante Visitante_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public."Visitante"
    ADD CONSTRAINT "Visitante_pkey" PRIMARY KEY (cpf);
 F   ALTER TABLE ONLY public."Visitante" DROP CONSTRAINT "Visitante_pkey";
       public            postgres    false    224            �           2606    16500    Condomino unique_cpf_condomino 
   CONSTRAINT     e   ALTER TABLE ONLY public."Condomino"
    ADD CONSTRAINT unique_cpf_condomino UNIQUE ("cpfCondomino");
 J   ALTER TABLE ONLY public."Condomino" DROP CONSTRAINT unique_cpf_condomino;
       public            postgres    false    216            �           2606    16501    Condomino fk_condomino_pessoa    FK CONSTRAINT     �   ALTER TABLE ONLY public."Condomino"
    ADD CONSTRAINT fk_condomino_pessoa FOREIGN KEY ("cpfCondomino") REFERENCES public."Pessoa"(cpf) NOT VALID;
 I   ALTER TABLE ONLY public."Condomino" DROP CONSTRAINT fk_condomino_pessoa;
       public          postgres    false    216    220    3500            �           2606    16506 "   Encomenda fk_encomenda_funcionario    FK CONSTRAINT     �   ALTER TABLE ONLY public."Encomenda"
    ADD CONSTRAINT fk_encomenda_funcionario FOREIGN KEY ("cpfFuncionario") REFERENCES public."Funcionario"(cpf) NOT VALID;
 N   ALTER TABLE ONLY public."Encomenda" DROP CONSTRAINT fk_encomenda_funcionario;
       public          postgres    false    217    218    3496            k           0    0 2   CONSTRAINT fk_encomenda_funcionario ON "Encomenda"    COMMENT     v   COMMENT ON CONSTRAINT fk_encomenda_funcionario ON public."Encomenda" IS 'CPF do funcionario que recebeu a encomenda';
          public          postgres    false    3510            �           2606    16511 !   Funcionario fk_funcionario_pessoa    FK CONSTRAINT     �   ALTER TABLE ONLY public."Funcionario"
    ADD CONSTRAINT fk_funcionario_pessoa FOREIGN KEY (cpf) REFERENCES public."Pessoa"(cpf);
 M   ALTER TABLE ONLY public."Funcionario" DROP CONSTRAINT fk_funcionario_pessoa;
       public          postgres    false    3500    218    220            l           0    0 1   CONSTRAINT fk_funcionario_pessoa ON "Funcionario"    COMMENT     j   COMMENT ON CONSTRAINT fk_funcionario_pessoa ON public."Funcionario" IS 'CPF da tabela/classe ''Pessoa''';
          public          postgres    false    3511            �           2606    16516 "   Ocorrencia fk_ocorrencia_condomino    FK CONSTRAINT     �   ALTER TABLE ONLY public."Ocorrencia"
    ADD CONSTRAINT fk_ocorrencia_condomino FOREIGN KEY ("cpfOcorrencia") REFERENCES public."Condomino"("cpfCondomino") ON UPDATE CASCADE ON DELETE CASCADE;
 N   ALTER TABLE ONLY public."Ocorrencia" DROP CONSTRAINT fk_ocorrencia_condomino;
       public          postgres    false    219    216    3490            m           0    0 2   CONSTRAINT fk_ocorrencia_condomino ON "Ocorrencia"    COMMENT     i   COMMENT ON CONSTRAINT fk_ocorrencia_condomino ON public."Ocorrencia" IS 'CPF de quem fez a ocorrência';
          public          postgres    false    3512            �           2606    16521    Reserva fk_reserva_condomino    FK CONSTRAINT     �   ALTER TABLE ONLY public."Reserva"
    ADD CONSTRAINT fk_reserva_condomino FOREIGN KEY ("cpfReserva") REFERENCES public."Condomino"("cpfCondomino");
 H   ALTER TABLE ONLY public."Reserva" DROP CONSTRAINT fk_reserva_condomino;
       public          postgres    false    216    3490    221            n           0    0 ,   CONSTRAINT fk_reserva_condomino ON "Reserva"    COMMENT     d   COMMENT ON CONSTRAINT fk_reserva_condomino ON public."Reserva" IS 'CPF de quem realizou a reserva';
          public          postgres    false    3513            �           2606    16526    Sindico fk_sindico_condomino    FK CONSTRAINT     �   ALTER TABLE ONLY public."Sindico"
    ADD CONSTRAINT fk_sindico_condomino FOREIGN KEY ("cpfSindico") REFERENCES public."Condomino"("cpfCondomino");
 H   ALTER TABLE ONLY public."Sindico" DROP CONSTRAINT fk_sindico_condomino;
       public          postgres    false    216    222    3490            �           2606    16531    Tag fk_tag_condomino    FK CONSTRAINT     �   ALTER TABLE ONLY public."Tag"
    ADD CONSTRAINT fk_tag_condomino FOREIGN KEY ("cpfCodomino") REFERENCES public."Condomino"("cpfCondomino");
 @   ALTER TABLE ONLY public."Tag" DROP CONSTRAINT fk_tag_condomino;
       public          postgres    false    223    216    3490            o           0    0 $   CONSTRAINT fk_tag_condomino ON "Tag"    COMMENT     m   COMMENT ON CONSTRAINT fk_tag_condomino ON public."Tag" IS 'CPF do ''Condomino'' que criou e gerencia a Tag';
          public          postgres    false    3515            �           2606    16536    Visitante fk_visitante_pessoa    FK CONSTRAINT     �   ALTER TABLE ONLY public."Visitante"
    ADD CONSTRAINT fk_visitante_pessoa FOREIGN KEY (cpf) REFERENCES public."Pessoa"(cpf) NOT VALID;
 I   ALTER TABLE ONLY public."Visitante" DROP CONSTRAINT fk_visitante_pessoa;
       public          postgres    false    224    220    3500            L   (   x�3�L��UH�LTHT(�O�/V�2��HM������� ���      M   5   x��A
  ���c�������w8�"���O/L+��n�eUao�E��	)      N   $   x�3�4202�50�50�442�44�2�"���� �f      O   =   x�34��/*I�,��I,JI�242�J�IL�/��M��8��˄38��3KR�b���� �)�      P      x������ � �      Q     x�UQKn� ]�� Qd�1�� �T]v3��MeL���uٓu0I�z��͛��\G�- �sV�4"[0�EHu"��ܥ]ʳ�B����t���\�ʄ�ϔD:X�R�Q ���K�G��Z��F����=q7��J
�CP�y�z�̵0aX�ީ�ࣃ�ր�F ��c�6�%�U{����U]�W�CW���|��s��<XS$*!�_��qu%�ֻ��G��CF(�?E�^��lY{����ߦ�2�t�I�Z��H�������!��3c���"      R   C   x�3�N�9�8_!%U�-��$������T��H�Ȍ��Șˈ�9���(���45�(!m������ �!      S   !   x�3202�50�52�4�28���+F��� _Hc      T   .   x�3�4162�2�P��BYrs@(CNc �24��1z\\\ +	\      U   (   x�3161�0351�0�4202�50�52�410����� c��     