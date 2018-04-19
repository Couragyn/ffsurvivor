# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180419051033) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agg_play", primary_key: ["gsis_id", "drive_id", "play_id"], force: :cascade do |t|
    t.string "gsis_id", null: false
    t.integer "drive_id", null: false
    t.integer "play_id", null: false
    t.integer "defense_ast", limit: 2, default: 0, null: false
    t.integer "defense_ffum", limit: 2, default: 0, null: false
    t.integer "defense_fgblk", limit: 2, default: 0, null: false
    t.integer "defense_frec", limit: 2, default: 0, null: false
    t.integer "defense_frec_tds", limit: 2, default: 0, null: false
    t.integer "defense_frec_yds", limit: 2, default: 0, null: false
    t.integer "defense_int", limit: 2, default: 0, null: false
    t.integer "defense_int_tds", limit: 2, default: 0, null: false
    t.integer "defense_int_yds", limit: 2, default: 0, null: false
    t.integer "defense_misc_tds", limit: 2, default: 0, null: false
    t.integer "defense_misc_yds", limit: 2, default: 0, null: false
    t.integer "defense_pass_def", limit: 2, default: 0, null: false
    t.integer "defense_puntblk", limit: 2, default: 0, null: false
    t.integer "defense_qbhit", limit: 2, default: 0, null: false
    t.integer "defense_safe", limit: 2, default: 0, null: false
    t.float "defense_sk", default: 0.0, null: false
    t.integer "defense_sk_yds", limit: 2, default: 0, null: false
    t.integer "defense_tkl", limit: 2, default: 0, null: false
    t.integer "defense_tkl_loss", limit: 2, default: 0, null: false
    t.integer "defense_tkl_loss_yds", limit: 2, default: 0, null: false
    t.integer "defense_tkl_primary", limit: 2, default: 0, null: false
    t.integer "defense_xpblk", limit: 2, default: 0, null: false
    t.integer "fumbles_forced", limit: 2, default: 0, null: false
    t.integer "fumbles_lost", limit: 2, default: 0, null: false
    t.integer "fumbles_notforced", limit: 2, default: 0, null: false
    t.integer "fumbles_oob", limit: 2, default: 0, null: false
    t.integer "fumbles_rec", limit: 2, default: 0, null: false
    t.integer "fumbles_rec_tds", limit: 2, default: 0, null: false
    t.integer "fumbles_rec_yds", limit: 2, default: 0, null: false
    t.integer "fumbles_tot", limit: 2, default: 0, null: false
    t.integer "kicking_all_yds", limit: 2, default: 0, null: false
    t.integer "kicking_downed", limit: 2, default: 0, null: false
    t.integer "kicking_fga", limit: 2, default: 0, null: false
    t.integer "kicking_fgb", limit: 2, default: 0, null: false
    t.integer "kicking_fgm", limit: 2, default: 0, null: false
    t.integer "kicking_fgm_yds", limit: 2, default: 0, null: false
    t.integer "kicking_fgmissed", limit: 2, default: 0, null: false
    t.integer "kicking_fgmissed_yds", limit: 2, default: 0, null: false
    t.integer "kicking_i20", limit: 2, default: 0, null: false
    t.integer "kicking_rec", limit: 2, default: 0, null: false
    t.integer "kicking_rec_tds", limit: 2, default: 0, null: false
    t.integer "kicking_tot", limit: 2, default: 0, null: false
    t.integer "kicking_touchback", limit: 2, default: 0, null: false
    t.integer "kicking_xpa", limit: 2, default: 0, null: false
    t.integer "kicking_xpb", limit: 2, default: 0, null: false
    t.integer "kicking_xpmade", limit: 2, default: 0, null: false
    t.integer "kicking_xpmissed", limit: 2, default: 0, null: false
    t.integer "kicking_yds", limit: 2, default: 0, null: false
    t.integer "kickret_fair", limit: 2, default: 0, null: false
    t.integer "kickret_oob", limit: 2, default: 0, null: false
    t.integer "kickret_ret", limit: 2, default: 0, null: false
    t.integer "kickret_tds", limit: 2, default: 0, null: false
    t.integer "kickret_touchback", limit: 2, default: 0, null: false
    t.integer "kickret_yds", limit: 2, default: 0, null: false
    t.integer "passing_att", limit: 2, default: 0, null: false
    t.integer "passing_cmp", limit: 2, default: 0, null: false
    t.integer "passing_cmp_air_yds", limit: 2, default: 0, null: false
    t.integer "passing_incmp", limit: 2, default: 0, null: false
    t.integer "passing_incmp_air_yds", limit: 2, default: 0, null: false
    t.integer "passing_int", limit: 2, default: 0, null: false
    t.integer "passing_sk", limit: 2, default: 0, null: false
    t.integer "passing_sk_yds", limit: 2, default: 0, null: false
    t.integer "passing_tds", limit: 2, default: 0, null: false
    t.integer "passing_twopta", limit: 2, default: 0, null: false
    t.integer "passing_twoptm", limit: 2, default: 0, null: false
    t.integer "passing_twoptmissed", limit: 2, default: 0, null: false
    t.integer "passing_yds", limit: 2, default: 0, null: false
    t.integer "punting_blk", limit: 2, default: 0, null: false
    t.integer "punting_i20", limit: 2, default: 0, null: false
    t.integer "punting_tot", limit: 2, default: 0, null: false
    t.integer "punting_touchback", limit: 2, default: 0, null: false
    t.integer "punting_yds", limit: 2, default: 0, null: false
    t.integer "puntret_downed", limit: 2, default: 0, null: false
    t.integer "puntret_fair", limit: 2, default: 0, null: false
    t.integer "puntret_oob", limit: 2, default: 0, null: false
    t.integer "puntret_tds", limit: 2, default: 0, null: false
    t.integer "puntret_tot", limit: 2, default: 0, null: false
    t.integer "puntret_touchback", limit: 2, default: 0, null: false
    t.integer "puntret_yds", limit: 2, default: 0, null: false
    t.integer "receiving_rec", limit: 2, default: 0, null: false
    t.integer "receiving_tar", limit: 2, default: 0, null: false
    t.integer "receiving_tds", limit: 2, default: 0, null: false
    t.integer "receiving_twopta", limit: 2, default: 0, null: false
    t.integer "receiving_twoptm", limit: 2, default: 0, null: false
    t.integer "receiving_twoptmissed", limit: 2, default: 0, null: false
    t.integer "receiving_yac_yds", limit: 2, default: 0, null: false
    t.integer "receiving_yds", limit: 2, default: 0, null: false
    t.integer "rushing_att", limit: 2, default: 0, null: false
    t.integer "rushing_loss", limit: 2, default: 0, null: false
    t.integer "rushing_loss_yds", limit: 2, default: 0, null: false
    t.integer "rushing_tds", limit: 2, default: 0, null: false
    t.integer "rushing_twopta", limit: 2, default: 0, null: false
    t.integer "rushing_twoptm", limit: 2, default: 0, null: false
    t.integer "rushing_twoptmissed", limit: 2, default: 0, null: false
    t.integer "rushing_yds", limit: 2, default: 0, null: false
    t.index ["defense_ast"], name: "agg_play_in_defense_ast"
    t.index ["defense_ffum"], name: "agg_play_in_defense_ffum"
    t.index ["defense_fgblk"], name: "agg_play_in_defense_fgblk"
    t.index ["defense_frec"], name: "agg_play_in_defense_frec"
    t.index ["defense_frec_tds"], name: "agg_play_in_defense_frec_tds"
    t.index ["defense_frec_yds"], name: "agg_play_in_defense_frec_yds"
    t.index ["defense_int"], name: "agg_play_in_defense_int"
    t.index ["defense_int_tds"], name: "agg_play_in_defense_int_tds"
    t.index ["defense_int_yds"], name: "agg_play_in_defense_int_yds"
    t.index ["defense_misc_tds"], name: "agg_play_in_defense_misc_tds"
    t.index ["defense_misc_yds"], name: "agg_play_in_defense_misc_yds"
    t.index ["defense_pass_def"], name: "agg_play_in_defense_pass_def"
    t.index ["defense_puntblk"], name: "agg_play_in_defense_puntblk"
    t.index ["defense_qbhit"], name: "agg_play_in_defense_qbhit"
    t.index ["defense_safe"], name: "agg_play_in_defense_safe"
    t.index ["defense_sk"], name: "agg_play_in_defense_sk"
    t.index ["defense_sk_yds"], name: "agg_play_in_defense_sk_yds"
    t.index ["defense_tkl"], name: "agg_play_in_defense_tkl"
    t.index ["defense_tkl_loss"], name: "agg_play_in_defense_tkl_loss"
    t.index ["defense_tkl_loss_yds"], name: "agg_play_in_defense_tkl_loss_yds"
    t.index ["defense_tkl_primary"], name: "agg_play_in_defense_tkl_primary"
    t.index ["defense_xpblk"], name: "agg_play_in_defense_xpblk"
    t.index ["fumbles_forced"], name: "agg_play_in_fumbles_forced"
    t.index ["fumbles_lost"], name: "agg_play_in_fumbles_lost"
    t.index ["fumbles_notforced"], name: "agg_play_in_fumbles_notforced"
    t.index ["fumbles_oob"], name: "agg_play_in_fumbles_oob"
    t.index ["fumbles_rec"], name: "agg_play_in_fumbles_rec"
    t.index ["fumbles_rec_tds"], name: "agg_play_in_fumbles_rec_tds"
    t.index ["fumbles_rec_yds"], name: "agg_play_in_fumbles_rec_yds"
    t.index ["fumbles_tot"], name: "agg_play_in_fumbles_tot"
    t.index ["gsis_id", "drive_id"], name: "agg_play_in_gsis_drive_id"
    t.index ["gsis_id"], name: "agg_play_in_gsis_id"
    t.index ["kicking_all_yds"], name: "agg_play_in_kicking_all_yds"
    t.index ["kicking_downed"], name: "agg_play_in_kicking_downed"
    t.index ["kicking_fga"], name: "agg_play_in_kicking_fga"
    t.index ["kicking_fgb"], name: "agg_play_in_kicking_fgb"
    t.index ["kicking_fgm"], name: "agg_play_in_kicking_fgm"
    t.index ["kicking_fgm_yds"], name: "agg_play_in_kicking_fgm_yds"
    t.index ["kicking_fgmissed"], name: "agg_play_in_kicking_fgmissed"
    t.index ["kicking_fgmissed_yds"], name: "agg_play_in_kicking_fgmissed_yds"
    t.index ["kicking_i20"], name: "agg_play_in_kicking_i20"
    t.index ["kicking_rec"], name: "agg_play_in_kicking_rec"
    t.index ["kicking_rec_tds"], name: "agg_play_in_kicking_rec_tds"
    t.index ["kicking_tot"], name: "agg_play_in_kicking_tot"
    t.index ["kicking_touchback"], name: "agg_play_in_kicking_touchback"
    t.index ["kicking_xpa"], name: "agg_play_in_kicking_xpa"
    t.index ["kicking_xpb"], name: "agg_play_in_kicking_xpb"
    t.index ["kicking_xpmade"], name: "agg_play_in_kicking_xpmade"
    t.index ["kicking_xpmissed"], name: "agg_play_in_kicking_xpmissed"
    t.index ["kicking_yds"], name: "agg_play_in_kicking_yds"
    t.index ["kickret_fair"], name: "agg_play_in_kickret_fair"
    t.index ["kickret_oob"], name: "agg_play_in_kickret_oob"
    t.index ["kickret_ret"], name: "agg_play_in_kickret_ret"
    t.index ["kickret_tds"], name: "agg_play_in_kickret_tds"
    t.index ["kickret_touchback"], name: "agg_play_in_kickret_touchback"
    t.index ["kickret_yds"], name: "agg_play_in_kickret_yds"
    t.index ["passing_att"], name: "agg_play_in_passing_att"
    t.index ["passing_cmp"], name: "agg_play_in_passing_cmp"
    t.index ["passing_cmp_air_yds"], name: "agg_play_in_passing_cmp_air_yds"
    t.index ["passing_incmp"], name: "agg_play_in_passing_incmp"
    t.index ["passing_incmp_air_yds"], name: "agg_play_in_passing_incmp_air_yds"
    t.index ["passing_int"], name: "agg_play_in_passing_int"
    t.index ["passing_sk"], name: "agg_play_in_passing_sk"
    t.index ["passing_sk_yds"], name: "agg_play_in_passing_sk_yds"
    t.index ["passing_tds"], name: "agg_play_in_passing_tds"
    t.index ["passing_twopta"], name: "agg_play_in_passing_twopta"
    t.index ["passing_twoptm"], name: "agg_play_in_passing_twoptm"
    t.index ["passing_twoptmissed"], name: "agg_play_in_passing_twoptmissed"
    t.index ["passing_yds"], name: "agg_play_in_passing_yds"
    t.index ["punting_blk"], name: "agg_play_in_punting_blk"
    t.index ["punting_i20"], name: "agg_play_in_punting_i20"
    t.index ["punting_tot"], name: "agg_play_in_punting_tot"
    t.index ["punting_touchback"], name: "agg_play_in_punting_touchback"
    t.index ["punting_yds"], name: "agg_play_in_punting_yds"
    t.index ["puntret_downed"], name: "agg_play_in_puntret_downed"
    t.index ["puntret_fair"], name: "agg_play_in_puntret_fair"
    t.index ["puntret_oob"], name: "agg_play_in_puntret_oob"
    t.index ["puntret_tds"], name: "agg_play_in_puntret_tds"
    t.index ["puntret_tot"], name: "agg_play_in_puntret_tot"
    t.index ["puntret_touchback"], name: "agg_play_in_puntret_touchback"
    t.index ["puntret_yds"], name: "agg_play_in_puntret_yds"
    t.index ["receiving_rec"], name: "agg_play_in_receiving_rec"
    t.index ["receiving_tar"], name: "agg_play_in_receiving_tar"
    t.index ["receiving_tds"], name: "agg_play_in_receiving_tds"
    t.index ["receiving_twopta"], name: "agg_play_in_receiving_twopta"
    t.index ["receiving_twoptm"], name: "agg_play_in_receiving_twoptm"
    t.index ["receiving_twoptmissed"], name: "agg_play_in_receiving_twoptmissed"
    t.index ["receiving_yac_yds"], name: "agg_play_in_receiving_yac_yds"
    t.index ["receiving_yds"], name: "agg_play_in_receiving_yds"
    t.index ["rushing_att"], name: "agg_play_in_rushing_att"
    t.index ["rushing_loss"], name: "agg_play_in_rushing_loss"
    t.index ["rushing_loss_yds"], name: "agg_play_in_rushing_loss_yds"
    t.index ["rushing_tds"], name: "agg_play_in_rushing_tds"
    t.index ["rushing_twopta"], name: "agg_play_in_rushing_twopta"
    t.index ["rushing_twoptm"], name: "agg_play_in_rushing_twoptm"
    t.index ["rushing_twoptmissed"], name: "agg_play_in_rushing_twoptmissed"
    t.index ["rushing_yds"], name: "agg_play_in_rushing_yds"
  end

  create_table "defs", force: :cascade do |t|
    t.string "key"
    t.string "name"
    t.string "team"
    t.integer "sort"
  end

# Could not dump table "drive" because of following StandardError
#   Unknown type 'field_pos' for column 'start_field'

# Could not dump table "game" because of following StandardError
#   Unknown type 'game_day' for column 'day_of_week'

  create_table "ks", force: :cascade do |t|
    t.string "key"
    t.string "name"
    t.string "team"
    t.integer "sort"
  end

  create_table "leagues", force: :cascade do |t|
    t.string "name"
    t.integer "limit"
    t.bigint "user_id"
    t.boolean "is_payed", default: false
    t.boolean "is_private", default: false
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "league_type"
    t.integer "owner_id"
    t.index ["user_id"], name: "index_leagues_on_user_id"
  end

# Could not dump table "meta" because of following StandardError
#   Unknown type 'season_phase' for column 'season_type'

# Could not dump table "play" because of following StandardError
#   Unknown type 'game_time' for column 'time'

  create_table "play_player", primary_key: ["gsis_id", "drive_id", "play_id", "player_id"], force: :cascade do |t|
    t.string "gsis_id", null: false
    t.integer "drive_id", null: false
    t.integer "play_id", null: false
    t.string "player_id", limit: 10, null: false
    t.string "team", limit: 3, null: false
    t.integer "defense_ast", limit: 2, default: 0, null: false
    t.integer "defense_ffum", limit: 2, default: 0, null: false
    t.integer "defense_fgblk", limit: 2, default: 0, null: false
    t.integer "defense_frec", limit: 2, default: 0, null: false
    t.integer "defense_frec_tds", limit: 2, default: 0, null: false
    t.integer "defense_frec_yds", limit: 2, default: 0, null: false
    t.integer "defense_int", limit: 2, default: 0, null: false
    t.integer "defense_int_tds", limit: 2, default: 0, null: false
    t.integer "defense_int_yds", limit: 2, default: 0, null: false
    t.integer "defense_misc_tds", limit: 2, default: 0, null: false
    t.integer "defense_misc_yds", limit: 2, default: 0, null: false
    t.integer "defense_pass_def", limit: 2, default: 0, null: false
    t.integer "defense_puntblk", limit: 2, default: 0, null: false
    t.integer "defense_qbhit", limit: 2, default: 0, null: false
    t.integer "defense_safe", limit: 2, default: 0, null: false
    t.float "defense_sk", default: 0.0, null: false
    t.integer "defense_sk_yds", limit: 2, default: 0, null: false
    t.integer "defense_tkl", limit: 2, default: 0, null: false
    t.integer "defense_tkl_loss", limit: 2, default: 0, null: false
    t.integer "defense_tkl_loss_yds", limit: 2, default: 0, null: false
    t.integer "defense_tkl_primary", limit: 2, default: 0, null: false
    t.integer "defense_xpblk", limit: 2, default: 0, null: false
    t.integer "fumbles_forced", limit: 2, default: 0, null: false
    t.integer "fumbles_lost", limit: 2, default: 0, null: false
    t.integer "fumbles_notforced", limit: 2, default: 0, null: false
    t.integer "fumbles_oob", limit: 2, default: 0, null: false
    t.integer "fumbles_rec", limit: 2, default: 0, null: false
    t.integer "fumbles_rec_tds", limit: 2, default: 0, null: false
    t.integer "fumbles_rec_yds", limit: 2, default: 0, null: false
    t.integer "fumbles_tot", limit: 2, default: 0, null: false
    t.integer "kicking_all_yds", limit: 2, default: 0, null: false
    t.integer "kicking_downed", limit: 2, default: 0, null: false
    t.integer "kicking_fga", limit: 2, default: 0, null: false
    t.integer "kicking_fgb", limit: 2, default: 0, null: false
    t.integer "kicking_fgm", limit: 2, default: 0, null: false
    t.integer "kicking_fgm_yds", limit: 2, default: 0, null: false
    t.integer "kicking_fgmissed", limit: 2, default: 0, null: false
    t.integer "kicking_fgmissed_yds", limit: 2, default: 0, null: false
    t.integer "kicking_i20", limit: 2, default: 0, null: false
    t.integer "kicking_rec", limit: 2, default: 0, null: false
    t.integer "kicking_rec_tds", limit: 2, default: 0, null: false
    t.integer "kicking_tot", limit: 2, default: 0, null: false
    t.integer "kicking_touchback", limit: 2, default: 0, null: false
    t.integer "kicking_xpa", limit: 2, default: 0, null: false
    t.integer "kicking_xpb", limit: 2, default: 0, null: false
    t.integer "kicking_xpmade", limit: 2, default: 0, null: false
    t.integer "kicking_xpmissed", limit: 2, default: 0, null: false
    t.integer "kicking_yds", limit: 2, default: 0, null: false
    t.integer "kickret_fair", limit: 2, default: 0, null: false
    t.integer "kickret_oob", limit: 2, default: 0, null: false
    t.integer "kickret_ret", limit: 2, default: 0, null: false
    t.integer "kickret_tds", limit: 2, default: 0, null: false
    t.integer "kickret_touchback", limit: 2, default: 0, null: false
    t.integer "kickret_yds", limit: 2, default: 0, null: false
    t.integer "passing_att", limit: 2, default: 0, null: false
    t.integer "passing_cmp", limit: 2, default: 0, null: false
    t.integer "passing_cmp_air_yds", limit: 2, default: 0, null: false
    t.integer "passing_incmp", limit: 2, default: 0, null: false
    t.integer "passing_incmp_air_yds", limit: 2, default: 0, null: false
    t.integer "passing_int", limit: 2, default: 0, null: false
    t.integer "passing_sk", limit: 2, default: 0, null: false
    t.integer "passing_sk_yds", limit: 2, default: 0, null: false
    t.integer "passing_tds", limit: 2, default: 0, null: false
    t.integer "passing_twopta", limit: 2, default: 0, null: false
    t.integer "passing_twoptm", limit: 2, default: 0, null: false
    t.integer "passing_twoptmissed", limit: 2, default: 0, null: false
    t.integer "passing_yds", limit: 2, default: 0, null: false
    t.integer "punting_blk", limit: 2, default: 0, null: false
    t.integer "punting_i20", limit: 2, default: 0, null: false
    t.integer "punting_tot", limit: 2, default: 0, null: false
    t.integer "punting_touchback", limit: 2, default: 0, null: false
    t.integer "punting_yds", limit: 2, default: 0, null: false
    t.integer "puntret_downed", limit: 2, default: 0, null: false
    t.integer "puntret_fair", limit: 2, default: 0, null: false
    t.integer "puntret_oob", limit: 2, default: 0, null: false
    t.integer "puntret_tds", limit: 2, default: 0, null: false
    t.integer "puntret_tot", limit: 2, default: 0, null: false
    t.integer "puntret_touchback", limit: 2, default: 0, null: false
    t.integer "puntret_yds", limit: 2, default: 0, null: false
    t.integer "receiving_rec", limit: 2, default: 0, null: false
    t.integer "receiving_tar", limit: 2, default: 0, null: false
    t.integer "receiving_tds", limit: 2, default: 0, null: false
    t.integer "receiving_twopta", limit: 2, default: 0, null: false
    t.integer "receiving_twoptm", limit: 2, default: 0, null: false
    t.integer "receiving_twoptmissed", limit: 2, default: 0, null: false
    t.integer "receiving_yac_yds", limit: 2, default: 0, null: false
    t.integer "receiving_yds", limit: 2, default: 0, null: false
    t.integer "rushing_att", limit: 2, default: 0, null: false
    t.integer "rushing_loss", limit: 2, default: 0, null: false
    t.integer "rushing_loss_yds", limit: 2, default: 0, null: false
    t.integer "rushing_tds", limit: 2, default: 0, null: false
    t.integer "rushing_twopta", limit: 2, default: 0, null: false
    t.integer "rushing_twoptm", limit: 2, default: 0, null: false
    t.integer "rushing_twoptmissed", limit: 2, default: 0, null: false
    t.integer "rushing_yds", limit: 2, default: 0, null: false
    t.index ["defense_ast"], name: "play_player_in_defense_ast"
    t.index ["defense_ffum"], name: "play_player_in_defense_ffum"
    t.index ["defense_fgblk"], name: "play_player_in_defense_fgblk"
    t.index ["defense_frec"], name: "play_player_in_defense_frec"
    t.index ["defense_frec_tds"], name: "play_player_in_defense_frec_tds"
    t.index ["defense_frec_yds"], name: "play_player_in_defense_frec_yds"
    t.index ["defense_int"], name: "play_player_in_defense_int"
    t.index ["defense_int_tds"], name: "play_player_in_defense_int_tds"
    t.index ["defense_int_yds"], name: "play_player_in_defense_int_yds"
    t.index ["defense_misc_tds"], name: "play_player_in_defense_misc_tds"
    t.index ["defense_misc_yds"], name: "play_player_in_defense_misc_yds"
    t.index ["defense_pass_def"], name: "play_player_in_defense_pass_def"
    t.index ["defense_puntblk"], name: "play_player_in_defense_puntblk"
    t.index ["defense_qbhit"], name: "play_player_in_defense_qbhit"
    t.index ["defense_safe"], name: "play_player_in_defense_safe"
    t.index ["defense_sk"], name: "play_player_in_defense_sk"
    t.index ["defense_sk_yds"], name: "play_player_in_defense_sk_yds"
    t.index ["defense_tkl"], name: "play_player_in_defense_tkl"
    t.index ["defense_tkl_loss"], name: "play_player_in_defense_tkl_loss"
    t.index ["defense_tkl_loss_yds"], name: "play_player_in_defense_tkl_loss_yds"
    t.index ["defense_tkl_primary"], name: "play_player_in_defense_tkl_primary"
    t.index ["defense_xpblk"], name: "play_player_in_defense_xpblk"
    t.index ["fumbles_forced"], name: "play_player_in_fumbles_forced"
    t.index ["fumbles_lost"], name: "play_player_in_fumbles_lost"
    t.index ["fumbles_notforced"], name: "play_player_in_fumbles_notforced"
    t.index ["fumbles_oob"], name: "play_player_in_fumbles_oob"
    t.index ["fumbles_rec"], name: "play_player_in_fumbles_rec"
    t.index ["fumbles_rec_tds"], name: "play_player_in_fumbles_rec_tds"
    t.index ["fumbles_rec_yds"], name: "play_player_in_fumbles_rec_yds"
    t.index ["fumbles_tot"], name: "play_player_in_fumbles_tot"
    t.index ["gsis_id", "drive_id", "play_id"], name: "pp_in_gsis_drive_play_id"
    t.index ["gsis_id", "drive_id"], name: "pp_in_gsis_drive_id"
    t.index ["gsis_id", "player_id"], name: "pp_in_gsis_player_id"
    t.index ["gsis_id"], name: "pp_in_gsis_id"
    t.index ["kicking_all_yds"], name: "play_player_in_kicking_all_yds"
    t.index ["kicking_downed"], name: "play_player_in_kicking_downed"
    t.index ["kicking_fga"], name: "play_player_in_kicking_fga"
    t.index ["kicking_fgb"], name: "play_player_in_kicking_fgb"
    t.index ["kicking_fgm"], name: "play_player_in_kicking_fgm"
    t.index ["kicking_fgm_yds"], name: "play_player_in_kicking_fgm_yds"
    t.index ["kicking_fgmissed"], name: "play_player_in_kicking_fgmissed"
    t.index ["kicking_fgmissed_yds"], name: "play_player_in_kicking_fgmissed_yds"
    t.index ["kicking_i20"], name: "play_player_in_kicking_i20"
    t.index ["kicking_rec"], name: "play_player_in_kicking_rec"
    t.index ["kicking_rec_tds"], name: "play_player_in_kicking_rec_tds"
    t.index ["kicking_tot"], name: "play_player_in_kicking_tot"
    t.index ["kicking_touchback"], name: "play_player_in_kicking_touchback"
    t.index ["kicking_xpa"], name: "play_player_in_kicking_xpa"
    t.index ["kicking_xpb"], name: "play_player_in_kicking_xpb"
    t.index ["kicking_xpmade"], name: "play_player_in_kicking_xpmade"
    t.index ["kicking_xpmissed"], name: "play_player_in_kicking_xpmissed"
    t.index ["kicking_yds"], name: "play_player_in_kicking_yds"
    t.index ["kickret_fair"], name: "play_player_in_kickret_fair"
    t.index ["kickret_oob"], name: "play_player_in_kickret_oob"
    t.index ["kickret_ret"], name: "play_player_in_kickret_ret"
    t.index ["kickret_tds"], name: "play_player_in_kickret_tds"
    t.index ["kickret_touchback"], name: "play_player_in_kickret_touchback"
    t.index ["kickret_yds"], name: "play_player_in_kickret_yds"
    t.index ["passing_att"], name: "play_player_in_passing_att"
    t.index ["passing_cmp"], name: "play_player_in_passing_cmp"
    t.index ["passing_cmp_air_yds"], name: "play_player_in_passing_cmp_air_yds"
    t.index ["passing_incmp"], name: "play_player_in_passing_incmp"
    t.index ["passing_incmp_air_yds"], name: "play_player_in_passing_incmp_air_yds"
    t.index ["passing_int"], name: "play_player_in_passing_int"
    t.index ["passing_sk"], name: "play_player_in_passing_sk"
    t.index ["passing_sk_yds"], name: "play_player_in_passing_sk_yds"
    t.index ["passing_tds"], name: "play_player_in_passing_tds"
    t.index ["passing_twopta"], name: "play_player_in_passing_twopta"
    t.index ["passing_twoptm"], name: "play_player_in_passing_twoptm"
    t.index ["passing_twoptmissed"], name: "play_player_in_passing_twoptmissed"
    t.index ["passing_yds"], name: "play_player_in_passing_yds"
    t.index ["player_id"], name: "pp_in_player_id"
    t.index ["punting_blk"], name: "play_player_in_punting_blk"
    t.index ["punting_i20"], name: "play_player_in_punting_i20"
    t.index ["punting_tot"], name: "play_player_in_punting_tot"
    t.index ["punting_touchback"], name: "play_player_in_punting_touchback"
    t.index ["punting_yds"], name: "play_player_in_punting_yds"
    t.index ["puntret_downed"], name: "play_player_in_puntret_downed"
    t.index ["puntret_fair"], name: "play_player_in_puntret_fair"
    t.index ["puntret_oob"], name: "play_player_in_puntret_oob"
    t.index ["puntret_tds"], name: "play_player_in_puntret_tds"
    t.index ["puntret_tot"], name: "play_player_in_puntret_tot"
    t.index ["puntret_touchback"], name: "play_player_in_puntret_touchback"
    t.index ["puntret_yds"], name: "play_player_in_puntret_yds"
    t.index ["receiving_rec"], name: "play_player_in_receiving_rec"
    t.index ["receiving_tar"], name: "play_player_in_receiving_tar"
    t.index ["receiving_tds"], name: "play_player_in_receiving_tds"
    t.index ["receiving_twopta"], name: "play_player_in_receiving_twopta"
    t.index ["receiving_twoptm"], name: "play_player_in_receiving_twoptm"
    t.index ["receiving_twoptmissed"], name: "play_player_in_receiving_twoptmissed"
    t.index ["receiving_yac_yds"], name: "play_player_in_receiving_yac_yds"
    t.index ["receiving_yds"], name: "play_player_in_receiving_yds"
    t.index ["rushing_att"], name: "play_player_in_rushing_att"
    t.index ["rushing_loss"], name: "play_player_in_rushing_loss"
    t.index ["rushing_loss_yds"], name: "play_player_in_rushing_loss_yds"
    t.index ["rushing_tds"], name: "play_player_in_rushing_tds"
    t.index ["rushing_twopta"], name: "play_player_in_rushing_twopta"
    t.index ["rushing_twoptm"], name: "play_player_in_rushing_twoptm"
    t.index ["rushing_twoptmissed"], name: "play_player_in_rushing_twoptmissed"
    t.index ["rushing_yds"], name: "play_player_in_rushing_yds"
    t.index ["team"], name: "pp_in_team"
  end

# Could not dump table "player" because of following StandardError
#   Unknown type 'player_pos' for column 'position'

  create_table "players", force: :cascade do |t|
    t.integer "key"
    t.string "name"
    t.string "team"
    t.string "position"
    t.float "adp"
    t.float "adpppr"
    t.integer "bye"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "sort"
  end

  create_table "qbs", force: :cascade do |t|
    t.string "key"
    t.string "name"
    t.string "team"
    t.integer "sort"
  end

  create_table "rbs", force: :cascade do |t|
    t.string "key"
    t.string "name"
    t.string "team"
    t.integer "sort"
  end

  create_table "team", primary_key: "team_id", id: :string, limit: 3, force: :cascade do |t|
    t.string "city", limit: 50, null: false
    t.string "name", limit: 50, null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id"
    t.integer "current_lineup", default: [], array: true
    t.float "total_score", default: 0.0
    t.bigint "league_id"
    t.index ["league_id"], name: "index_teams_on_league_id"
    t.index ["user_id"], name: "index_teams_on_user_id"
  end

  create_table "tes", force: :cascade do |t|
    t.string "key"
    t.string "name"
    t.string "team"
    t.integer "sort"
  end

  create_table "users", force: :cascade do |t|
    t.string "uname"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "remember_digest"
  end

  create_table "weeks", force: :cascade do |t|
    t.integer "number"
    t.bigint "team_id"
    t.integer "lineup", default: [], array: true
    t.float "score", default: 0.0
    t.index ["team_id"], name: "index_weeks_on_team_id"
  end

  create_table "wrs", force: :cascade do |t|
    t.string "key"
    t.string "name"
    t.string "team"
    t.integer "sort"
  end

  add_foreign_key "agg_play", "drive", column: "gsis_id", primary_key: "gsis_id", name: "agg_play_gsis_id_fkey1", on_delete: :cascade
  add_foreign_key "agg_play", "game", column: "gsis_id", primary_key: "gsis_id", name: "agg_play_gsis_id_fkey2", on_delete: :cascade
  add_foreign_key "agg_play", "play", column: "gsis_id", primary_key: "gsis_id", name: "agg_play_gsis_id_fkey", on_delete: :cascade
  add_foreign_key "drive", "game", column: "gsis_id", primary_key: "gsis_id", name: "drive_gsis_id_fkey", on_delete: :cascade
  add_foreign_key "drive", "team", column: "pos_team", primary_key: "team_id", name: "drive_pos_team_fkey", on_update: :cascade, on_delete: :restrict
  add_foreign_key "game", "team", column: "away_team", primary_key: "team_id", name: "game_away_team_fkey", on_update: :cascade, on_delete: :restrict
  add_foreign_key "game", "team", column: "home_team", primary_key: "team_id", name: "game_home_team_fkey", on_update: :cascade, on_delete: :restrict
  add_foreign_key "leagues", "users"
  add_foreign_key "play", "drive", column: "gsis_id", primary_key: "gsis_id", name: "play_gsis_id_fkey", on_delete: :cascade
  add_foreign_key "play", "game", column: "gsis_id", primary_key: "gsis_id", name: "play_gsis_id_fkey1", on_delete: :cascade
  add_foreign_key "play", "team", column: "pos_team", primary_key: "team_id", name: "play_pos_team_fkey", on_update: :cascade, on_delete: :restrict
  add_foreign_key "play_player", "drive", column: "gsis_id", primary_key: "gsis_id", name: "play_player_gsis_id_fkey1", on_delete: :cascade
  add_foreign_key "play_player", "game", column: "gsis_id", primary_key: "gsis_id", name: "play_player_gsis_id_fkey2", on_delete: :cascade
  add_foreign_key "play_player", "play", column: "gsis_id", primary_key: "gsis_id", name: "play_player_gsis_id_fkey", on_delete: :cascade
  add_foreign_key "play_player", "player", primary_key: "player_id", name: "play_player_player_id_fkey", on_delete: :restrict
  add_foreign_key "play_player", "team", column: "team", primary_key: "team_id", name: "play_player_team_fkey", on_update: :cascade, on_delete: :restrict
  add_foreign_key "player", "team", column: "team", primary_key: "team_id", name: "player_team_fkey", on_update: :cascade, on_delete: :restrict
  add_foreign_key "teams", "leagues"
  add_foreign_key "teams", "users"
  add_foreign_key "weeks", "teams"
end
