-----------------------------------
-- Area: Leujaoam Sanctum
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
    -- ���W�������|�����(�K��:�񓙗b���ȏ�)
    [LEUJAOAM_CLEANSING] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 �n�C�|�[�V����+3
            {itemid =  4173, droprate =  100}, -- hi-reraiser �n�C�����C�U�[
            {itemid =  4155, droprate =  100}, -- Remedy ���\��
        },
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
                    {itemid = 15773, appraiserate = 10},   -- imperial_ring �C���y���A�������O
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
                    {itemid =  4097, appraiserate = 10},   -- ice_crystal �X�̃N���X�^��
                }
            },
        },
    },
--[[
    -- �I���n���R���z������(�K��:�ꓙ�b���ȏ�)
    [ORICHALCUM_SURVEY] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 �n�C�|�[�V����+3
            {itemid =  4155, droprate =  100}, -- Remedy ���\��
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
                    -- only
                    {itemid =  15519, appraiserate = 10},   -- storm_muffler �X�g�[���}�t���[
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
                    {itemid =  14937, appraiserate = 10},   -- storm_gages �X�g�[���Q�[�W
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
            },
        },
    },
    -- �N���{�G�[���j�݌x��(�K��:�㓙�b���ȏ�)
    [ESCORT_PROFESSOR_CHANOIX] =
    {
        {
            {itemid =  4118, droprate =  100}, -- hi-potion_+2 �n�C�|�[�V����+2
            {itemid =  4172, droprate =  100}, -- reraiser �����C�U�[
            {itemid = 13688, droprate =  100}, -- hi-potion_tank �g�|�[�V�����^���N
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
                    {itemid =  15483, appraiserate = 10},   -- storm_mantle �X�g�[���}���g
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
            },
        },
    },
    -- �V���i�[�n���ی���(�K��:�b�����ȏ�)
    [SHANARHA_GRASS_CONSERVATION] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 �n�C�|�[�V����+3
            {itemid =  4173, droprate =  100}, -- hi-reraiser �n�C�����C�U�[
            {itemid = 13688, droprate =  100}, -- hi-potion_tank �g�|�[�V�����^���N
            {itemid = 13689, droprate =  100}, -- hi-ether_tank �g�G�[�e���^���N
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
                    {itemid = 15882, appraiserate = 10},   -- storm_belt �X�g�[���x���g
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
            },
        },
    },
    -- ���r���t���(�K��:�ޒ��ȏ�)
    [COUNTING_SHEEP] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 �n�C�|�[�V����+3
            {itemid =  4173, droprate =  100}, -- hi-reraiser �n�C�����C�U�[
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
                    {itemid = 18364, appraiserate = 10},   -- pahluwan_katars �y�������J�^�[��
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
                    {itemid =  4097, appraiserate = 10},   -- ice_crystal �X�̃N���X�^��
                    {itemid =  1411, appraiserate = 10},   -- phalaenopsis �t�@���m�v�V�X
                }
            },
        },
    },
    -- �⋋�����D�Ҏw��(�K��:�R���ȏ�)
    [SUPPLIES_RECOVERY] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 �n�C�|�[�V����+3
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
                    {itemid = 18027, appraiserate = 10},   -- palladium_dagger �p���f�B�E���_�K�[
                }
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
                    {itemid =  14951, appraiserate = 10},   -- dragon_kote �h���S���̏���
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
            },
        },
    },
    -- �̎���(�K��:�����ȏ�)
    [AZURE_EXPERIMENTS] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 �n�C�|�[�V����+3
            {itemid = 13689, droprate =  100}, -- hi-ether_tank �g�G�[�e���^���N
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
                    {itemid = 15705, appraiserate = 10},   -- ataractic_solea �A�^���N�e�B�\���A
                }
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
                    {itemid = 15786, appraiserate = 10},   -- divisor_ring �f�B�o�C�U�[�����O
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
        },
    },
    -- �I�O�}�D��w��(�K��:���������ȏ�)
    [IMPERIAL_CODE] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 �n�C�|�[�V����+3
            {itemid =  4173, droprate =  100}, -- hi-reraiser �n�C�����C�U�[
            {itemid = 13688, droprate =  100}, -- hi-potion_tank �g�|�[�V�����^���N
            {itemid = 13689, droprate =  100}, -- hi-ether_tank �g�G�[�e���^���N
        },
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
                    {itemid = 15794, appraiserate = 10},   -- omicron_ring �I�~�N���������O
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
                    -- only
                    {itemid =  15538, appraiserate = 10},   -- phi_necklace �t�@�C�l�b�N���X
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
        },
    },
    -- �s�ő��E���ő��������K(�K��:���шȏ�)
    [RED_VERSUS_BLUE] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 �n�C�|�[�V����+3
            {itemid = 13688, droprate =  100}, -- hi-potion_tank �g�|�[�V�����^���N
            {itemid = 13689, droprate =  100}, -- hi-ether_tank �g�G�[�e���^���N
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
                    {itemid = 15985, appraiserate = 10},   -- sigma_earring �V�O�}�s�A�X
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
                    {itemid = 15904, appraiserate = 10},   -- theta_sash �V�[�^�T�b�V��
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
                    {itemid =  2336, appraiserate = 10},   -- soulflayer_staff �\�E���t���A�̏�
                }
            }
        },
    },
    -- �w���V���O���(�K��:���шȏ�)
    [BLOODY_RONDO] =
    {
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
                    {itemid =  14999, appraiserate = 10},   -- vampiric_mitts �o���s���b�N�~�g��
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
                    {itemid =  15000, appraiserate = 10},   -- caballero_gauntlets �J�o���[���K���g��
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
                    {itemid =  5340, appraiserate = 10},   -- silver_bullet_pouch �����y��z
                }
            }
        },
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
