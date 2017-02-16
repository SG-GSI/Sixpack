RSRC
 LVCCLBVW   (  U             Sixpack - Driver.lvlib    � �  0           < � @�      ����            ~�lؒ�L��5��Ǣ�          ̮8"�N��A��Y��ُ ��	���B~       ��,qǖJ�0 �"��7   ����   ��w�=�Q�)+           ? LVCC    VILB    PTH0       Sixpack - Driver.lvlib              &   &x�c�d`j`�� Č@������P �T
�     L  x�c`��� H1200] �,h�`Ʀ&�e..����P7�2�gh�� YL{�&�<T�Lg���Y�X� x�)�    VIDS       �  dx��`d`�4�0� ���X���!9?%���g� &8p�҆��`F��O���@s���P��GE��G���E�X����9�m@�n��qH����� U��� �i��-,`�o0�Z32�0�d�PpP��N��F�ûCT$:'* Yi�i�F�S���0un��-2 
�Ҭ������vb�@~׃/A���v8.��g��8��|��ݸ��w"���!q܅CG���D'�+�<0sv��/d@��@�	��, Q��n��'@a� 2Leh0��
0� ��"���f�Ƌv��6�;����`��k���Y�� �PFF+�V��Ɍ�2.c�a,Q�����K7 L�m         	x�c```dd        �  14.0.1       �   14.0    �  14.0.1       �   14.0    �  14.0.1                        -  )ACHTUNG: AMax und VMax werden permanent �berpr�ft! �nderungen werden sofort behandelt!

AMax gibt die Steigung der linearen Beschleunigungsrampe an. Ausgehend von VStart (Startgeschwindigkeit, siehe SetVMinVStart) wird VAkt (die aktuelle Geschwindigkeit, Abfrage �ber GetVelocityAndActivity) alle 2 ms um den festen Wert 1/64 * AMax inkrementiert. Wenn der n�chste Erh�hungsschritt den Wert von VMax �berschreiten w�rde, wird VAkt auf VMax gesetzt.
VMax gibt den Wert f�r die Maximalgeschwindigkeit an. Nach welcher Formel sich die Geschwindigkeit berechnet, wird im Manual Kapitel 3.3.1 beschrieben.

CMD $14
MotorNr (0...5)
AMax (1..32767): Maximale Beschleunigung des Motors.
      Funktionsweise: while (VAkt >= VMax) do VAkt = VAkt + ( AMax/64 );
      VAkt = VMax;
VMax (1..511): Maximaler Wert f�r VAkt      ������  �  �� �@ �^5��R�U5�  �  �  �@ �^5��R��5�  �  �  � � 8� ���`�1��9���?�����'���� �  ����   ��������������������������������������������������������������������������������������������������������������������������������NNV����+yyyyyy�+��*Uyyyyyyyy�V��Uy�yyyyyyyyy�����  yyyyyyyU+y���O+���  yyy+�++++O���y+VΣ  yz+���ի����yV�ͣ  ���ϫ����O��OO����Ϋ��������y��yO�Vͪ������Հ+���� �����Հ�����դՀ����+�����������������������������������          FPHP       �  �x��VMLG~��tm��P�������	PGnYPC���UjI��%��+$�r�*q��'8������?V/{Hrh�&��p����޾���d��jcK�xy������������9���@vq2��#�	 ����o��/N�"��D�	�:�G5�ԥ�,:�����)�#.L�С!�5;G�,��n�Wk��Nh#kBN�Pv?���$��g�3 �@P<6��>1���2{jH.�ҮQ��)9{
3"�f�e�D�|J��~���*��&����g�MD}�U0��I��3�01ˈ��(���v����5D"춵�M�Jq�8lgga8�as:�����Kz},_��O$c���7�s���cQoH �8��ᴪ����q���5X�*�,Π
�0W���(�0P]z�b˴ۧn�ܦ8$�h�>�Z���B3�`FJ77	�`�� B��lwS'a�����3��Nu�Ny?�4(�#�l��4��{>v���Ō������������Q��9���������R">�����X��%��t�A�gx)1�O&ҷb�t,Do����_�o��f��$���7��2��޳��|>����;����uw����Wc�Ezc?��3����ˁ�i���yW���n�7{�7��R���<����9Ek�Sٛ���U�����fQ1���C�ݲތ O��֛��F*�3bq�s}}���{�`9�Em�`�����7�Y�>2~���*r���D""���؁���Ux�Ra��p�7�P���&��������x�s�@�X�����:��l�9�(��&h ��M0�|���pp�EP=�lU�==�G]��n���uU4W��9Y_�[�	���� G���1!WC3nS�z�<��FҞ�����e�y�Xjw��jp�5�*�jZ����\;z5�ʪ��a�	��S��B4a5�>��YZ��WS�(X��]&�w�̃%�@q��Q	'��2r���N��i��v�N���Ա��j|+����c�ڭPt|�����*w�;��F��CG�����ax$�_@���3�����8~�yy�p�R�qd��x[����%w��䧥�K�4)+�ʴ`�r�02�\wuhR.6> �p���%i���[/�W�{�n���uf��TB�6 �Z���?�        5           BDHP        b   rx�c``��`��P���I�+�!���YЏ�7���a �( 	����.��>��� �l���9�2-�����z�\�8Se�<� b           �      NI_IconEditor �     @0����Data      T14018008    Load & Unload.lvclass       	  "ddPTH0                 Layer.lvclass         �          � (  �                 ���                                                                                                     �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��       �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��       �� �� �� �� �� �� ��  3��� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��       �� �� �� �� �� ��  3���  3��� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��       �� �� �� �� �� ��  3���  3���  3� 3� 3� 3��� �� ��  3� 3���  3���  3��� �� �� �� �� �� ��       �� �� �� �� �� ��  3� 3� 3���  3���  3���  3���  3���  3��� ��  3��� �� �� �� �� �� �� ��       �� �� �� �� �� ��  3���  3���  3���  3���  3��� ��  3� 3���  3���  3��� �� �� �� �� �� ��       �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��       �� �� �� �� ��  3��� �� ��  3��� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��       �� �� �� �� ��  3��� �� ��  3��� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��       �� �� �� �� �� ��  3���  3��� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��       �� �� �� �� �� ��  3���  3���  3� 3� 3� 3��� �� ��  3� 3���  3���  3��� �� �� �� �� �� ��       �� �� �� �� �� �� ��  3��� ��  3���  3���  3���  3���  3��� ��  3��� �� �� �� �� �� �� ��       �� �� �� �� �� �� ��  3��� ��  3���  3���  3��� ��  3� 3���  3���  3��� �� �� �� �� �� ��       �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��       �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��       �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��ݙ������������� �� �� �� �� �� �� �� �� �� ��       �� �� �� �� �� �� �� �� �� �� ������f��f��f��f��f��f��33f����� �� �� �� �� �� �� �� �� ��       �� �� �� �� �� �� �� ������f��f��f��f��f��f��f��f��ff�ff������ �� �� �� �� �� �� �� ��       �� �� �� �� �� �� �� ���f�����f��f��f��f��f��f��f��f��f��ff�ff������ �� �� �� �� �� �� ��       �� �� �� �� �� �� �� ff�3f�������f��f��f��f��f��f��f�̙�����f��www�� �� �� �� �� �� �� ��       �� �� �� �� �� �����̪��3f�3f�������f��f��f����̪�������������̙��33��� �� �� �� �� �� ��       �� �� �� �� �� �� f����̙�� 3�3f�������f��ff�f����̪��ff�33� 3�  f33ff33�� �� �� �� �� ��       �� �� �� �� �� �� ���f�̙��www 3�3f�������ff�3f�33� 3� 3f33f33f 3f      ����� �� �� �� ��       �� �� �� �� �� �� �� ��̙��wwwfff 3�ff�3f� 3�33f33f33f 3f  3  3  3  f  ff���� �� �� �� ��       �� �� �� �� �� �� �� �� f�̙��www��� 3�33�33f33f  3  3  3  f  fff������ �� �� �� �� �� ��       �� �� �� �� �� �� �� �� �� 3��3̙���33f  3  3  f  f  fff������ �� �� �� �� �� �� �� �� ��       �� �� �� �� �� �� �� �� �� �� 3f�  3  f3f�  fff������ �� �� �� �� �� �� �� �� �� �� �� ��       �� �� �� �� �� �� �� �� �� �� �� 33�ff������ �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��       �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��                                                                                                    ��������������������������������������������������������������������������������������������������������������������������������   Filld                                    Small Fonts 	                \   (                                        �  mx�mN�j�`������(s��
Q
=F��
b��11L�H���g�[z�o�|_�aagvwv t�t�0��^���8���u��}L����{��~D��o�g{���� >�Ѳ6���1k�'1z�9n��m��@����B"W��� a�F�=�v�d�j�E/A	e��B���~PEU�4��b�`���Jh��,�7��h�^4Z:\��^�M4����|�k�����Yg�������p-�      w       X      � �   a      � �   j      � �   s� � �   � �   u� � �   � �Segoe UISegoe UISegoe UI10 RSRC
 LVCCLBVW   (  U                      4  H   LIBN      lLVSR      �RTSG      �CCST      �LIvi      �CONP      �TM80      �DFDS      �LIds      VICD       GCDI      4vers     HGCPR      �STRG      �ICON      �icl8      �CPC2      �LIfp      FPHb      $FPSE      8VPDP      LLIbd      `BDHb      tBDSE      �VITS      �DTHP      �MUID      �HIST      �VCTP      �FTAB           ����                                    ����       �        ����       �        ����       �        ����              ����              ����      H        ����      �        ����      �        ����      4       ����      L       ����      `       ����      p       	����      �       
����      �        ����      �        ����      �        ����      �        ����      t        ����      x        ����      �        ����      �        ����      4        ����      <        ����      D        ����      T        ����      �        ����      �        ����      T        ����      \        ����      d        ����      �       �����      �    VmaxAmax.ctl