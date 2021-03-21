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

-- Appraise not compatible 鑑定処理は未対応
local loot =
{
    -- ルジャワン掃討作戦(階級:二等傭兵以上)
    [LEUJAOAM_CLEANSING] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 ハイポーション+3
            {itemid =  4173, droprate =  100}, -- hi-reraiser ハイリレイザー
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
                    {itemid = 15773, appraiserate = 10},   -- imperial_ring インペリアルリング
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
                    {itemid =  4097, appraiserate = 10},   -- ice_crystal 氷のクリスタル
                }
            },
        },
    },
--[[
    -- オリハルコン鉱脈調査(階級:一等傭兵以上)
    [ORICHALCUM_SURVEY] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 ハイポーション+3
            {itemid =  4155, droprate =  100}, -- Remedy 万能薬
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
                    -- only
                    {itemid =  15519, appraiserate = 10},   -- storm_muffler ストームマフラー
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
            },
        },
    },
    -- クラボエール男爵警護(階級:上等傭兵以上)
    [ESCORT_PROFESSOR_CHANOIX] =
    {
        {
            {itemid =  4118, droprate =  100}, -- hi-potion_+2 ハイポーション+2
            {itemid =  4172, droprate =  100}, -- reraiser リレイザー
            {itemid = 13688, droprate =  100}, -- hi-potion_tank Ｈポーションタンク
        },
        {
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
                    {itemid =  15483, appraiserate = 10},   -- storm_mantle ストームマント
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
            },
        },
    },
    -- シャナーハ草保護作戦(階級:傭兵長以上)
    [SHANARHA_GRASS_CONSERVATION] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 ハイポーション+3
            {itemid =  4173, droprate =  100}, -- hi-reraiser ハイリレイザー
            {itemid = 13688, droprate =  100}, -- hi-potion_tank Ｈポーションタンク
            {itemid = 13689, droprate =  100}, -- hi-ether_tank Ｈエーテルタンク
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
                    {itemid = 15882, appraiserate = 10},   -- storm_belt ストームベルト
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
            },
        },
    },
    -- 黒羊買付作戦(階級:伍長以上)
    [COUNTING_SHEEP] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 ハイポーション+3
            {itemid =  4173, droprate =  100}, -- hi-reraiser ハイリレイザー
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
                    {itemid = 18364, appraiserate = 10},   -- pahluwan_katars ペルワンカタール
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
                    {itemid =  4097, appraiserate = 10},   -- ice_crystal 氷のクリスタル
                    {itemid =  1411, appraiserate = 10},   -- phalaenopsis ファレノプシス
                }
            },
        },
    },
    -- 補給物資奪還指令(階級:軍曹以上)
    [SUPPLIES_RECOVERY] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 ハイポーション+3
            {itemid = 13688, droprate =  100}, -- hi-potion_tank Ｈポーションタンク
            {itemid = 13689, droprate =  100}, -- hi-ether_tank Ｈエーテルタンク
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
                    {itemid = 18027, appraiserate = 10},   -- palladium_dagger パラディウムダガー
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
                    {itemid =  14951, appraiserate = 10},   -- dragon_kote ドラゴンの小手
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
            },
        },
    },
    -- 青の治験(階級:曹長以上)
    [AZURE_EXPERIMENTS] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 ハイポーション+3
            {itemid = 13689, droprate =  100}, -- hi-ether_tank Ｈエーテルタンク
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
                    {itemid = 15705, appraiserate = 10},   -- ataractic_solea アタラクティソレア
                }
            },
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
                    {itemid = 15786, appraiserate = 10},   -- divisor_ring ディバイザーリング
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
        },
    },
    -- オグマ奪取指令(階級:特務曹長以上)
    [IMPERIAL_CODE] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 ハイポーション+3
            {itemid =  4173, droprate =  100}, -- hi-reraiser ハイリレイザー
            {itemid = 13688, droprate =  100}, -- hi-potion_tank Ｈポーションタンク
            {itemid = 13689, droprate =  100}, -- hi-ether_tank Ｈエーテルタンク
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
                    {itemid = 15794, appraiserate = 10},   -- omicron_ring オミクロンリング
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
                    -- only
                    {itemid =  15538, appraiserate = 10},   -- phi_necklace ファイネックレス
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
        },
    },
    -- 不滅隊・魔滅隊合同演習(階級:少尉以上)
    [RED_VERSUS_BLUE] =
    {
        {
            {itemid =  4119, droprate =  100}, -- hi-potion_+3 ハイポーション+3
            {itemid = 13688, droprate =  100}, -- hi-potion_tank Ｈポーションタンク
            {itemid = 13689, droprate =  100}, -- hi-ether_tank Ｈエーテルタンク
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
                    {itemid = 15985, appraiserate = 10},   -- sigma_earring シグマピアス
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
                    {itemid = 15904, appraiserate = 10},   -- theta_sash シータサッシュ
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
                    {itemid =  2336, appraiserate = 10},   -- soulflayer_staff ソウルフレアの杖
                }
            }
        },
    },
    -- ヘルシング作戦(階級:中尉以上)
    [BLOODY_RONDO] =
    {
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
                    {itemid =  14999, appraiserate = 10},   -- vampiric_mitts バンピリックミトン
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
                    {itemid =  15000, appraiserate = 10},   -- caballero_gauntlets カバレーロガントレ
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
                    {itemid =  5340, appraiserate = 10},   -- silver_bullet_pouch 胴乱【銀】
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
