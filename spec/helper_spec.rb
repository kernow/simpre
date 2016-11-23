require "spec_helper"
require "rails"

class TestClass
end

class TestClassPresenter < Simpre::Presenter
end

describe Simpre::Helper do
  include Simpre::Helper

  describe "#decorate" do
    context "decorating a single object" do
      subject { decorate TestClass.new }

      it "decorates the class" do
        expect(subject).to be_an_instance_of TestClassPresenter
      end

      it "returns the original object when decorating a presenter" do
        expect(decorate(subject)).to be_an_instance_of TestClassPresenter
      end
    end

    # context 'decorating a collection of objects' do
    #
    # end
    #
    # context 'decorating a collection object' do
    #
    # end
  end
end
