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

-- Appraise not compatible 鑑定処理は未対応
local loot =
{
    -- 皇国エージェント救出作戦(階級:二等傭兵以上)
    [IMPERIAL_AGENT_RESCUE] =
    {
        {
            {itemid =  4118, droprate =  100}, -- hi-potion_+2 ハイポーション+2
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 ハイポーション+3
            {itemid =  4172, droprate =  100}, -- reraiser リレイザー
            {itemid = 13688, droprate =  100}, -- hi-potion_tank Ｈポーションタンク
        },
        {
            {itemid = 2278, droprate =  500,    -- ???_ring ？？？リング
                Appraise = {
                    {itemid = 13454, appraiserate = 10},   -- copper_ring カッパーリング
                    {itemid = 13465, appraiserate = 10},   -- brass_ring ブラスリング
                    {itemid = 13442, appraiserate = 10},   -- shell_ring シェルリング
                    {itemid = 13469, appraiserate = 10},   -- leather_ring レザーリング
                    {itemid = 13456, appraiserate = 10},   -- silver_ring シルバーリング
                    {itemid = 13457, appraiserate = 10},   -- beetle_ring ビートルリング
                    {itemid = 13514, appraiserate = 10},   -- archers_ring アーチャーリング
                    {itemid = 13549, appraiserate = 10},   -- ether_ring エーテルリング
                    {itemid = 13447, appraiserate = 10},   -- platinum_ring プラチナリング
                    {itemid = 13466, appraiserate = 10},   -- orichalcum_ring オリハルコンリング
                    -- only
                    {itemid = 15774, appraiserate = 10},   -- storm_ring ストームリング
                }
            },
            {itemid = 2286, droprate =  500,    -- ???_box ？？？ボックス
                Appraise = {
                    {itemid =  4196, appraiserate = 10},   -- rotten_quiver 腐った矢筒
                    {itemid =  5353, appraiserate = 10},   -- iron_bullet_pouch 胴乱【鉄】
                    {itemid = 17396, appraiserate = 10},   -- little_worm リトルワーム
                    {itemid = 12824, appraiserate = 10},   -- leather_trousers レザートラウザ
                    {itemid = 12823, appraiserate = 10},   -- bronze_subligar_+1 ブロンズサブリガ+1
                    {itemid = 12864, appraiserate = 10},   -- slacks ズボン
                    {itemid =  5018, appraiserate = 10},   -- scroll_of_puppets_operetta 腹話のオペレッタ
                    {itemid =  4896, appraiserate = 10},   -- fire_spirit_pact 契約書『光の精霊』
                    {itemid =    90, appraiserate = 10},   -- rusty_bucket 錆びたバケツ
                    {itemid =  5253, appraiserate = 10},   -- hermes_quencher エルメスクエンチャ
                    {itemid =  4509, appraiserate = 10},   -- flask_of_distilled_water 蒸留水
                    {itemid =   638, appraiserate = 10},   -- sprig_of_sage セージ
                    {itemid =  1590, appraiserate = 10},   -- sprig_of_holy_basil ホーリーバジル
                    {itemid =  5450, appraiserate = 10},   -- lakerda ラケルダ
                    {itemid =   640, appraiserate = 10},   -- chunk_of_copper_ore 銅鉱
                    {itemid =  1654, appraiserate = 10},   -- igneous_rock 火成岩
                    {itemid =   662, appraiserate = 10},   -- iron_sheet アイアン板
                    {itemid =  2303, appraiserate = 10},   -- troll_bronze_sheet トロールブロンズ板
                    {itemid =   776, appraiserate = 10},   -- white_rock 白石
                    {itemid =   769, appraiserate = 10},   -- red_rock 赤石
                    {itemid =   828, appraiserate = 10},   -- square_of_velvet_cloth ビロード
                    {itemid =  1132, appraiserate = 10},   -- square_of_raxa 羅紗
                    {itemid =   821, appraiserate = 10},   -- rainbow_thread 虹糸
                    {itemid =   880, appraiserate = 10},   -- bone_chip 骨くず
                    {itemid =   867, appraiserate = 10},   -- handful_of_dragon_scales 龍の鱗
                    {itemid =  1108, appraiserate = 10},   -- pinch_of_sulfur 硫黄
                    {itemid =   928, appraiserate = 10},   -- pinch_of_bomb_ash ボムの灰
                    {itemid =  2146, appraiserate = 10},   -- merrow_scale メローの鱗
                    {itemid =  2334, appraiserate = 10},   -- poroggo_hat ポロッゴハット
                    {itemid =  1164, appraiserate = 10},   -- tsurara 氷柱
                    {itemid =  5312, appraiserate = 10},   -- toolbag_(hiraishin) 忍だすき【避雷針】
                    {itemid =  5314, appraiserate = 10},   -- toolbag_(shihei) 忍だすき【紙兵】
                    {itemid =  5317, appraiserate = 10},   -- toolbag_(sairui-ran) 忍だすき【催涙卵】
                    {itemid =  5318, appraiserate = 10},   -- toolbag_(kodoku) 忍だすき【蠱毒】
                    -- only
                }
            }
        }
    },
--[[
    -- 秘密訓練所急襲作戦(階級:一等傭兵以上)
    [PREEMPTIVE_STRIKE] =
    {
        {
            {itemid =  4118, droprate =  100}, -- hi-potion_+2 ハイポーション+2
            {itemid =  4172, droprate =  100}, -- reraiser リレイザー
            {itemid = 13688, droprate =  100}, -- hi-potion_tank Ｈポーションタンク
        },
        {
            {itemid = 2282, droprate =  500,    -- ???_necklace ？？？ネックレス
                Appraise = {
                    {itemid =  15526, appraiserate = 10},   -- regen_collar リジェネカラー
                    {itemid =  13081, appraiserate = 10},   -- leather_gorget レザーゴルゲット
                    {itemid =  13090, appraiserate = 10},   -- beetle_gorget ビートルゴルゲット
                    {itemid =  13085, appraiserate = 10},   -- hemp_gorget ヘンプゴルゲット
                    {itemid =  13065, appraiserate = 10},   -- gorget_+1 ゴルゲット+1
                    {itemid =  13165, appraiserate = 10},   -- jagd_gorget ヤクトゴルゲット
                    {itemid =  13075, appraiserate = 10},   -- feather_collar フェザーカラー
                    -- only
                    {itemid =  15520, appraiserate = 10},   -- storm_torque ストームトルク
                },
            },
            {itemid = 2282, droprate =  500,    -- ???_necklace ？？？ネックレス
                Appraise = {
                    {itemid =  15526, appraiserate = 10},   -- regen_collar リジェネカラー
                    {itemid =  13081, appraiserate = 10},   -- leather_gorget レザーゴルゲット
                    {itemid =  13090, appraiserate = 10},   -- beetle_gorget ビートルゴルゲット
                    {itemid =  13085, appraiserate = 10},   -- hemp_gorget ヘンプゴルゲット
                    {itemid =  13065, appraiserate = 10},   -- gorget_+1 ゴルゲット+1
                    {itemid =  13165, appraiserate = 10},   -- jagd_gorget ヤクトゴルゲット
                    {itemid =  13075, appraiserate = 10},   -- feather_collar フェザーカラー
                    -- only
                    {itemid =  13128, appraiserate = 10},   -- spectacles スペクタクルズ
                },
            },
            {itemid = 2286, droprate =  500,    -- ???_box ？？？ボックス
                Appraise = {
                    {itemid =  4196, appraiserate = 10},   -- rotten_quiver 腐った矢筒
                    {itemid =  5353, appraiserate = 10},   -- iron_bullet_pouch 胴乱【鉄】
                    {itemid = 17396, appraiserate = 10},   -- little_worm リトルワーム
                    {itemid = 12824, appraiserate = 10},   -- leather_trousers レザートラウザ
                    {itemid = 12823, appraiserate = 10},   -- bronze_subligar_+1 ブロンズサブリガ+1
                    {itemid = 12864, appraiserate = 10},   -- slacks ズボン
                    {itemid =  5018, appraiserate = 10},   -- scroll_of_puppets_operetta 腹話のオペレッタ
                    {itemid =  4896, appraiserate = 10},   -- fire_spirit_pact 契約書『光の精霊』
                    {itemid =    90, appraiserate = 10},   -- rusty_bucket 錆びたバケツ
                    {itemid =  5253, appraiserate = 10},   -- hermes_quencher エルメスクエンチャ
                    {itemid =  4509, appraiserate = 10},   -- flask_of_distilled_water 蒸留水
                    {itemid =   638, appraiserate = 10},   -- sprig_of_sage セージ
                    {itemid =  1590, appraiserate = 10},   -- sprig_of_holy_basil ホーリーバジル
                    {itemid =  5450, appraiserate = 10},   -- lakerda ラケルダ
                    {itemid =   640, appraiserate = 10},   -- chunk_of_copper_ore 銅鉱
                    {itemid =  1654, appraiserate = 10},   -- igneous_rock 火成岩
                    {itemid =   662, appraiserate = 10},   -- iron_sheet アイアン板
                    {itemid =  2303, appraiserate = 10},   -- troll_bronze_sheet トロールブロンズ板
                    {itemid =   776, appraiserate = 10},   -- white_rock 白石
                    {itemid =   769, appraiserate = 10},   -- red_rock 赤石
                    {itemid =   828, appraiserate = 10},   -- square_of_velvet_cloth ビロード
                    {itemid =  1132, appraiserate = 10},   -- square_of_raxa 羅紗
                    {itemid =   821, appraiserate = 10},   -- rainbow_thread 虹糸
                    {itemid =   880, appraiserate = 10},   -- bone_chip 骨くず
                    {itemid =   867, appraiserate = 10},   -- handful_of_dragon_scales 龍の鱗
                    {itemid =  1108, appraiserate = 10},   -- pinch_of_sulfur 硫黄
                    {itemid =   928, appraiserate = 10},   -- pinch_of_bomb_ash ボムの灰
                    {itemid =  2146, appraiserate = 10},   -- merrow_scale メローの鱗
                    {itemid =  2334, appraiserate = 10},   -- poroggo_hat ポロッゴハット
                    {itemid =  1164, appraiserate = 10},   -- tsurara 氷柱
                    {itemid =  5312, appraiserate = 10},   -- toolbag_(hiraishin) 忍だすき【避雷針】
                    {itemid =  5314, appraiserate = 10},   -- toolbag_(shihei) 忍だすき【紙兵】
                    {itemid =  5317, appraiserate = 10},   -- toolbag_(sairui-ran) 忍だすき【催涙卵】
                    {itemid =  5318, appraiserate = 10},   -- toolbag_(kodoku) 忍だすき【蠱毒】
                    -- only
                    {itemid =  4388, appraiserate = 10},   -- eggplant たまごナス
                    {itemid =  4387, appraiserate = 10},   -- wild_onion ワイルドオニオン
                    {itemid =  1828, appraiserate = 10},   -- spool_of_red_grass_thread 赤草糸
                    {itemid =  2227, appraiserate = 10},   -- mamool_ja_collar マムージャの襟巻
                }
            }
        }
    },
    -- 賢哲王暗殺作戦(階級:上等傭兵以上)
    [SAGELORD_ELIMINATION] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 ハイポーション+3
            {itemid =  4173, droprate =  100}, -- hi-reraiser ハイリレイザー
            {itemid = 13688, droprate =  100}, -- hi-potion_tank Ｈポーションタンク
            {itemid = 13689, droprate =  100}, -- hi-ether_tank Ｈエーテルタンク
        },
        {
            {itemid = 2190, droprate =  500,    -- ???_sword ？？？ソード
                Appraise = {
                    {itemid = 16535, appraiserate = 10},   -- bronze_sword ブロンズソード
                    {itemid = 16600, appraiserate = 10},   -- wax_sword ワックスソード
                    {itemid = 16530, appraiserate = 10},   -- xiphos サイフォス
                    {itemid = 17716, appraiserate = 10},   -- macuahuitl_-1 マクアフティル-1
                    {itemid = 17700, appraiserate = 10},   -- durandal デュランダル
                    {itemid = 17703, appraiserate = 10},   -- pealing_anelace ピールアネラス
                    {itemid = 16583, appraiserate = 10},   -- claymore クレイモア
                    {itemid = 18366, appraiserate = 10},   -- gust_claymore ガストクレイモア
                    {itemid = 16966, appraiserate = 10},   -- tachi 太刀
                    {itemid = 16978, appraiserate = 10},   -- uchigatana_+1 打刀改
                    {itemid = 18435, appraiserate = 10},   -- hotarumaru 蛍丸
                    {itemid = 18433, appraiserate = 10},   -- kagiroi 火光
                    -- only
                    {itemid = 18387, appraiserate = 10},   -- djinnbringer ジニーブリンガー
                }
            },
            {itemid = 2276, droprate =  500,    -- ???_headpiece ？？？ヘッドウェア
                Appraise = {
                    {itemid = 12463, appraiserate = 10},   -- bronze_cap_+1 ブロンズキャップ(+1)
                    {itemid = 12496, appraiserate = 10},   -- copper_hairpin 銅の髪飾り
                    {itemid = 12472, appraiserate = 10},   -- circlet サークレット
                    {itemid = 12440, appraiserate = 10},   -- leather_bandana レザーバンダナ
                    {itemid = 12505, appraiserate = 10},   -- bone_hairpin 骨の髪飾り
                    {itemid = 12465, appraiserate = 10},   -- cotton_headgear コットンヘッドギア
                    -- only
                    {itemid = 16065, appraiserate = 10},   -- storm_zucchetto ストームツッケット
                }
            },
            {itemid = 2286, droprate =  500,    -- ???_box ？？？ボックス
                Appraise = {
                    {itemid =  4196, appraiserate = 10},   -- rotten_quiver 腐った矢筒
                    {itemid =  5353, appraiserate = 10},   -- iron_bullet_pouch 胴乱【鉄】
                    {itemid = 17396, appraiserate = 10},   -- little_worm リトルワーム
                    {itemid = 12824, appraiserate = 10},   -- leather_trousers レザートラウザ
                    {itemid = 12823, appraiserate = 10},   -- bronze_subligar_+1 ブロンズサブリガ+1
                    {itemid = 12864, appraiserate = 10},   -- slacks ズボン
                    {itemid =  5018, appraiserate = 10},   -- scroll_of_puppets_operetta 腹話のオペレッタ
                    {itemid =  4896, appraiserate = 10},   -- fire_spirit_pact 契約書『光の精霊』
                    {itemid =    90, appraiserate = 10},   -- rusty_bucket 錆びたバケツ
                    {itemid =  5253, appraiserate = 10},   -- hermes_quencher エルメスクエンチャ
                    {itemid =  4509, appraiserate = 10},   -- flask_of_distilled_water 蒸留水
                    {itemid =   638, appraiserate = 10},   -- sprig_of_sage セージ
                    {itemid =  1590, appraiserate = 10},   -- sprig_of_holy_basil ホーリーバジル
                    {itemid =  5450, appraiserate = 10},   -- lakerda ラケルダ
                    {itemid =   640, appraiserate = 10},   -- chunk_of_copper_ore 銅鉱
                    {itemid =  1654, appraiserate = 10},   -- igneous_rock 火成岩
                    {itemid =   662, appraiserate = 10},   -- iron_sheet アイアン板
                    {itemid =  2303, appraiserate = 10},   -- troll_bronze_sheet トロールブロンズ板
                    {itemid =   776, appraiserate = 10},   -- white_rock 白石
                    {itemid =   769, appraiserate = 10},   -- red_rock 赤石
                    {itemid =   828, appraiserate = 10},   -- square_of_velvet_cloth ビロード
                    {itemid =  1132, appraiserate = 10},   -- square_of_raxa 羅紗
                    {itemid =   821, appraiserate = 10},   -- rainbow_thread 虹糸
                    {itemid =   880, appraiserate = 10},   -- bone_chip 骨くず
                    {itemid =   867, appraiserate = 10},   -- handful_of_dragon_scales 龍の鱗
                    {itemid =  1108, appraiserate = 10},   -- pinch_of_sulfur 硫黄
                    {itemid =   928, appraiserate = 10},   -- pinch_of_bomb_ash ボムの灰
                    {itemid =  2146, appraiserate = 10},   -- merrow_scale メローの鱗
                    {itemid =  2334, appraiserate = 10},   -- poroggo_hat ポロッゴハット
                    {itemid =  1164, appraiserate = 10},   -- tsurara 氷柱
                    {itemid =  5312, appraiserate = 10},   -- toolbag_(hiraishin) 忍だすき【避雷針】
                    {itemid =  5314, appraiserate = 10},   -- toolbag_(shihei) 忍だすき【紙兵】
                    {itemid =  5317, appraiserate = 10},   -- toolbag_(sairui-ran) 忍だすき【催涙卵】
                    {itemid =  5318, appraiserate = 10},   -- toolbag_(kodoku) 忍だすき【蠱毒】
                    -- only
                }
            }
        }
    },
    -- 慰問物資強奪作戦(階級:傭兵長以上)
    [BREAKING_MORALE] =
    {
        {
            {itemid =  4118, droprate =  100}, -- hi-potion_+2 ハイポーション+2
            {itemid = 13688, droprate =  100}, -- hi-potion_tank Ｈポーションタンク
            {itemid =  4172, droprate =  100}, -- reraiser リレイザー
        },
        {
            {itemid = 2190, droprate =  500,    -- ???_sword ？？？ソード
                Appraise = {
                    {itemid = 16535, appraiserate = 10},   -- bronze_sword ブロンズソード
                    {itemid = 16600, appraiserate = 10},   -- wax_sword ワックスソード
                    {itemid = 16530, appraiserate = 10},   -- xiphos サイフォス
                    {itemid = 17716, appraiserate = 10},   -- macuahuitl_-1 マクアフティル-1
                    {itemid = 17700, appraiserate = 10},   -- durandal デュランダル
                    {itemid = 17703, appraiserate = 10},   -- pealing_anelace ピールアネラス
                    {itemid = 16583, appraiserate = 10},   -- claymore クレイモア
                    {itemid = 18366, appraiserate = 10},   -- gust_claymore ガストクレイモア
                    {itemid = 16966, appraiserate = 10},   -- tachi 太刀
                    {itemid = 16978, appraiserate = 10},   -- uchigatana_+1 打刀改
                    {itemid = 18435, appraiserate = 10},   -- hotarumaru 蛍丸
                    {itemid = 18433, appraiserate = 10},   -- kagiroi 火光
                    -- only
                    {itemid = 17661, appraiserate = 10},   -- storm_scimitar ストームシミター
                }
            },
            {itemid = 2286, droprate =  500,    -- ???_box ？？？ボックス
                Appraise = {
                    {itemid =  4196, appraiserate = 10},   -- rotten_quiver 腐った矢筒
                    {itemid =  5353, appraiserate = 10},   -- iron_bullet_pouch 胴乱【鉄】
                    {itemid = 17396, appraiserate = 10},   -- little_worm リトルワーム
                    {itemid = 12824, appraiserate = 10},   -- leather_trousers レザートラウザ
                    {itemid = 12823, appraiserate = 10},   -- bronze_subligar_+1 ブロンズサブリガ+1
                    {itemid = 12864, appraiserate = 10},   -- slacks ズボン
                    {itemid =  5018, appraiserate = 10},   -- scroll_of_puppets_operetta 腹話のオペレッタ
                    {itemid =  4896, appraiserate = 10},   -- fire_spirit_pact 契約書『光の精霊』
                    {itemid =    90, appraiserate = 10},   -- rusty_bucket 錆びたバケツ
                    {itemid =  5253, appraiserate = 10},   -- hermes_quencher エルメスクエンチャ
                    {itemid =  4509, appraiserate = 10},   -- flask_of_distilled_water 蒸留水
                    {itemid =   638, appraiserate = 10},   -- sprig_of_sage セージ
                    {itemid =  1590, appraiserate = 10},   -- sprig_of_holy_basil ホーリーバジル
                    {itemid =  5450, appraiserate = 10},   -- lakerda ラケルダ
                    {itemid =   640, appraiserate = 10},   -- chunk_of_copper_ore 銅鉱
                    {itemid =  1654, appraiserate = 10},   -- igneous_rock 火成岩
                    {itemid =   662, appraiserate = 10},   -- iron_sheet アイアン板
                    {itemid =  2303, appraiserate = 10},   -- troll_bronze_sheet トロールブロンズ板
                    {itemid =   776, appraiserate = 10},   -- white_rock 白石
                    {itemid =   769, appraiserate = 10},   -- red_rock 赤石
                    {itemid =   828, appraiserate = 10},   -- square_of_velvet_cloth ビロード
                    {itemid =  1132, appraiserate = 10},   -- square_of_raxa 羅紗
                    {itemid =   821, appraiserate = 10},   -- rainbow_thread 虹糸
                    {itemid =   880, appraiserate = 10},   -- bone_chip 骨くず
                    {itemid =   867, appraiserate = 10},   -- handful_of_dragon_scales 龍の鱗
                    {itemid =  1108, appraiserate = 10},   -- pinch_of_sulfur 硫黄
                    {itemid =   928, appraiserate = 10},   -- pinch_of_bomb_ash ボムの灰
                    {itemid =  2146, appraiserate = 10},   -- merrow_scale メローの鱗
                    {itemid =  2334, appraiserate = 10},   -- poroggo_hat ポロッゴハット
                    {itemid =  1164, appraiserate = 10},   -- tsurara 氷柱
                    {itemid =  5312, appraiserate = 10},   -- toolbag_(hiraishin) 忍だすき【避雷針】
                    {itemid =  5314, appraiserate = 10},   -- toolbag_(shihei) 忍だすき【紙兵】
                    {itemid =  5317, appraiserate = 10},   -- toolbag_(sairui-ran) 忍だすき【催涙卵】
                    {itemid =  5318, appraiserate = 10},   -- toolbag_(kodoku) 忍だすき【蠱毒】
                    -- only
                    {itemid =  2156, appraiserate = 10},   -- clump_of_imperial_tea_leaves アトルガン茶葉
                    {itemid =  2289, appraiserate = 10},   -- square_of_wamoura_cloth ワモーラクロス
                }
            }
        }
    },
    -- 二重スパイ捕縛作戦(階級:伍長以上)
    [THE_DOUBLE_AGENT] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 ハイポーション+3
        },
        {
            {itemid = 2190, droprate =  500,    -- ???_sword ？？？ソード
                Appraise = {
                    {itemid = 16535, appraiserate = 10},   -- bronze_sword ブロンズソード
                    {itemid = 16600, appraiserate = 10},   -- wax_sword ワックスソード
                    {itemid = 16530, appraiserate = 10},   -- xiphos サイフォス
                    {itemid = 17716, appraiserate = 10},   -- macuahuitl_-1 マクアフティル-1
                    {itemid = 17700, appraiserate = 10},   -- durandal デュランダル
                    {itemid = 17703, appraiserate = 10},   -- pealing_anelace ピールアネラス
                    {itemid = 16583, appraiserate = 10},   -- claymore クレイモア
                    {itemid = 18366, appraiserate = 10},   -- gust_claymore ガストクレイモア
                    {itemid = 16966, appraiserate = 10},   -- tachi 太刀
                    {itemid = 16978, appraiserate = 10},   -- uchigatana_+1 打刀改
                    {itemid = 18435, appraiserate = 10},   -- hotarumaru 蛍丸
                    {itemid = 18433, appraiserate = 10},   -- kagiroi 火光
                    -- only
                    {itemid = 18387, appraiserate = 10},   -- djinnbringer ジニーブリンガー
                }
            },
            {itemid = 2286, droprate =  500,    -- ???_box ？？？ボックス
                Appraise = {
                    {itemid =  4196, appraiserate = 10},   -- rotten_quiver 腐った矢筒
                    {itemid =  5353, appraiserate = 10},   -- iron_bullet_pouch 胴乱【鉄】
                    {itemid = 17396, appraiserate = 10},   -- little_worm リトルワーム
                    {itemid = 12824, appraiserate = 10},   -- leather_trousers レザートラウザ
                    {itemid = 12823, appraiserate = 10},   -- bronze_subligar_+1 ブロンズサブリガ+1
                    {itemid = 12864, appraiserate = 10},   -- slacks ズボン
                    {itemid =  5018, appraiserate = 10},   -- scroll_of_puppets_operetta 腹話のオペレッタ
                    {itemid =  4896, appraiserate = 10},   -- fire_spirit_pact 契約書『光の精霊』
                    {itemid =    90, appraiserate = 10},   -- rusty_bucket 錆びたバケツ
                    {itemid =  5253, appraiserate = 10},   -- hermes_quencher エルメスクエンチャ
                    {itemid =  4509, appraiserate = 10},   -- flask_of_distilled_water 蒸留水
                    {itemid =   638, appraiserate = 10},   -- sprig_of_sage セージ
                    {itemid =  1590, appraiserate = 10},   -- sprig_of_holy_basil ホーリーバジル
                    {itemid =  5450, appraiserate = 10},   -- lakerda ラケルダ
                    {itemid =   640, appraiserate = 10},   -- chunk_of_copper_ore 銅鉱
                    {itemid =  1654, appraiserate = 10},   -- igneous_rock 火成岩
                    {itemid =   662, appraiserate = 10},   -- iron_sheet アイアン板
                    {itemid =  2303, appraiserate = 10},   -- troll_bronze_sheet トロールブロンズ板
                    {itemid =   776, appraiserate = 10},   -- white_rock 白石
                    {itemid =   769, appraiserate = 10},   -- red_rock 赤石
                    {itemid =   828, appraiserate = 10},   -- square_of_velvet_cloth ビロード
                    {itemid =  1132, appraiserate = 10},   -- square_of_raxa 羅紗
                    {itemid =   821, appraiserate = 10},   -- rainbow_thread 虹糸
                    {itemid =   880, appraiserate = 10},   -- bone_chip 骨くず
                    {itemid =   867, appraiserate = 10},   -- handful_of_dragon_scales 龍の鱗
                    {itemid =  1108, appraiserate = 10},   -- pinch_of_sulfur 硫黄
                    {itemid =   928, appraiserate = 10},   -- pinch_of_bomb_ash ボムの灰
                    {itemid =  2146, appraiserate = 10},   -- merrow_scale メローの鱗
                    {itemid =  2334, appraiserate = 10},   -- poroggo_hat ポロッゴハット
                    {itemid =  1164, appraiserate = 10},   -- tsurara 氷柱
                    {itemid =  5312, appraiserate = 10},   -- toolbag_(hiraishin) 忍だすき【避雷針】
                    {itemid =  5314, appraiserate = 10},   -- toolbag_(shihei) 忍だすき【紙兵】
                    {itemid =  5317, appraiserate = 10},   -- toolbag_(sairui-ran) 忍だすき【催涙卵】
                    {itemid =  5318, appraiserate = 10},   -- toolbag_(kodoku) 忍だすき【蠱毒】
                    -- only
                }
            }
        }
    },
    -- 魔宝石回収指令(階級:軍曹以上)
    [IMPERIAL_TREASURE_RETRIEVAL] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 ハイポーション+3
            {itemid =  4155, droprate =  100}, -- Remedy 万能薬
        },
        {
            {itemid = 2278, droprate =  500,    -- ???_ring ？？？リング
                Appraise = {
                    {itemid = 13454, appraiserate = 10},   -- copper_ring カッパーリング
                    {itemid = 13465, appraiserate = 10},   -- brass_ring ブラスリング
                    {itemid = 13442, appraiserate = 10},   -- shell_ring シェルリング
                    {itemid = 13469, appraiserate = 10},   -- leather_ring レザーリング
                    {itemid = 13456, appraiserate = 10},   -- silver_ring シルバーリング
                    {itemid = 13457, appraiserate = 10},   -- beetle_ring ビートルリング
                    {itemid = 13514, appraiserate = 10},   -- archers_ring アーチャーリング
                    {itemid = 13549, appraiserate = 10},   -- ether_ring エーテルリング
                    {itemid = 13447, appraiserate = 10},   -- platinum_ring プラチナリング
                    {itemid = 13466, appraiserate = 10},   -- orichalcum_ring オリハルコンリング
                    -- only
                    {itemid = 15787, appraiserate = 10},   -- horizon_ring ホライズンリング
                }
            },
            {itemid = 2279, droprate =  500,    -- ???_cape ？？？ケープ
                Appraise = {
                    {itemid =  13583, appraiserate = 10},   -- cape ケープ
                    {itemid =  13683, appraiserate = 10},   -- water_tank ウォータータンク
                    {itemid =  13682, appraiserate = 10},   -- ether_tank エーテルタンク
                    {itemid =  13684, appraiserate = 10},   -- potion_tank ポーションタンク
                    {itemid =  13592, appraiserate = 10},   -- lizard_mantle リザードマント+1
                    {itemid =  13588, appraiserate = 10},   -- dhalmel_mantle ダルメルマント+1
                    {itemid =  13601, appraiserate = 10},   -- cotton_cape_+1 コットンケープ+1
                    {itemid =  13624, appraiserate = 10},   -- enhancing_mantle エンハンスマント
                    {itemid =  13679, appraiserate = 10},   -- templars_mantle テンプラーマント
                    -- only
                    {itemid =  16220, appraiserate = 10},   -- volitional_mantle ボリショナルマント
                }
            },
            {itemid = 2286, droprate =  500,    -- ???_box ？？？ボックス
                Appraise = {
                    {itemid =  4196, appraiserate = 10},   -- rotten_quiver 腐った矢筒
                    {itemid =  5353, appraiserate = 10},   -- iron_bullet_pouch 胴乱【鉄】
                    {itemid = 17396, appraiserate = 10},   -- little_worm リトルワーム
                    {itemid = 12824, appraiserate = 10},   -- leather_trousers レザートラウザ
                    {itemid = 12823, appraiserate = 10},   -- bronze_subligar_+1 ブロンズサブリガ+1
                    {itemid = 12864, appraiserate = 10},   -- slacks ズボン
                    {itemid =  5018, appraiserate = 10},   -- scroll_of_puppets_operetta 腹話のオペレッタ
                    {itemid =  4896, appraiserate = 10},   -- fire_spirit_pact 契約書『光の精霊』
                    {itemid =    90, appraiserate = 10},   -- rusty_bucket 錆びたバケツ
                    {itemid =  5253, appraiserate = 10},   -- hermes_quencher エルメスクエンチャ
                    {itemid =  4509, appraiserate = 10},   -- flask_of_distilled_water 蒸留水
                    {itemid =   638, appraiserate = 10},   -- sprig_of_sage セージ
                    {itemid =  1590, appraiserate = 10},   -- sprig_of_holy_basil ホーリーバジル
                    {itemid =  5450, appraiserate = 10},   -- lakerda ラケルダ
                    {itemid =   640, appraiserate = 10},   -- chunk_of_copper_ore 銅鉱
                    {itemid =  1654, appraiserate = 10},   -- igneous_rock 火成岩
                    {itemid =   662, appraiserate = 10},   -- iron_sheet アイアン板
                    {itemid =  2303, appraiserate = 10},   -- troll_bronze_sheet トロールブロンズ板
                    {itemid =   776, appraiserate = 10},   -- white_rock 白石
                    {itemid =   769, appraiserate = 10},   -- red_rock 赤石
                    {itemid =   828, appraiserate = 10},   -- square_of_velvet_cloth ビロード
                    {itemid =  1132, appraiserate = 10},   -- square_of_raxa 羅紗
                    {itemid =   821, appraiserate = 10},   -- rainbow_thread 虹糸
                    {itemid =   880, appraiserate = 10},   -- bone_chip 骨くず
                    {itemid =   867, appraiserate = 10},   -- handful_of_dragon_scales 龍の鱗
                    {itemid =  1108, appraiserate = 10},   -- pinch_of_sulfur 硫黄
                    {itemid =   928, appraiserate = 10},   -- pinch_of_bomb_ash ボムの灰
                    {itemid =  2146, appraiserate = 10},   -- merrow_scale メローの鱗
                    {itemid =  2334, appraiserate = 10},   -- poroggo_hat ポロッゴハット
                    {itemid =  1164, appraiserate = 10},   -- tsurara 氷柱
                    {itemid =  5312, appraiserate = 10},   -- toolbag_(hiraishin) 忍だすき【避雷針】
                    {itemid =  5314, appraiserate = 10},   -- toolbag_(shihei) 忍だすき【紙兵】
                    {itemid =  5317, appraiserate = 10},   -- toolbag_(sairui-ran) 忍だすき【催涙卵】
                    {itemid =  5318, appraiserate = 10},   -- toolbag_(kodoku) 忍だすき【蠱毒】
                    -- only
                }
            }
        }
    },
    -- 謝鱗祭襲撃作戦(階級:曹長以上)
    [BLITZKRIEG] =
    {
        {
            {itemid = 13688, droprate =  100}, -- hi-potion_tank Ｈポーションタンク
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 ハイポーション+3
            {itemid =  4173, droprate =  100}, -- hi-reraiser ハイリレイザー
        },
        {
            {itemid = 2190, droprate =  500,    -- ???_sword ？？？ソード
                Appraise = {
                    {itemid = 16535, appraiserate = 10},   -- bronze_sword ブロンズソード
                    {itemid = 16600, appraiserate = 10},   -- wax_sword ワックスソード
                    {itemid = 16530, appraiserate = 10},   -- xiphos サイフォス
                    {itemid = 17716, appraiserate = 10},   -- macuahuitl_-1 マクアフティル-1
                    {itemid = 17700, appraiserate = 10},   -- durandal デュランダル
                    {itemid = 17703, appraiserate = 10},   -- pealing_anelace ピールアネラス
                    {itemid = 16583, appraiserate = 10},   -- claymore クレイモア
                    {itemid = 18366, appraiserate = 10},   -- gust_claymore ガストクレイモア
                    {itemid = 16966, appraiserate = 10},   -- tachi 太刀
                    {itemid = 16978, appraiserate = 10},   -- uchigatana_+1 打刀改
                    {itemid = 18435, appraiserate = 10},   -- hotarumaru 蛍丸
                    {itemid = 18433, appraiserate = 10},   -- kagiroi 火光
                    -- only
                    {itemid = 17721, appraiserate = 10},   -- sanguine_sword サングインソード
                }
            },
            {itemid = 2276, droprate =  500,    -- ???_headpiece ？？？ヘッドウェア
                Appraise = {
                    {itemid = 12463, appraiserate = 10},   -- bronze_cap_+1 ブロンズキャップ(+1)
                    {itemid = 12496, appraiserate = 10},   -- copper_hairpin 銅の髪飾り
                    {itemid = 12472, appraiserate = 10},   -- circlet サークレット
                    {itemid = 12440, appraiserate = 10},   -- leather_bandana レザーバンダナ
                    {itemid = 12505, appraiserate = 10},   -- bone_hairpin 骨の髪飾り
                    {itemid = 12465, appraiserate = 10},   -- cotton_headgear コットンヘッドギア
                    -- only
                    {itemid = 16081, appraiserate = 10},   -- curates_hat 司祭の帽子
                }
            },
            {itemid = 2286, droprate =  500,    -- ???_box ？？？ボックス
                Appraise = {
                    {itemid =  4196, appraiserate = 10},   -- rotten_quiver 腐った矢筒
                    {itemid =  5353, appraiserate = 10},   -- iron_bullet_pouch 胴乱【鉄】
                    {itemid = 17396, appraiserate = 10},   -- little_worm リトルワーム
                    {itemid = 12824, appraiserate = 10},   -- leather_trousers レザートラウザ
                    {itemid = 12823, appraiserate = 10},   -- bronze_subligar_+1 ブロンズサブリガ+1
                    {itemid = 12864, appraiserate = 10},   -- slacks ズボン
                    {itemid =  5018, appraiserate = 10},   -- scroll_of_puppets_operetta 腹話のオペレッタ
                    {itemid =  4896, appraiserate = 10},   -- fire_spirit_pact 契約書『光の精霊』
                    {itemid =    90, appraiserate = 10},   -- rusty_bucket 錆びたバケツ
                    {itemid =  5253, appraiserate = 10},   -- hermes_quencher エルメスクエンチャ
                    {itemid =  4509, appraiserate = 10},   -- flask_of_distilled_water 蒸留水
                    {itemid =   638, appraiserate = 10},   -- sprig_of_sage セージ
                    {itemid =  1590, appraiserate = 10},   -- sprig_of_holy_basil ホーリーバジル
                    {itemid =  5450, appraiserate = 10},   -- lakerda ラケルダ
                    {itemid =   640, appraiserate = 10},   -- chunk_of_copper_ore 銅鉱
                    {itemid =  1654, appraiserate = 10},   -- igneous_rock 火成岩
                    {itemid =   662, appraiserate = 10},   -- iron_sheet アイアン板
                    {itemid =  2303, appraiserate = 10},   -- troll_bronze_sheet トロールブロンズ板
                    {itemid =   776, appraiserate = 10},   -- white_rock 白石
                    {itemid =   769, appraiserate = 10},   -- red_rock 赤石
                    {itemid =   828, appraiserate = 10},   -- square_of_velvet_cloth ビロード
                    {itemid =  1132, appraiserate = 10},   -- square_of_raxa 羅紗
                    {itemid =   821, appraiserate = 10},   -- rainbow_thread 虹糸
                    {itemid =   880, appraiserate = 10},   -- bone_chip 骨くず
                    {itemid =   867, appraiserate = 10},   -- handful_of_dragon_scales 龍の鱗
                    {itemid =  1108, appraiserate = 10},   -- pinch_of_sulfur 硫黄
                    {itemid =   928, appraiserate = 10},   -- pinch_of_bomb_ash ボムの灰
                    {itemid =  2146, appraiserate = 10},   -- merrow_scale メローの鱗
                    {itemid =  2334, appraiserate = 10},   -- poroggo_hat ポロッゴハット
                    {itemid =  1164, appraiserate = 10},   -- tsurara 氷柱
                    {itemid =  5312, appraiserate = 10},   -- toolbag_(hiraishin) 忍だすき【避雷針】
                    {itemid =  5314, appraiserate = 10},   -- toolbag_(shihei) 忍だすき【紙兵】
                    {itemid =  5317, appraiserate = 10},   -- toolbag_(sairui-ran) 忍だすき【催涙卵】
                    {itemid =  5318, appraiserate = 10},   -- toolbag_(kodoku) 忍だすき【蠱毒】
                    -- only
                }
            }
        }
    },
    -- マーリドガーデン作戦(階級:特務曹長以上)
    [MARIDS_IN_THE_MIST] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 ハイポーション+3
        },
        {
            {itemid = 2278, droprate =  500,    -- ???_ring ？？？リング
                Appraise = {
                    {itemid = 13454, appraiserate = 10},   -- copper_ring カッパーリング
                    {itemid = 13465, appraiserate = 10},   -- brass_ring ブラスリング
                    {itemid = 13442, appraiserate = 10},   -- shell_ring シェルリング
                    {itemid = 13469, appraiserate = 10},   -- leather_ring レザーリング
                    {itemid = 13456, appraiserate = 10},   -- silver_ring シルバーリング
                    {itemid = 13457, appraiserate = 10},   -- beetle_ring ビートルリング
                    {itemid = 13514, appraiserate = 10},   -- archers_ring アーチャーリング
                    {itemid = 13549, appraiserate = 10},   -- ether_ring エーテルリング
                    {itemid = 13447, appraiserate = 10},   -- platinum_ring プラチナリング
                    {itemid = 13466, appraiserate = 10},   -- orichalcum_ring オリハルコンリング
                    -- only
                    {itemid = 15795, appraiserate = 10},   -- tau_ring タウリング
                }
            },
            {itemid = 2282, droprate =  500,    -- ???_necklace ？？？ネックレス
                Appraise = {
                    {itemid =  15526, appraiserate = 10},   -- regen_collar リジェネカラー
                    {itemid =  13081, appraiserate = 10},   -- leather_gorget レザーゴルゲット
                    {itemid =  13090, appraiserate = 10},   -- beetle_gorget ビートルゴルゲット
                    {itemid =  13085, appraiserate = 10},   -- hemp_gorget ヘンプゴルゲット
                    {itemid =  13065, appraiserate = 10},   -- gorget_+1 ゴルゲット+1
                    {itemid =  13165, appraiserate = 10},   -- jagd_gorget ヤクトゴルゲット
                    {itemid =  13075, appraiserate = 10},   -- feather_collar フェザーカラー
                    -- only
                    {itemid =  15537, appraiserate = 10},   -- kappa_necklace カッパネックレス
                },
            },
            {itemid = 2286, droprate =  500,    -- ???_box ？？？ボックス
                Appraise = {
                    {itemid =  4196, appraiserate = 10},   -- rotten_quiver 腐った矢筒
                    {itemid =  5353, appraiserate = 10},   -- iron_bullet_pouch 胴乱【鉄】
                    {itemid = 17396, appraiserate = 10},   -- little_worm リトルワーム
                    {itemid = 12824, appraiserate = 10},   -- leather_trousers レザートラウザ
                    {itemid = 12823, appraiserate = 10},   -- bronze_subligar_+1 ブロンズサブリガ+1
                    {itemid = 12864, appraiserate = 10},   -- slacks ズボン
                    {itemid =  5018, appraiserate = 10},   -- scroll_of_puppets_operetta 腹話のオペレッタ
                    {itemid =  4896, appraiserate = 10},   -- fire_spirit_pact 契約書『光の精霊』
                    {itemid =    90, appraiserate = 10},   -- rusty_bucket 錆びたバケツ
                    {itemid =  5253, appraiserate = 10},   -- hermes_quencher エルメスクエンチャ
                    {itemid =  4509, appraiserate = 10},   -- flask_of_distilled_water 蒸留水
                    {itemid =   638, appraiserate = 10},   -- sprig_of_sage セージ
                    {itemid =  1590, appraiserate = 10},   -- sprig_of_holy_basil ホーリーバジル
                    {itemid =  5450, appraiserate = 10},   -- lakerda ラケルダ
                    {itemid =   640, appraiserate = 10},   -- chunk_of_copper_ore 銅鉱
                    {itemid =  1654, appraiserate = 10},   -- igneous_rock 火成岩
                    {itemid =   662, appraiserate = 10},   -- iron_sheet アイアン板
                    {itemid =  2303, appraiserate = 10},   -- troll_bronze_sheet トロールブロンズ板
                    {itemid =   776, appraiserate = 10},   -- white_rock 白石
                    {itemid =   769, appraiserate = 10},   -- red_rock 赤石
                    {itemid =   828, appraiserate = 10},   -- square_of_velvet_cloth ビロード
                    {itemid =  1132, appraiserate = 10},   -- square_of_raxa 羅紗
                    {itemid =   821, appraiserate = 10},   -- rainbow_thread 虹糸
                    {itemid =   880, appraiserate = 10},   -- bone_chip 骨くず
                    {itemid =   867, appraiserate = 10},   -- handful_of_dragon_scales 龍の鱗
                    {itemid =  1108, appraiserate = 10},   -- pinch_of_sulfur 硫黄
                    {itemid =   928, appraiserate = 10},   -- pinch_of_bomb_ash ボムの灰
                    {itemid =  2146, appraiserate = 10},   -- merrow_scale メローの鱗
                    {itemid =  2334, appraiserate = 10},   -- poroggo_hat ポロッゴハット
                    {itemid =  1164, appraiserate = 10},   -- tsurara 氷柱
                    {itemid =  5312, appraiserate = 10},   -- toolbag_(hiraishin) 忍だすき【避雷針】
                    {itemid =  5314, appraiserate = 10},   -- toolbag_(shihei) 忍だすき【紙兵】
                    {itemid =  5317, appraiserate = 10},   -- toolbag_(sairui-ran) 忍だすき【催涙卵】
                    {itemid =  5318, appraiserate = 10},   -- toolbag_(kodoku) 忍だすき【蠱毒】
                    -- only
                }
            }
        }
    },
    -- 青の症例(階級:少尉以上)
    [AZURE_AILMENTS] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 ハイポーション+3
        },
        {
            {itemid = 2277, droprate =  500,    -- ???_earring ？？？イヤリング
                Appraise = {
                    {itemid = 13313, appraiserate = 10},   -- shell_earring シェルイヤリング
                    {itemid = 13327, appraiserate = 10},   -- silver_earring シルバーピアス
                    {itemid = 13321, appraiserate = 10},   -- bone_earring ボーンイヤリング
                    {itemid = 13323, appraiserate = 10},   -- beetle_earring ビートルピアス
                    {itemid = 14790, appraiserate = 10},   -- reraise_earring リレイズピアス
                    {itemid = 14805, appraiserate = 10},   -- heims_earring ハイアムスピアス
                    {itemid = 14761, appraiserate = 10},   -- elusive_earring エルシヴイヤリング
                    -- only
                    {itemid = 15986, appraiserate = 10},   -- eta_earring イータピアス
                }
            },
            {itemid = 2280, droprate =  500,    -- ???_sash ？？？サッシュ
                Appraise = {
                    {itemid = 15453, appraiserate = 10},   -- lugworm_belt クラムワームベルト
                    {itemid = 15454, appraiserate = 10},   -- little_worm_belt リトルワームベルト
                    {itemid = 15881, appraiserate = 10},   -- talisman_obi 魔除けの帯
                    {itemid = 13224, appraiserate = 10},   -- silver_obi_+1 銀の帯+1
                    {itemid = 15870, appraiserate = 10},   -- maharajas_belt マハラジャベルト
                    -- only
                    {itemid = 15903, appraiserate = 10},   -- ksi_sash クサイサッシュ
                }
            },
            {itemid = 2286, droprate =  500,    -- ???_box ？？？ボックス
                Appraise = {
                    {itemid =  4196, appraiserate = 10},   -- rotten_quiver 腐った矢筒
                    {itemid =  5353, appraiserate = 10},   -- iron_bullet_pouch 胴乱【鉄】
                    {itemid = 17396, appraiserate = 10},   -- little_worm リトルワーム
                    {itemid = 12824, appraiserate = 10},   -- leather_trousers レザートラウザ
                    {itemid = 12823, appraiserate = 10},   -- bronze_subligar_+1 ブロンズサブリガ+1
                    {itemid = 12864, appraiserate = 10},   -- slacks ズボン
                    {itemid =  5018, appraiserate = 10},   -- scroll_of_puppets_operetta 腹話のオペレッタ
                    {itemid =  4896, appraiserate = 10},   -- fire_spirit_pact 契約書『光の精霊』
                    {itemid =    90, appraiserate = 10},   -- rusty_bucket 錆びたバケツ
                    {itemid =  5253, appraiserate = 10},   -- hermes_quencher エルメスクエンチャ
                    {itemid =  4509, appraiserate = 10},   -- flask_of_distilled_water 蒸留水
                    {itemid =   638, appraiserate = 10},   -- sprig_of_sage セージ
                    {itemid =  1590, appraiserate = 10},   -- sprig_of_holy_basil ホーリーバジル
                    {itemid =  5450, appraiserate = 10},   -- lakerda ラケルダ
                    {itemid =   640, appraiserate = 10},   -- chunk_of_copper_ore 銅鉱
                    {itemid =  1654, appraiserate = 10},   -- igneous_rock 火成岩
                    {itemid =   662, appraiserate = 10},   -- iron_sheet アイアン板
                    {itemid =  2303, appraiserate = 10},   -- troll_bronze_sheet トロールブロンズ板
                    {itemid =   776, appraiserate = 10},   -- white_rock 白石
                    {itemid =   769, appraiserate = 10},   -- red_rock 赤石
                    {itemid =   828, appraiserate = 10},   -- square_of_velvet_cloth ビロード
                    {itemid =  1132, appraiserate = 10},   -- square_of_raxa 羅紗
                    {itemid =   821, appraiserate = 10},   -- rainbow_thread 虹糸
                    {itemid =   880, appraiserate = 10},   -- bone_chip 骨くず
                    {itemid =   867, appraiserate = 10},   -- handful_of_dragon_scales 龍の鱗
                    {itemid =  1108, appraiserate = 10},   -- pinch_of_sulfur 硫黄
                    {itemid =   928, appraiserate = 10},   -- pinch_of_bomb_ash ボムの灰
                    {itemid =  2146, appraiserate = 10},   -- merrow_scale メローの鱗
                    {itemid =  2334, appraiserate = 10},   -- poroggo_hat ポロッゴハット
                    {itemid =  1164, appraiserate = 10},   -- tsurara 氷柱
                    {itemid =  5312, appraiserate = 10},   -- toolbag_(hiraishin) 忍だすき【避雷針】
                    {itemid =  5314, appraiserate = 10},   -- toolbag_(shihei) 忍だすき【紙兵】
                    {itemid =  5317, appraiserate = 10},   -- toolbag_(sairui-ran) 忍だすき【催涙卵】
                    {itemid =  5318, appraiserate = 10},   -- toolbag_(kodoku) 忍だすき【蠱毒】
                    -- only
                }
            }
        }
    },
    -- スサノオ作戦(階級:中尉以上)
    [THE_SUSANOO_SHUFFLE] =
    {
        {
            {itemid = 2196, droprate =  500,    -- ???_footwear ？？？フットウェア
                Appraise = {
                    {itemid = 12992, appraiserate = 10},   -- solea ソレア
                    {itemid = 12968, appraiserate = 10},   -- kyahan 脚絆
                    {itemid = 12984, appraiserate = 10},   -- ash_clogs アッシュクロッグ
                    {itemid = 12951, appraiserate = 10},   -- bronze_leggings_+1 ブロンズレギンス+1
                    {itemid = 12952, appraiserate = 10},   -- leather_highboots レザーハイブーツ
                    {itemid = 15325, appraiserate = 10},   -- evokers_boots エボカーブーツ
                    -- only
                    {itemid = 15744, appraiserate = 10},   -- bowmans_ledelsens ボウマンレデルセン
                }
            },
            {itemid = 2196, droprate =  500,    -- ???_footwear ？？？フットウェア
                Appraise = {
                    {itemid = 12992, appraiserate = 10},   -- solea ソレア
                    {itemid = 12968, appraiserate = 10},   -- kyahan 脚絆
                    {itemid = 12984, appraiserate = 10},   -- ash_clogs アッシュクロッグ
                    {itemid = 12951, appraiserate = 10},   -- bronze_leggings_+1 ブロンズレギンス+1
                    {itemid = 12952, appraiserate = 10},   -- leather_highboots レザーハイブーツ
                    {itemid = 15325, appraiserate = 10},   -- evokers_boots エボカーブーツ
                    -- only
                    {itemid = 15745, appraiserate = 10},   -- vampiric_boots バンピリックブーツ
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
