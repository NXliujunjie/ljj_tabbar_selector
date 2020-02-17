import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LjjTabbarSelector {
  static const MethodChannel _channel =
      const MethodChannel('ljj_tabbar_selector');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Widget tabbarWidget({
    ///标题
    @required Widget titleText,

    ///选择器数组
    @required List<Tab> tabBarTabsList,

    ///选择器数组
    @required List<Widget> tabBarViewList,

    ///选择器数组
    @required ValueChanged<int> selectItem,

    
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

  }) {
    return DefaultTabController(
        length: tabBarTabsList.length,
        initialIndex: initialIndex,
        child: Scaffold(
          appBar: AppBar(
            title: titleText,
            centerTitle: true,
            elevation: 0.0,
            backgroundColor: backgroundColor,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(itemSizeFont),
              child: Material(
                color: tabbarColor,
                child: TabBar(
                  indicatorColor: indicatorColor,
                  unselectedLabelColor: itemNormalColor,
                  labelColor: itemSelectorColor,
                  isScrollable: true,
                  indicatorWeight: indicatorWeight,
                  indicatorSize: indicatorSize,
                  tabs: tabBarTabsList,
                  onTap: (v) {
                    selectItem(v);
                  },
                ),
              ),
            ),
          ),
          body: TabBarView(
            physics: new NeverScrollableScrollPhysics(),
            children: tabBarViewList,
          ),
        ));
  }
}
