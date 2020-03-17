#--
# Copyright (c) 2008 Macario Ortega
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#++

require "date"
require "ruby-osc"
require "eventmachine"
require "yaml"


require_relative "scruby/version"
require_relative "scruby/attributes"
require_relative "scruby/equatable"
require_relative "scruby/pretty_inspectable"
require_relative "scruby/encode"
require_relative "scruby/utils/positional_keyword_args"


require_relative "scruby/sclang/helpers"
require_relative "scruby/sclang"
require_relative "scruby/server"
require_relative "scruby/server/local"
require_relative "scruby/server/options"


require_relative "scruby/process"
require_relative "scruby/process/registry"

require_relative "scruby/graph"
require_relative "scruby/graph/visualize"
require_relative "scruby/graph/node"
require_relative "scruby/graph/constant"
require_relative "scruby/graph/control_name"

require_relative "scruby/ugen"
require_relative "scruby/ugen/operations"
require_relative "scruby/ugen/abstract_out"
require_relative "scruby/ugen/base"
require_relative "scruby/ugen/binary_op_ugen"
require_relative "scruby/ugen/unary_op_ugen"

require_relative "scruby/ugen/in"
require_relative "scruby/ugen/out"
require_relative "scruby/ugen/a2_k"
require_relative "scruby/ugen/apf"
require_relative "scruby/ugen/allpass_c"
require_relative "scruby/ugen/allpass_l"
require_relative "scruby/ugen/allpass_n"
require_relative "scruby/ugen/amp_comp"
require_relative "scruby/ugen/amp_comp_a"
require_relative "scruby/ugen/amplitude"
require_relative "scruby/ugen/b_all_pass"
require_relative "scruby/ugen/b_band_pass"
require_relative "scruby/ugen/b_band_stop"
require_relative "scruby/ugen/b_hi_pass"
require_relative "scruby/ugen/b_hi_shelf"
require_relative "scruby/ugen/b_low_pass"
require_relative "scruby/ugen/b_low_shelf"
require_relative "scruby/ugen/bpf"
require_relative "scruby/ugen/bpz2"
require_relative "scruby/ugen/b_peak_eq"
require_relative "scruby/ugen/brf"
require_relative "scruby/ugen/brz2"
require_relative "scruby/ugen/balance2"
require_relative "scruby/ugen/ball"
require_relative "scruby/ugen/beat_track"
require_relative "scruby/ugen/beat_track2"
require_relative "scruby/ugen/bi_pan_b2"
require_relative "scruby/ugen/blip"
require_relative "scruby/ugen/block_size"
require_relative "scruby/ugen/brown_noise"
require_relative "scruby/ugen/buf_allpass_c"
require_relative "scruby/ugen/buf_allpass_l"
require_relative "scruby/ugen/buf_allpass_n"
require_relative "scruby/ugen/buf_channels"
require_relative "scruby/ugen/buf_comb_c"
require_relative "scruby/ugen/buf_comb_l"
require_relative "scruby/ugen/buf_comb_n"
require_relative "scruby/ugen/buf_delay_c"
require_relative "scruby/ugen/buf_delay_l"
require_relative "scruby/ugen/buf_delay_n"
require_relative "scruby/ugen/buf_dur"
require_relative "scruby/ugen/buf_frames"
require_relative "scruby/ugen/buf_rate_scale"
require_relative "scruby/ugen/buf_rd"
require_relative "scruby/ugen/buf_sample_rate"
require_relative "scruby/ugen/buf_samples"
require_relative "scruby/ugen/buf_wr"
require_relative "scruby/ugen/c_osc"
require_relative "scruby/ugen/control"
require_relative "scruby/ugen/check_bad_values"
require_relative "scruby/ugen/clip"
require_relative "scruby/ugen/clip_noise"
require_relative "scruby/ugen/coin_gate"
require_relative "scruby/ugen/comb_c"
require_relative "scruby/ugen/comb_l"
require_relative "scruby/ugen/comb_n"
require_relative "scruby/ugen/compander"
require_relative "scruby/ugen/compander_d"
require_relative "scruby/ugen/control_dur"
require_relative "scruby/ugen/control_rate"
require_relative "scruby/ugen/convolution"
require_relative "scruby/ugen/convolution2"
require_relative "scruby/ugen/convolution2_l"
require_relative "scruby/ugen/convolution3"
require_relative "scruby/ugen/crackle"
require_relative "scruby/ugen/cusp_l"
require_relative "scruby/ugen/cusp_n"
require_relative "scruby/ugen/dc"
require_relative "scruby/ugen/dbrown"
require_relative "scruby/ugen/dbufrd"
require_relative "scruby/ugen/dbufwr"
require_relative "scruby/ugen/dconst"
require_relative "scruby/ugen/decay"
require_relative "scruby/ugen/decay2"
require_relative "scruby/ugen/decode_b2"
require_relative "scruby/ugen/degree_to_key"
require_relative "scruby/ugen/del_tap_rd"
require_relative "scruby/ugen/del_tap_wr"
require_relative "scruby/ugen/delay1"
require_relative "scruby/ugen/delay2"
require_relative "scruby/ugen/delay_c"
require_relative "scruby/ugen/delay_l"
require_relative "scruby/ugen/delay_n"
require_relative "scruby/ugen/demand"
require_relative "scruby/ugen/demand_env_gen"
require_relative "scruby/ugen/detect_index"
require_relative "scruby/ugen/detect_silence"
require_relative "scruby/ugen/dgeom"
require_relative "scruby/ugen/dibrown"
require_relative "scruby/ugen/disk_in"
require_relative "scruby/ugen/disk_out"
require_relative "scruby/ugen/diwhite"
require_relative "scruby/ugen/done"
require_relative "scruby/ugen/dpoll"
require_relative "scruby/ugen/drand"
require_relative "scruby/ugen/dreset"
require_relative "scruby/ugen/dseq"
require_relative "scruby/ugen/dser"
require_relative "scruby/ugen/dseries"
require_relative "scruby/ugen/dshuf"
require_relative "scruby/ugen/dstutter"
require_relative "scruby/ugen/dswitch"
require_relative "scruby/ugen/dswitch1"
require_relative "scruby/ugen/dunique"
require_relative "scruby/ugen/dust"
require_relative "scruby/ugen/dust2"
require_relative "scruby/ugen/duty"
require_relative "scruby/ugen/dwhite"
require_relative "scruby/ugen/dwrand"
require_relative "scruby/ugen/dxrand"
require_relative "scruby/ugen/env_gen"
require_relative "scruby/ugen/exp_rand"
require_relative "scruby/ugen/fb_sine_c"
require_relative "scruby/ugen/fb_sine_l"
require_relative "scruby/ugen/fb_sine_n"
require_relative "scruby/ugen/fft"
require_relative "scruby/ugen/fos"
require_relative "scruby/ugen/f_sin_osc"
require_relative "scruby/ugen/fold"
require_relative "scruby/ugen/formant"
require_relative "scruby/ugen/formlet"
require_relative "scruby/ugen/free"
require_relative "scruby/ugen/free_self"
require_relative "scruby/ugen/free_self_when_done"
require_relative "scruby/ugen/free_verb"
require_relative "scruby/ugen/free_verb2"
require_relative "scruby/ugen/freq_shift"
require_relative "scruby/ugen/g_verb"
require_relative "scruby/ugen/gate"
require_relative "scruby/ugen/gbman_l"
require_relative "scruby/ugen/gbman_n"
require_relative "scruby/ugen/gendy1"
require_relative "scruby/ugen/gendy2"
require_relative "scruby/ugen/gendy3"
require_relative "scruby/ugen/grain_buf"
require_relative "scruby/ugen/grain_fm"
require_relative "scruby/ugen/grain_in"
require_relative "scruby/ugen/grain_sin"
require_relative "scruby/ugen/gray_noise"
require_relative "scruby/ugen/hpf"
require_relative "scruby/ugen/hpz1"
require_relative "scruby/ugen/hpz2"
require_relative "scruby/ugen/hasher"
require_relative "scruby/ugen/henon_c"
require_relative "scruby/ugen/henon_l"
require_relative "scruby/ugen/henon_n"
require_relative "scruby/ugen/hilbert"
require_relative "scruby/ugen/i_env_gen"
require_relative "scruby/ugen/ifft"
require_relative "scruby/ugen/i_rand"
require_relative "scruby/ugen/impulse"
require_relative "scruby/ugen/in"
require_relative "scruby/ugen/in_feedback"
require_relative "scruby/ugen/in_range"
require_relative "scruby/ugen/in_rect"
require_relative "scruby/ugen/in_trig"
require_relative "scruby/ugen/index"
require_relative "scruby/ugen/index_in_between"
require_relative "scruby/ugen/index_l"
require_relative "scruby/ugen/info_u_gen_base"
require_relative "scruby/ugen/integrator"
require_relative "scruby/ugen/k2_a"
require_relative "scruby/ugen/key_state"
require_relative "scruby/ugen/key_track"
require_relative "scruby/ugen/klang"
require_relative "scruby/ugen/klank"
require_relative "scruby/ugen/lf_clip_noise"
require_relative "scruby/ugen/lf_cub"
require_relative "scruby/ugen/lfd_clip_noise"
require_relative "scruby/ugen/lfd_noise0"
require_relative "scruby/ugen/lfd_noise1"
require_relative "scruby/ugen/lfd_noise3"
require_relative "scruby/ugen/lf_gauss"
require_relative "scruby/ugen/lf_noise0"
require_relative "scruby/ugen/lf_noise1"
require_relative "scruby/ugen/lf_noise2"
require_relative "scruby/ugen/lf_par"
require_relative "scruby/ugen/lf_pulse"
require_relative "scruby/ugen/lf_saw"
require_relative "scruby/ugen/lf_tri"
require_relative "scruby/ugen/lpf"
require_relative "scruby/ugen/lpz1"
require_relative "scruby/ugen/lpz2"
require_relative "scruby/ugen/lag"
require_relative "scruby/ugen/lag2"
require_relative "scruby/ugen/lag2_ud"
require_relative "scruby/ugen/lag3"
require_relative "scruby/ugen/lag3_ud"
require_relative "scruby/ugen/lag_in"
require_relative "scruby/ugen/lag_ud"
require_relative "scruby/ugen/last_value"
require_relative "scruby/ugen/latch"
require_relative "scruby/ugen/latoocarfian_c"
require_relative "scruby/ugen/latoocarfian_l"
require_relative "scruby/ugen/latoocarfian_n"
require_relative "scruby/ugen/leak_dc"
require_relative "scruby/ugen/least_change"
require_relative "scruby/ugen/limiter"
require_relative "scruby/ugen/lin_cong_c"
require_relative "scruby/ugen/lin_cong_l"
require_relative "scruby/ugen/lin_cong_n"
require_relative "scruby/ugen/lin_exp"
require_relative "scruby/ugen/lin_pan2"
require_relative "scruby/ugen/lin_rand"
require_relative "scruby/ugen/lin_x_fade2"
require_relative "scruby/ugen/line"
require_relative "scruby/ugen/linen"
require_relative "scruby/ugen/local_buf"
require_relative "scruby/ugen/local_in"
require_relative "scruby/ugen/local_out"
require_relative "scruby/ugen/logistic"
require_relative "scruby/ugen/lorenz_l"
require_relative "scruby/ugen/loudness"
require_relative "scruby/ugen/mfcc"
require_relative "scruby/ugen/mantissa_mask"
require_relative "scruby/ugen/median"
require_relative "scruby/ugen/mid_eq"
require_relative "scruby/ugen/mod_dif"
require_relative "scruby/ugen/moog_ff"
require_relative "scruby/ugen/most_change"
require_relative "scruby/ugen/mouse_button"
require_relative "scruby/ugen/mouse_x"
require_relative "scruby/ugen/mouse_y"
require_relative "scruby/ugen/n_rand"
require_relative "scruby/ugen/node_id"
require_relative "scruby/ugen/normalizer"
require_relative "scruby/ugen/num_audio_buses"
require_relative "scruby/ugen/num_buffers"
require_relative "scruby/ugen/num_control_buses"
require_relative "scruby/ugen/num_input_buses"
require_relative "scruby/ugen/num_output_buses"
require_relative "scruby/ugen/num_running_synths"
require_relative "scruby/ugen/offset_out"
require_relative "scruby/ugen/one_pole"
require_relative "scruby/ugen/one_zero"
require_relative "scruby/ugen/onsets"
require_relative "scruby/ugen/osc"
require_relative "scruby/ugen/osc_n"
require_relative "scruby/ugen/p_sin_grain"
require_relative "scruby/ugen/pv_add"
require_relative "scruby/ugen/pv_bin_scramble"
require_relative "scruby/ugen/pv_bin_shift"
require_relative "scruby/ugen/pv_bin_wipe"
require_relative "scruby/ugen/pv_brick_wall"
require_relative "scruby/ugen/pv_chain_u_gen"
require_relative "scruby/ugen/pv_conformal_map"
require_relative "scruby/ugen/pv_conj"
require_relative "scruby/ugen/pv_copy"
require_relative "scruby/ugen/pv_copy_phase"
require_relative "scruby/ugen/pv_diffuser"
require_relative "scruby/ugen/pv_div"
require_relative "scruby/ugen/pv_hainsworth_foote"
require_relative "scruby/ugen/pv_jensen_andersen"
require_relative "scruby/ugen/pv_local_max"
require_relative "scruby/ugen/pv_mag_above"
require_relative "scruby/ugen/pv_mag_below"
require_relative "scruby/ugen/pv_mag_clip"
require_relative "scruby/ugen/pv_mag_div"
require_relative "scruby/ugen/pv_mag_freeze"
require_relative "scruby/ugen/pv_mag_mul"
require_relative "scruby/ugen/pv_mag_noise"
require_relative "scruby/ugen/pv_mag_shift"
require_relative "scruby/ugen/pv_mag_smear"
require_relative "scruby/ugen/pv_mag_squared"
require_relative "scruby/ugen/pv_max"
require_relative "scruby/ugen/pv_min"
require_relative "scruby/ugen/pv_mul"
require_relative "scruby/ugen/pv_phase_shift"
require_relative "scruby/ugen/pv_phase_shift270"
require_relative "scruby/ugen/pv_phase_shift90"
require_relative "scruby/ugen/pv_rand_comb"
require_relative "scruby/ugen/pv_rand_wipe"
require_relative "scruby/ugen/pv_rect_comb"
require_relative "scruby/ugen/pv_rect_comb2"
require_relative "scruby/ugen/pan2"
require_relative "scruby/ugen/pan4"
require_relative "scruby/ugen/pan_az"
require_relative "scruby/ugen/pan_b"
require_relative "scruby/ugen/pan_b2"
require_relative "scruby/ugen/part_conv"
require_relative "scruby/ugen/pause"
require_relative "scruby/ugen/pause_self"
require_relative "scruby/ugen/pause_self_when_done"
require_relative "scruby/ugen/peak"
require_relative "scruby/ugen/peak_follower"
require_relative "scruby/ugen/phasor"
require_relative "scruby/ugen/pink_noise"
require_relative "scruby/ugen/pitch"
require_relative "scruby/ugen/pitch_shift"
require_relative "scruby/ugen/play_buf"
require_relative "scruby/ugen/pluck"
require_relative "scruby/ugen/poll"
require_relative "scruby/ugen/pulse"
require_relative "scruby/ugen/pulse_count"
require_relative "scruby/ugen/pulse_divider"
require_relative "scruby/ugen/quad_c"
require_relative "scruby/ugen/quad_l"
require_relative "scruby/ugen/quad_n"
require_relative "scruby/ugen/rhpf"
require_relative "scruby/ugen/rlpf"
require_relative "scruby/ugen/radians_per_sample"
require_relative "scruby/ugen/ramp"
require_relative "scruby/ugen/rand"
require_relative "scruby/ugen/rand_id"
require_relative "scruby/ugen/rand_seed"
require_relative "scruby/ugen/record_buf"
require_relative "scruby/ugen/replace_out"
require_relative "scruby/ugen/resonz"
require_relative "scruby/ugen/ringz"
require_relative "scruby/ugen/rotate2"
require_relative "scruby/ugen/running_max"
require_relative "scruby/ugen/running_min"
require_relative "scruby/ugen/running_sum"
require_relative "scruby/ugen/sos"
require_relative "scruby/ugen/sample_dur"
require_relative "scruby/ugen/sample_rate"
require_relative "scruby/ugen/sanitize"
require_relative "scruby/ugen/saw"
require_relative "scruby/ugen/schmidt"
require_relative "scruby/ugen/scope_out"
require_relative "scruby/ugen/scope_out2"
require_relative "scruby/ugen/select"
require_relative "scruby/ugen/send_trig"
require_relative "scruby/ugen/set_reset_ff"
require_relative "scruby/ugen/shaper"
require_relative "scruby/ugen/sin_osc"
require_relative "scruby/ugen/sin_osc_fb"
require_relative "scruby/ugen/slew"
require_relative "scruby/ugen/slope"
require_relative "scruby/ugen/spec_centroid"
require_relative "scruby/ugen/spec_flatness"
require_relative "scruby/ugen/spec_pcile"
require_relative "scruby/ugen/spring"
require_relative "scruby/ugen/standard_l"
require_relative "scruby/ugen/standard_n"
require_relative "scruby/ugen/stepper"
require_relative "scruby/ugen/stereo_convolution2_l"
require_relative "scruby/ugen/subsample_offset"
require_relative "scruby/ugen/sum3"
require_relative "scruby/ugen/sum4"
require_relative "scruby/ugen/sweep"
require_relative "scruby/ugen/sync_saw"
require_relative "scruby/ugen/t2_a"
require_relative "scruby/ugen/t2_k"
require_relative "scruby/ugen/t_ball"
require_relative "scruby/ugen/t_delay"
require_relative "scruby/ugen/t_duty"
require_relative "scruby/ugen/t_exp_rand"
require_relative "scruby/ugen/t_grains"
require_relative "scruby/ugen/ti_rand"
require_relative "scruby/ugen/t_rand"
require_relative "scruby/ugen/t_windex"
require_relative "scruby/ugen/timer"
require_relative "scruby/ugen/toggle_ff"
require_relative "scruby/ugen/trig"
require_relative "scruby/ugen/trig1"
require_relative "scruby/ugen/trig_control"
require_relative "scruby/ugen/two_pole"
require_relative "scruby/ugen/two_zero"
require_relative "scruby/ugen/v_disk_in"
require_relative "scruby/ugen/v_osc"
require_relative "scruby/ugen/v_osc3"
require_relative "scruby/ugen/var_lag"
require_relative "scruby/ugen/var_saw"
require_relative "scruby/ugen/vibrato"
require_relative "scruby/ugen/warp1"
require_relative "scruby/ugen/white_noise"
require_relative "scruby/ugen/wrap"
require_relative "scruby/ugen/wrap_index"
require_relative "scruby/ugen/x_fade2"
require_relative "scruby/ugen/x_line"
require_relative "scruby/ugen/x_out"
require_relative "scruby/ugen/zero_crossing"
require_relative "scruby/ugen/replace_out"


require_relative "scruby/node"
require_relative "scruby/synth"
require_relative "scruby/bus"
require_relative "scruby/buffer"
require_relative "scruby/group"
require_relative "scruby/par_group"
require_relative "scruby/env"

require_relative "scruby/helpers"

include Scruby
