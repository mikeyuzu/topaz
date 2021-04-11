-----------------------------------
-- Area: Periqia
-- NPC:  Ancient Lockbox
-----------------------------------
require("scripts/globals/assault")
require("scripts/globals/titles")
require("scripts/globals/missions")
require("scripts/globals/quests")
require("scripts/globals/zone")
local ID = require("scripts/zones/Periqia/IDs")
-----------------------------------
local entity = {}

-- Appraise not compatible 鑑定処理は未対応
local loot =
{
    -- 海猫護送作戦(階級:二等傭兵以上)
    [SEAGULL_GROUNDED] =
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
                    {itemid = 18434, appraiserate = 10},   -- kosetsusamonji 江雪左文字
                }
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
                    {itemid =  14936, appraiserate = 10},   -- storm_manopolas ストームマノポラ
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
                    {itemid =   113, appraiserate = 10},   -- cleaning_tool_set 掃除用具一式
                }
            }
        },
    },
--[[
    -- レクイエム作戦(階級:一等傭兵以上)
    [REQUIEM] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 ハイポーション+3
            {itemid =  4173, droprate =  100}, -- hi-reraiser ハイリレイザー
            {itemid = 13688, droprate =  100}, -- hi-potion_tank Ｈポーションタンク
            {itemid = 13689, droprate =  100}, -- hi-ether_tank Ｈエーテルタンク
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
                    {itemid = 18112, appraiserate = 10},   -- puk_lance プークランス
                }
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
                    {itemid =  14937, appraiserate = 10},   -- storm_gages ストームゲージ
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
    -- ライアーフ捜索作戦(階級:上等傭兵以上)
    [SAVING_PRIVATE_RYAAF] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 ハイポーション+3
            {itemid =  4173, droprate =  100}, -- hi-reraiser ハイリレイザー
            {itemid = 13688, droprate =  100}, -- hi-potion_tank Ｈポーションタンク
            {itemid = 13689, droprate =  100}, -- hi-ether_tank Ｈエーテルタンク
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
                    {itemid = 18582, appraiserate = 10},   -- yigit_staff イギトスタッフ
                }
            },
            {itemid = 2281, droprate =  500,    -- ???_shield ？？？シールド
                Appraise = {
                    {itemid = 12289, appraiserate = 10},   -- lauan_shield ラワンシールド
                    {itemid = 12290, appraiserate = 10},   -- maple_shield メープルシールド
                    {itemid = 12291, appraiserate = 10},   -- elm_shield エルムシールド
                    {itemid = 12299, appraiserate = 10},   -- aspis アスピス
                    {itemid = 12292, appraiserate = 10},   -- mahogany_shield マホガニーシールド
                    {itemid = 16167, appraiserate = 10},   -- tariqah_-1 タリカー-1
                    {itemid = 12293, appraiserate = 10},   -- oak_shield オークシールド
                    -- only
                    {itemid = 16165, appraiserate = 10},   -- storm_shield ストームシールド
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
                    {itemid =   113, appraiserate = 10},   -- cleaning_tool_set 掃除用具一式
                    {itemid =   737, appraiserate = 10},   -- chunk_of_gold_ore 金鉱
                }
            }
        }
    },
    -- 黒い男爵撃墜作戦(階級:傭兵長以上)
    [SHOOTING_DOWN_THE_BARON] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 ハイポーション+3
            {itemid =  4155, droprate =  100}, -- Remedy 万能薬
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
                    {itemid = 18684, appraiserate = 10},   -- storm_zamburak ストームザンバーハ
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
    -- ペリキア架橋作戦(階級:伍長以上)
    [BUILDING_BRIDGES] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 ハイポーション+3
            {itemid =  4173, droprate =  100}, -- hi-reraiser ハイリレイザー
            {itemid = 13688, droprate =  100}, -- hi-potion_tank Ｈポーションタンク
            {itemid = 13689, droprate =  100}, -- hi-ether_tank Ｈエーテルタンク
        },
        {
            {itemid = 2193, droprate =  500,    -- ???_axe ？？？アクス
                Appraise = {
                    {itemid = 16640, appraiserate = 10},   -- bronze_axe ブロンズアクス
                    {itemid = 16641, appraiserate = 10},   -- brass_axe ブラスアクス
                    {itemid = 16642, appraiserate = 10},   -- bone_axe ボーンアクス
                    {itemid = 17943, appraiserate = 10},   -- tomahawk_+1 トマホーク+1
                    {itemid = 17949, appraiserate = 10},   -- furnace_tabarzin ファナスタバルジン
                    {itemid = 16709, appraiserate = 10},   -- inferno_axe インフェルノアクス
                    {itemid = 18220, appraiserate = 10},   -- prominence_axe プロミネンスアクス
                    {itemid = 18217, appraiserate = 10},   -- rampager ランページャー
                    {itemid = 18225, appraiserate = 10},   -- blizzard_toporok ブリザードトポロク
                    {itemid = 16704, appraiserate = 10},   -- butterfly_axe バタフライアクス
                    {itemid =   605, appraiserate = 10},   -- pickaxe つるはし
                    {itemid =  1021, appraiserate = 10},   -- hatchet まさかり
                    -- only
                    {itemid = 17950, appraiserate = 10},   -- marid_ancus マーリドアンクス
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
                    {itemid =  5337, appraiserate = 10},   -- sleep_bolt_quiver 矢筒【眠】
                }
            }
        }
    },
    -- ブラッドバス計画抑止作戦(階級:軍曹以上)
    [STOP_THE_BLOODSHED] =
    {
        {
            {itemid =  4155, droprate =  100}, -- Remedy 万能薬
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
                    {itemid = 17726, appraiserate = 10},   -- immortals_shotel イモータルショテル
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
                    {itemid =  16221, appraiserate = 10},   -- aileron_mantle エルロンマント
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
    -- 地雷原処理作戦(階級:曹長以上)
    [DEFUSE_THE_THREAT] =
    {
        {
            {itemid =  4118, droprate =  100}, -- hi-potion_+2 ハイポーション+2
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 ハイポーション+3
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
                    {itemid =  15517, appraiserate = 10},   -- snipers_collar スナイパーカラー
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
                    {itemid =  14952, appraiserate = 10},   -- ice_gauntlets アイスガントレット
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
                    {itemid =   113, appraiserate = 10},   -- cleaning_tool_set 掃除用具一式
                }
            }
        }
    },
    -- 双頭の蛇作戦(階級:特務曹長以上)
    [OPERATION__SNAKE_EYES] =
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
                    {itemid = 15797, appraiserate = 10},   -- pi_ring パイリング
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
                    {itemid =  15535, appraiserate = 10},   -- chi_necklace カイネックレス
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
    -- 人形の目覚め作戦(階級:少尉以上)
    [WAKE_THE_PUPPET] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 ハイポーション+3
            {itemid =  4173, droprate =  100}, -- hi-reraiser ハイリレイザー
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
                    {itemid = 15901, appraiserate = 10},   -- zeta_sash ジータサッシュ
                }
            },
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
                    {itemid = 15988, appraiserate = 10},   -- beta_earring ベータピアス
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
    -- キラーロード作戦(階級:中尉以上)
    [THE_PRICE_IS_RIGHT] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 ハイポーション+3
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
                    {itemid =  15001, appraiserate = 10},   -- breeder_mufflers ブリーダーマフラ
                },
            },
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
                    {itemid = 15995, appraiserate = 10},   -- carline_earring カーラインピアス
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
                    {itemid =  1523, appraiserate = 10},   -- sprig_of_apple_mint アップルミント
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
