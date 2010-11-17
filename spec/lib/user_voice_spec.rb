require 'spec_helper'

describe UserVoice do
  
  it "should use I18n.locale as default lang" do
    I18n.stub :locale => :dummy
    subject.lang.should == :dummy
  end

  it "should use default lang in json" do
    I18n.stub :locale => :dummy
    subject.to_json.should == '{"lang":"dummy"}'
  end


end
