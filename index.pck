GDPC                                                                               <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�      �      &�y���ڞu;>��.p   res://icon.png  �\      �      G1?��z�c��vN��   res://icon.png.import   `      �      ��fe��6�B��^ U�   res://main/game/board.tscn              5T�#S��!r,h�K�    res://main/game/game.gd.remap   �[      )       z�m�i`�X�Q�Lu   res://main/game/game.gdc       �      ���Y�-����Of�k   res://main/game/game.tscn   �(      �      â�+���涉�ޮ    res://main/game/icon/cross.tscn �.      �      �F�m�
��0o!J)v9    res://main/game/icon/nought.tscn�0            I#+-�G>������$   res://main/game/icon/triangle.tscn  �2      1      ����! )�c�+rw    res://main/game/link.gd.remap   �[      )       3��o"��=��@�n���   res://main/game/link.gdc 5      )      ���ɵ�v1�9L[/[M�   res://main/game/link.tscn   08      �      Guʓ/|Ɇ�LL@    res://main/game/slot.gd.remap    \      )       �w8�qD&>��n7>�   res://main/game/slot.gdc�<      |      D��J��=�q�=X�   res://main/game/slot.tscn   pA      �      �$qdA�61 �GS$   res://main/game/small_board.gd.remapP\      0       RS���o���"f�    res://main/game/small_board.gdc  I      �      �L�Ձ�u��*���*�    res://main/game/small_board.tscn�P      �
      �>e|X�WA����	   res://project.binarypi      �      w�r�l|�kI��KGDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?����m��������_"�0@��^�"�v��s�}� �W��<f��Yn#I������wO���M`ҋ���N��m:�
��{-�4b7DԧQ��A �B�P��*B��v��
Q�-����^R�D���!(����T�B�*�*���%E["��M�\͆B�@�U$R�l)���{�B���@%P����g*Ųs�TP��a��dD
�6�9�UR�s����1ʲ�X�!�Ha�ߛ�$��N����i�a΁}c Rm��1��Q�c���fdB�5������J˚>>���s1��}����>����Y��?�TEDױ���s���\�T���4D����]ׯ�(aD��Ѓ!�a'\�G(��$+c$�|'�>����/B��c�v��_oH���9(l�fH������8��vV�m�^�|�m۶m�����q���k2�='���:_>��������á����-wӷU�x�˹�fa���������ӭ�M���SƷ7������|��v��v���m�d���ŝ,��L��Y��ݛ�X�\֣� ���{�#3���
�6������t`�
��t�4O��ǎ%����u[B�����O̲H��o߾��$���f���� �H��\��� �kߡ}�~$�f���N\�[�=�'��Nr:a���si����(9Lΰ���=����q-��W��LL%ɩ	��V����R)�=jM����d`�ԙHT�c���'ʦI��DD�R��C׶�&����|t Sw�|WV&�^��bt5WW,v�Ş�qf���+���Jf�t�s�-BG�t�"&�Ɗ����׵�Ջ�KL�2)gD� ���� NEƋ�R;k?.{L�$�y���{'��`��ٟ��i��{z�5��i������c���Z^�
h�+U�mC��b��J��uE�c�����h��}{�����i�'�9r�����ߨ򅿿��hR�Mt�Rb���C�DI��iZ�6i"�DN�3���J�zڷ#oL����Q �W��D@!'��;�� D*�K�J�%"�0�����pZԉO�A��b%�l�#��$A�W�A�*^i�$�%a��rvU5A�ɺ�'a<��&�DQ��r6ƈZC_B)�N�N(�����(z��y�&H�ض^��1Z4*,RQjԫ׶c����yq��4���?�R�����0�6f2Il9j��ZK�4���է�0؍è�ӈ�Uq�3�=[vQ�d$���±eϘA�����R�^��=%:�G�v��)�ǖ/��RcO���z .�ߺ��S&Q����o,X�`�����|��s�<3Z��lns'���vw���Y��>V����G�nuk:��5�U.�v��|����W���Z���4�@U3U�������|�r�?;�
         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              [gd_scene load_steps=2 format=2]

[ext_resource path="res://main/game/small_board.tscn" type="PackedScene" id=1]

[node name="board" type="GridContainer"]
size_flags_horizontal = 3
size_flags_vertical = 3
custom_constants/vseparation = 16
custom_constants/hseparation = 16
columns = 3

[node name="small_board" parent="." instance=ExtResource( 1 )]
margin_top = 0.0
margin_right = 112.0
margin_bottom = 112.0

[node name="small_board2" parent="." instance=ExtResource( 1 )]
margin_left = 128.0
margin_top = 0.0
margin_right = 240.0
margin_bottom = 112.0

[node name="small_board3" parent="." instance=ExtResource( 1 )]
margin_left = 256.0
margin_top = 0.0
margin_right = 368.0
margin_bottom = 112.0

[node name="small_board4" parent="." instance=ExtResource( 1 )]
margin_top = 128.0
margin_right = 112.0
margin_bottom = 240.0

[node name="small_board5" parent="." instance=ExtResource( 1 )]
margin_left = 128.0
margin_top = 128.0
margin_right = 240.0
margin_bottom = 240.0

[node name="small_board6" parent="." instance=ExtResource( 1 )]
margin_left = 256.0
margin_top = 128.0
margin_right = 368.0
margin_bottom = 240.0

[node name="small_board7" parent="." instance=ExtResource( 1 )]
margin_top = 256.0
margin_right = 112.0
margin_bottom = 368.0

[node name="small_board8" parent="." instance=ExtResource( 1 )]
margin_left = 128.0
margin_top = 256.0
margin_right = 240.0
margin_bottom = 368.0

[node name="small_board9" parent="." instance=ExtResource( 1 )]
margin_left = 256.0
margin_top = 256.0
margin_right = 368.0
margin_bottom = 368.0
           GDSC   I      �   �     ������ڶ   ��������   ����������Ӷ   �������   ����������   �����������   ������������   ���ض���   �������ض���   ����Ŷ��   ����������������������ڶ   ��������Ӷ��   �������������Ŷ�   �����������ݶ���   ���Ӷ���   ����������������¶��   ���������Ŷ�   ����Ӷ��   �����������Ŷ���   ����������Ҷ   ���������ڶ�   ��������������Ķ   �����������ض���   ����Ҷ��   �����������ض���   ���¶���   �������Ӷ���   ����������¶   �����϶�   ���������������Ŷ���   �����׶�   �����Ŷ�   �����������������������ض���   �����¶�   ����¶��   ���������¶�   ��������������������ض��   �����������ζ���   �����������ⶶ��   ������Ҷ   ���������Ӷ�   ��������¶��   ��������¶��   ���Ŷ���   ����������ݶ   ��������ζ��   ����������������������Ŷ   �����Ӷ�   ���Ӷ���   �����Ҷ�   ���������Ҷ�   �����������Ŷ���   �������Ӷ���   ����������Ŷ   �����������������������ض���   ���������������ݶ���   �����Ŷ�   ߶��   ���Ŷ���   ��������Ҷ��   ������������ض��   �������Ӷ���   ��������Ҷ��   ��������Ŷ��   ���ݶ���   ����Ҷ��   �����Ҷ�   ����Ӷ��   ��Ŷ   ��������������¶   ��¶   ���������������Ķ���   �����������������Ҷ�      ./link.tscn      �?            �>      ?      >                                                             Cross         Nought        Triangle          grid                                                               *   	   3   
   5      `      �      �      �      �      �      �      �      �      �      �      �      �                                          0      ?  !   F  "   G  #   H  $   I  %   Q  &   U  '   V  (   a  )   g  *   o  +   w  ,   }  -   �  .   �  /   �  0   �  1   �  2   �  3   �  4   �  5   �  6   �  7   �  8   �  9   �  :   �  ;   �  <   �  =   �  >   �  ?   �  @   �  A   �  B     C     D     E   !  F   %  G   )  H   0  I   ;  J   <  K   H  L   L  M   S  N   V  O   Z  P   e  Q   l  R   p  S   t  T   u  U   v  V   �  W   �  X   �  Y   �  Z   �  [   �  \   �  ]   �  ^   �  _   �  `   �  a   �  b   �  c   �  d   �  e   �  f     g   
  h     i   &  j   *  k   ;  l   Q  m   W  n   X  o   Y  p   o  q   w  r   z  s   �  t   �  u   �  v   �  w   �  x   �  y   �  z   �  {   �  |   �  }   �  ~   �     �  �   �  �   �  �     �     �     �     �   $  �   5  �   @  �   G  �   X  �   [  �   \  �   ]  �   e  �   y  �   �  �   �  �   �  �   �  �   3YYYY:�  V�  ?PQY:�  V�  L�  �  P�  R�  R�  QR�  �  P�  R�  R�  QR�  �  P�  R�  R�  QYMY:�  V�  N�  V�  R�  V�  R�  V�  R�	  V�  R�
  V�  R�  V�  R�  V�  R�  V�  R�  V�  OY:�  V�  N�  V�  R�  V�  R�  V�  R�	  V�  R�
  V�  R�  V�  R�  V�  R�  V�  R�  V�  OY:�  V�  N�  V�  R�  V�  R�  V�  R�	  V�  R�
  V�  R�  V�  R�  V�  R�  V�  R�  V�  OYY8P�  R�  R�  R�  Q;�  V�  9�  YY;�	  V�  LMY;�
  V�  �  T�  PQY;�  V�  �  T�  PQY;�  V�  �  Y;�  V�  �  Y;�  V�  NOYYYY0�  P�  V�  QX=V�  �  �  �  �  �  PQYY0�  PQX=V�  )�  W�  �  �  �  T�  PQV�  )�  �  T�  P�  QT�  PQV�  �  T�  PQYYYY0�  PQX=V�  �  PQYY0�  P�  V�  QX=V�  &P�  QV�  �  T�  �  PL�  �  T�  L�  MR�  �  T�   PQ�  MQYY0�!  P�"  V�#  QX=V�  &P�"  4�$  QV�  &P�"  T�%  �&  �"  T�'  �  QV�  �  �
  T�  PQ�  �  T�(  PQ�  �  �  �  �  �  �  �  PQYYYY0�)  P�*  V�  QX=V�  &P�  QV�  �  �  T�+  L�  R�*  M�  �  T�,  PQ�  �  �
  �  T�  PQ�  �
  L�  T�-  PQM�  �  �
  L�*  T�-  PQM�  �  �
  �.  P�
  Q�  �  �
  T�  PQ�  ;�/  VL�  R�*  R�  T�0  M�  �  �  �  �  �  �  �	  T�1  P�/  Q�  &P�2  P�	  R�*  QQV�  �  �3  P�4  P�	  R�*  R�  QQ�  �5  PQ�  �  P�  �  Q�  (V�  �  �*  �  �  L�*  T�6  PQM�  �  �  �.  P�  Q�  �7  PQ�  �  PQYYY0�.  P�8  V�  QX�  V�  )�9  �8  T�:  PQV�  &P�8  L�9  M�  W�  �  �  �  T�;  P�9  QT�<  PQQV�  .�8  �  .P�  T�  PQQYYY0�7  PQX=V�  ;�=  V�  T�=  PQ�  �=  T�,  PQ�  W�  �  �  �	  T�>  P�=  Q�  �=  T�  �  PL�=  T�   PQMQ�  �  �=  YYY0�3  P�3  V�  QX=V�  ;�?  VLM�  )�@  �	  V�  &PP�@  L�  M�3  �@  L�  M�3  QQV�  �?  T�1  P�@  Q�  �	  �?  �  )�A  W�  �  �  �	  T�  PQV�  &P�A  T�+  L�  M�3  �A  T�+  L�  M�3  QV�  �A  T�(  PQYYY0�2  P�	  V�  R�/  V�  R�B  V�  LMQX�  V�  &P�/  �B  QV�  .�  �  )�@  �	  V�  &P�@  L�  M�/  QV�  ;�?  V�	  T�  PQ�  �?  T�C  P�@  Q�  &P�2  P�?  R�@  L�  MR�B  L�/  MQQV�  .�  �  &P�@  L�  M�/  QV�  ;�?  V�	  T�  PQ�  �?  T�C  P�@  Q�  &P�2  P�?  R�@  L�  MR�B  L�/  MQQV�  .�  �  .�  YYY0�4  P�	  V�  R�/  V�  R�0  V�  QX�  V�  ;�D  VL�/  M�  �/  T�0  �0  �  )�@  �	  V�  &P�@  L�  M�/  QV�  �	  T�C  P�@  Q�  �D  �4  P�	  R�@  L�  MR�@  L�  MQ�  &P�@  L�  M�/  QV�  �	  T�C  P�@  Q�  �D  �4  P�	  R�@  L�  MR�@  L�  MQ�  .�D  YYY0�5  PQX=V�  )�9  �K  PW�  �  �  �  T�E  PQQV�  ;�  VW�  �  �  �  T�;  P�9  Q�  &P�  T�F  P�9  R�  Q�  QV�  �  L�9  M�  T�G  PQ�  �  T�H  PQY`     [gd_scene load_steps=4 format=2]

[ext_resource path="res://main/game/board.tscn" type="PackedScene" id=1]
[ext_resource path="res://main/game/game.gd" type="Script" id=2]

[sub_resource type="Environment" id=1]
background_mode = 4
glow_enabled = true
glow_levels/1 = true
glow_levels/2 = true
glow_levels/3 = false
glow_levels/5 = false
glow_blend_mode = 0
glow_hdr_threshold = 0.5
glow_bicubic_upscale = true
glow_high_quality = true

[node name="game" type="Control"]
anchor_right = 1.0
anchor_bottom = 1.0
mouse_filter = 2
script = ExtResource( 2 )

[node name="horizontal" type="HBoxContainer" parent="."]
anchor_right = 1.0
anchor_bottom = 1.0
margin_left = 64.0
margin_top = 64.0
margin_right = -64.0
margin_bottom = -64.0
mouse_filter = 2

[node name="board_container" type="AspectRatioContainer" parent="horizontal"]
margin_right = 896.0
margin_bottom = 472.0
mouse_filter = 2
size_flags_horizontal = 3

[node name="board_margin" type="MarginContainer" parent="horizontal/board_container"]
margin_left = 212.0
margin_right = 684.0
margin_bottom = 472.0
mouse_filter = 2

[node name="board" parent="horizontal/board_container/board_margin" instance=ExtResource( 1 )]
margin_right = 472.0
margin_bottom = 472.0
mouse_filter = 2

[node name="links" type="Control" parent="horizontal/board_container/board_margin"]
margin_right = 472.0
margin_bottom = 472.0
mouse_filter = 2

[node name="environment" type="WorldEnvironment" parent="."]
environment = SubResource( 1 )
               [gd_scene load_steps=3 format=2]

[sub_resource type="Shader" id=3]
code = "shader_type canvas_item;


const float WIDTH = 0.1;


void fragment() {
	COLOR = vec4(vec3(1.0, 0.0, 0.25), float(
		abs(UV.x - UV.y) <= WIDTH ||
		abs(1.0 - UV.x - UV.y) <= WIDTH
	));
}
"

[sub_resource type="ShaderMaterial" id=4]
shader = SubResource( 3 )

[node name="cross" type="ColorRect"]
visible = false
modulate = Color( 2, 2, 2, 1 )
material = SubResource( 4 )
anchor_right = 1.0
anchor_bottom = 1.0
mouse_filter = 2
         [gd_scene load_steps=3 format=2]

[sub_resource type="Shader" id=5]
code = "shader_type canvas_item;


const float WIDTH = 0.125;


void fragment() {
	COLOR = vec4(vec3(0.0, 0.5, 1.0), float(
		distance(UV, vec2(0.5)) <= 0.5 &&
		distance(UV, vec2(0.5)) >= 0.5 - WIDTH
	));
}
"

[sub_resource type="ShaderMaterial" id=6]
shader = SubResource( 5 )

[node name="nought" type="ColorRect"]
visible = false
modulate = Color( 2, 2, 2, 1 )
material = SubResource( 6 )
anchor_right = 1.0
anchor_bottom = 1.0
mouse_filter = 2
           [gd_scene load_steps=3 format=2]

[sub_resource type="Shader" id=1]
code = "shader_type canvas_item;


const float WIDTH = 0.125;


void fragment() {
	COLOR = vec4(vec3(0.125, 1.0, 0.0), float(
		abs(1.0 - UV.y) <= WIDTH ||
		abs((UV.x * 2.0 - 1.0) - UV.y) <= WIDTH ||
		abs(1.0 - (UV.x * 2.0) - UV.y) <= WIDTH
	));
}
"

[sub_resource type="ShaderMaterial" id=2]
shader = SubResource( 1 )

[node name="triangle" type="ColorRect"]
visible = false
modulate = Color( 2, 2, 2, 1 )
material = SubResource( 2 )
anchor_right = 1.0
anchor_bottom = 1.0
mouse_filter = 2
               GDSC            �      ���ӄ�   ���Ӷ���   ���Ӷ���   ���Ŷ���   ���Ӷ���   ����������ݶ   �������Ӷ���   ����¶��   �����������ض���   ߶��   ��������Ҷ��   ��������������¶   ������Ӷ   ���ض���   ������������Ķ��   �������   ���������������Ŷ���   �����׶�   �����Ŷ�   �������ض���                                	      
                     	      
   $      (      0      B      V      \      g      h      i      j      u      �      �      3YYY;�  V�  YY;�  V�  LMY;�  V�  YYY0�  P�  V�  QX=V�  �  �  �  )�  �  PQV�  )�	  �K  P�  T�
  PQT�  PQQV�  �  T�
  PQT�
  P�	  QT�  �  T�  �	  �  �  �  T�  �  �  �  T�  L�  T�  MYYYY0�  P�  V�  QX=V�  )�	  �K  P�X  P�  QQV�  �
  P�	  QT�  �  L�	  MY`       [gd_scene load_steps=5 format=2]

[ext_resource path="res://main/game/link.gd" type="Script" id=1]
[ext_resource path="res://main/game/icon/nought.tscn" type="PackedScene" id=2]
[ext_resource path="res://main/game/icon/cross.tscn" type="PackedScene" id=3]
[ext_resource path="res://main/game/icon/triangle.tscn" type="PackedScene" id=4]

[node name="link" type="Line2D"]
width = 1.0
default_color = Color( 1, 1, 1, 1 )
script = ExtResource( 1 )

[node name="0" type="Node2D" parent="."]

[node name="bounds" type="Control" parent="0"]
margin_left = -6.0
margin_top = -6.0
margin_right = 6.0
margin_bottom = 6.0
mouse_filter = 2

[node name="cross" parent="0/bounds" instance=ExtResource( 3 )]

[node name="nought" parent="0/bounds" instance=ExtResource( 2 )]

[node name="triangle" parent="0/bounds" instance=ExtResource( 4 )]

[node name="1" type="Node2D" parent="."]

[node name="bounds" type="Control" parent="1"]
margin_left = -6.0
margin_top = -6.0
margin_right = 6.0
margin_bottom = 6.0
mouse_filter = 2

[node name="cross" parent="1/bounds" instance=ExtResource( 3 )]

[node name="nought" parent="1/bounds" instance=ExtResource( 2 )]

[node name="triangle" parent="1/bounds" instance=ExtResource( 4 )]
       GDSC         %   �      �����ض�   ���Ӷ���   ���Ӷ���   ���Ӷ���   ������Ҷ   ����������¶   �������Ӷ���   ���ض���   ���ض���   �������Ӷ���   ׶��   ߶��   ��������������¶   ��������Ҷ��   ������Ӷ   �������Ҷ���   �������������Ŷ�   �����������������������ض���   ������������Ҷ��   �����������Ҷ���   ������Ҷ   ��������¶��   ���������¶�   ��������ζ��                         �?                                      	      
                     	      
   &      *      3      ;      ?      H      K      T      U      c      q      r      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   3YYY;�  V�  YY;�  V�  Y;�  V�  �  YYY0�  P�  V�  QX=V�  �  �  �  ;�  V�  �  T�  �  &P�  �  QV�  �  �  �  W�  T�	  T�
  �  �  (V�  W�  T�	  T�
  �  Y�  )�  �K  PW�  T�  PQQV�  W�  T�  P�  QT�  �  �  Y�  �  �  �  T�  L�  PQM
�  YYY0�  PQX=V�  �  �  YY0�  PQX=V�  �  �  YY0�  PQX=V�  �  T�  PQYYY0�  PQX�  V�  .�  PQT�  PQT�  PQY`    [gd_scene load_steps=9 format=2]

[ext_resource path="res://main/game/slot.gd" type="Script" id=1]
[ext_resource path="res://main/game/icon/nought.tscn" type="PackedScene" id=2]
[ext_resource path="res://main/game/icon/cross.tscn" type="PackedScene" id=3]
[ext_resource path="res://main/game/icon/triangle.tscn" type="PackedScene" id=4]

[sub_resource type="StyleBoxFlat" id=2]
bg_color = Color( 1, 1, 1, 0.121569 )
border_width_left = 2
border_width_top = 2
border_width_right = 2
border_width_bottom = 2
border_color = Color( 1, 1, 1, 1 )

[sub_resource type="StyleBoxFlat" id=1]
bg_color = Color( 0, 0, 0, 0.498039 )
border_width_left = 2
border_width_top = 2
border_width_right = 2
border_width_bottom = 2
border_color = Color( 1, 1, 1, 1 )

[sub_resource type="StyleBoxEmpty" id=4]

[sub_resource type="StyleBoxFlat" id=3]
bg_color = Color( 1, 1, 1, 0 )
border_width_left = 2
border_width_top = 2
border_width_right = 2
border_width_bottom = 2
border_color = Color( 0.247059, 0.247059, 0.247059, 1 )

[node name="slot" type="Button"]
margin_right = 32.0
margin_bottom = 32.0
rect_min_size = Vector2( 32, 32 )
size_flags_horizontal = 3
size_flags_vertical = 3
custom_styles/hover = SubResource( 2 )
custom_styles/pressed = SubResource( 1 )
custom_styles/focus = SubResource( 4 )
custom_styles/disabled = SubResource( 3 )
custom_styles/normal = SubResource( 1 )
script = ExtResource( 1 )

[node name="icon" type="Control" parent="."]
anchor_right = 1.0
anchor_bottom = 1.0
margin_left = 8.0
margin_top = 8.0
margin_right = -8.0
margin_bottom = -8.0
mouse_filter = 2

[node name="cross" parent="icon" instance=ExtResource( 3 )]

[node name="nought" parent="icon" instance=ExtResource( 2 )]

[node name="triangle" parent="icon" instance=ExtResource( 4 )]

[connection signal="mouse_entered" from="." to="." method="mouse_entered"]
[connection signal="mouse_exited" from="." to="." method="mouse_exited"]
[connection signal="pressed" from="." to="." method="pressed"]
GDSC         9   �     ��������������Ķ   ���Ӷ���   ���Ӷ���   ���Ӷ���   �����������������Ҷ�   �������Ӷ���   ���������Ŷ�   ��¶   ��������ζ��   ߶��   �����Ķ�   ��������������¶   ��������Ҷ��   ������Ӷ   ���������������Ķ���   ����Ҷ��   ����Ҷ��   ���������������Ҷ��   ����   �����Ҷ�   �����ض�   ���Ķ���   ���ڶ���   ��Ŷ   ���Ҷ���   ������������ض��   ���¶���   �����������ض���                              @@                                      	      
                     	      
          0      >      L      M      N      V      ^      f      o      p      z      �      �      �      �      �      �      �      �                   !   =  "   U  #   _  $   `  %   k  &   w  '   z  (   �  )   �  *   �  +   �  ,   �  -   �  .   �  /   �  0   �  1   �  2   �  3   �  4   �  5   �  6   �  7   �  8   �  9   3YYY;�  V�  YY;�  V�  YYY0�  P�  V�  QX=V�  �  �  �  �  �  T�  T�  P�  PQRQ�  )�	  �K  PW�
  T�  PQQV�  W�
  T�  P�	  QT�  �	  �  YYY0�  PQX�  V�  ;�  V�  LM�  ;�  V�  PQ�  )�	  �K  P�  QV�  �  ;�  V�  �  L�	  M�  &P�  L�  M�  LM�  LM�  L�  MQV�  �  T�  P�  L�  MQ�  �  ;�  VL�  L�  ML�	  MR�  LML�	  MR�  L�  ML�	  MM�  &P�  L�  M�  LM�  LM�  L�  MQV�  �  T�  P�  L�  MQ�  �  ;�  VL�  L�  ML�  MR�  LMLMR�  L�  ML�  MM�  &P�  L�  M�  LM�  LM�  L�  MQV�  �  T�  P�  L�  MQ�  �  ;�  VL�  L�  ML�  MR�  LMLMR�  L�  ML�  MM�  &P�  L�  M�  LM�  LM�  L�  MQV�  �  T�  P�  L�  MQ�  �  &P�  T�  P�  QQV�  &P�  T�  PQQV�  .�  �  'P�  T�  PQQV�  .�  .YYY0�  PQX�  V�  ;�  VLLMRLMRLMM�  )�	  W�  T�  PQV�  �  L�  P�	  �  QMT�  PW�  T�  P�	  QT�  Q�  .�  YYY0�  PQX�  V�  )�  W�  T�  PQV�  &P�  T�  QV�  .�  �  .�  Y`           [gd_scene load_steps=6 format=2]

[ext_resource path="res://main/game/slot.tscn" type="PackedScene" id=1]
[ext_resource path="res://main/game/icon/cross.tscn" type="PackedScene" id=2]
[ext_resource path="res://main/game/icon/nought.tscn" type="PackedScene" id=3]
[ext_resource path="res://main/game/icon/triangle.tscn" type="PackedScene" id=4]
[ext_resource path="res://main/game/small_board.gd" type="Script" id=5]

[node name="small_board" type="MarginContainer"]
margin_top = 120.0
margin_right = 32.0
margin_bottom = 120.0
mouse_filter = 2
size_flags_horizontal = 3
size_flags_vertical = 3
script = ExtResource( 5 )

[node name="winner" type="MarginContainer" parent="."]
margin_right = 112.0
margin_bottom = 112.0
mouse_filter = 2
custom_constants/margin_right = 16
custom_constants/margin_top = 16
custom_constants/margin_left = 16
custom_constants/margin_bottom = 16

[node name="cross" parent="winner" instance=ExtResource( 2 )]
modulate = Color( 1, 1, 1, 0.498039 )
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 16.0
margin_top = 16.0
margin_right = 96.0
margin_bottom = 96.0

[node name="nought" parent="winner" instance=ExtResource( 3 )]
modulate = Color( 1, 1, 1, 0.498039 )
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 16.0
margin_top = 16.0
margin_right = 96.0
margin_bottom = 96.0

[node name="triangle" parent="winner" instance=ExtResource( 4 )]
modulate = Color( 1, 1, 1, 0.498039 )
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 16.0
margin_top = 16.0
margin_right = 96.0
margin_bottom = 96.0

[node name="grid" type="GridContainer" parent="."]
margin_right = 112.0
margin_bottom = 112.0
mouse_filter = 2
size_flags_horizontal = 3
size_flags_vertical = 3
custom_constants/vseparation = 8
custom_constants/hseparation = 8
columns = 3

[node name="slot" parent="grid" instance=ExtResource( 1 )]

[node name="slot2" parent="grid" instance=ExtResource( 1 )]
margin_left = 40.0
margin_right = 72.0

[node name="slot3" parent="grid" instance=ExtResource( 1 )]
margin_left = 80.0
margin_right = 112.0

[node name="slot4" parent="grid" instance=ExtResource( 1 )]
margin_top = 40.0
margin_bottom = 72.0

[node name="slot5" parent="grid" instance=ExtResource( 1 )]
margin_left = 40.0
margin_top = 40.0
margin_right = 72.0
margin_bottom = 72.0

[node name="slot6" parent="grid" instance=ExtResource( 1 )]
margin_left = 80.0
margin_top = 40.0
margin_right = 112.0
margin_bottom = 72.0

[node name="slot7" parent="grid" instance=ExtResource( 1 )]
margin_top = 80.0
margin_bottom = 112.0

[node name="slot8" parent="grid" instance=ExtResource( 1 )]
margin_left = 40.0
margin_top = 80.0
margin_right = 72.0
margin_bottom = 112.0

[node name="slot9" parent="grid" instance=ExtResource( 1 )]
margin_left = 80.0
margin_top = 80.0
margin_right = 112.0
margin_bottom = 112.0
      [remap]

path="res://main/game/game.gdc"
       [remap]

path="res://main/game/link.gdc"
       [remap]

path="res://main/game/slot.gdc"
       [remap]

path="res://main/game/small_board.gdc"
�PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      application/config/name          Noughts and Collapses      application/run/main_scene$         res://main/game/game.tscn      application/config/icon         res://icon.png     display/window/stretch/mode         viewport   display/window/stretch/aspect         keep)   physics/common/enable_pause_aware_picking         )   rendering/environment/default_clear_color                    �?          