# WebShell-Traffic-Dataset
1、**Dataset** 

部分自建的 WebShell 流量数据集

主要WebShell工具包括：
- AntSword v2.1.14 https://github.com/AntSwordProject/antSword
- Behinder v3.0 Beta11 https://github.com/rebeyond/Behinder
- Godzilla v3.03 https://github.com/BeichenDream/Godzilla

文件命名方式：

phase1/2_操作系统类型_语言类型_WebShell管理工具类型

- phase1：Raw
- phase2：Obfuscation

仅供学习和参考。

2、**Sample** 

样例 WebShell 数据集

3、**ParseCap** 

解析Pcap流量的Docker-Compose环境 

主要环境包括：Zeek+Filebeat+Logstash

根据 https://github.com/certego/PcapMonkey 魔改
