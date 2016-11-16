# Uncomment this line to define a global platform for your project
# platform :ios, '9.0'

def LibPod(name)
  pod name , :path=>"../Libs/"+name
end
def BizPod(name)
  pod name , :path=>"../Bizs/"+name
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['ENABLE_BITCODE'] = 'NO'
    end
  end
end

target 'ChatDaily' do
  LibPod("EKInputExtention")
  LibPod("DZProgrameDefines")
  LibPod("DZCache")
  LibPod("StyleSheet")
  LibPod("DZKeyboardAdjust")
  LibPod("DZKeyboardManager")
  LibPod("DZChatUI")
  LibPod("DZAdjustFrame")
  LibPod('DZAudio')
  LibPod('ElementKit')
  LibPod('DZFileUtils')
  LibPod('DZLogger')
  LibPod('YHMapLocation')
  LibPod('DZAlertPool')
  LibPod('YYText')
  LibPod('DZCDNFiles')
  LibPod('MWPhotoBrowser')
  LibPod('DZScene')
  LibPod('MRLogicInjection')
  LibPod('DZFixImage')
  LibPod('DZLKDataBasePool')
  LibPod('DZViewControllerLifeCircleAction')
  LibPod('DZURLRoute')
  LibPod('DZShyNavigationBar')
  LibPod('DZObjectProxy')

  BizPod('ChatDailyMain')
  


  #pod
  pod 'QBPopupMenu'
  pod 'ChameleonFramework'
  pod 'DateTools'
  pod 'YYModel'
  pod 'QBPopupMenu'

  target 'ChatDailyUITests' do
    inherit! :search_paths
    # Pods for testing
  end

end
