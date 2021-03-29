-----------------------------------
-- Area: Lebros Cavern
-- NPC:  Ancient Lockbox
-----------------------------------
require("scripts/globals/assault")
require("scripts/globals/titles")
require("scripts/globals/missions")
require("scripts/globals/quests")
require("scripts/globals/zone")
local ID = require("scripts/zones/Leujaoam_Sanctum/IDs")
-----------------------------------
local entity = {}

-- Appraise not compatible �Ӓ菈���͖��Ή�
local loot =
{
    -- �y�����(�K��:�񓙗b���ȏ�)
    [EXCAVATION_DUTY] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 �n�C�|�[�V����+3
            {itemid =  4155, droprate =  100}, -- Remedy ���\��
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
                    {itemid = 15968, appraiserate = 10},   -- storm_loop �X�g�[���s�A�X
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
--[[
    -- ���x���X�⋋���(�K��:�ꓙ�b���ȏ�)
    [LEBROS_SUPPLIES] =
    {
        {
            {itemid =  4118, droprate =  100}, -- hi-potion_+2 �n�C�|�[�V����+2
        },
        {
            {itemid = 2279, droprate =  500,    -- ???_cape �H�H�H�P�[�v
                Appraise = {
                    {itemid =  13583, appraiserate = 10},   -- cape �P�[�v
                    {itemid =  13683, appraiserate = 10},   -- water_tank �E�H�[�^�[�^���N
                    {itemid =  13682, appraiserate = 10},   -- ether_tank �G�[�e���^���N
                    {itemid =  13684, appraiserate = 10},   -- potion_tank �|�[�V�����^���N
                    {itemid =  13592, appraiserate = 10},   -- lizard_mantle ���U�[�h�}���g+1
                    {itemid =  13588, appraiserate = 10},   -- dhalmel_mantle �_�������}���g+1
                    {itemid =  13601, appraiserate = 10},   -- cotton_cape_+1 �R�b�g���P�[�v+1
                    {itemid =  13624, appraiserate = 10},   -- enhancing_mantle �G���n���X�}���g
                    {itemid =  13679, appraiserate = 10},   -- templars_mantle �e���v���[�}���g
                    -- only
                    {itemid =  15489, appraiserate = 10},   -- storm_cape �X�g�[���P�[�v
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
                    {itemid =  1270, appraiserate = 10},   -- arachne_web �A���N�l�̖�
                }
            }
        }
    },
    -- �������Ғǌ���(�K��:�㓙�b���ȏ�)
    [TROLL_FUGITIVES] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 �n�C�|�[�V����+3
            {itemid =  4173, droprate =  100}, -- hi-reraiser �n�C�����C�U�[
            {itemid = 13689, droprate =  100}, -- hi-ether_tank �g�G�[�e���^���N
        },
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
                    {itemid = 16066, appraiserate = 10},   -- storm_turban �X�g�[���^�[�o��
                }
            },
            {itemid = 2193, droprate =  500,    -- ???_axe �H�H�H�A�N�X
                Appraise = {
                    {itemid = 16640, appraiserate = 10},   -- bronze_axe �u�����Y�A�N�X
                    {itemid = 16641, appraiserate = 10},   -- brass_axe �u���X�A�N�X
                    {itemid = 16642, appraiserate = 10},   -- bone_axe �{�[���A�N�X
                    {itemid = 17943, appraiserate = 10},   -- tomahawk_+1 �g�}�z�[�N+1
                    {itemid = 17949, appraiserate = 10},   -- furnace_tabarzin �t�@�i�X�^�o���W��
                    {itemid = 16709, appraiserate = 10},   -- inferno_axe �C���t�F���m�A�N�X
                    {itemid = 18220, appraiserate = 10},   -- prominence_axe �v���~�l���X�A�N�X
                    {itemid = 18217, appraiserate = 10},   -- rampager �����y�[�W���[
                    {itemid = 18225, appraiserate = 10},   -- blizzard_toporok �u���U�[�h�g�|���N
                    {itemid = 16704, appraiserate = 10},   -- butterfly_axe �o�^�t���C�A�N�X
                    {itemid =   605, appraiserate = 10},   -- pickaxe ��͂�
                    {itemid =  1021, appraiserate = 10},   -- hatchet �܂�����
                    -- only
                    {itemid = 18484, appraiserate = 10},   -- wamoura_axe �����[���A�N�X
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
    -- �y�M���(�K��:�b�����ȏ�)
    [EVADE_AND_ESCAPE] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 �n�C�|�[�V����+3
            {itemid =  4173, droprate =  100}, -- hi-reraiser �n�C�����C�U�[
            {itemid = 13688, droprate =  100}, -- hi-potion_tank �g�|�[�V�����^���N
            {itemid = 13689, droprate =  100}, -- hi-ether_tank �g�G�[�e���^���N
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
                    {itemid = 18416, appraiserate = 10},   -- karasuageha ��g�H
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
                    {itemid =  5341, appraiserate = 10},   -- spartan_bullet_pouch �����y�X�p���^���z
                }
            }
        }
    },
    -- �b���R�t�_�����(�K��:�ޒ��ȏ�)
    [SIEGEMASTER_ASSASSINATION] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 �n�C�|�[�V����+3
            {itemid =  4173, droprate =  100}, -- hi-reraiser �n�C�����C�U�[
            {itemid = 13688, droprate =  100}, -- hi-potion_tank �g�|�[�V�����^���N
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
                    {itemid = 18407, appraiserate = 10},   -- imperial_wand �C���y���A�������h
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
                    {itemid =  5341, appraiserate = 10},   -- spartan_bullet_pouch �����y�X�p���^���z
                }
            }
        }
    },
    -- �A�v�J���ɐB�w��(�K��:�R���ȏ�)
    [APKALLU_BREEDING] =
    {
        {
            {itemid =  4118, droprate =  100}, -- hi-potion_+2 �n�C�|�[�V����+2
            {itemid =  4172, droprate =  100}, -- reraiser �����C�U�[
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
                    {itemid = 15293, appraiserate = 10},   -- gleemans_belt �O���[�}���x���g
                }
            },
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
                    {itemid = 15980, appraiserate = 10},   -- magnifying_earring �}�O�j�t�@�C�s�A�X
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
                    {itemid =  5341, appraiserate = 10},   -- spartan_bullet_pouch �����y�X�p���^���z
                }
            }
        }
    },
    -- �����[���t�@�[���P�����(�K��:�����ȏ�)
    [WAMOURA_FARM_RAID] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 �n�C�|�[�V����+3
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
                    {itemid = 18843, appraiserate = 10},   -- flan_smasher �t�����X�}�b�V���[
                }
            },
            {itemid = 2190, droprate =  500,    -- ???_sword �H�H�H�\�[�h
                Appraise = {
                    {itemid = 16535, appraiserate = 10},   -- bronze_sword �u�����Y�\�[�h
                    {itemid = 16600, appraiserate = 10},   -- wax_sword ���b�N�X�\�[�h
                    {itemid = 16530, appraiserate = 10},   -- xiphos �T�C�t�H�X
                    {itemid = 17716, appraiserate = 10},   -- macuahuitl_-1 �}�N�A�t�e�B��-1
                    {itemid = 17700, appraiserate = 10},   -- durandal �f�������_��
                    {itemid = 17703, appraiserate = 10},   -- pealing_anelace �s�[���A�l���X
                    {itemid = 16583, appraiserate = 10},   -- claymore �N���C���A
                    {itemid = 18366, appraiserate = 10},   -- gust_claymore �K�X�g�N���C���A
                    {itemid = 16966, appraiserate = 10},   -- tachi ����
                    {itemid = 16978, appraiserate = 10},   -- uchigatana_+1 �œ���
                    {itemid = 18435, appraiserate = 10},   -- hotarumaru �u��
                    {itemid = 18433, appraiserate = 10},   -- kagiroi �Ό�
                    -- only
                    {itemid = 18438, appraiserate = 10},   -- kumokirimaru �w偐؊�
                }
            },
            {itemid = 2193, droprate =  500,    -- ???_axe �H�H�H�A�N�X
                Appraise = {
                    {itemid = 16640, appraiserate = 10},   -- bronze_axe �u�����Y�A�N�X
                    {itemid = 16641, appraiserate = 10},   -- brass_axe �u���X�A�N�X
                    {itemid = 16642, appraiserate = 10},   -- bone_axe �{�[���A�N�X
                    {itemid = 17943, appraiserate = 10},   -- tomahawk_+1 �g�}�z�[�N+1
                    {itemid = 17949, appraiserate = 10},   -- furnace_tabarzin �t�@�i�X�^�o���W��
                    {itemid = 16709, appraiserate = 10},   -- inferno_axe �C���t�F���m�A�N�X
                    {itemid = 18220, appraiserate = 10},   -- prominence_axe �v���~�l���X�A�N�X
                    {itemid = 18217, appraiserate = 10},   -- rampager �����y�[�W���[
                    {itemid = 18225, appraiserate = 10},   -- blizzard_toporok �u���U�[�h�g�|���N
                    {itemid = 16704, appraiserate = 10},   -- butterfly_axe �o�^�t���C�A�N�X
                    {itemid =   605, appraiserate = 10},   -- pickaxe ��͂�
                    {itemid =  1021, appraiserate = 10},   -- hatchet �܂�����
                    -- only
                    {itemid = 18487, appraiserate = 10},   -- eriks_axe �G�C���[�N�A�N�X
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
    -- �n���^�[�L���[���(�K��:���������ȏ�)
    [EGG_CONSERVATION] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 �n�C�|�[�V����+3
            {itemid =  4173, droprate =  100}, -- hi-reraiser �n�C�����C�U�[
            {itemid = 13688, droprate =  100}, -- hi-potion_tank �g�|�[�V�����^���N
        },
        {
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
                    {itemid =  15536, appraiserate = 10},   -- rho_necklace ���[�l�b�N���X
                },
            },
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
                    {itemid = 15796, appraiserate = 10},   -- psi_ring �v�T�C�����O
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
    -- �u���b�N�p�[�����(�K��:���шȏ�)
    [OPERATION__BLACK_PEARL] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 �n�C�|�[�V����+3
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
                    {itemid = 15987, appraiserate = 10},   -- epsilon_earring �C�v�V�����s�A�X
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
                    {itemid = 15902, appraiserate = 10},   -- lambda_sash �����_�T�b�V��
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
    -- �w���N���X���(�K��:���шȏ�)
    [BETTER_THAN_ONE] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 �n�C�|�[�V����+3
            {itemid =  4173, droprate =  100}, -- hi-reraiser �n�C�����C�U�[
            {itemid = 13688, droprate =  100}, -- hi-potion_tank �g�|�[�V�����^���N
            {itemid = 13689, droprate =  100}, -- hi-ether_tank �g�G�[�e���^���N
        },
        {
            {itemid = 2281, droprate =  500,    -- ???_shield �H�H�H�V�[���h
                Appraise = {
                    {itemid = 12289, appraiserate = 10},   -- lauan_shield �������V�[���h
                    {itemid = 12290, appraiserate = 10},   -- maple_shield ���[�v���V�[���h
                    {itemid = 12291, appraiserate = 10},   -- elm_shield �G�����V�[���h
                    {itemid = 12299, appraiserate = 10},   -- aspis �A�X�s�X
                    {itemid = 12292, appraiserate = 10},   -- mahogany_shield �}�z�K�j�[�V�[���h
                    {itemid = 16167, appraiserate = 10},   -- tariqah_-1 �^���J�[-1
                    {itemid = 12293, appraiserate = 10},   -- oak_shield �I�[�N�V�[���h
                    -- only
                    {itemid = 16169, appraiserate = 10},   -- caballero_shield �J�o���[���V�[���h
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
                    {itemid = 16125, appraiserate = 10},   -- breeder_mask �u���[�_�[�}�X�N
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
