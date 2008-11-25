require File.join( File.expand_path(File.dirname(__FILE__)), '..',"helper")
require "named_arguments"
require 'osc'

require "#{SCRUBY_DIR}/../scruby"

describe 'Lib' do
  
  it "should instantiate and encode" do
    expected = [ 83, 67, 103, 102, 0, 0, 0, 1, 0, 1, 4, 104, 101, 108, 112, 0, 2, 67, -36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 6, 83, 105, 110, 79, 115, 99, 2, 0, 2, 0, 1, 0, 0, -1, -1, 0, 0, -1, -1, 0, 1, 2, 6, 83, 105, 110, 79, 115, 99, 2, 0, 2, 0, 1, 0, 0, -1, -1, 0, 0, -1, -1, 0, 1, 2, 12, 66, 105, 110, 97, 114, 121, 79, 112, 85, 71, 101, 110, 2, 0, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 6, 83, 105, 110, 79, 115, 99, 2, 0, 2, 0, 1, 0, 0, -1, -1, 0, 0, -1, -1, 0, 1, 2, 12, 66, 105, 110, 97, 114, 121, 79, 112, 85, 71, 101, 110, 2, 0, 2, 0, 1, 0, 2, 0, 2, 0, 0, 0, 3, 0, 0, 2, 0, 0 ].pack('C*')
    SynthDef.new(:help){ (SinOsc.ar() + SinOsc.ar()) * SinOsc.ar() }.encode.should == expected
  end
  
end