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

数据集组合方式：

<img width="356" alt="image" src="https://user-images.githubusercontent.com/17445557/159203487-c09d11ae-051a-4569-a989-e4a18f6daa43.png">


仅供学习和参考。

2、**Sample** 

样例 WebShell 数据集

3、**ParseCap** 

解析Pcap流量的Docker-Compose环境 

主要环境包括：Zeek+Filebeat+Logstash

根据 https://github.com/certego/PcapMonkey 魔改

PCAP---->LOG大致流程：

<img width="322" alt="image" src="https://user-images.githubusercontent.com/17445557/159203505-b261bb63-1eef-4b45-a89b-7e532741fad1.png">

<img width="306" alt="image" src="https://user-images.githubusercontent.com/17445557/159203530-59b608b6-5a5b-406f-b6d5-748e5ccbe1df.png">

