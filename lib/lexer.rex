
require "racc/parser"

module WmlAction

class WmlParser < Racc::Parser

options
    debug

macro
    OTAG    /\[(\w+)\]/
    CTAG    /\[\/(\w+)\]/
    ATTR    /(\w+)=/
    ANUMBER /-?\d+/
    ASTR    /"[^"]*"/
    AMACRO  /\{.+\}/
    APLAIN  /.+/

    BLANK   /[ \t]+/

rule

            /#{OTAG}/           { [:OTAG, match[1]] }
            /#{CTAG}/           { [:CTAG, match[1]] }
            /#{ATTR}/           { @state = :INATTR; [:ATTR, match[1]] }

    :INATTR /\n/                { @state = nil }
    :INATTR /#{BLANK}/
    :INATTR /#{ANUMBER}/        { [:ANUMBER, text.to_i] }
    :INATTR /#{ASTR}/           { [:ASTR, text] }
    :INATTR /#{AMACRO}/         { [:AMACRO, text] }
    :INATTR /_/                 { [:UNDERSC, text] }
    :INATTR /\+/                { [text,text] }
    :INATTR /#{APLAIN}/         { [:APLAIN, text] }

            /./
            /\n/

inner
end

end #module
