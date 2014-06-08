#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.11
# from Racc grammer file "".
#

require 'racc/parser.rb'

#
# generated by racc
#
require 'action_lexer.rex'
require 'wml_action/action_section'
require 'wml_action/log'

module WmlAction
  class WmlActionParser < Racc::Parser

module_eval(<<'...end action_parser.y/module_eval...', 'action_parser.y', 49)
include Log

...end action_parser.y/module_eval...
##### State transition tables begin ###

racc_action_table = [
     4,     8,    14,    16,    17,    18,    29,    24,     4,    18,
    19,    22,    25,    26,    27,     4,     7,    21,     5,    30,
    31,    32 ]

racc_action_check = [
     6,     6,     6,     6,     6,     6,    19,    18,     0,    19,
     6,    18,    18,    18,    18,    15,     5,    15,     1,    23,
    27,    30 ]

racc_action_pointer = [
     6,    18,   nil,   nil,   nil,    16,    -2,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,    13,   nil,   nil,     3,     2,
   nil,   nil,   nil,    14,   nil,   nil,   nil,    10,   nil,   nil,
    17,   nil,   nil ]

racc_action_default = [
    -1,   -26,    -2,    -3,    -5,   -26,   -26,    33,    -4,    -6,
    -7,    -8,    -9,   -10,   -11,   -26,   -14,   -15,   -16,   -26,
   -12,   -13,   -17,   -18,   -19,   -20,   -21,   -26,   -24,   -25,
   -26,   -22,   -23 ]

racc_goto_table = [
     3,    12,    10,     6,     9,     1,    11,     2,    13,    15,
    23,   nil,   nil,   nil,    28,    20 ]

racc_goto_check = [
     3,     7,     6,     4,     5,     1,     3,     2,     8,     9,
    10,   nil,   nil,   nil,     7,     3 ]

racc_goto_pointer = [
   nil,     5,     7,     0,    -1,    -2,    -4,    -5,     2,     3,
    -8 ]

racc_goto_default = [
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil ]

racc_reduce_table = [
  0, 0, :racc_error,
  0, 14, :_reduce_none,
  1, 14, :_reduce_2,
  1, 15, :_reduce_3,
  3, 16, :_reduce_4,
  0, 17, :_reduce_5,
  2, 17, :_reduce_6,
  1, 18, :_reduce_none,
  1, 18, :_reduce_8,
  1, 18, :_reduce_none,
  1, 18, :_reduce_none,
  1, 18, :_reduce_11,
  2, 19, :_reduce_12,
  2, 19, :_reduce_13,
  1, 22, :_reduce_none,
  1, 22, :_reduce_none,
  1, 20, :_reduce_16,
  2, 20, :_reduce_17,
  2, 20, :_reduce_18,
  2, 20, :_reduce_19,
  2, 20, :_reduce_20,
  1, 23, :_reduce_21,
  2, 23, :_reduce_22,
  3, 23, :_reduce_23,
  2, 21, :_reduce_24,
  2, 21, :_reduce_25 ]

racc_reduce_n = 26

racc_shift_n = 33

racc_token_table = {
  false => 0,
  :error => 1,
  :OTAG => 2,
  :CTAG => 3,
  :MACRO => 4,
  "+" => 5,
  "-" => 6,
  :ATTR => 7,
  :APLAIN => 8,
  :ANUMBER => 9,
  :ASTR => 10,
  :UNDERSC => 11,
  :SLASH => 12 }

racc_nt_base = 13

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "OTAG",
  "CTAG",
  "MACRO",
  "\"+\"",
  "\"-\"",
  "ATTR",
  "APLAIN",
  "ANUMBER",
  "ASTR",
  "UNDERSC",
  "SLASH",
  "$start",
  "target",
  "wml_doc",
  "section",
  "contents",
  "content",
  "action",
  "attribute",
  "filter",
  "aop",
  "string_val" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

# reduce 1 omitted

module_eval(<<'.,.,', 'action_parser.y', 3)
  def _reduce_2(val, _values, result)
     log.debug "Found a target" 
    result
  end
.,.,

module_eval(<<'.,.,', 'action_parser.y', 5)
  def _reduce_3(val, _values, result)
     log.debug "Found a doc"; return WmlAction::ActionSection.new(name: "Global", subs: [val[0]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'action_parser.y', 7)
  def _reduce_4(val, _values, result)
     log.debug("Creating section #{val[0]}"); return WmlAction::ActionSection.new(name: val[0], content: val[1]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'action_parser.y', 9)
  def _reduce_5(val, _values, result)
     return [] 
    result
  end
.,.,

module_eval(<<'.,.,', 'action_parser.y', 10)
  def _reduce_6(val, _values, result)
     log.debug("Append #{val[1]} to #{val[0]}"); return val[0]? val[0].push(val[1]) : [val[1]] 
    result
  end
.,.,

# reduce 7 omitted

module_eval(<<'.,.,', 'action_parser.y', 13)
  def _reduce_8(val, _values, result)
     log.debug "Found a content subsection #{val[0]}" 
    result
  end
.,.,

# reduce 9 omitted

# reduce 10 omitted

module_eval(<<'.,.,', 'action_parser.y', 16)
  def _reduce_11(val, _values, result)
     log.debug "Found a macro #{val[0]}"; return WmlAction::ActionSection::Macro[val[0]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'action_parser.y', 18)
  def _reduce_12(val, _values, result)
     log.debug "Found a action section #{val[0]}:#{val[1]}"; return WmlAction::ActionSection::Action[val[1],val[0]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'action_parser.y', 19)
  def _reduce_13(val, _values, result)
     log.debug "Found a action macro #{val[0]}:#{val[1]}"; return WmlAction::ActionSection::Action[WmlAction::ActionSection::Macro[val[1]],val[0]] 
    result
  end
.,.,

# reduce 14 omitted

# reduce 15 omitted

module_eval(<<'.,.,', 'action_parser.y', 24)
  def _reduce_16(val, _values, result)
     log.debug "Found empty attribute: #{val[0]}"; return WmlAction::ActionSection::Attribute[val[0],''] 
    result
  end
.,.,

module_eval(<<'.,.,', 'action_parser.y', 25)
  def _reduce_17(val, _values, result)
     log.debug "Found plain attribute: #{val[0]}:#{val[1]}"; return WmlAction::ActionSection::Attribute[val[0],val[1]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'action_parser.y', 26)
  def _reduce_18(val, _values, result)
     log.debug "Found string attribute: #{val[0]}:#{val[1]}"; return WmlAction::ActionSection::Attribute[val[0],val[1]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'action_parser.y', 27)
  def _reduce_19(val, _values, result)
     log.debug "Found macro attribute: #{val[0]}:#{val[1]}"; return WmlAction::ActionSection::Attribute[val[0],val[1]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'action_parser.y', 28)
  def _reduce_20(val, _values, result)
     log.debug "Found numeric attribute: #{val[0]}:#{val[1]}"; return WmlAction::ActionSection::Attribute[val[0],val[1]]  
    result
  end
.,.,

module_eval(<<'.,.,', 'action_parser.y', 30)
  def _reduce_21(val, _values, result)
     return " #{val[0]}" 
    result
  end
.,.,

module_eval(<<'.,.,', 'action_parser.y', 31)
  def _reduce_22(val, _values, result)
     return " "+val[0]+" "+val[1] 
    result
  end
.,.,

module_eval(<<'.,.,', 'action_parser.y', 32)
  def _reduce_23(val, _values, result)
     return val[0] + "+" + val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'action_parser.y', 34)
  def _reduce_24(val, _values, result)
     log.debug "Found an attribute filter #{val[1]}"; return WmlAction::ActionSection::Filter[*val[1]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'action_parser.y', 35)
  def _reduce_25(val, _values, result)
     log.debug "Found a macro filter #{val[1]}"; return WmlAction::ActionSection::Filter[val[1],true] 
    result
  end
.,.,

def _reduce_none(val, _values, result)
  val[0]
end

  end   # class WmlActionParser
  end   # module WmlAction


