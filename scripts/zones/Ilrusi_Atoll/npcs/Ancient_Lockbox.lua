-----------------------------------
-- Area: Ilrusi Atoll
-- NPC:  Ancient Lockbox
-----------------------------------
require("scripts/globals/assault")
require("scripts/globals/titles")
require("scripts/globals/missions")
require("scripts/globals/quests")
require("scripts/globals/zone")
local ID = require("scripts/zones/Ilrusi_Atoll/IDs")
-----------------------------------
local entity = {}

-- Appraise not compatible �Ӓ菈���͖��Ή�
local loot =
{
    -- �����̈�Y���W���(�K��:�񓙗b���ȏ�)
    [GOLDEN_SALVAGE] =
    {
        {
            {itemid =  4118, droprate =  100}, -- hi-potion_+2 �n�C�|�[�V����+2
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 �n�C�|�[�V����+3
            {itemid = 13688, droprate =  100}, -- hi-potion_tank �g�|�[�V�����^���N
            {itemid =  4172, droprate =  100}, -- reraiser �����C�U�[
        },
        {
            {itemid = 2277, droprate =  500,    -- ???_earring �H�H�H�C�������O
                Appraise = {
                    {itemid = 13313, appraiserate = 10},   -- shell_earring �V�F���C�������O
                    {itemid = 13327, appraiserate = 10},   -- silver_earring �V���o�[�s�A�X
                    {itemid = 13321, appraiserate = 10},   -- bone_earring �{�[���C�������O
                    {itemid = 13323, appraiserate = 10},   -- beetle_earring �r�[�g���s�A�X
                    {itemid = 14790, appraiserate = 10},   -- reraise_earring �����C�Y�s�A�X
                    {itemid = 14805, appraiserate = 10},   -- heims_earring �n�C�A���X�s�A�X
                    {itemid = 14761, appraiserate = 10},   -- elusive_earring �G���V���C�������O
                    -- only
                    {itemid = 15969, appraiserate = 10},   -- storm_earring �H�H�H�C�������O
                }
            },
            {itemid = 2286, droprate =  500,    -- ???_box �H�H�H�{�b�N�X
                Appraise = {
                    {itemid =  4196, appraiserate = 10},   -- rotten_quiver �������
                    {itemid =  5353, appraiserate = 10},   -- iron_bullet_pouch �����y�S�z
                    {itemid = 17396, appraiserate = 10},   -- little_worm ���g�����[��
                    {itemid = 12824, appraiserate = 10},   -- leather_trousers ���U�[�g���E�U
                    {itemid = 12823, appraiserate = 10},   -- bronze_subligar_+1 �u�����Y�T�u���K+1
                    {itemid = 12864, appraiserate = 10},   -- slacks �Y�{��
                    {itemid =  5018, appraiserate = 10},   -- scroll_of_puppets_operetta ���b�̃I�y���b�^
                    {itemid =  4896, appraiserate = 10},   -- fire_spirit_pact �_�񏑁w���̐���x
                    {itemid =    90, appraiserate = 10},   -- rusty_bucket �K�т��o�P�c
                    {itemid =  5253, appraiserate = 10},   -- hermes_quencher �G�����X�N�G���`��
                    {itemid =  4509, appraiserate = 10},   -- flask_of_distilled_water ������
                    {itemid =   638, appraiserate = 10},   -- sprig_of_sage �Z�[�W
                    {itemid =  1590, appraiserate = 10},   -- sprig_of_holy_basil �z�[���[�o�W��
                    {itemid =  5450, appraiserate = 10},   -- lakerda ���P���_
                    {itemid =   640, appraiserate = 10},   -- chunk_of_copper_ore ���z
                    {itemid =  1654, appraiserate = 10},   -- igneous_rock �ΐ���
                    {itemid =   662, appraiserate = 10},   -- iron_sheet �A�C�A����
                    {itemid =  2303, appraiserate = 10},   -- troll_bronze_sheet �g���[���u�����Y��
                    {itemid =   776, appraiserate = 10},   -- white_rock ����
                    {itemid =   769, appraiserate = 10},   -- red_rock �Ԑ�
                    {itemid =   828, appraiserate = 10},   -- square_of_velvet_cloth �r���[�h
                    {itemid =  1132, appraiserate = 10},   -- square_of_raxa ����
                    {itemid =   821, appraiserate = 10},   -- rainbow_thread ����
                    {itemid =   880, appraiserate = 10},   -- bone_chip ������
                    {itemid =   867, appraiserate = 10},   -- handful_of_dragon_scales ���̗�
                    {itemid =  1108, appraiserate = 10},   -- pinch_of_sulfur ����
                    {itemid =   928, appraiserate = 10},   -- pinch_of_bomb_ash �{���̊D
                    {itemid =  2146, appraiserate = 10},   -- merrow_scale �����[�̗�
                    {itemid =  2334, appraiserate = 10},   -- poroggo_hat �|���b�S�n�b�g
                    {itemid =  1164, appraiserate = 10},   -- tsurara �X��
                    {itemid =  5312, appraiserate = 10},   -- toolbag_(hiraishin) �E�������y�𗋐j�z
                    {itemid =  5314, appraiserate = 10},   -- toolbag_(shihei) �E�������y�����z
                    {itemid =  5317, appraiserate = 10},   -- toolbag_(sairui-ran) �E�������y�×ܗ��z
                    {itemid =  5318, appraiserate = 10},   -- toolbag_(kodoku) �E�������y���Łz
                    -- only
                    {itemid = 17391, appraiserate = 10},   -- willow_fishing_rod ���i�M�̒ފ�
                }
            }
        }
    },
--[[
    -- ���~�A13���������(�K��:�ꓙ�b���ȏ�)
    [LAMIA_NO_13] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 �n�C�|�[�V����+3
            {itemid =  4173, droprate =  100}, -- hi-reraiser �n�C�����C�U�[
        },
        {
            {itemid = 2194, droprate =  500,    -- ??? Bow �H�H�H�{�E
                Appraise = {
                    {itemid = 17152, appraiserate = 10},   -- Shortbow �V���[�g�{�E
                    {itemid = 17160, appraiserate = 10},   -- Longbow �����O�{�E
                    {itemid = 17177, appraiserate = 10},   -- longbow_+1 �����O�{�E+1
                    {itemid = 17153, appraiserate = 10},   -- self_bow �Z���t�{�E
                    {itemid = 17216, appraiserate = 10},   -- light_crossbow ���C�g�N���X�{�E
                    {itemid = 17217, appraiserate = 10},   -- crossbow �N���X�{�E
                    {itemid = 17225, appraiserate = 10},   -- crossbow_+1 �N���X�{�E+1
                    {itemid = 17252, appraiserate = 10},   -- culverin �J���o����
                    {itemid = 18147, appraiserate = 10},   -- culverin_+1 �J���o����+1
                    -- only
                    {itemid = 18683, appraiserate = 10},   -- imperial_bow �C���y���A���{�E
                }
            },
            {itemid = 2196, droprate =  500,    -- ???_footwear �H�H�H�t�b�g�E�F�A
                Appraise = {
                    {itemid = 12992, appraiserate = 10},   -- solea �\���A
                    {itemid = 12968, appraiserate = 10},   -- kyahan �r�J
                    {itemid = 12984, appraiserate = 10},   -- ash_clogs �A�b�V���N���b�O
                    {itemid = 12951, appraiserate = 10},   -- bronze_leggings_+1 �u�����Y���M���X+1
                    {itemid = 12952, appraiserate = 10},   -- leather_highboots ���U�[�n�C�u�[�c
                    {itemid = 15325, appraiserate = 10},   -- evokers_boots �G�{�J�[�u�[�c
                    -- only
                    {itemid = 15691, appraiserate = 10},   -- storm_gambieras �X�g�[���K���r�G��
                }
            },
            {itemid = 2286, droprate =  500,    -- ???_box �H�H�H�{�b�N�X
                Appraise = {
                    {itemid =  4196, appraiserate = 10},   -- rotten_quiver �������
                    {itemid =  5353, appraiserate = 10},   -- iron_bullet_pouch �����y�S�z
                    {itemid = 17396, appraiserate = 10},   -- little_worm ���g�����[��
                    {itemid = 12824, appraiserate = 10},   -- leather_trousers ���U�[�g���E�U
                    {itemid = 12823, appraiserate = 10},   -- bronze_subligar_+1 �u�����Y�T�u���K+1
                    {itemid = 12864, appraiserate = 10},   -- slacks �Y�{��
                    {itemid =  5018, appraiserate = 10},   -- scroll_of_puppets_operetta ���b�̃I�y���b�^
                    {itemid =  4896, appraiserate = 10},   -- fire_spirit_pact �_�񏑁w���̐���x
                    {itemid =    90, appraiserate = 10},   -- rusty_bucket �K�т��o�P�c
                    {itemid =  5253, appraiserate = 10},   -- hermes_quencher �G�����X�N�G���`��
                    {itemid =  4509, appraiserate = 10},   -- flask_of_distilled_water ������
                    {itemid =   638, appraiserate = 10},   -- sprig_of_sage �Z�[�W
                    {itemid =  1590, appraiserate = 10},   -- sprig_of_holy_basil �z�[���[�o�W��
                    {itemid =  5450, appraiserate = 10},   -- lakerda ���P���_
                    {itemid =   640, appraiserate = 10},   -- chunk_of_copper_ore ���z
                    {itemid =  1654, appraiserate = 10},   -- igneous_rock �ΐ���
                    {itemid =   662, appraiserate = 10},   -- iron_sheet �A�C�A����
                    {itemid =  2303, appraiserate = 10},   -- troll_bronze_sheet �g���[���u�����Y��
                    {itemid =   776, appraiserate = 10},   -- white_rock ����
                    {itemid =   769, appraiserate = 10},   -- red_rock �Ԑ�
                    {itemid =   828, appraiserate = 10},   -- square_of_velvet_cloth �r���[�h
                    {itemid =  1132, appraiserate = 10},   -- square_of_raxa ����
                    {itemid =   821, appraiserate = 10},   -- rainbow_thread ����
                    {itemid =   880, appraiserate = 10},   -- bone_chip ������
                    {itemid =   867, appraiserate = 10},   -- handful_of_dragon_scales ���̗�
                    {itemid =  1108, appraiserate = 10},   -- pinch_of_sulfur ����
                    {itemid =   928, appraiserate = 10},   -- pinch_of_bomb_ash �{���̊D
                    {itemid =  2146, appraiserate = 10},   -- merrow_scale �����[�̗�
                    {itemid =  2334, appraiserate = 10},   -- poroggo_hat �|���b�S�n�b�g
                    {itemid =  1164, appraiserate = 10},   -- tsurara �X��
                    {itemid =  5312, appraiserate = 10},   -- toolbag_(hiraishin) �E�������y�𗋐j�z
                    {itemid =  5314, appraiserate = 10},   -- toolbag_(shihei) �E�������y�����z
                    {itemid =  5317, appraiserate = 10},   -- toolbag_(sairui-ran) �E�������y�×ܗ��z
                    {itemid =  5318, appraiserate = 10},   -- toolbag_(kodoku) �E�������y���Łz
                    -- only
                    {itemid =  5453, appraiserate = 10},   -- istakoz �C�X�^�R�Y
                    {itemid =  2418, appraiserate = 10},   -- aht_urhgan_brass_ingot �A�g���K���u���X
                    {itemid =  2167, appraiserate = 10},   -- lamian_armlet ���~�A�̘r��
                }
            }
        }
    },
    -- �����쏜���(�K��:�㓙�b���ȏ�)
    [EXTERMINATION] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 �n�C�|�[�V����+3
        },
        {
            {itemid = 2196, droprate =  500,    -- ???_footwear �H�H�H�t�b�g�E�F�A
                Appraise = {
                    {itemid = 12992, appraiserate = 10},   -- solea �\���A
                    {itemid = 12968, appraiserate = 10},   -- kyahan �r�J
                    {itemid = 12984, appraiserate = 10},   -- ash_clogs �A�b�V���N���b�O
                    {itemid = 12951, appraiserate = 10},   -- bronze_leggings_+1 �u�����Y���M���X+1
                    {itemid = 12952, appraiserate = 10},   -- leather_highboots ���U�[�n�C�u�[�c
                    {itemid = 15325, appraiserate = 10},   -- evokers_boots �G�{�J�[�u�[�c
                    -- only
                    {itemid = 15692, appraiserate = 10},   -- storm_crackows �X�g�[���N���b�R�[
                }
            },
            {itemid = 2192, droprate =  500,    -- ???_polearm �H�H�H�|�[���A�[��
                Appraise = {
                    {itemid = 16768, appraiserate = 10},   -- bronze_zaghnal �u�����Y�U�O�i��
                    {itemid = 16769, appraiserate = 10},   -- brass_zaghnal �u���X�U�O�i��
                    {itemid = 16832, appraiserate = 10},   -- harpoon �n�[�v�[��
                    {itemid = 18076, appraiserate = 10},   -- spark_spear �X�p�[�N�X�s�A
                    {itemid = 17024, appraiserate = 10},   -- ash_club �A�b�V���N���u
                    {itemid = 17049, appraiserate = 10},   -- maple_wand ���[�v�������h
                    {itemid = 17138, appraiserate = 10},   -- willow_wand_+1 �E�B���[�����h+1
                    {itemid = 18409, appraiserate = 10},   -- jadagna_-1 �W���_�O�i-1
                    {itemid = 17088, appraiserate = 10},   -- ash_staff �A�b�V���X�^�b�t
                    {itemid = 17125, appraiserate = 10},   -- holly_staff_+1 �z���[�X�^�b�t+1
                    {itemid =  1020, appraiserate = 10},   -- sickle ������
                    -- only
                    {itemid = 18064, appraiserate = 10},   -- volunteers_scythe �{�����e�B�A�T�C�Y
                }
            },
            {itemid = 2286, droprate =  500,    -- ???_box �H�H�H�{�b�N�X
                Appraise = {
                    {itemid =  4196, appraiserate = 10},   -- rotten_quiver �������
                    {itemid =  5353, appraiserate = 10},   -- iron_bullet_pouch �����y�S�z
                    {itemid = 17396, appraiserate = 10},   -- little_worm ���g�����[��
                    {itemid = 12824, appraiserate = 10},   -- leather_trousers ���U�[�g���E�U
                    {itemid = 12823, appraiserate = 10},   -- bronze_subligar_+1 �u�����Y�T�u���K+1
                    {itemid = 12864, appraiserate = 10},   -- slacks �Y�{��
                    {itemid =  5018, appraiserate = 10},   -- scroll_of_puppets_operetta ���b�̃I�y���b�^
                    {itemid =  4896, appraiserate = 10},   -- fire_spirit_pact �_�񏑁w���̐���x
                    {itemid =    90, appraiserate = 10},   -- rusty_bucket �K�т��o�P�c
                    {itemid =  5253, appraiserate = 10},   -- hermes_quencher �G�����X�N�G���`��
                    {itemid =  4509, appraiserate = 10},   -- flask_of_distilled_water ������
                    {itemid =   638, appraiserate = 10},   -- sprig_of_sage �Z�[�W
                    {itemid =  1590, appraiserate = 10},   -- sprig_of_holy_basil �z�[���[�o�W��
                    {itemid =  5450, appraiserate = 10},   -- lakerda ���P���_
                    {itemid =   640, appraiserate = 10},   -- chunk_of_copper_ore ���z
                    {itemid =  1654, appraiserate = 10},   -- igneous_rock �ΐ���
                    {itemid =   662, appraiserate = 10},   -- iron_sheet �A�C�A����
                    {itemid =  2303, appraiserate = 10},   -- troll_bronze_sheet �g���[���u�����Y��
                    {itemid =   776, appraiserate = 10},   -- white_rock ����
                    {itemid =   769, appraiserate = 10},   -- red_rock �Ԑ�
                    {itemid =   828, appraiserate = 10},   -- square_of_velvet_cloth �r���[�h
                    {itemid =  1132, appraiserate = 10},   -- square_of_raxa ����
                    {itemid =   821, appraiserate = 10},   -- rainbow_thread ����
                    {itemid =   880, appraiserate = 10},   -- bone_chip ������
                    {itemid =   867, appraiserate = 10},   -- handful_of_dragon_scales ���̗�
                    {itemid =  1108, appraiserate = 10},   -- pinch_of_sulfur ����
                    {itemid =   928, appraiserate = 10},   -- pinch_of_bomb_ash �{���̊D
                    {itemid =  2146, appraiserate = 10},   -- merrow_scale �����[�̗�
                    {itemid =  2334, appraiserate = 10},   -- poroggo_hat �|���b�S�n�b�g
                    {itemid =  1164, appraiserate = 10},   -- tsurara �X��
                    {itemid =  5312, appraiserate = 10},   -- toolbag_(hiraishin) �E�������y�𗋐j�z
                    {itemid =  5314, appraiserate = 10},   -- toolbag_(shihei) �E�������y�����z
                    {itemid =  5317, appraiserate = 10},   -- toolbag_(sairui-ran) �E�������y�×ܗ��z
                    {itemid =  5318, appraiserate = 10},   -- toolbag_(kodoku) �E�������y���Łz
                    -- only
                    {itemid =  4224, appraiserate = 10},   -- demon_quiver ⷁy�f�[�����z
                }
            }
        }
    },
    -- �C�����V�|�C���(�K��:�b�����ȏ�)
    [DEMOLITION_DUTY] =
    {
        {
            {itemid =  4155, droprate =  100}, -- Remedy ���\��
        },
        {
            {itemid = 2280, droprate =  500,    -- ???_sash �H�H�H�T�b�V��
                Appraise = {
                    {itemid = 15453, appraiserate = 10},   -- lugworm_belt �N�������[���x���g
                    {itemid = 15454, appraiserate = 10},   -- little_worm_belt ���g�����[���x���g
                    {itemid = 15881, appraiserate = 10},   -- talisman_obi �������̑�
                    {itemid = 13224, appraiserate = 10},   -- silver_obi_+1 ��̑�+1
                    {itemid = 15870, appraiserate = 10},   -- maharajas_belt �}�n���W���x���g
                    -- only
                    {itemid = 15883, appraiserate = 10},   -- storm_sash �X�g�[���T�b�V��
                }
            },
            {itemid = 2286, droprate =  500,    -- ???_box �H�H�H�{�b�N�X
                Appraise = {
                    {itemid =  4196, appraiserate = 10},   -- rotten_quiver �������
                    {itemid =  5353, appraiserate = 10},   -- iron_bullet_pouch �����y�S�z
                    {itemid = 17396, appraiserate = 10},   -- little_worm ���g�����[��
                    {itemid = 12824, appraiserate = 10},   -- leather_trousers ���U�[�g���E�U
                    {itemid = 12823, appraiserate = 10},   -- bronze_subligar_+1 �u�����Y�T�u���K+1
                    {itemid = 12864, appraiserate = 10},   -- slacks �Y�{��
                    {itemid =  5018, appraiserate = 10},   -- scroll_of_puppets_operetta ���b�̃I�y���b�^
                    {itemid =  4896, appraiserate = 10},   -- fire_spirit_pact �_�񏑁w���̐���x
                    {itemid =    90, appraiserate = 10},   -- rusty_bucket �K�т��o�P�c
                    {itemid =  5253, appraiserate = 10},   -- hermes_quencher �G�����X�N�G���`��
                    {itemid =  4509, appraiserate = 10},   -- flask_of_distilled_water ������
                    {itemid =   638, appraiserate = 10},   -- sprig_of_sage �Z�[�W
                    {itemid =  1590, appraiserate = 10},   -- sprig_of_holy_basil �z�[���[�o�W��
                    {itemid =  5450, appraiserate = 10},   -- lakerda ���P���_
                    {itemid =   640, appraiserate = 10},   -- chunk_of_copper_ore ���z
                    {itemid =  1654, appraiserate = 10},   -- igneous_rock �ΐ���
                    {itemid =   662, appraiserate = 10},   -- iron_sheet �A�C�A����
                    {itemid =  2303, appraiserate = 10},   -- troll_bronze_sheet �g���[���u�����Y��
                    {itemid =   776, appraiserate = 10},   -- white_rock ����
                    {itemid =   769, appraiserate = 10},   -- red_rock �Ԑ�
                    {itemid =   828, appraiserate = 10},   -- square_of_velvet_cloth �r���[�h
                    {itemid =  1132, appraiserate = 10},   -- square_of_raxa ����
                    {itemid =   821, appraiserate = 10},   -- rainbow_thread ����
                    {itemid =   880, appraiserate = 10},   -- bone_chip ������
                    {itemid =   867, appraiserate = 10},   -- handful_of_dragon_scales ���̗�
                    {itemid =  1108, appraiserate = 10},   -- pinch_of_sulfur ����
                    {itemid =   928, appraiserate = 10},   -- pinch_of_bomb_ash �{���̊D
                    {itemid =  2146, appraiserate = 10},   -- merrow_scale �����[�̗�
                    {itemid =  2334, appraiserate = 10},   -- poroggo_hat �|���b�S�n�b�g
                    {itemid =  1164, appraiserate = 10},   -- tsurara �X��
                    {itemid =  5312, appraiserate = 10},   -- toolbag_(hiraishin) �E�������y�𗋐j�z
                    {itemid =  5314, appraiserate = 10},   -- toolbag_(shihei) �E�������y�����z
                    {itemid =  5317, appraiserate = 10},   -- toolbag_(sairui-ran) �E�������y�×ܗ��z
                    {itemid =  5318, appraiserate = 10},   -- toolbag_(kodoku) �E�������y���Łz
                    -- only
                    {itemid =  5139, appraiserate = 10},   -- betta �x�^
                }
            }
        }
    },
    -- �V�[���b�g���}���(�K��:�ޒ��ȏ�)
    [SEARAT_SALVATION] =
    {
        {
            {itemid =  4118, droprate =  100}, -- hi-potion_+2 �n�C�|�[�V����+2
            {itemid = 13688, droprate =  100}, -- hi-potion_tank �g�|�[�V�����^���N
            {itemid =  4172, droprate =  100}, -- reraiser �����C�U�[
        },
        {
            {itemid = 2191, droprate =  500,    -- ???_dagger �H�H�H�_�K�[
                Appraise = {
                    {itemid = 16896, appraiserate = 10},   -- kunai �ꖳ
                    {itemid = 17780, appraiserate = 10},   -- kyofu ����
                    {itemid = 18415, appraiserate = 10},   -- tojaku ����
                    {itemid = 16448, appraiserate = 10},   -- bronze_dagger �u�����Y�_�K�[
                    {itemid = 16465, appraiserate = 10},   -- bronze_knife �u�����Y�i�C�t
                    {itemid = 17984, appraiserate = 10},   -- spark_dagger �X�p�[�N�_�K�[
                    {itemid = 18008, appraiserate = 10},   -- hushed_dagger �n�b�V���_�K�[
                    {itemid = 17625, appraiserate = 10},   -- ponderous_gully �|���f���X�K���B
                    {itemid = 17997, appraiserate = 10},   -- argent_dagger �A���W�F���g�_�K�[
                    {itemid = 16385, appraiserate = 10},   -- cesti �Z�X�^�X
                    {itemid = 16405, appraiserate = 10},   -- cat_baghnakhs �L���b�g�o�O�i�E
                    {itemid = 16399, appraiserate = 10},   -- katars �J�^�[��
                    {itemid = 18361, appraiserate = 10},   -- ponderous_manoples �|���f���X�}�m�v��
                    -- only
                    {itemid = 18017, appraiserate = 10},   -- assassins_jambiya �A�T�V���W�����r�A
                }
            },
            {itemid = 2286, droprate =  500,    -- ???_box �H�H�H�{�b�N�X
                Appraise = {
                    {itemid =  4196, appraiserate = 10},   -- rotten_quiver �������
                    {itemid =  5353, appraiserate = 10},   -- iron_bullet_pouch �����y�S�z
                    {itemid = 17396, appraiserate = 10},   -- little_worm ���g�����[��
                    {itemid = 12824, appraiserate = 10},   -- leather_trousers ���U�[�g���E�U
                    {itemid = 12823, appraiserate = 10},   -- bronze_subligar_+1 �u�����Y�T�u���K+1
                    {itemid = 12864, appraiserate = 10},   -- slacks �Y�{��
                    {itemid =  5018, appraiserate = 10},   -- scroll_of_puppets_operetta ���b�̃I�y���b�^
                    {itemid =  4896, appraiserate = 10},   -- fire_spirit_pact �_�񏑁w���̐���x
                    {itemid =    90, appraiserate = 10},   -- rusty_bucket �K�т��o�P�c
                    {itemid =  5253, appraiserate = 10},   -- hermes_quencher �G�����X�N�G���`��
                    {itemid =  4509, appraiserate = 10},   -- flask_of_distilled_water ������
                    {itemid =   638, appraiserate = 10},   -- sprig_of_sage �Z�[�W
                    {itemid =  1590, appraiserate = 10},   -- sprig_of_holy_basil �z�[���[�o�W��
                    {itemid =  5450, appraiserate = 10},   -- lakerda ���P���_
                    {itemid =   640, appraiserate = 10},   -- chunk_of_copper_ore ���z
                    {itemid =  1654, appraiserate = 10},   -- igneous_rock �ΐ���
                    {itemid =   662, appraiserate = 10},   -- iron_sheet �A�C�A����
                    {itemid =  2303, appraiserate = 10},   -- troll_bronze_sheet �g���[���u�����Y��
                    {itemid =   776, appraiserate = 10},   -- white_rock ����
                    {itemid =   769, appraiserate = 10},   -- red_rock �Ԑ�
                    {itemid =   828, appraiserate = 10},   -- square_of_velvet_cloth �r���[�h
                    {itemid =  1132, appraiserate = 10},   -- square_of_raxa ����
                    {itemid =   821, appraiserate = 10},   -- rainbow_thread ����
                    {itemid =   880, appraiserate = 10},   -- bone_chip ������
                    {itemid =   867, appraiserate = 10},   -- handful_of_dragon_scales ���̗�
                    {itemid =  1108, appraiserate = 10},   -- pinch_of_sulfur ����
                    {itemid =   928, appraiserate = 10},   -- pinch_of_bomb_ash �{���̊D
                    {itemid =  2146, appraiserate = 10},   -- merrow_scale �����[�̗�
                    {itemid =  2334, appraiserate = 10},   -- poroggo_hat �|���b�S�n�b�g
                    {itemid =  1164, appraiserate = 10},   -- tsurara �X��
                    {itemid =  5312, appraiserate = 10},   -- toolbag_(hiraishin) �E�������y�𗋐j�z
                    {itemid =  5314, appraiserate = 10},   -- toolbag_(shihei) �E�������y�����z
                    {itemid =  5317, appraiserate = 10},   -- toolbag_(sairui-ran) �E�������y�×ܗ��z
                    {itemid =  5318, appraiserate = 10},   -- toolbag_(kodoku) �E�������y���Łz
                    -- only
                }
            }
        }
    },
    -- �A�v�J���ߊl�w��(�K��:�R���ȏ�)
    [APKALLU_SEIZURE] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 �n�C�|�[�V����+3
            {itemid = 13688, droprate =  100}, -- hi-potion_tank �g�|�[�V�����^���N
            {itemid = 13689, droprate =  100}, -- hi-ether_tank �g�G�[�e���^���N
            {itemid =  4173, droprate =  100}, -- hi-reraiser �n�C�����C�U�[
        },
        {
            {itemid = 2192, droprate =  500,    -- ???_polearm �H�H�H�|�[���A�[��
                Appraise = {
                    {itemid = 16768, appraiserate = 10},   -- bronze_zaghnal �u�����Y�U�O�i��
                    {itemid = 16769, appraiserate = 10},   -- brass_zaghnal �u���X�U�O�i��
                    {itemid = 16832, appraiserate = 10},   -- harpoon �n�[�v�[��
                    {itemid = 18076, appraiserate = 10},   -- spark_spear �X�p�[�N�X�s�A
                    {itemid = 17024, appraiserate = 10},   -- ash_club �A�b�V���N���u
                    {itemid = 17049, appraiserate = 10},   -- maple_wand ���[�v�������h
                    {itemid = 17138, appraiserate = 10},   -- willow_wand_+1 �E�B���[�����h+1
                    {itemid = 18409, appraiserate = 10},   -- jadagna_-1 �W���_�O�i-1
                    {itemid = 17088, appraiserate = 10},   -- ash_staff �A�b�V���X�^�b�t
                    {itemid = 17125, appraiserate = 10},   -- holly_staff_+1 �z���[�X�^�b�t+1
                    {itemid =  1020, appraiserate = 10},   -- sickle ������
                    -- only
                    {itemid = 18585, appraiserate = 10},   -- kinnara_pole �ٓߗ��̞�
                }
            },
            {itemid = 2286, droprate =  500,    -- ???_box �H�H�H�{�b�N�X
                Appraise = {
                    {itemid =  4196, appraiserate = 10},   -- rotten_quiver �������
                    {itemid =  5353, appraiserate = 10},   -- iron_bullet_pouch �����y�S�z
                    {itemid = 17396, appraiserate = 10},   -- little_worm ���g�����[��
                    {itemid = 12824, appraiserate = 10},   -- leather_trousers ���U�[�g���E�U
                    {itemid = 12823, appraiserate = 10},   -- bronze_subligar_+1 �u�����Y�T�u���K+1
                    {itemid = 12864, appraiserate = 10},   -- slacks �Y�{��
                    {itemid =  5018, appraiserate = 10},   -- scroll_of_puppets_operetta ���b�̃I�y���b�^
                    {itemid =  4896, appraiserate = 10},   -- fire_spirit_pact �_�񏑁w���̐���x
                    {itemid =    90, appraiserate = 10},   -- rusty_bucket �K�т��o�P�c
                    {itemid =  5253, appraiserate = 10},   -- hermes_quencher �G�����X�N�G���`��
                    {itemid =  4509, appraiserate = 10},   -- flask_of_distilled_water ������
                    {itemid =   638, appraiserate = 10},   -- sprig_of_sage �Z�[�W
                    {itemid =  1590, appraiserate = 10},   -- sprig_of_holy_basil �z�[���[�o�W��
                    {itemid =  5450, appraiserate = 10},   -- lakerda ���P���_
                    {itemid =   640, appraiserate = 10},   -- chunk_of_copper_ore ���z
                    {itemid =  1654, appraiserate = 10},   -- igneous_rock �ΐ���
                    {itemid =   662, appraiserate = 10},   -- iron_sheet �A�C�A����
                    {itemid =  2303, appraiserate = 10},   -- troll_bronze_sheet �g���[���u�����Y��
                    {itemid =   776, appraiserate = 10},   -- white_rock ����
                    {itemid =   769, appraiserate = 10},   -- red_rock �Ԑ�
                    {itemid =   828, appraiserate = 10},   -- square_of_velvet_cloth �r���[�h
                    {itemid =  1132, appraiserate = 10},   -- square_of_raxa ����
                    {itemid =   821, appraiserate = 10},   -- rainbow_thread ����
                    {itemid =   880, appraiserate = 10},   -- bone_chip ������
                    {itemid =   867, appraiserate = 10},   -- handful_of_dragon_scales ���̗�
                    {itemid =  1108, appraiserate = 10},   -- pinch_of_sulfur ����
                    {itemid =   928, appraiserate = 10},   -- pinch_of_bomb_ash �{���̊D
                    {itemid =  2146, appraiserate = 10},   -- merrow_scale �����[�̗�
                    {itemid =  2334, appraiserate = 10},   -- poroggo_hat �|���b�S�n�b�g
                    {itemid =  1164, appraiserate = 10},   -- tsurara �X��
                    {itemid =  5312, appraiserate = 10},   -- toolbag_(hiraishin) �E�������y�𗋐j�z
                    {itemid =  5314, appraiserate = 10},   -- toolbag_(shihei) �E�������y�����z
                    {itemid =  5317, appraiserate = 10},   -- toolbag_(sairui-ran) �E�������y�×ܗ��z
                    {itemid =  5318, appraiserate = 10},   -- toolbag_(kodoku) �E�������y���Łz
                    -- only
                }
            }
        }
    },
    -- �w�֑{���w��(�K��:�����ȏ�)
    [LOST_AND_FOUND] =
    {
        {
            {itemid =  4118, droprate =  100}, -- hi-potion_+2 �n�C�|�[�V����+2
            {itemid = 13688, droprate =  100}, -- hi-potion_tank �g�|�[�V�����^���N
            {itemid =  4172, droprate =  100}, -- reraiser �����C�U�[
        },
        {
            {itemid = 2195, droprate =  500,    -- ???_gloves �H�H�H�O���[�u
                Appraise = {
                    {itemid =  12728, appraiserate = 10},   -- cuffs �J�t�X
                    {itemid =  12736, appraiserate = 10},   -- mitts �~�g��
                    {itemid =  12712, appraiserate = 10},   -- tekko ��b
                    {itemid =  12696, appraiserate = 10},   -- leather_gloves ���U�[�O���[�u
                    {itemid =  12721, appraiserate = 10},   -- cotton_gloves �R�b�g���O���[�u
                    {itemid =  13700, appraiserate = 10},   -- beak_gloves �r�[�N�O���[�u
                    {itemid =  12695, appraiserate = 10},   -- bronze_mittens_+1 �u�����Y�~�g��+1
                    {itemid =  14934, appraiserate = 10},   -- jaridah_bazubands �W�����_�o�Y�o���h
                    -- only
                    {itemid =  14954, appraiserate = 10},   -- sadhu_cuffs �T�h�D�J�t�X
                },
            },
            {itemid = 2195, droprate =  500,    -- ???_gloves �H�H�H�O���[�u
                Appraise = {
                    {itemid =  12728, appraiserate = 10},   -- cuffs �J�t�X
                    {itemid =  12736, appraiserate = 10},   -- mitts �~�g��
                    {itemid =  12712, appraiserate = 10},   -- tekko ��b
                    {itemid =  12696, appraiserate = 10},   -- leather_gloves ���U�[�O���[�u
                    {itemid =  12721, appraiserate = 10},   -- cotton_gloves �R�b�g���O���[�u
                    {itemid =  13700, appraiserate = 10},   -- beak_gloves �r�[�N�O���[�u
                    {itemid =  12695, appraiserate = 10},   -- bronze_mittens_+1 �u�����Y�~�g��+1
                    {itemid =  14934, appraiserate = 10},   -- jaridah_bazubands �W�����_�o�Y�o���h
                    -- only
                    {itemid =  14953, appraiserate = 10},   -- sadhu_bracelets �T�h�D�u���X���b�g
                },
            },
            {itemid = 2286, droprate =  500,    -- ???_box �H�H�H�{�b�N�X
                Appraise = {
                    {itemid =  4196, appraiserate = 10},   -- rotten_quiver �������
                    {itemid =  5353, appraiserate = 10},   -- iron_bullet_pouch �����y�S�z
                    {itemid = 17396, appraiserate = 10},   -- little_worm ���g�����[��
                    {itemid = 12824, appraiserate = 10},   -- leather_trousers ���U�[�g���E�U
                    {itemid = 12823, appraiserate = 10},   -- bronze_subligar_+1 �u�����Y�T�u���K+1
                    {itemid = 12864, appraiserate = 10},   -- slacks �Y�{��
                    {itemid =  5018, appraiserate = 10},   -- scroll_of_puppets_operetta ���b�̃I�y���b�^
                    {itemid =  4896, appraiserate = 10},   -- fire_spirit_pact �_�񏑁w���̐���x
                    {itemid =    90, appraiserate = 10},   -- rusty_bucket �K�т��o�P�c
                    {itemid =  5253, appraiserate = 10},   -- hermes_quencher �G�����X�N�G���`��
                    {itemid =  4509, appraiserate = 10},   -- flask_of_distilled_water ������
                    {itemid =   638, appraiserate = 10},   -- sprig_of_sage �Z�[�W
                    {itemid =  1590, appraiserate = 10},   -- sprig_of_holy_basil �z�[���[�o�W��
                    {itemid =  5450, appraiserate = 10},   -- lakerda ���P���_
                    {itemid =   640, appraiserate = 10},   -- chunk_of_copper_ore ���z
                    {itemid =  1654, appraiserate = 10},   -- igneous_rock �ΐ���
                    {itemid =   662, appraiserate = 10},   -- iron_sheet �A�C�A����
                    {itemid =  2303, appraiserate = 10},   -- troll_bronze_sheet �g���[���u�����Y��
                    {itemid =   776, appraiserate = 10},   -- white_rock ����
                    {itemid =   769, appraiserate = 10},   -- red_rock �Ԑ�
                    {itemid =   828, appraiserate = 10},   -- square_of_velvet_cloth �r���[�h
                    {itemid =  1132, appraiserate = 10},   -- square_of_raxa ����
                    {itemid =   821, appraiserate = 10},   -- rainbow_thread ����
                    {itemid =   880, appraiserate = 10},   -- bone_chip ������
                    {itemid =   867, appraiserate = 10},   -- handful_of_dragon_scales ���̗�
                    {itemid =  1108, appraiserate = 10},   -- pinch_of_sulfur ����
                    {itemid =   928, appraiserate = 10},   -- pinch_of_bomb_ash �{���̊D
                    {itemid =  2146, appraiserate = 10},   -- merrow_scale �����[�̗�
                    {itemid =  2334, appraiserate = 10},   -- poroggo_hat �|���b�S�n�b�g
                    {itemid =  1164, appraiserate = 10},   -- tsurara �X��
                    {itemid =  5312, appraiserate = 10},   -- toolbag_(hiraishin) �E�������y�𗋐j�z
                    {itemid =  5314, appraiserate = 10},   -- toolbag_(shihei) �E�������y�����z
                    {itemid =  5317, appraiserate = 10},   -- toolbag_(sairui-ran) �E�������y�×ܗ��z
                    {itemid =  5318, appraiserate = 10},   -- toolbag_(kodoku) �E�������y���Łz
                    -- only
                }
            }
        }
    },
    -- �E�������������w��(�K��:���������ȏ�)
    [DESERTER] =
    {
        {
            {itemid = 2278, droprate =  500,    -- ???_ring �H�H�H�����O
                Appraise = {
                    {itemid = 13454, appraiserate = 10},   -- copper_ring �J�b�p�[�����O
                    {itemid = 13465, appraiserate = 10},   -- brass_ring �u���X�����O
                    {itemid = 13442, appraiserate = 10},   -- shell_ring �V�F�������O
                    {itemid = 13469, appraiserate = 10},   -- leather_ring ���U�[�����O
                    {itemid = 13456, appraiserate = 10},   -- silver_ring �V���o�[�����O
                    {itemid = 13457, appraiserate = 10},   -- beetle_ring �r�[�g�������O
                    {itemid = 13514, appraiserate = 10},   -- archers_ring �A�[�`���[�����O
                    {itemid = 13549, appraiserate = 10},   -- ether_ring �G�[�e�������O
                    {itemid = 13447, appraiserate = 10},   -- platinum_ring �v���`�i�����O
                    {itemid = 13466, appraiserate = 10},   -- orichalcum_ring �I���n���R�������O
                    -- only
                    {itemid = 15798, appraiserate = 10},   -- epsilon_ring �G�v�V���������O
                }
            },
            {itemid = 2282, droprate =  500,    -- ???_necklace �H�H�H�l�b�N���X
                Appraise = {
                    {itemid =  15526, appraiserate = 10},   -- regen_collar ���W�F�l�J���[
                    {itemid =  13081, appraiserate = 10},   -- leather_gorget ���U�[�S���Q�b�g
                    {itemid =  13090, appraiserate = 10},   -- beetle_gorget �r�[�g���S���Q�b�g
                    {itemid =  13085, appraiserate = 10},   -- hemp_gorget �w���v�S���Q�b�g
                    {itemid =  13065, appraiserate = 10},   -- gorget_+1 �S���Q�b�g+1
                    {itemid =  13165, appraiserate = 10},   -- jagd_gorget ���N�g�S���Q�b�g
                    {itemid =  13075, appraiserate = 10},   -- feather_collar �t�F�U�[�J���[
                    -- only
                    {itemid =  15534, appraiserate = 10},   -- mu_necklace �~���[�l�b�N���X
                },
            },
            {itemid = 2286, droprate =  500,    -- ???_box �H�H�H�{�b�N�X
                Appraise = {
                    {itemid =  4196, appraiserate = 10},   -- rotten_quiver �������
                    {itemid =  5353, appraiserate = 10},   -- iron_bullet_pouch �����y�S�z
                    {itemid = 17396, appraiserate = 10},   -- little_worm ���g�����[��
                    {itemid = 12824, appraiserate = 10},   -- leather_trousers ���U�[�g���E�U
                    {itemid = 12823, appraiserate = 10},   -- bronze_subligar_+1 �u�����Y�T�u���K+1
                    {itemid = 12864, appraiserate = 10},   -- slacks �Y�{��
                    {itemid =  5018, appraiserate = 10},   -- scroll_of_puppets_operetta ���b�̃I�y���b�^
                    {itemid =  4896, appraiserate = 10},   -- fire_spirit_pact �_�񏑁w���̐���x
                    {itemid =    90, appraiserate = 10},   -- rusty_bucket �K�т��o�P�c
                    {itemid =  5253, appraiserate = 10},   -- hermes_quencher �G�����X�N�G���`��
                    {itemid =  4509, appraiserate = 10},   -- flask_of_distilled_water ������
                    {itemid =   638, appraiserate = 10},   -- sprig_of_sage �Z�[�W
                    {itemid =  1590, appraiserate = 10},   -- sprig_of_holy_basil �z�[���[�o�W��
                    {itemid =  5450, appraiserate = 10},   -- lakerda ���P���_
                    {itemid =   640, appraiserate = 10},   -- chunk_of_copper_ore ���z
                    {itemid =  1654, appraiserate = 10},   -- igneous_rock �ΐ���
                    {itemid =   662, appraiserate = 10},   -- iron_sheet �A�C�A����
                    {itemid =  2303, appraiserate = 10},   -- troll_bronze_sheet �g���[���u�����Y��
                    {itemid =   776, appraiserate = 10},   -- white_rock ����
                    {itemid =   769, appraiserate = 10},   -- red_rock �Ԑ�
                    {itemid =   828, appraiserate = 10},   -- square_of_velvet_cloth �r���[�h
                    {itemid =  1132, appraiserate = 10},   -- square_of_raxa ����
                    {itemid =   821, appraiserate = 10},   -- rainbow_thread ����
                    {itemid =   880, appraiserate = 10},   -- bone_chip ������
                    {itemid =   867, appraiserate = 10},   -- handful_of_dragon_scales ���̗�
                    {itemid =  1108, appraiserate = 10},   -- pinch_of_sulfur ����
                    {itemid =   928, appraiserate = 10},   -- pinch_of_bomb_ash �{���̊D
                    {itemid =  2146, appraiserate = 10},   -- merrow_scale �����[�̗�
                    {itemid =  2334, appraiserate = 10},   -- poroggo_hat �|���b�S�n�b�g
                    {itemid =  1164, appraiserate = 10},   -- tsurara �X��
                    {itemid =  5312, appraiserate = 10},   -- toolbag_(hiraishin) �E�������y�𗋐j�z
                    {itemid =  5314, appraiserate = 10},   -- toolbag_(shihei) �E�������y�����z
                    {itemid =  5317, appraiserate = 10},   -- toolbag_(sairui-ran) �E�������y�×ܗ��z
                    {itemid =  5318, appraiserate = 10},   -- toolbag_(kodoku) �E�������y���Łz
                    -- only
                    {itemid =  2167, appraiserate = 10},   -- lamian_armlet ���~�A�̘r��
                }
            }
        }
    },
    -- �ፆ���(�K��:���шȏ�)
    [DESPERATELY_SEEKING_CEPHALOPODS] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 �n�C�|�[�V����+3
            {itemid = 13688, droprate =  100}, -- hi-potion_tank �g�|�[�V�����^���N
            {itemid = 13689, droprate =  100}, -- hi-ether_tank �g�G�[�e���^���N
            {itemid =  4173, droprate =  100}, -- hi-reraiser �n�C�����C�U�[
        },
        {
            {itemid = 2277, droprate =  500,    -- ???_earring �H�H�H�C�������O
                Appraise = {
                    {itemid = 13313, appraiserate = 10},   -- shell_earring �V�F���C�������O
                    {itemid = 13327, appraiserate = 10},   -- silver_earring �V���o�[�s�A�X
                    {itemid = 13321, appraiserate = 10},   -- bone_earring �{�[���C�������O
                    {itemid = 13323, appraiserate = 10},   -- beetle_earring �r�[�g���s�A�X
                    {itemid = 14790, appraiserate = 10},   -- reraise_earring �����C�Y�s�A�X
                    {itemid = 14805, appraiserate = 10},   -- heims_earring �n�C�A���X�s�A�X
                    {itemid = 14761, appraiserate = 10},   -- elusive_earring �G���V���C�������O
                    -- only
                    {itemid = 15989, appraiserate = 10},   -- gamma_earring �K���}�s�A�X
                }
            },
            {itemid = 2280, droprate =  500,    -- ???_sash �H�H�H�T�b�V��
                Appraise = {
                    {itemid = 15453, appraiserate = 10},   -- lugworm_belt �N�������[���x���g
                    {itemid = 15454, appraiserate = 10},   -- little_worm_belt ���g�����[���x���g
                    {itemid = 15881, appraiserate = 10},   -- talisman_obi �������̑�
                    {itemid = 13224, appraiserate = 10},   -- silver_obi_+1 ��̑�+1
                    {itemid = 15870, appraiserate = 10},   -- maharajas_belt �}�n���W���x���g
                    -- only
                    {itemid = 15900, appraiserate = 10},   -- nu_sash �j���[�T�b�V��
                }
            },
            {itemid = 2286, droprate =  500,    -- ???_box �H�H�H�{�b�N�X
                Appraise = {
                    {itemid =  4196, appraiserate = 10},   -- rotten_quiver �������
                    {itemid =  5353, appraiserate = 10},   -- iron_bullet_pouch �����y�S�z
                    {itemid = 17396, appraiserate = 10},   -- little_worm ���g�����[��
                    {itemid = 12824, appraiserate = 10},   -- leather_trousers ���U�[�g���E�U
                    {itemid = 12823, appraiserate = 10},   -- bronze_subligar_+1 �u�����Y�T�u���K+1
                    {itemid = 12864, appraiserate = 10},   -- slacks �Y�{��
                    {itemid =  5018, appraiserate = 10},   -- scroll_of_puppets_operetta ���b�̃I�y���b�^
                    {itemid =  4896, appraiserate = 10},   -- fire_spirit_pact �_�񏑁w���̐���x
                    {itemid =    90, appraiserate = 10},   -- rusty_bucket �K�т��o�P�c
                    {itemid =  5253, appraiserate = 10},   -- hermes_quencher �G�����X�N�G���`��
                    {itemid =  4509, appraiserate = 10},   -- flask_of_distilled_water ������
                    {itemid =   638, appraiserate = 10},   -- sprig_of_sage �Z�[�W
                    {itemid =  1590, appraiserate = 10},   -- sprig_of_holy_basil �z�[���[�o�W��
                    {itemid =  5450, appraiserate = 10},   -- lakerda ���P���_
                    {itemid =   640, appraiserate = 10},   -- chunk_of_copper_ore ���z
                    {itemid =  1654, appraiserate = 10},   -- igneous_rock �ΐ���
                    {itemid =   662, appraiserate = 10},   -- iron_sheet �A�C�A����
                    {itemid =  2303, appraiserate = 10},   -- troll_bronze_sheet �g���[���u�����Y��
                    {itemid =   776, appraiserate = 10},   -- white_rock ����
                    {itemid =   769, appraiserate = 10},   -- red_rock �Ԑ�
                    {itemid =   828, appraiserate = 10},   -- square_of_velvet_cloth �r���[�h
                    {itemid =  1132, appraiserate = 10},   -- square_of_raxa ����
                    {itemid =   821, appraiserate = 10},   -- rainbow_thread ����
                    {itemid =   880, appraiserate = 10},   -- bone_chip ������
                    {itemid =   867, appraiserate = 10},   -- handful_of_dragon_scales ���̗�
                    {itemid =  1108, appraiserate = 10},   -- pinch_of_sulfur ����
                    {itemid =   928, appraiserate = 10},   -- pinch_of_bomb_ash �{���̊D
                    {itemid =  2146, appraiserate = 10},   -- merrow_scale �����[�̗�
                    {itemid =  2334, appraiserate = 10},   -- poroggo_hat �|���b�S�n�b�g
                    {itemid =  1164, appraiserate = 10},   -- tsurara �X��
                    {itemid =  5312, appraiserate = 10},   -- toolbag_(hiraishin) �E�������y�𗋐j�z
                    {itemid =  5314, appraiserate = 10},   -- toolbag_(shihei) �E�������y�����z
                    {itemid =  5317, appraiserate = 10},   -- toolbag_(sairui-ran) �E�������y�×ܗ��z
                    {itemid =  5318, appraiserate = 10},   -- toolbag_(kodoku) �E�������y���Łz
                    -- only
                }
            }
        }
    },
    -- �x�����t�H�����(�K��:���шȏ�)
    [BELLEROPHON_S_BLISS] =
    {
        {
            {itemid = 2276, droprate =  500,    -- ???_headpiece �H�H�H�w�b�h�E�F�A
                Appraise = {
                    {itemid = 12463, appraiserate = 10},   -- bronze_cap_+1 �u�����Y�L���b�v(+1)
                    {itemid = 12496, appraiserate = 10},   -- copper_hairpin ���̔�����
                    {itemid = 12472, appraiserate = 10},   -- circlet �T�[�N���b�g
                    {itemid = 12440, appraiserate = 10},   -- leather_bandana ���U�[�o���_�i
                    {itemid = 12505, appraiserate = 10},   -- bone_hairpin ���̔�����
                    {itemid = 12465, appraiserate = 10},   -- cotton_headgear �R�b�g���w�b�h�M�A
                    -- only
                    {itemid = 16127, appraiserate = 10},   -- carline_ribbon �J�[���C�����{��
                }
            },
            {itemid = 2276, droprate =  500,    -- ???_headpiece �H�H�H�w�b�h�E�F�A
                Appraise = {
                    {itemid = 12463, appraiserate = 10},   -- bronze_cap_+1 �u�����Y�L���b�v(+1)
                    {itemid = 12496, appraiserate = 10},   -- copper_hairpin ���̔�����
                    {itemid = 12472, appraiserate = 10},   -- circlet �T�[�N���b�g
                    {itemid = 12440, appraiserate = 10},   -- leather_bandana ���U�[�o���_�i
                    {itemid = 12505, appraiserate = 10},   -- bone_hairpin ���̔�����
                    {itemid = 12465, appraiserate = 10},   -- cotton_headgear �R�b�g���w�b�h�M�A
                    -- only
                    {itemid = 16126, appraiserate = 10},   -- bowmans_mask �{�E�}���}�X�N
                }
            },
            {itemid = 2286, droprate =  500,    -- ???_box �H�H�H�{�b�N�X
                Appraise = {
                    {itemid =  4196, appraiserate = 10},   -- rotten_quiver �������
                    {itemid =  5353, appraiserate = 10},   -- iron_bullet_pouch �����y�S�z
                    {itemid = 17396, appraiserate = 10},   -- little_worm ���g�����[��
                    {itemid = 12824, appraiserate = 10},   -- leather_trousers ���U�[�g���E�U
                    {itemid = 12823, appraiserate = 10},   -- bronze_subligar_+1 �u�����Y�T�u���K+1
                    {itemid = 12864, appraiserate = 10},   -- slacks �Y�{��
                    {itemid =  5018, appraiserate = 10},   -- scroll_of_puppets_operetta ���b�̃I�y���b�^
                    {itemid =  4896, appraiserate = 10},   -- fire_spirit_pact �_�񏑁w���̐���x
                    {itemid =    90, appraiserate = 10},   -- rusty_bucket �K�т��o�P�c
                    {itemid =  5253, appraiserate = 10},   -- hermes_quencher �G�����X�N�G���`��
                    {itemid =  4509, appraiserate = 10},   -- flask_of_distilled_water ������
                    {itemid =   638, appraiserate = 10},   -- sprig_of_sage �Z�[�W
                    {itemid =  1590, appraiserate = 10},   -- sprig_of_holy_basil �z�[���[�o�W��
                    {itemid =  5450, appraiserate = 10},   -- lakerda ���P���_
                    {itemid =   640, appraiserate = 10},   -- chunk_of_copper_ore ���z
                    {itemid =  1654, appraiserate = 10},   -- igneous_rock �ΐ���
                    {itemid =   662, appraiserate = 10},   -- iron_sheet �A�C�A����
                    {itemid =  2303, appraiserate = 10},   -- troll_bronze_sheet �g���[���u�����Y��
                    {itemid =   776, appraiserate = 10},   -- white_rock ����
                    {itemid =   769, appraiserate = 10},   -- red_rock �Ԑ�
                    {itemid =   828, appraiserate = 10},   -- square_of_velvet_cloth �r���[�h
                    {itemid =  1132, appraiserate = 10},   -- square_of_raxa ����
                    {itemid =   821, appraiserate = 10},   -- rainbow_thread ����
                    {itemid =   880, appraiserate = 10},   -- bone_chip ������
                    {itemid =   867, appraiserate = 10},   -- handful_of_dragon_scales ���̗�
                    {itemid =  1108, appraiserate = 10},   -- pinch_of_sulfur ����
                    {itemid =   928, appraiserate = 10},   -- pinch_of_bomb_ash �{���̊D
                    {itemid =  2146, appraiserate = 10},   -- merrow_scale �����[�̗�
                    {itemid =  2334, appraiserate = 10},   -- poroggo_hat �|���b�S�n�b�g
                    {itemid =  1164, appraiserate = 10},   -- tsurara �X��
                    {itemid =  5312, appraiserate = 10},   -- toolbag_(hiraishin) �E�������y�𗋐j�z
                    {itemid =  5314, appraiserate = 10},   -- toolbag_(shihei) �E�������y�����z
                    {itemid =  5317, appraiserate = 10},   -- toolbag_(sairui-ran) �E�������y�×ܗ��z
                    {itemid =  5318, appraiserate = 10},   -- toolbag_(kodoku) �E�������y���Łz
                    -- only
                }
            }
        }
    },
]]
}

entity.onTrade = function(player,npc,trade)
end

entity.onTrigger = function(player, npc)
    local assaultId = player:getCurrentAssault()

    if npc:getLocalVar("open") == 0 then
        tpz.assault.handleLootRolls(loot[assaultId], player, npc)
        npc:entityAnimationPacket("open")
        npc:setLocalVar("open", 1)
    end
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
end

return entity
