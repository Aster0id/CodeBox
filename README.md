

#党支部活动 
##version 1.2.0  build 11

# 大家加油！！！！


---
##项目结构及类的使用说明

###目录结构

- AppDelegate

	</br>
- Config <项目的配置文件夹> 

	- Localizable.strings <国际化文件, 定义了项目中出现的中文提示>
	- `TFConfigFile` <项目中用到的一下配置信息, 如AppKey,Version等内容>
	- `TFNetworkConst` <Application的网络配置文件>
	- TFIMConfigManger <Pomelo路由地址>
	
	</br>
- General <公用类和方法，包括工程内ViewController,UITableViewCell基类(Base)，公用Category(Category)，公用UI组件(CustomUI)，公用辅助方法(Helper)和宏定义(Marco)>


	- CustomUI <通用的UI类>
	
	- <h4>Helper</h4>
	
		1. chineseToPinyin <汉字转换成拼音>
		
		- `TFFilterFunction`<过滤模块管理, 包括**<font color="#FF0000">"根据权限过滤首页显示的模块""根据权限过滤发布列表显示的模块""根据权限过滤审核列表显示的模块"</font>>**></br>
		
		- <权限管理> </br>
		`TFAuthorizationManager` 
		
		- <用户对Application的一些配置管理, 包括**<font color="#FF0000">"Application字号大小"</font>>**</br> 
		`TFApplicationConfigHelper` 
		
		- <本地通知管理></br>
		`TFLocalNotificationHelper` 
		
		- <通用方法管理, 包括**<font color="#FF0000">"回到首页"</font>**> </br>
		`TFApplicationHelper`
		
		- <文件管理></br>
		`TFFileManager` 
		
		- <多媒体管理, 包括**<Font color="#FF0000">"调用摄像头拍照/录视频"、"播放语音"</Font>**></br>
		`TFMediaManager` `TFIMSystemSoundPlayer`
		
		- <Keychain管理, 包括**<Font color="#FF0000">在Keychain文件中存储用户名、密码、用户ID及清空Keychain文件</font>**> </br>
		`TFKeychainHelper`
		
		- TFNetworking <网络请求类> </br>
		
		- <消息中心管理, 包括**<Font color="#FF0000">在Keychain文件中存储用户名、密码、用户ID及清空Keychain文件</font>**> </br>
		`TFNotificationHelper`
		
		- <UserDefault管理, 包括**<Font color="#FF0000">在UserDefault文件中存储用户信息及Application设置信息</font>**> </br>
		`TFUserDefaultsHelper`
		
				
	</br>
- Sections <不同程序单元。如登录，设置等等。其下又可以按照功能分成不同的子目录：当前单元使用的自定义UI组件，管理类，数据模型和ViewController等等>

- Modal <公用数据模型>

- Service

- Vendors <第三方库>

- Resources <资源类>

- Images.xcassets

