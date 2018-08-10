# sudoを使う
class Specinfra::Command::Debian::Base::Package
  class << self
    alias :__install__ :install
    def install(package, version=nil, option='')
      "sudo " + __install__(package, version, option)
    end

    alias :__remove__ :remove
    def remove(package, option='')
      "sudo " + __remove__(package, option)
    end
  end
end
