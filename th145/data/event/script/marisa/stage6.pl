#========================================================================
#	���J�������X�g�[���[
#	�X�e�[�W5�@VS俎q
#	�ꏊ�F�O�̐��E
#	�X�e�[�W�^�C�g��
#	   �u������̃A�[�o�����C�t�v
#
#========================================================================
:init
,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/marisa.csv"
,LoadImageDef,"data/event/pic/usami.csv"

#�t�F�C�X�摜
,DefineObject,marisa,-360,0,false
,DefineObject,usami,-360,0,true

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

,Function,"GameStory_PlayBGM(707);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,marisa_label,50,360,false
,DefineObject,usami_label,1120,360,false

#�����\��ݒ�
,ImageDef,marisa,������_��1,0,0
,ImageDef,usami,俎q_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

# 2P�L�����X�e�[�W������o��
,Function,GameStory_2P_In_Under(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"





,SetFocus,usami		,#�������L�������w��
,ImageDef,usami,俎q_�]1,0,0
,th145_Show,usami,-1280	,�t�F�C�X�\���J�n
���΂ɍ���̍�������\n�܂������N���ĂȂ����ˁH\,a15x3,0,0
,ClearBalloon,usami

,SetFocus,usami		,#�������L�������w��
,ImageDef,usami,俎q_�f1,0,0
����̓r�b�N�������Ȃ�\n�܂��������Ȃ�ޏ���\n�U�������Ȃ�āc�c\,a15x3,0,0
,ClearBalloon,usami


,th145_Hide,usami,-1280,



#1P�ォ��o��
,Function,GameStory_1P_In(),
,Function,"function main(){ for (local i=0; i < 90; i++) suspend(); }"

,ImageDef,usami,俎q_��1,0,0


,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��3,0,0
,th145_Show,marisa,-1280	,#�얲�t�F�C�X�\���J�n
����������\,a05x2,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��1,0,0
�����ῂ����Ėڂ��ɂ���\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_�{1,0,0
\R[�O�̐��E|������]�ɋ�����͔̂������炢\n�����Č����Ă��ȁc�c��H\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,usami		,#�������L�������w��
,ImageDef,usami,俎q_��1,0,0
,th145_Show,usami,-1280	,�t�F�C�X�\���J�n
��[�A�ނꂽ�ނꂽ�I\,a11x2,0,0
,ClearBalloon,usami

,SetFocus,usami		,#�������L�������w��
,ImageDef,usami,俎q_��1,0,0
�����ł�����Ď���\n����ς�l�Ԃ��ᖳ������\,a15x3,0,0
,ClearBalloon,usami


,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��2,0,0
�܂������Ȃ��l�Ԃ�\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,usami		,#�������L�������w��
,ImageDef,usami,俎q_��1,0,0
�l�ԁc�c�H\,a05x2,0,0
,ClearBalloon,usami

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_�f1,0,0
���O�����c�c���҂��H\n�O�̐l�Ԃ���ȁH\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_�{1,0,0
�Ƃ��������O����\n����㩂ɛƂ߂��z��\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,usami		,#�������L�������w��
,ImageDef,usami,俎q_��1,0,0
�����ɂ�\,a05x2,0,0
,ClearBalloon,usami

,SetFocus,usami		,#�������L�������w��
,ImageDef,usami,俎q_�]1,0,0
���ȏЉ�x�ꂽ��\,a11x2,0,0
,ClearBalloon,usami

,SetFocus,usami		,#�������L�������w��
,ImageDef,usami,俎q_��1,0,0
���[�����Z��N�A\R[�F����|������]\R[俎q|���݂ꂱ]\n�����q���ق�{���̒��\�͎҂�\,a15x3,0,0
,ClearBalloon,usami

#�Љ�J�b�g�\���@�ؐ�́u�ؐ�_�{1�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,usami
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"


,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��1,0,0
���A���Z���Č����ƃA�������\n�w�Z�����\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,usami		,#�������L�������w��
,ImageDef,usami,俎q_�f1,0,0
������H\n�������������ɂ͂Ȃ��̂��ȁH\,a15x3,0,0
,ClearBalloon,usami

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��1,0,0
�w�Z�̉��k�Ƃ�����񂾂�ȁH\n��������Ȃ�\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,usami		,#�������L�������w��
,ImageDef,usami,俎q_�f1,0,0
���邯�ǁc�c\n����Ȃ��Ƃ��\n�M���̘b�������ƕ���������\,a15x3,0,0
,ClearBalloon,usami

,SetFocus,usami		,#�������L�������w��
,ImageDef,usami,俎q_�]1,0,0
���z���̎����m�肽����\n�Ăэ��񂾂񂾂���\,a15x3,0,0
,ClearBalloon,usami

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��1,0,0
�Ăэ��񂾁A���ƁH\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,usami		,#�������L�������w��
,ImageDef,usami,俎q_��1,0,0
���͂�\n���������Ȃ炻������\n���E�ɓ�����\,a15x3,0,0
,ClearBalloon,usami

,SetFocus,usami		,#�������L�������w��
,ImageDef,usami,俎q_��1,0,0
���������E��������\,a11x2,0,0
,ClearBalloon,usami

,SetFocus,usami		,#�������L�������w��
,ImageDef,usami,俎q_�]1,0,0
������閧�𔘂������̂�\n�����댯�Ȗڂɑ����Ă�\,a15x3,0,0
,ClearBalloon,usami

,Function,"StopBGM(2000);",# BGM��~

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��1,0,0
�c�c�������A���E�͊O����ł�\n�댯�ɂ��炳��Ă���񂾂�\,a15x3,0,0
,ClearBalloon,marisa


,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_�{1,0,0
�F�X�u�������������邪\n���ɂ͂������Ԃ�����\,a11x2,0,0
,ClearBalloon,marisa


,Function,"GameStory_PlayBattleBGM(511);",# �퓬BGM�Đ��J�n

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_�{1,0,0
���͖��J��������\n�{���̖��@�g����\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��1,0,0
�����̎d�������ł�\n���Ă�����\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,usami		,#�������L�������w��
,ImageDef,usami,俎q_�]1,0,0
�c�c�m���Ă��\n���z���̗d���̎d��\,a11x2,0,0
,ClearBalloon,usami

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��1,0,0
�l�Ԃ�\,a05x2,0,0
,ClearBalloon,marisa


,SetFocus,usami		,#�������L�������w��
,ImageDef,usami,俎q_��1,0,0
���Ȃ��̎d��\n�����������Ƃł���H\,a11x2,0,0
,ClearBalloon,usami

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��1,0,0
�������A�@�����ǂ���\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��1,0,0
�������ʂ̐l�ԂƂ�荇���̂�\n�t�F�A���ᖳ���C�����邪�c�c\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,usami		,#�������L�������w��
,ImageDef,usami,俎q_��1,0,0
�M�������A�C��t���������ǂ����\n���͏��q�����ɂ�����\n���킪���鎞�ゾ����c�c\,a15x3,0,0
,ClearBalloon,usami

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��1,0,0
���債�������[���ĂȂ񂾁H\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,usami		,#�������L�������w��
,ImageDef,usami,俎q_��1,0,0
�ِ��E�̋M����\n�����Ă�����\,a11x2,0,0
,ClearBalloon,usami
�O�̐��E�ŗB�ꖳ���\n�ŋ����G�̎푰�̎���I\,b11x2,0,0
,ClearBalloon,usami



#���҃t�F�C�X�P��
,th145_Hide,marisa,-1280,&
,th145_Hide,usami,-1280,


,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End




# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,marisa,������_��1,0,0
,ImageDef,usami,俎q_��1,0,0

,th145_Show,marisa,-1280	,&,#�������t�F�C�X�\���J�n
,th145_Show,usami,-1280	,#�������t�F�C�X�\���J�n

,SetFocus,usami
���[��\n���F�B����n�߂܂��傤�H\,a15x3,0,0

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
,ImageDef,usami,俎q_��1,0,0

,th145_Show,marisa,-1280	,&,#�������t�F�C�X�\���J�n
,th145_Show,usami,-1280	,#�������t�F�C�X�\���J�n

,SetFocus,usami
�@\,a11x2,0,0
,ClearBalloon,usami

,Function,"::StopBGM(1500);"
,Thread,"::story.BeginOpening();"#�I�[�v�j���O�J�n

,End

# -------------------------------------------------------
# �T�u���[�`��
# -------------------------------------------------------
:TestMessage
�T�u���[�`�����s\
,ClearBalloon
,Return
