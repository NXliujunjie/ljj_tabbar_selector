

# ljj_tabbar_selector

# 导航选择器
![image](https://github.com/NXliujunjie/ljj_tabbar_selector/blob/master/test1.png)

# 使用说明

# 导入:
```
  dependencies:
  ljj_tabbar_selector:
    git:
      url: https://github.com/NXliujunjie/ljj_tabbar.git
```


# 使用示例:
```
 class _MyHomePageState extends State<MyHomePage> {
  List<Tab> listOne = List();
  List<Widget> listTwo = List();

  @override
  void initState() {
    super.initState();

    for (var i = 0; i < 20; i++) {
      listOne.add(Tab(text: "第$i个"));
      listTwo.add(Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
  
    return LjjTabbarSelector.tabbarWidget(
          titleText: Text("导航选择器"),
          tabBarTabsList: listOne,
          tabBarViewList: listTwo,
          selectItem: (index) {
            print(index);
          });
  }
}

```

# 自定义属性
```
    ///APPBar 背景色
    Color backgroundColor = Colors.blue,

    ///AppBar高度
    double itemSizeFont = 64,

    ///tabbar颜色
    Color tabbarColor = Colors.white,
 
    ///默认选中第几个
    int initialIndex = 0,

    ///指示器颜色
    Color indicatorColor = Colors.blue,

    ///指示器高度
    double indicatorWeight = 2,

    ///指示器宽度, 值为tab或lable
    TabBarIndicatorSize indicatorSize = TabBarIndicatorSize.tab,

    ///tabbar 选择条字体的颜色 选中状态
    Color itemSelectorColor = Colors.blue,

    ///tabbar 选择条字体的颜色 未选中状态
    Color itemNormalColor = Colors.grey,
    ```
