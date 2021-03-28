-----------------------------------
-- Area: Mamool Ja Training Grounds
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
    -- �c���G�[�W�F���g�~�o���(�K��:�񓙗b���ȏ�)
    [IMPERIAL_AGENT_RESCUE] =
    {
        {
            {itemid =  4118, droprate =  100}, -- hi-potion_+2 �n�C�|�[�V����+2
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 �n�C�|�[�V����+3
            {itemid =  4172, droprate =  100}, -- reraiser �����C�U�[
            {itemid = 13688, droprate =  100}, -- hi-potion_tank �g�|�[�V�����^���N
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
                    {itemid = 15774, appraiserate = 10},   -- storm_ring �X�g�[�������O
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
    -- �閧�P�����}�P���(�K��:�ꓙ�b���ȏ�)
    [PREEMPTIVE_STRIKE] =
    {
        {
            {itemid =  4118, droprate =  100}, -- hi-potion_+2 �n�C�|�[�V����+2
            {itemid =  4172, droprate =  100}, -- reraiser �����C�U�[
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
                    {itemid =  15520, appraiserate = 10},   -- storm_torque �X�g�[���g���N
                },
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
                    {itemid =  13128, appraiserate = 10},   -- spectacles �X�y�N�^�N���Y
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
                    {itemid =  4388, appraiserate = 10},   -- eggplant ���܂��i�X
                    {itemid =  4387, appraiserate = 10},   -- wild_onion ���C���h�I�j�I��
                    {itemid =  1828, appraiserate = 10},   -- spool_of_red_grass_thread �ԑ���
                    {itemid =  2227, appraiserate = 10},   -- mamool_ja_collar �}���[�W���̋݊�
                }
            }
        }
    },
    -- ���N���ÎE���(�K��:�㓙�b���ȏ�)
    [SAGELORD_ELIMINATION] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 �n�C�|�[�V����+3
            {itemid =  4173, droprate =  100}, -- hi-reraiser �n�C�����C�U�[
            {itemid = 13688, droprate =  100}, -- hi-potion_tank �g�|�[�V�����^���N
            {itemid = 13689, droprate =  100}, -- hi-ether_tank �g�G�[�e���^���N
        },
        {
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
                    {itemid = 18387, appraiserate = 10},   -- djinnbringer �W�j�[�u�����K�[
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
                    {itemid = 16065, appraiserate = 10},   -- storm_zucchetto �X�g�[���c�b�P�b�g
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
    -- �Ԗ╨�����D���(�K��:�b�����ȏ�)
    [BREAKING_MORALE] =
    {
        {
            {itemid =  4118, droprate =  100}, -- hi-potion_+2 �n�C�|�[�V����+2
            {itemid = 13688, droprate =  100}, -- hi-potion_tank �g�|�[�V�����^���N
            {itemid =  4172, droprate =  100}, -- reraiser �����C�U�[
        },
        {
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
                    {itemid = 17661, appraiserate = 10},   -- storm_scimitar �X�g�[���V�~�^�[
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
                    {itemid =  2156, appraiserate = 10},   -- clump_of_imperial_tea_leaves �A�g���K�����t
                    {itemid =  2289, appraiserate = 10},   -- square_of_wamoura_cloth �����[���N���X
                }
            }
        }
    },
    -- ��d�X�p�C�ߔ����(�K��:�ޒ��ȏ�)
    [THE_DOUBLE_AGENT] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 �n�C�|�[�V����+3
        },
        {
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
                    {itemid = 18387, appraiserate = 10},   -- djinnbringer �W�j�[�u�����K�[
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
    -- ����Ή���w��(�K��:�R���ȏ�)
    [IMPERIAL_TREASURE_RETRIEVAL] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 �n�C�|�[�V����+3
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
                    {itemid = 15787, appraiserate = 10},   -- horizon_ring �z���C�Y�������O
                }
            },
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
                    {itemid =  16220, appraiserate = 10},   -- volitional_mantle �{���V���i���}���g
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
    -- �ӗ؍ՏP�����(�K��:�����ȏ�)
    [BLITZKRIEG] =
    {
        {
            {itemid = 13688, droprate =  100}, -- hi-potion_tank �g�|�[�V�����^���N
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 �n�C�|�[�V����+3
            {itemid =  4173, droprate =  100}, -- hi-reraiser �n�C�����C�U�[
        },
        {
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
                    {itemid = 17721, appraiserate = 10},   -- sanguine_sword �T���O�C���\�[�h
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
                    {itemid = 16081, appraiserate = 10},   -- curates_hat �i�Ղ̖X�q
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
    -- �}�[���h�K�[�f�����(�K��:���������ȏ�)
    [MARIDS_IN_THE_MIST] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 �n�C�|�[�V����+3
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
                    {itemid = 15795, appraiserate = 10},   -- tau_ring �^�E�����O
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
                    {itemid =  15537, appraiserate = 10},   -- kappa_necklace �J�b�p�l�b�N���X
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
    -- �̏Ǘ�(�K��:���шȏ�)
    [AZURE_AILMENTS] =
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
                    {itemid = 15986, appraiserate = 10},   -- eta_earring �C�[�^�s�A�X
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
                    {itemid = 15903, appraiserate = 10},   -- ksi_sash �N�T�C�T�b�V��
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
    -- �X�T�m�I���(�K��:���шȏ�)
    [THE_SUSANOO_SHUFFLE] =
    {
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
                    {itemid = 15744, appraiserate = 10},   -- bowmans_ledelsens �{�E�}�����f���Z��
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
                    {itemid = 15745, appraiserate = 10},   -- vampiric_boots �o���s���b�N�u�[�c
                }
            },
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
