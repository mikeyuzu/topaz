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

-- Appraise not compatible 鑑定処理は未対応
local loot =
{
    -- 黄金の遺産収集作戦(階級:二等傭兵以上)
    [GOLDEN_SALVAGE] =
    {
        {
            {itemid =  4118, droprate =  100}, -- hi-potion_+2 ハイポーション+2
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 ハイポーション+3
            {itemid = 13688, droprate =  100}, -- hi-potion_tank Ｈポーションタンク
            {itemid =  4172, droprate =  100}, -- reraiser リレイザー
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
                    {itemid = 15969, appraiserate = 10},   -- storm_earring ？？？イヤリング
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
                    {itemid = 17391, appraiserate = 10},   -- willow_fishing_rod ヤナギの釣竿
                }
            }
        }
    },
--[[
    -- ラミア13号討伐作戦(階級:一等傭兵以上)
    [LAMIA_NO_13] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 ハイポーション+3
            {itemid =  4173, droprate =  100}, -- hi-reraiser ハイリレイザー
        },
        {
            {itemid = 2194, droprate =  500,    -- ??? Bow ？？？ボウ
                Appraise = {
                    {itemid = 17152, appraiserate = 10},   -- Shortbow ショートボウ
                    {itemid = 17160, appraiserate = 10},   -- Longbow ロングボウ
                    {itemid = 17177, appraiserate = 10},   -- longbow_+1 ロングボウ+1
                    {itemid = 17153, appraiserate = 10},   -- self_bow セルフボウ
                    {itemid = 17216, appraiserate = 10},   -- light_crossbow ライトクロスボウ
                    {itemid = 17217, appraiserate = 10},   -- crossbow クロスボウ
                    {itemid = 17225, appraiserate = 10},   -- crossbow_+1 クロスボウ+1
                    {itemid = 17252, appraiserate = 10},   -- culverin カルバリン
                    {itemid = 18147, appraiserate = 10},   -- culverin_+1 カルバリン+1
                    -- only
                    {itemid = 18683, appraiserate = 10},   -- imperial_bow インペリアルボウ
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
                    {itemid = 15691, appraiserate = 10},   -- storm_gambieras ストームガンビエラ
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
                    {itemid =  5453, appraiserate = 10},   -- istakoz イスタコズ
                    {itemid =  2418, appraiserate = 10},   -- aht_urhgan_brass_ingot アトルガンブラス
                    {itemid =  2167, appraiserate = 10},   -- lamian_armlet ラミアの腕輪
                }
            }
        }
    },
    -- 蠱物駆除作戦(階級:上等傭兵以上)
    [EXTERMINATION] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 ハイポーション+3
        },
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
                    {itemid = 15692, appraiserate = 10},   -- storm_crackows ストームクラッコー
                }
            },
            {itemid = 2192, droprate =  500,    -- ???_polearm ？？？ポールアーム
                Appraise = {
                    {itemid = 16768, appraiserate = 10},   -- bronze_zaghnal ブロンズザグナル
                    {itemid = 16769, appraiserate = 10},   -- brass_zaghnal ブラスザグナル
                    {itemid = 16832, appraiserate = 10},   -- harpoon ハープーン
                    {itemid = 18076, appraiserate = 10},   -- spark_spear スパークスピア
                    {itemid = 17024, appraiserate = 10},   -- ash_club アッシュクラブ
                    {itemid = 17049, appraiserate = 10},   -- maple_wand メープルワンド
                    {itemid = 17138, appraiserate = 10},   -- willow_wand_+1 ウィローワンド+1
                    {itemid = 18409, appraiserate = 10},   -- jadagna_-1 ジャダグナ-1
                    {itemid = 17088, appraiserate = 10},   -- ash_staff アッシュスタッフ
                    {itemid = 17125, appraiserate = 10},   -- holly_staff_+1 ホリースタッフ+1
                    {itemid =  1020, appraiserate = 10},   -- sickle 草刈鎌
                    -- only
                    {itemid = 18064, appraiserate = 10},   -- volunteers_scythe ボランティアサイズ
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
                    {itemid =  4224, appraiserate = 10},   -- demon_quiver 箙【デーモン】
                }
            }
        }
    },
    -- イルルシ掃海作戦(階級:傭兵長以上)
    [DEMOLITION_DUTY] =
    {
        {
            {itemid =  4155, droprate =  100}, -- Remedy 万能薬
        },
        {
            {itemid = 2280, droprate =  500,    -- ???_sash ？？？サッシュ
                Appraise = {
                    {itemid = 15453, appraiserate = 10},   -- lugworm_belt クラムワームベルト
                    {itemid = 15454, appraiserate = 10},   -- little_worm_belt リトルワームベルト
                    {itemid = 15881, appraiserate = 10},   -- talisman_obi 魔除けの帯
                    {itemid = 13224, appraiserate = 10},   -- silver_obi_+1 銀の帯+1
                    {itemid = 15870, appraiserate = 10},   -- maharajas_belt マハラジャベルト
                    -- only
                    {itemid = 15883, appraiserate = 10},   -- storm_sash ストームサッシュ
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
                    {itemid =  5139, appraiserate = 10},   -- betta ベタ
                }
            }
        }
    },
    -- シーラット送迎作戦(階級:伍長以上)
    [SEARAT_SALVATION] =
    {
        {
            {itemid =  4118, droprate =  100}, -- hi-potion_+2 ハイポーション+2
            {itemid = 13688, droprate =  100}, -- hi-potion_tank Ｈポーションタンク
            {itemid =  4172, droprate =  100}, -- reraiser リレイザー
        },
        {
            {itemid = 2191, droprate =  500,    -- ???_dagger ？？？ダガー
                Appraise = {
                    {itemid = 16896, appraiserate = 10},   -- kunai 苦無
                    {itemid = 17780, appraiserate = 10},   -- kyofu 強風
                    {itemid = 18415, appraiserate = 10},   -- tojaku 闘雀
                    {itemid = 16448, appraiserate = 10},   -- bronze_dagger ブロンズダガー
                    {itemid = 16465, appraiserate = 10},   -- bronze_knife ブロンズナイフ
                    {itemid = 17984, appraiserate = 10},   -- spark_dagger スパークダガー
                    {itemid = 18008, appraiserate = 10},   -- hushed_dagger ハッシュダガー
                    {itemid = 17625, appraiserate = 10},   -- ponderous_gully ポンデラスガリィ
                    {itemid = 17997, appraiserate = 10},   -- argent_dagger アルジェントダガー
                    {itemid = 16385, appraiserate = 10},   -- cesti セスタス
                    {itemid = 16405, appraiserate = 10},   -- cat_baghnakhs キャットバグナウ
                    {itemid = 16399, appraiserate = 10},   -- katars カタール
                    {itemid = 18361, appraiserate = 10},   -- ponderous_manoples ポンデラスマノプル
                    -- only
                    {itemid = 18017, appraiserate = 10},   -- assassins_jambiya アサシンジャンビア
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
    -- アプカル捕獲指令(階級:軍曹以上)
    [APKALLU_SEIZURE] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 ハイポーション+3
            {itemid = 13688, droprate =  100}, -- hi-potion_tank Ｈポーションタンク
            {itemid = 13689, droprate =  100}, -- hi-ether_tank Ｈエーテルタンク
            {itemid =  4173, droprate =  100}, -- hi-reraiser ハイリレイザー
        },
        {
            {itemid = 2192, droprate =  500,    -- ???_polearm ？？？ポールアーム
                Appraise = {
                    {itemid = 16768, appraiserate = 10},   -- bronze_zaghnal ブロンズザグナル
                    {itemid = 16769, appraiserate = 10},   -- brass_zaghnal ブラスザグナル
                    {itemid = 16832, appraiserate = 10},   -- harpoon ハープーン
                    {itemid = 18076, appraiserate = 10},   -- spark_spear スパークスピア
                    {itemid = 17024, appraiserate = 10},   -- ash_club アッシュクラブ
                    {itemid = 17049, appraiserate = 10},   -- maple_wand メープルワンド
                    {itemid = 17138, appraiserate = 10},   -- willow_wand_+1 ウィローワンド+1
                    {itemid = 18409, appraiserate = 10},   -- jadagna_-1 ジャダグナ-1
                    {itemid = 17088, appraiserate = 10},   -- ash_staff アッシュスタッフ
                    {itemid = 17125, appraiserate = 10},   -- holly_staff_+1 ホリースタッフ+1
                    {itemid =  1020, appraiserate = 10},   -- sickle 草刈鎌
                    -- only
                    {itemid = 18585, appraiserate = 10},   -- kinnara_pole 緊那羅の棍
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
    -- 指輪捜索指令(階級:曹長以上)
    [LOST_AND_FOUND] =
    {
        {
            {itemid =  4118, droprate =  100}, -- hi-potion_+2 ハイポーション+2
            {itemid = 13688, droprate =  100}, -- hi-potion_tank Ｈポーションタンク
            {itemid =  4172, droprate =  100}, -- reraiser リレイザー
        },
        {
            {itemid = 2195, droprate =  500,    -- ???_gloves ？？？グローブ
                Appraise = {
                    {itemid =  12728, appraiserate = 10},   -- cuffs カフス
                    {itemid =  12736, appraiserate = 10},   -- mitts ミトン
                    {itemid =  12712, appraiserate = 10},   -- tekko 手甲
                    {itemid =  12696, appraiserate = 10},   -- leather_gloves レザーグローブ
                    {itemid =  12721, appraiserate = 10},   -- cotton_gloves コットングローブ
                    {itemid =  13700, appraiserate = 10},   -- beak_gloves ビークグローブ
                    {itemid =  12695, appraiserate = 10},   -- bronze_mittens_+1 ブロンズミトン+1
                    {itemid =  14934, appraiserate = 10},   -- jaridah_bazubands ジャリダバズバンド
                    -- only
                    {itemid =  14954, appraiserate = 10},   -- sadhu_cuffs サドゥカフス
                },
            },
            {itemid = 2195, droprate =  500,    -- ???_gloves ？？？グローブ
                Appraise = {
                    {itemid =  12728, appraiserate = 10},   -- cuffs カフス
                    {itemid =  12736, appraiserate = 10},   -- mitts ミトン
                    {itemid =  12712, appraiserate = 10},   -- tekko 手甲
                    {itemid =  12696, appraiserate = 10},   -- leather_gloves レザーグローブ
                    {itemid =  12721, appraiserate = 10},   -- cotton_gloves コットングローブ
                    {itemid =  13700, appraiserate = 10},   -- beak_gloves ビークグローブ
                    {itemid =  12695, appraiserate = 10},   -- bronze_mittens_+1 ブロンズミトン+1
                    {itemid =  14934, appraiserate = 10},   -- jaridah_bazubands ジャリダバズバンド
                    -- only
                    {itemid =  14953, appraiserate = 10},   -- sadhu_bracelets サドゥブレスレット
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
    -- 脱走兵武装解除指令(階級:特務曹長以上)
    [DESERTER] =
    {
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
                    {itemid = 15798, appraiserate = 10},   -- epsilon_ring エプシロンリング
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
                    {itemid =  15534, appraiserate = 10},   -- mu_necklace ミューネックレス
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
                    {itemid =  2167, appraiserate = 10},   -- lamian_armlet ラミアの腕輪
                }
            }
        }
    },
    -- 鱆号作戦(階級:少尉以上)
    [DESPERATELY_SEEKING_CEPHALOPODS] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 ハイポーション+3
            {itemid = 13688, droprate =  100}, -- hi-potion_tank Ｈポーションタンク
            {itemid = 13689, droprate =  100}, -- hi-ether_tank Ｈエーテルタンク
            {itemid =  4173, droprate =  100}, -- hi-reraiser ハイリレイザー
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
                    {itemid = 15989, appraiserate = 10},   -- gamma_earring ガンマピアス
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
                    {itemid = 15900, appraiserate = 10},   -- nu_sash ニューサッシュ
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
    -- ベレロフォン作戦(階級:中尉以上)
    [BELLEROPHON_S_BLISS] =
    {
        {
            {itemid = 2276, droprate =  500,    -- ???_headpiece ？？？ヘッドウェア
                Appraise = {
                    {itemid = 12463, appraiserate = 10},   -- bronze_cap_+1 ブロンズキャップ(+1)
                    {itemid = 12496, appraiserate = 10},   -- copper_hairpin 銅の髪飾り
                    {itemid = 12472, appraiserate = 10},   -- circlet サークレット
                    {itemid = 12440, appraiserate = 10},   -- leather_bandana レザーバンダナ
                    {itemid = 12505, appraiserate = 10},   -- bone_hairpin 骨の髪飾り
                    {itemid = 12465, appraiserate = 10},   -- cotton_headgear コットンヘッドギア
                    -- only
                    {itemid = 16127, appraiserate = 10},   -- carline_ribbon カーラインリボン
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
                    {itemid = 16126, appraiserate = 10},   -- bowmans_mask ボウマンマスク
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
