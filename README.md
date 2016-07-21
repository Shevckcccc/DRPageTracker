# DRPageTracker
DRPageTracker is a sample iOS class for tracking view controller didappear

## Installation

```
pod 'DRPageTracker'
``` 

That's all


## Usage

run your app(debug model) and check the output log:

```
UINavigationController 

HomeViewController 

UIInputWindowController 

PageViewController 

HomeViewController 

PageViewController 

HomeViewController 
...
```

## Notes

### 1. method overridden
If you already have a hack of `UIViewController#viewDidAppear` method, this pod maybe not work, please be careful.

### 2. call [super viewDidAppear:animated] in ChildViewController#viewDidAppear
Since the category is on UIViewController, it only changed the UIViewController's  viewDidAppear method(Base Class), the child UIViewController(who has implement their own viewDidAppear) if want to print log must call super viewDidAppear first 

```
// UserViewController

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated]; // must call
}
```


#中文版本

DRPageTracker 是一个用来追踪ViewController是否显示的库，用到了OC的runtime特性，比较轻量，对现有代码结构无影响

## 安装

```
pod 'DRPageTracker'
``` 

安装完运行即可看到效果，不需要有任何代码接入

## 使用

运行你的工程(debug模式下)，在App里面随便打开几个ViewController，然后你就可以在日志里面找到类似如下的内容:

```
UINavigationController 

HomeViewController 

UIInputWindowController 

PageViewController 

HomeViewController 

PageViewController 

HomeViewController 
...
```

## 需要注意的地方

### 1. 代码覆盖

如果你的代码中原先已经有UIViewController#viewDidAppear的hack方法了，再使用DRPageTracker也许会造成冲突，请谨慎使用

### 2. 子类方法需要主动调用[super viewDidAppear:animated]
DRPageTracker只实现了UIViewController的Category，所以如果是其子类调用的话，需要首先在viewDidAppear里面调用[super viewDidAppear:animated]方法，如果子类没有实现viewDidAppear方法，则无需任何处理

```
// UserViewController

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated]; // must call
}
```








