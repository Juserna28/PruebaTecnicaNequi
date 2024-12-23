PGDMP      6            	    |            datoslibros    17.0    17.0     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16388    datoslibros    DATABASE     �   CREATE DATABASE datoslibros WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE datoslibros;
                     postgres    false            �            1259    16541    books    TABLE     ?  CREATE TABLE public.books (
    book character varying(255) NOT NULL,
    author character varying(255) NOT NULL,
    original_language character varying(255),
    first_published integer,
    approximate_sales_in_millions integer,
    genre character varying(255),
    id integer NOT NULL,
    "CategoryId" integer
);
    DROP TABLE public.books;
       public         heap r       postgres    false            �            1259    16551    books_id_seq    SEQUENCE     �   CREATE SEQUENCE public.books_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.books_id_seq;
       public               postgres    false    217            �           0    0    books_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.books_id_seq OWNED BY public.books.id;
          public               postgres    false    219            �            1259    16632    categories_id_seq    SEQUENCE     z   CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public               postgres    false            �            1259    16546 
   categories    TABLE     �   CREATE TABLE public.categories (
    id integer DEFAULT nextval('public.categories_id_seq'::regclass) NOT NULL,
    name character varying(255) NOT NULL
);
    DROP TABLE public.categories;
       public         heap r       postgres    false    220            &           2604    16552    books id    DEFAULT     d   ALTER TABLE ONLY public.books ALTER COLUMN id SET DEFAULT nextval('public.books_id_seq'::regclass);
 7   ALTER TABLE public.books ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    219    217            �          0    16541    books 
   TABLE DATA           �   COPY public.books (book, author, original_language, first_published, approximate_sales_in_millions, genre, id, "CategoryId") FROM stdin;
    public               postgres    false    217   c       �          0    16546 
   categories 
   TABLE DATA           .   COPY public.categories (id, name) FROM stdin;
    public               postgres    false    218   �*       �           0    0    books_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.books_id_seq', 176, true);
          public               postgres    false    219            �           0    0    categories_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.categories_id_seq', 73, true);
          public               postgres    false    220            )           2606    16550    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public                 postgres    false    218            *           2606    24646    books books_CategoryId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.books
    ADD CONSTRAINT "books_CategoryId_fkey" FOREIGN KEY ("CategoryId") REFERENCES public.categories(id) ON UPDATE CASCADE;
 G   ALTER TABLE ONLY public.books DROP CONSTRAINT "books_CategoryId_fkey";
       public               postgres    false    218    4649    217            �      x�}[[sǕ~��~�"�V*��%�H$(,A�q*/L��`��ѓ-UR�:�7�d���V�,�����$���R�ߩ�*JV�/�;�3��,Sĥ�t�>�;�w���#1���G�����=n}w��O�Q���G�m�ά:~�~���ֆ7ve�X��ՖUZ��ԑp�Rm�*U�<:��e�
��!���cJ�z);�Dc�Q����X�le����E����u>�k�ސLT�Ye2��F,��=!lWX;�c�
�̸�j4�C+��w鍘�)Ox�bBb�\;���S�4�P�6�s/�nFޘ�;�w�i�ܐ�s/�l�H��:P�Ӈ�pU̺�O?��=�?�^2��^��{r�l�U�ْ�nȶUȶD�ɱW�6\)ء��&m���U�䰌O��XlX�Za]y�h(���|5���[y���ϟ����ۇ����\��֋�<x�����Z�:ܳ�I��7��L��[T�]v���2��e]��2�%������Ա+챸v��H�}q��(��c+/���Ӈ_���/~�E�:�r�H��.c>_"�6k��\_�5�|5p�4`�c���J��lc�<5���'���/O�>���ϟ|���?|��;_}����}������~����)Z�����뒫�?������GD+W��F�^S��z��ЉB�-k�ᾍ(v,w�"8�zk�,oc�ʗCxw$��XG�i�w�	�XG���I���;i�`��ۨ$6n"$�O}q� �b�ӑ�s��c_�J�1�VaY��R���oK�E�XOp/
k_�޽��N�^=����A�
�� �g��]�Q�6���j����L���W&W���ʑF���^㞧sOˤx��t���B�y���C8Mr�!�6��Fs}�	[����1w"ֽ�׮��45s#ulr�!CVT�s@���A�Ǚ�c���m����n� ���4\G�e���fm#��׻ߍ��ݙ��Txa��e�?�ϕ��O����������珟��Ǐ���߽u��=�Ļ�;����'�+�OG}x��g���E����6���<����GZ[��J̶�0��ȩ5_-B�->�B� �KQ�tݺ��E���b�_i�s&ɘ]R��|�z���Wb��(e^� ̆����kw������e]��艹�*[��6�+f=�(����#]��#��v����l�:�l^Y*���jmR�	b�bU6Ä=�l8�{d�=F�� D��"c�B�_��q�i�V���>MK��MT�_~���~�_�u���uyY+J�VI��S���1�jV��5Ȑ���(w"s�Ui$��z�X�q>�RO�P��=������Z�\g��Xf��eSC2
/��iê��x����q�m�y����줍�n����J�a5+��W�V�p_�����V�@G��|r~����������L�~z~�G�ċ���y~r���!^��po�G��&������0�����̏�ղ��pvq'ܶ�P��8���l)��KMԐ��Q�n�.C_ ͗FVݘoR��]ZȈ4D��پ7�T��6[���fy��-*��XlJYb��5WYf�o����Sw���V�����ښ�����r�����2���E:�������5r���i�CGL������ ��ET��U"�:��bG�(�W͜�FbI�L�J#C���A�q�JN
����>��F�����jK�]��M��yD^�$�&��c�U^` %����ti����mG>%�w�R�@�X�f�Pd3yժ-D|�i� ކ�zĕ]C�]X�*�mp���5b#�t�UX.�B1��������J�ʕa����c��*��(�an�->�Q�P����uO��G9� ��u�XP��Zd�Ja��s�N����@M�QvKj4֔Ʋ���BinR��8��bUY�D�S}@�U �5�b���;�Ԅ����\=nD�b��"�3��̌�u�/�*��P�<��[�����ȻѐTTdCax�XME�$�6�35��&P/�a�'lM������(��`h4���G^B_FIj���! �%��pQZ�T�]�R�UBQPb����$O��mz��ȦI�-#/�o�K�]�PؠD������S
z+Q-bN��!����3֡J�
��ͧA���2�a5��m,u~F������W7A�P�Ji.t�G'$���
~/	�Jy.�T���}���	�n��&&�٢��-�T���@��x��<M���v:��tX^mU��̭T)sin��j"}��k�<;C���7�{�n�7`��v3$f�H�Rڬ�
�#�D)-A:M�c;����je�U��(��gCu�9X�@b��;On�d��@�ApQ*CG-p�r����A|2�v����S�@�8$z*f<���oU�H�º
�*������o����,��X0�qA.˵BtV�+���W#zu$P~�"5�B!)�9�cD�,�&s�'aL�Ўܐ^��F�PA�b�J�OHе9	�"x�S����|C�R}��4�[ձ������$v �� �����>:����/���?{���gg={�ُ~��o��h�ɉr�d���WG�U/
�bd���ca@>L0�TD�n��7ɑ�={z��/�>bgO���gO��QD�Sı�	�MD+�_�"J�r˰���FM{j8t�Ң�%�Q�j�QQ	���9�5�%J�oV��� Z�i�H�o���6^{�`��[W�gV'
��j��v��Tc���Ղ���YO�(`��M�C�D'�om�l\�������LC�S��P��qA�>�� ��(�z�M���֋�Ջ��&D�\m/�&$�%��CUl��܎�jӮ�q �6�U �d����j�B�`QqZ�:Xb@�T�%ۏ��,��ɚ����T�0��)/�����X� k� �P�پ���,S��n��·��A~<;С}��A�\�\�9.P�4��k���J��`<��� :$u����C���o��QIK���n!pLS�OϦn� ��K24G!�Y,�7HMa_�pȱ��C]����G le��&)k0Z)�aKB
�j��6� i����S�VU���S3��"��[�f�J� [�%$�T��F
Er;ʹ����j0�ZR�Q����|��{��P*��'X�9<TMP�=��~(���(2����CZ�CvQX?����[�q(��8*ݨ�[�!�~t��P&gI�7�=e��|��Xu�`4�\{��\)���w��� ��,�:��̃�"�"+g�������;�����x���;Eݗ%��7�	���m��L� ���f�\�:��Q8tH��V�(�oAXP����gkK;�2���I��Q�sr �;+f�v��Ǔ����Dv]����$@���ow��k���%H��QwŻ쫙�����0�M���!�n��A$����~��e��J�֒ڑu��0qJ��/Q����$�����F^��k�%����h�=`����ғ���Ls'��ԑ� g�QNi���H�v���R�����i&�KZ_<{�X����>A�=!�P��r�p����Qـ"�ZM\j�Z�	谐�Cϧ��0�Lz�{D]�l�TH^�c�,�I�w��r�P�MN���B��)����~ن��eC�OKnb�`���ٵ!��<��l�jd� e��
���;�\s\���ηY���b�7t	Qc5���OA�>��~��������<��khXr�;�;�NM���2�Ɯ1�#N̞��X/���"�lP7?�I��@g���ŋM4�Y��c`�PI�6�3�a/%�n��Տ6��ֻ�Xi�U�r���Di��.W��$Cj�]k=�rq���.�y��OEk�{�[�;U��6Xk�A;��6�(.V�~���Gȋ/ΞIW?���h�}���*Z7�P�^�	�����i}�kiI
�������4ﱤF�����;��%����#�(���у� &	  �j��|
��=��l_���t�u�7�D�5y�T��t�Z��w5�V�xI�Q:idB�e�*��t(HGy�y�ʍ�yKEX�����D�(4L9���-%:�)�E��*��i�+�� 1K�| �� �{�S�����(n�ў�y�>��8�
p�,���b��Y7�kr
�����-�Y5=JSh�P��E��Vi�**wDg�b�V^����_<����B��2پ�dN����T^�m�ԧ&u���Y�&��J��c/��o�#�I�M����ucu�ҷPQj%��6ӆY���檎��'[���V�K��|A42��v#/��X�:F�E:*2u�)�����jtC������u�7ޥn��"̡;5���PL�!��@��C���`BRl�@x��X�:��Ĥ����=]<��12n�q$mL�qQ����h8qQԵ��5G��Ty2�f-=�#�!!��W!6L��g.9lS�������T��S (]�8���l�m�d���ľ�=�7�_܉lI'��hG���i�����z�N�w�w�@N�+H:���D�Q�F��� ��`F��0�+Z���gHo��r��SӨ�*����Ք=eS��F8�/u$�L�ʭ �cf���>(푺s�p�9��Yp����9}��>t'1��c�.?B�|�PL��{B��zůz#
*n�m�F�Xĩ;�{u�GVH��jژ��t�rP:��W�I�����&zԣ�MH�	ɸ��p6E��	#Br-�Z��F��5�&��}G���Z�gx���se�>��\OUC�y��gy}C/j?O�J�H�f�y"���-|B��]���]Z�~k�"s:����!Qơ����������綑n���?�^�g��`
���%?wz\�u���X2Y��AefB`���6��'?uj-pX��5��a9����	�P�T���芄9�NnhNK��u�J��݋7߾���ś^<��fF?�x������Eډ0�&��D����2ǐJ4���S�c�r��Lp�6z�I�f1e-A
%�U	!��H�"�� �Z���9�hebf[��q����f��=0E`6�x�P���-�(&��x��]W)ﲣsH�z��n2.7WJg�G���L��J���l3t�D��$�������KZD7ʖ>�LO":fB�&H�0�S!�[��dw�:
e(xU:S�3����*l�Q���M��B��N���ˎ-��_!�9�W��9*��ݎ��u�� �a�o@7�j�|�� []ݡ^_7?��R5e�����xGK��*��M�����Ǒ�(�u�*HN��.Wޠ�x���<ȓ��a�o���}����́:�KN�J�y����P��S7�7�%7TA�`p�E#:�.�?���W:�n��(&w�&��y0�>�<l�z����:�Ho�݇��cv�\"w[i-�6�v
lb�T�#Y�����pڈlPODDr& R�{�;|t�'o~�m��e��G��z�pã�6_sQݩ��l�M'�BZ�r�9ĳt��XpM5��ģ���� ��
<W����!�T�#'t��Ed��n
b�wc������w���n�]�u0L?
�	����;]�@"���; ����~#�:���q����S�D���R�,�� ;��Z}��\��-�<%��aΤˆ(�2g�k�=림]��&=����D�u߰,r�vwC˾��j��]p��1�}�T6ܕܪ��q�(I;Z�ʼ�uu_����� �#��m����E:��̭�S}�=�h5�:<N؄��+xt9T#�DLG�=�����_]A^TQ�[��C�C�wڷ$��]%�Z9���#�˨� ��.i��P��Mu���q���g�ۺs��N�r�����������}q�,����H��D+*>��<��o��ԩ-�Q���Hh4�Qca�hd'�0�cte/"�����O���w_���_}^�n� s��&Tm.�P�&Dw�)|�"���ȅ�[�@������P�����ʻ���ʃ����ᶜ ���{	��ܦ��M���}��DyB���Eh*^�S��nt�@e�Z+`���'~��jr��tnCkd��%����Mw���H/®�8m��Q�fty1�HZ�����Xf2�ѾqW�C��5o��V�~�K��6e�#����H
\4qWY7#������e����U�#C�Sj�,�B�2����5����P1�c��"n�_�Tu�i_y�gr�h0����ј��v ��@���pzFf8������u���C��_G�FABّ��z1�_!qFw����
B�(O�r�ҥ����������-�      �   w  x�eT_o�0��� ���ص�i����4i/.8`�Ԙn|�]������;��p�����$�p+��Äl��+7��\�������u���)3�������_��S����_�q��]�&k���6���W�Q�$����Trةn�jUw�$��ltŜ��zL�%&�*f�-���X,R�����dwz���Jvs���I	?�C������6�Ď��'k��s�v��S��ѷ����VW�3�#�Z�,M�`c'*��y��h&��ȋ������J)�@�j�|G�5\��>i�8yh'L��������tqt\K��%M#�00��dԇ)Y,N/���O��t��>l�l	����~6��~<����@��j�Q��9ݫXJ��D&]�M
I_�A5��r���DR�P��ћ���%~���^ϔ%u5K����q�z���J����ڡ�pK���H������5����S��	�NR��U�����ZU�D��tϬ����x|�`.V^lΫz�������޲�&���Kg��դb|t9�X݅(y
���k�o�-vs�W���}='��a�!G�$��r,�!X$!,����U�'dX�1a�˨c��GD�"O�W     