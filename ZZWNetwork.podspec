#
# Be sure to run `pod lib lint ZZWNetwork.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZZWNetwork'
  s.version          = '0.1.1'
  s.summary          = '网络库'


  s.description      = '基于AFNetWorking和苹果自带的网络框架封装的网络库' #库的详细描述


  s.homepage         = 'https://github.com/zhouzheren/ZZWNetwork'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'snail' => 'a595429717@163.com' } #作者名字、邮箱
  s.source           = { :git => 'https://github.com/zhouzheren/ZZWNetwork.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'ZZWNetwork/Classes/**/*'
  #s.public_header_files = 'Pod/Classes/**/*.h' #公开的头文件，如果没有公开，用户在用的时候可能引不到响应的头文件
  s.dependency 'AFNetworking', '~> 4.0.1' #需要依赖的三方库
end
