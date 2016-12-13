# Uncomment this line to define a global platform for your project
# platform :ios, '9.0'

require 'pathname'
REPO_ROOT_NAME = '.repo'

def FindRepoRoot(path)
  pwd = Pathname(path)
  if pwd.to_path == '.repo'
    return pwd
  end
  aimPath = nil
  pwd.entries.each { |x|
    if x.to_path == REPO_ROOT_NAME
      aimPath = pwd.join(x)
      break
    end
  }
  if aimPath != nil
    return aimPath
  else
    parentDir = pwd.dirname
    if parentDir.to_path == REPO_ROOT_NAME
      return nil
    end
    return FindRepoRoot(parentDir)
  end
end


REPO_ROOT = FindRepoRoot(Pathname.getwd).realpath


def FindAllSubPodspec(path)
  podspecs = []
  path.entries.each { |entry|
    if (entry.extname == '.podspec' || entry.extname=='.podspec.json')
        podspecs.push(path.join(entry))
    end
  }
  if podspecs.count != 0
    return podspecs
  else
    path.entries.each {  |entry|
      next if entry.to_path == "."
      next if entry.to_path == ".."
      if File.directory?(path.join(entry))
        subpath = path.join(entry)
        ps = FindAllSubPodspec(subpath)
        podspecs = podspecs + ps
      else
      end
    }
  end
  return podspecs
end

def LibPod(name)
  pod name , :path=>"../Libs/"+name
end

def DebugLibPod(name)
  pod name , :path=>"../Bizs/"+name, :configurations => ['Debug']
end

def BizPod(name)
  pod name , :path=>"../Bizs/"+name
end
DEBUG_PODS = [
  "YHMessageTest"
]
post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['ENABLE_BITCODE'] = 'NO'
    end
  end
end

target 'ChatDaily' do

  puts("工程根目录 #{REPO_ROOT}")

  podspecs = FindAllSubPodspec(REPO_ROOT.dirname)

  puts("全部本地模块 #{podspecs}")
  podspecs.each { |itor|
    name = File.basename(itor,".*")
    path = itor.relative_path_from(Pathname.pwd).dirname
    puts("pod name #{name} path #{path}")
    if not  name.include? "TestCase"
      if DEBUG_PODS.include? name
        pod(name, :path=>path, :configurations => ['Debug'])
      else
        pod(name, :path=>path)
      end
    end

  }


  #pod
  pod 'QBPopupMenu'
  pod 'ChameleonFramework'
  pod 'DateTools'
  pod 'YYModel'
  pod 'QBPopupMenu'
  pod 'CTFeedback'

#  pod 'ShareSDK3'
#  pod 'ShareSDK3/ShareSDKPlatforms/QQ'
#  pod 'ShareSDK3/ShareSDKPlatforms/SinaWeibo'
#  pod 'ShareSDK3/ShareSDKPlatforms/WeChat'

  target 'ChatDailyUITests' do
    inherit! :search_paths
    # Pods for testing
  end

end
