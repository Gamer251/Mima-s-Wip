#========================================================================
#	�������X�g�[���[
#	�X�e�[�W4�@VS�}�~�]�E
#	�ꏊ�F�ٕς̐_�Ё�
#	�X�e�[�W�^�C�g��
#	   �u�Ƃ茾���Ēp����������ˁv
#
#========================================================================
:init
,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/marisa.csv"
,LoadImageDef,"data/event/pic/mamizou.csv"

#�t�F�C�X�摜
,DefineObject,marisa,-360,0,false
,DefineObject,mamizou,-360,0,true

,Return
# =========================================================

# �{��
# -------------------------------------------------------

# ********************************************
# ********************************************

:main_1

,GoSub,init				,# ���������[�`���Ăяo��

#�J�n�J�������o
,Function,GameStory_BeginCamera();
,Sleep,2,#�E�F�C�g����
,Function,"::act.fader.FadeIn(60, 0x00000000, null);"

,Function,"GameStory_PlayBGM(706);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,marisa_label,50,360,false
,DefineObject,mamizou_label,1120,360,false

#�����\��ݒ�
,ImageDef,marisa,������_��1,0,0
,ImageDef,mamizou,�}�~�]�E_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,th145_Show,marisa,-1280	,,#�������t�F�C�X�\���J�n

,SetFocus,marisa		,
,ImageDef,marisa,������_��1,0,0
�͂Ă���\n���y���݂̋V���^�[�C��\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,������_��1,0,0
����I�@���̟���\n�I�J���g�p���[�I\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,������_�]1,0,0
�����̗͂��g�̂�\n�������̂�����\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,������_��1,0,0
�����䂪�g�̂�\n�傫�����邪�悢�[�I\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,������_��1,0,0
�L���b\n�p���������Ƃ茾����\,a11x2,0,0
,ClearBalloon,marisa

# 2P�L�����X�e�[�W������o��
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"


,th145_Show,mamizou,-1280	,,#�������t�F�C�X�\���J�n

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_��1,0,0
���Ă�����\,a05x2,0,0
,ClearBalloon,mamizou

#�Љ�J�b�g�\���@�}�~�]�E�́u�}�~�]�E_��1�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,mamizou
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,Function,"StopBGM(500);",# BGM��~
,Function,"GameStory_PlayBattleBGM(512);",# �퓬BGM�Đ��J�n

,SetFocus,marisa		,
,ImageDef,marisa,������_��1,0,0
�����Ɓ[�H\,a05x2,0,0
,ClearBalloon,marisa


,SetFocus,marisa		,
,ImageDef,marisa,������_�{1,0,0
����ꂽ����ɂ�\n�������Ă�����\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,������_��1,0,0
���˂�\,a05x2,0,0
,ClearBalloon,marisa



#���҃t�F�C�X�P��
,th145_Hide,marisa,-1280,&
,th145_Hide,mamizou,-1280,


,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End

# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,marisa,������_��1,0,0
,ImageDef,mamizou,�}�~�]�E_�]1,0,0

,th145_Show,marisa,-1280	,&,#�������t�F�C�X�\���J�n
,th145_Show,mamizou,-1280	,#�������t�F�C�X�\���J�n

,SetFocus,mamizou
�܂������ł��\n�p���������䎌�̈����\n�N�ł����������\,a15x3,0,0

,Function,"::StopBGM(1500);"
#�R���e�j���[�����ւ̃W�����v��\��@���݂͉��Ŏ��̃X�e�[�W�ɐi��ł����߂鏈�����s���A���X�e�[�W�̍ŏ�����ĊJ���܂�
,Thread,"::story.BeginOpening();"#�I�[�v�j���O�J�n

,End




# -------------------------------------------------------
# ����
# -------------------------------------------------------
:win
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,marisa,������_��1,0,0
,ImageDef,mamizou,�}�~�]�E_��1,0,0

,th145_Show,marisa,-1280	,&,#�������t�F�C�X�\���J�n
,th145_Show,mamizou,-1280	,#�������t�F�C�X�\���J�n


,SetFocus,mamizou		,
���������l�̂��O��\n�{�[�������W�߂Ă��܂�����\,a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,marisa		,
,ImageDef,marisa,������_��1,0,0
���W�߂���\n�傫���Ȃ���ł���H\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,������_��1,0,0
����ᎄ���W�߂Ȃ���\n�N����������Ă����̂�\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_�f1,0,0
�ӂށA�������Ⴊ��\n������W�߂Ă��傫���Ȃ�񂼂�\,a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,marisa		,
,ImageDef,marisa,������_�f1,0,0
���H\,a05x2,0,0
,ClearBalloon,marisa

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_��1,0,0
����ȉ\�M�������\n�ǂ������Ă�Ǝv����\,a11x2,0,0
,ClearBalloon,mamizou

,SetFocus,marisa		,
,ImageDef,marisa,������_��1,0,0
���ꂶ�Ⴀ\n���̃{�[���͈��\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_�f1,0,0
�N�̕��������\n���܂��������\,a11x2,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_�]1,0,0
����Ⴀ�����Ŋm���߂�\n���������낤��\,a11x2,0,0
,ClearBalloon,mamizou








,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"

,End

# -------------------------------------------------------
# �T�u���[�`��
# -------------------------------------------------------
:TestMessage
�T�u���[�`�����s\
,ClearBalloon
,Return
