#========================================================================
#	���g�X�g�[���[
#	�X�e�[�W4�@VS�ؐ�
#	�ꏊ�F�ٕς̐_��
#	�X�e�[�W�^�C�g��
#	   �u���ɂ�����̕s���ҁv
#
#========================================================================
:init
,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/mokou.csv"
,LoadImageDef,"data/event/pic/kasen.csv"

#�t�F�C�X�摜
,DefineObject,mokou,-360,0,false
,DefineObject,kasen,-360,0,true

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

,Function,"GameStory_PlayBGM(705);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,mokou_label,50,360,false
,DefineObject,kasen_label,1120,360,false

#�����\��ݒ�
,ImageDef,mokou,���g_��1,0,0
,ImageDef,kasen,�ؐ�_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,th145_Show,mokou,-1280,


,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
���Ⴂ���Ă������m����\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,���g_�f1,0,0
�v������肠�̐��̃{�[����\n���Ȃ��݂�����\,a15x3,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
�݂�Ȃ�����ɂȂ���\n�W�߂Ă��̂͂Ă�����\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
�S���W�߂�Ύ��˂邩�炾��\n�v���Ă������c�c\,a15x3,0,0
,ClearBalloon,mokou

# 2P�L�����X�e�[�W������o��
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

,SetFocus,mokou		,
,ImageDef,mokou,���g_�{1,0,0
�N���H\,a05x2,0,0
,ClearBalloon,mokou



,ImageDef,kasen,�ؐ�_�{2,0,0
,th145_Show,kasen,-1280	,

,SetFocus,kasen		,
����͂������̑䎌��\,a11x2,0,0
,ClearBalloon,kasen

#�Љ�J�b�g�\���@�ؐ�́u�ؐ�_�{2�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,kasen
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"


,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
���������������\n�R�̐�l��\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
���͒|�тɏZ�ސl�Ԃ�\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,kasen		,
,ImageDef,kasen,�ؐ�_��1,0,0
�l�Ԃ����āH\,a05x2,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,
,ImageDef,kasen,�ؐ�_��1,0,0
���̊��ɂ�������ƃ{�[����\n���W�߂�����Ă�̂�\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
�W�߂�Ƃǂ��Ȃ�񂾁H\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,kasen		,
,ImageDef,kasen,�ؐ�_��1,0,0
�W�܂����������Ȃ�\n���������Ȃ���\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,
,ImageDef,kasen,�ؐ�_�f1,0,0
������W�߂�Ə��L�҂�\n�O�̐��E�ɔ�΂����\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,
,ImageDef,kasen,�ؐ�_�{1,0,0
�G�̋���ꏊ���ꏊ������\n���̂Ƃ���L���Ȏ肪\n�łĂĂȂ��̂�����c�c\,a15x3,0,0
,ClearBalloon,kasen

,Function,"StopBGM(2000);",# BGM��~

,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
�O�̐��E�����āH\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,���g_�]1,0,0
�����Ȃ̂�\n����Ⴀ�v�X�ɖʔ�����\,a11x2,0,0
,ClearBalloon,mokou

,Function,"GameStory_PlayBattleBGM(512);",# �퓬BGM�Đ��J�n

,SetFocus,kasen		,
,ImageDef,kasen,�ؐ�_�@1,0,0
�M���݂����Ȑl�Ԃ�\n�O�ɏo��̂͊댯�ł�\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,
,ImageDef,kasen,�ؐ�_�f1,0,0
�c���ꂽ���Ԃ͂��Ƌ͂�\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,
,ImageDef,kasen,�ؐ�_��1,0,0
���������㩂�\n�Ƃ܂邩����S���āI\,a11x2,0,0
,ClearBalloon,kasen





#���҃t�F�C�X�P��
,th145_Hide,mokou,-1280,&
,th145_Hide,kasen,-1280,


,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End



# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,mokou,���g_��1,0,0
,ImageDef,kasen,�ؐ�_�{1,0,0

,th145_Show,mokou,-1280	,&,#���g�t�F�C�X�\���J�n
,th145_Show,kasen,-1280	,#���g�t�F�C�X�\���J�n

,SetFocus,kasen
�ǂ��ɂ����Ĕޓz��\n���z���Ɉ������荞�܂Ȃ���\,a15x3,0,0

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
,ImageDef,mokou,���g_��1,0,0
,ImageDef,kasen,�ؐ�_��1,0,0

,th145_Show,mokou,-1280	,&,#���g�t�F�C�X�\���J�n
,th145_Show,kasen,-1280	,#���g�t�F�C�X�\���J�n

,SetFocus,kasen		,
�����A�����Ƃ�������\n�{�[�����W�߂��Ǝv��������\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,
,ImageDef,kasen,�ؐ�_��1,0,0
�\�������̂�\n�l�Ԃ̊���\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,mokou		,
,ImageDef,mokou,���g_�]1,0,0
�i�����������������\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,kasen		,
,ImageDef,kasen,�ؐ�_�@1,0,0
����Ȃ�O�̐��E�ɍs���Ă�\n���v�����˂�\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
�v���Ԃ�̛O�k��\n����������C�͂��N���Ă�����\,a15x3,0,0
,ClearBalloon,mokou


,SetFocus,kasen		,
,ImageDef,kasen,�ؐ�_��2,0,0
�؍ݎ��Ԃ͌����Ă��邯��\n�]��\��Ȃ��悤�ɂ��Ă�\,a15x3,0,0
,ClearBalloon,kasen



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
