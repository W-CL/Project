-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2018-10-05 22:26:23
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bick`
--

-- --------------------------------------------------------

--
-- 表的结构 `bk_admin`
--

CREATE TABLE IF NOT EXISTS `bk_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `name` varchar(30) DEFAULT NULL COMMENT '管理员名称',
  `password` char(32) DEFAULT NULL COMMENT '管理员密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- 转存表中的数据 `bk_admin`
--

INSERT INTO `bk_admin` (`id`, `name`, `password`) VALUES
(12, 'admin', '15eed4d30e4e0fa9dd36f96237b1024c'),
(20, 'admin123456', 'e10adc3949ba59abbe56e057f20f883e'),
(23, 'adminlink', '97a94cde3737c25a976e687d59acf65c');

-- --------------------------------------------------------

--
-- 表的结构 `bk_article`
--

CREATE TABLE IF NOT EXISTS `bk_article` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '文章ID',
  `title` varchar(60) NOT NULL COMMENT '文章标题',
  `keywords` varchar(100) NOT NULL COMMENT '关键字',
  `desc` varchar(255) NOT NULL COMMENT '描述',
  `author` varchar(30) NOT NULL COMMENT '作者',
  `thumb` varchar(160) NOT NULL COMMENT '缩略图',
  `content` text NOT NULL COMMENT '内容',
  `click` mediumint(9) NOT NULL DEFAULT '0' COMMENT '点击数',
  `praise` mediumint(9) NOT NULL DEFAULT '0' COMMENT '点赞数',
  `rec` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1:为推荐,0为不推荐',
  `time` int(10) NOT NULL COMMENT '发布时间',
  `cateid` mediumint(9) NOT NULL COMMENT '所属栏目',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='文章' AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `bk_article`
--

INSERT INTO `bk_article` (`id`, `title`, `keywords`, `desc`, `author`, `thumb`, `content`, `click`, `praise`, `rec`, `time`, `cateid`) VALUES
(1, '子弹传球：北京-香港4000多公里单车寻爱之旅', '4000多公里、寻爱', '单车寻爱之旅', '子弹传球', '/bick/public\\uploads/20181005\\b2d0d644791c9d23aac36d7e884b4b36.jpeg', '<p style="margin-top: 0px; margin-bottom: 25px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; line-height: 2.1em; font-family: 宋体; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(244, 244, 244);">（本文作者：子弹传球）</p><p style="margin-top: 0px; margin-bottom: 25px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; line-height: 2.1em; font-family: 宋体; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(244, 244, 244);">《有些事现在不做，一辈子都不会做了》这首歌里面有一句歌词是这样唱的：“想像你的孙子孙女充满光的瞳孔，正等着你开口等着你说，你最光辉的一次传说”。</p><p><span style="color: rgb(102, 102, 102); font-family: 宋体; font-size: 14px; background-color: rgb(244, 244, 244);">这是我做过的一件既疯狂又有意义的事。 回到北京已经数月，一直想要把2012年夏天骑车的故事写下来，把路上有意思的见闻与感受写下来，写给自己看，也写给喜爱运动的朋友们看。</span><br style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(244, 244, 244);"/><br style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(244, 244, 244);"/><strong style="margin: 0px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); font-family: 宋体; white-space: normal; background-color: rgb(244, 244, 244);">北京-香港&nbsp;单车寻爱之旅<br style="margin: 0px; padding: 0px;"/>&nbsp;<br style="margin: 0px; padding: 0px;"/>第一章 - 起</strong><br style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(244, 244, 244);"/><span style="color: rgb(102, 102, 102); font-family: 宋体; font-size: 14px; background-color: rgb(244, 244, 244);">&nbsp;</span><br style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(244, 244, 244);"/><span style="color: rgb(102, 102, 102); font-family: 宋体; font-size: 14px; background-color: rgb(244, 244, 244);">2010年夏天，我走出了大学校园。在那段难舍的毕业季，我曾经无数次想象过要用“骑车上高原”的毕业旅行为大学生涯画上句号。偏偏在那段时间，我报考的体育新闻专业研究生止步在了最后的复试环节。慌了阵脚的我放弃了毕业旅行计划，一头扎进了求职的大潮中。凭借着大学期间参加橄榄球比赛的宝贵经历，我进入了一家高度发达的体育联盟工作，从此真正地与体育事业密不可分。</span><br style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(244, 244, 244);"/></p><p style="margin-top: 0px; margin-bottom: 25px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; line-height: 2.1em; font-family: 宋体; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(244, 244, 244); text-align: center;"><img src="http://www.700bike.com/upload/2013/09/201309300525073616.jpeg" alt="" style="margin: 10px 0px; padding: 3px; border: 0px solid rgb(221, 221, 221); vertical-align: baseline; max-width: 780px; height: auto; background: none;"/><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 25px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; line-height: 2.1em; font-family: 宋体; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(244, 244, 244);">两年的工作时光匆匆流过，现在回想这段时期也许是我人生中最宝贵的阶段。在这里我从同事、前辈们身上学习知识，在上下班路上坚持骑车锻炼。使我明确了追求体育的人生目标，更重要的是，我遇到了生命中最重要的她。这便是她，我一生最爱的人。</p><p style="margin-top: 0px; margin-bottom: 25px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; line-height: 2.1em; font-family: 宋体; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(244, 244, 244); text-align: center;"><img src="http://www.700bike.com/upload/2013/09/201309300525277893.jpeg" alt="" style="margin: 10px 0px; padding: 3px; border: 0px solid rgb(221, 221, 221); vertical-align: baseline; max-width: 780px; height: auto; background: none;"/><br style="margin: 0px; padding: 0px;"/></p><p><br style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(244, 244, 244);"/><span style="color: rgb(102, 102, 102); font-family: 宋体; font-size: 14px; background-color: rgb(244, 244, 244);">我们是大学同学，不在同一个学院，四年间互不相识也未曾见过面，参加工作后才走到了一起。2012年由于特殊原因，我离开了深爱的橄榄球事业，这时的她也已在香港研究生毕业后工作满一年。长时间的异地和居住在香港的水土不服，让她产生了回北京的念头。于是在安置好下一份工作的去处之后，我做了一个决定：骑自行车去香港把她接回来。她听了之后非但没有高兴，反而发起了脾气。原因是担心我在骑车过程中发生危险，毕竟是4000多公里的独自旅程。</span><br style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(244, 244, 244);"/><span style="color: rgb(102, 102, 102); font-family: 宋体; font-size: 14px; background-color: rgb(244, 244, 244);">&nbsp;</span><br style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(244, 244, 244);"/></p><p style="margin-top: 0px; margin-bottom: 25px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; line-height: 2.1em; font-family: 宋体; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(244, 244, 244);">过去两年多以来，每天30多公里地骑着、积累着，这不仅点燃了我骑车去香港的念头，也在体能方面给了我极大的信心。我相信，只要按照严格的计划，劳逸结合得当，一定能完成这次骑行。在制定了完整的行程计划和做足了充分准备之后，我终于在7月底征得了她和双方父母的同意，可以出发了。</p><p style="margin-top: 0px; margin-bottom: 25px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; line-height: 2.1em; font-family: 宋体; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(244, 244, 244); text-align: center;"><img src="http://www.700bike.com/upload/2013/09/201309300525424172.jpeg" alt="" style="margin: 10px 0px; padding: 3px; border: 0px solid rgb(221, 221, 221); vertical-align: baseline; max-width: 780px; height: auto; background: none;"/><br style="margin: 0px; padding: 0px;"/></p><p><br style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(244, 244, 244);"/><span style="color: rgb(102, 102, 102); font-family: 宋体; font-size: 14px; background-color: rgb(244, 244, 244);">出发之前我对这一路南下途径的城市和线路做了研究，根据路况难度、天气、沿途景观、补给以及住宿等因素，我从两条备选的方案中最终选择了蓝线，并制定了详细的行程表。虽然舍近求远，但沿海路段中的补给和安全性是更好的，这也大大降低了家人的担心。</span><br style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(244, 244, 244);"/><br style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(244, 244, 244);"/></p><p style="margin-top: 0px; margin-bottom: 25px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; line-height: 2.1em; font-family: 宋体; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(244, 244, 244);">蓝线全长4000公里，耗时28天.经北京-天津-沧州-德州-济南-泰安-临沂-宿迁-淮安-南京-溧阳-湖州-绍兴-宁波-台州-温州-福鼎-福安-宁德-福州-莆田-泉州-漳州-云霄-潮州-汕头-陆丰-惠东-深圳罗湖关口。</p><p style="margin-top: 0px; margin-bottom: 25px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; line-height: 2.1em; font-family: 宋体; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(244, 244, 244); text-align: center;"><img src="http://www.700bike.com/upload/2013/09/201309300526047935.jpeg" alt="" style="margin: 10px 0px; padding: 3px; border: 0px solid rgb(221, 221, 221); vertical-align: baseline; max-width: 780px; height: auto; background: none;"/><br style="margin: 0px; padding: 0px;"/></p><p><span style="color: rgb(102, 102, 102); font-family: 宋体; font-size: 14px; background-color: rgb(244, 244, 244);">&nbsp;</span><br style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(244, 244, 244);"/></p><p style="margin-top: 0px; margin-bottom: 25px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; line-height: 2.1em; font-family: 宋体; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(244, 244, 244);">手机里存着每日的行程安排，我那时信心满满，虽然预想到了路上会出现“计划赶不上变化”的情况，但怎么也想不到有五股台风也在悄悄地酝酿着，更想不到会有三个命中注定的朋友会和我走到一起。</p><p><br/></p>', 29, 0, 0, 1538741675, 10),
(2, '全地形骑游利器 UCC RIDGE 1 Gravel bike', '全地形', '全地形骑游', ' Avalon', '/bick/public\\uploads/20181005\\c54fa0be7dd482eab44acdb92f2af872.jpg', '<p style="margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px; word-wrap: break-word; line-height: 30px; color: rgb(67, 67, 67); font-family: " microsoft="" font-size:="" white-space:="" background-color:="" text-indent:="">在今年年初，UCC就推出了限量版Gravel Bike THOKMAY（中文名为托克米，拓展阅读：<a href="http://www.biketo.com/product/37386.html" target="_blank" title="《UCC THOKMAY公路探险车的诞生记》" style="cursor: pointer; color: rgb(0, 112, 192);">《UCC THOKMAY公路探险车的诞生记》</a>），是国内自主品牌首款Gravel&nbsp;Bike整车。而这辆RIDGE 1就是UCC第一款量产版GRAVEL车型，使用THOKMAY同款车架，但稍微降低了配置，使售价更加亲民。</p>', 17, 0, 0, 1538742879, 5),
(3, '剁手清单：狂暴的骑游党，爆改Specialized Diverge Base', '爆改', '爆改Specialized Diverge Base', '超线程豇豆男', '/bick/public\\uploads/20181005\\9e39706413185559f8904b789f765859.jpg', '<p><span style="font-family: arial, helvetica, sans-serif;">顺应“瓜否（Gravel）”潮流，大家都应该拥有一台可以到处去的公路车，所谓的Gravel Bike（全地形公路车），可以理解成：“几何舒适不激进而又轻巧的700C，而且能装货架挡泥板，甚至宽胎”（公山？公马？山公？）。这种车正最适合我们城市骑行者的需求，多数铺装路骑行，少量郊外骑行，偶尔旅个游。</span></p><p><span style="font-family: arial, helvetica, sans-serif;"></span></p><p>整车重量8.17kg，除了原装前叉外，没有碳件，也没使用特别的壕件。</p><p><br/></p><p>公路车的改装思路其实很简单，确定车架之后，动刀三大块：轮组、套件、把组套。至于其他细节，在安装的过程中再安排。</p><p><br/></p><p>当然，零件能买就买最好的，例如线管建议用盒装JW ROAD PRO，螺丝尽量替换钛螺丝之类的。&nbsp;</p><p><br/></p><p>买新不买旧，采购了近日热销的SRAM Apex 1单盘油碟套件，操作简单容易，油碟手感优异，最重要是，颜值很高。但套件里原配的牙盘、飞轮和后拨都是很重的，想到自己使用强度不高，正好有闲置的替代零件，就换上了。</p><p><br/></p><p>对于齿比，适合自己才是最好的，以铺装路骑行为主，44T单盘+11-32T飞轮足够在城市内驰骋了。</p><p><br/></p><p>轮组方面，综合考虑后，并没有上碳刀，毕竟日常使用，耐用低维护最重要，中低框轻量化铝刀是我的菜。正巧逛购物网站发现自编商家推出了此款小刀圈的真空圈铝刀，考虑片刻就下单了，完全符合我的需求。同时外胎宽窄也有讲究，个人经验28C最适合日常骑游，速度与舒适的完美平衡。</p><p><br/></p><p>把组套，也就是经常说的“三件套”，指的弯把+把立+座管，我个人观点就是——买你买得起最贵的，无论重量还是强度，甚至滤震，大品牌好的设计永远都是走在前列的。</p><p><br/></p><p>再补充一点细节，把带+坐垫+脚踏这三件则是个人喜好的发挥点，毕竟这是三个直接接触身体的零件，建议多试用本地车友的车，或者前往实体店体验了再购买，我基本上每一台车都是一样的此三件。</p>', 26, 0, 0, 1538743102, 5),
(4, '向自然再进一步，UCC RIDGE开启无限可能', 'UCC', 'Gravel Bike几何UCC RIDGE “山脊”的车架有区别于一般的公路车。', '美骑网编辑中心', '/bick/public\\uploads/20181005\\296fa1441882ff9cb39949ff9eca46c2.jpg', '<p>Gravel的灵魂——Gravel Bike几何</p><p><br/></p><p>UCC RIDGE “山脊”的车架有区别于一般的公路车，“山脊”已经完全跳出了传统公路车的设计思路，在追求长途的舒适性、复杂路况下的可玩性的路上越走越远。出色的稳定性和长途的舒适感，让“山脊”注定成为了真正的全能王，也赋予了“山脊”出色的操控乐趣。</p><p><br/></p>', 2, 0, 0, 1538743906, 5),
(5, '29er竞技旗舰 道卡斯 SWOOP 29 碳纤维山地车', '碳纤维', '碳纤维山地车', 'Kent', '/bick/public\\uploads/20181005\\b84a3316933c0bcb1d37de66a9c0c3d5.jpg', '<p>道卡斯（TAOKAS），是台湾大甲旧地名，由来正是平埔族道卡斯人的聚众部落，他们称此地为“道卡斯”，由于方言发音极类似中文“大甲”，所以地名后来才改为大甲。300年前道卡斯的先辈用他们勤劳的双手，开垦和征服了这块土地。而30多年前台湾野宝科技公司在大甲成立并传承道卡斯精神，制造自行车最重要的灵零魂构件——车架。</p><p><br/></p><p>作为以山地车起家的品牌，道卡斯早已使用NJW无皱褶成型技术展现出自身在车架制造领域的造诣，而现时最顶级版本硬尾XC山地车SWOOP 29在实际路面骑行表现也让人充满期待。</p><p><br/></p>', 0, 0, 1, 1538744187, 4),
(6, 'MASH发布旗下首款独立设计车架 重量感人', '首款', ' 重量感人', '美骑网编辑中心', '/bick/public\\uploads/20181005\\b6db249dc3475b8bdf6a45866ee51b36.jpg', '<p>MASH作为街头自行车文化的领军人物，在过去8年里和Cinelli合作了多款产品，并且被来自全球各地的车手所青睐。而今年MASH终于推出了自主设计生产的车架组——MASH STEEL SS。作为MASH第一款完全自主设计生产的车架，SS充分体现了品牌的街头基因，可以满足城市车手的多种需求。</p>', 1, 0, 0, 1538744351, 2),
(7, '骑行改变生活 5个理由让你爱上骑车', '改变', '爱上骑车', 'Kelly O’Mara', '/bick/public\\uploads/20181005\\2507e464886c6f32866f8fda589f4c61.gif', '<p>1.享受你的通勤骑行</p><p><br/></p><p>如果你想每天骑车，但是时间紧迫，那么最合乎理想的方法之一就是把它融入到你的生活安排当中，成为你日常通勤的一部分。“与健身房锻炼不同，自行车很容易就能和日常生活相结合。”Nick Cavill说道。骑车往返办公室会节省几分钟的时间。美国波特兰市的骑行者们每周的骑行时间至少为两个半小时，短途的骑行占据了其中大部分的时间。但如果你上下班的路程真的很远，你可以将骑行纳入到交通方式的一部分。当然，如果可以的话，最近流行的电助力自行车也是个不错的选择。</p><p><br/></p><p><br/></p><p><br/></p><p>2.磨练你的头脑</p><p><br/></p><p>一旦你养成了骑车上下班的习惯，你就会对未来发生的事有了更完善的准备。比如在周末，没必要使用汽车的情况下，你可以通过骑车更快更便捷的完成事情。相关研究发现，每天的锻炼会让你活力充沛，减少疲劳。即使是一次短短30分钟的运动，也会改善你的反应时间，记忆力，激发你的创造灵感。</p><p><br/></p><p><br/></p><p><br/></p><p>“骑车是我推荐的最好的运动之一。”理疗师Corey Kunzer说道。骑行有助于缓解关节的压力，同时也能减轻心理焦虑和抑郁。通过相关调查问卷我们能发现，那些每天骑车上下班的男性的整体心理健康会得到较好的改善。</p><p><br/></p><p>3.更棒的性生活</p><p><br/></p><p>通过调查每周锻炼六到七天的男性发布的自我报告表明，他们的性欲望高于或远远高于平均水平（女性的性欲望也有增加，但没有那么剧烈）。</p><p><br/></p><p><br/></p><p><br/></p><p>运动已经被证明会在某种程度上引起性冲动，减少性功能障碍，或者至少其中也有一定原因。太舒适的环境会降低男性的睾酮水平，但是仅仅20分钟的剧烈运动就会让女性对性更加敏感。</p><p><br/></p><p>4.抵消过量饮食带来的不良影响</p><p><br/></p><p>我们常常都会幻想，如果每天想吃什么就吃什么，体重却不会增加，那该有多好啊！算了吧，快醒醒，就算你艰苦的锻炼，仍然不能让你再多吃一个甜甜圈。但是，每天的骑车锻炼可以帮助你放松限制饮食的要求。</p><p><br/></p><p>骑行改变生活 5个理由让你爱上骑车</p><p><br/></p><p>巴斯大学的研究人员进行了一项实验，两组男性进行大量的运动锻炼，但只有其中一组是被要求每天坚持的。尽管摄入了同样多的卡路里，考虑到运动所消耗的热量后，每天严格锻炼的一组人抵消了暴饮暴食带来的不良影响，例如高血糖以及不健康的代谢变化。</p><p><br/></p><p>“日常锻炼之所以如此有用，其中的一个原因就是它能让我们的肌肉成为食物的‘缓冲物’。”这项研究的作者，巴斯大学健康科学教授Dylan Thomas说道。“当你使用你的肌肉时，它们会把碳水化合物和脂肪储备分解掉。”</p><p><br/></p><p>5.延长寿命</p><p><br/></p><p>骑行通勤不仅能让你生活更健康快乐，年复一年的坚持骑车还会让你更加长寿。在挪威，一项大型的研究通过调查一群70多和80多的老年男性发现，与不做任何体育活动的男性相比，每天30分钟的锻炼能使这些男性的寿命延长5年。</p><p><br/></p><p>另一项在中国台湾研究，调查了40多万成年人，询问了他们锻炼的时间，并对回答者进行了长达8年的跟踪调查。结果发现，每天仅仅15分钟的锻炼就会让他们的预期寿命增加3年。在调查员开始这项研究的时候，这些人当中没有一个是年轻人，大多数人也没有难以置信的运动能力。所以，现在开始还并不是太晚。</p><p><br/></p>', 1, 0, 0, 1538744649, 10),
(8, '学会这5招 日行160公里不是梦', ' 日行160公里', '日行160公里不是梦', 'Rob Mortlock', '/bick/public\\uploads/20181005\\f3778fba029c74b05f3beccf039a0b70.jpg', '<p>对于许多公路车手来说，集中精力完成160km不间断的骑行，虽然听起来有些困难，但也不算太难，单飞或者组队都是不错的选择。</p><p><br/></p><p>对于能力稍强的车手来说，160km的骑行不过是他们每周日都会进行的常规活动。但对于能力稍弱的车手，一次骑行160km就是对体能的极大挑战，往往难以承受。</p><p><br/></p><p>当然，大部分骑友的能力介于这两者之间，认为80km-100km是比较舒适并易于接受的骑行距离，他们并不满足于此，也想骑得更远。接下来介绍的训练指南就是为这些车手量身打造的。</p><p><br/></p><p>从100km到160km的跨度有多大？你或许能轻易的完成，又或许只能带着淡淡的忧伤回家，谁知道呢？</p><p><br/></p><p>现在让我们来看看影响你延长骑行里程数的因素，了解这些能让你更好地为160km的骑行做好充足的准备，让它成为一个令人愉快并可以实现的目标。我们整理出了五个部分，这对你突破距离阻碍有很大帮助。</p><p><br/></p><p>一、为160km的目标做训练</p><p><br/></p><p>在人们有了新的目标的时候，普遍的都会关注身体训练，还有很多人认为在两周内骑得越多越好。但这并不是最好的办法，我们需要的是更加“智能”地训练。这意味着我们要在正确的时间做正确的事，寻求达到训练效果最大化的方法。</p><p><br/></p><p>我们与职业教练奥利弗•罗伯茨（Oliver Roberts）一起制定了一系列骑行训练计划，下面三点是你需要注意的。</p><p><br/></p><p>1.因地制宜：你将要进行的160km骑行是否多山？反正多爬山总是没错的。如果你是“见坡死”的那种车友，你就必须对爬坡能力进行针对性训练。在很多情况下，160km平坦的旅程可比100km的翻山越岭要简单得多。</p><p><br/></p><p>2.耐力：尝试不间断地骑行更长的时间，而不是只关注骑了多远。试着在低强度的骑行状态下保持更长时间。如果你3小时的平均时速是24km/h，你觉得可以坚持6个小时吗？如果你能舒适的骑4•4.5小时，你就可以考虑一下160km的目标了。</p><p><br/></p><p>3.休息：这是非常重要的一点。在训练周中安排恢复项目，并确保正确的休息。要保持两条腿不断的运动，但也不要过度疲劳。</p><p><br/></p><p>二、努力接近160km的目标</p><p><br/></p><p>无论现在你的目标仅仅是追求距离增加4km，又或者是下定决心完成整段旅程，你的努力和付出都将是最重要的。</p><p><br/></p><p>在160km的骑行中，你不能将自己的全部力气过早使出来，那样的话最后1/3就很悲催了。你可以整个码表看看自己的速度和心率，以便了解自己的舒适区。当然，只靠自己的感觉也是可以的。</p><p><br/></p><p>在心里面给自己定一个小目标也是一个好主意，比如说“我必须要在150分钟之内完成64km的骑行”，这样不仅可以激励你，也可以防止你爆发得过早。但你的目标不能太过懒散，避免错过到达目的地的宝贵时间。</p><p><br/></p><p>三、进入160km的区域</p><p><br/></p><p>我们都知道精神的力量，可能会对我们的表现造成积极或消极的影响。当你独自骑行了160km，精神既可以成为对我们有益的伙伴，也可以成为具有破坏能力的害虫。想要享受骑行，就要学会在训练中将自我与不适的感觉相分离的技能。</p><p><br/></p><p>尝试将注意力转移到其他事物上，比如说沿途的风景，你踩踏的技巧，又或者是保持一个较为气动的姿势。在你的步调策略中，设置一些小的“过程目标”，有助于将你头脑中的旅程分解，更易于管理。</p><p><br/></p><p>请记住，无论天气多么糟糕，也不管遇到多大的山雨和逆风，你都要时刻想着，终点会有奇妙的风景等着你，向前看，让改变发生。</p><p><br/></p><p>四、补充能量</p><p><br/></p><p>如何正确地补充能量是很重要的一点，它对你的身体健康和将要进行的骑行计划影响非常之大。</p><p><br/></p><p>骑行之前：在160km骑行的前一天，营养补充方面你必须要严肃对待，你可能听说过“碳水化合物的摄入”，在这里最简单的建议是，吃一顿健康，均衡的膳食，包括新鲜蔬菜和低糖的食品。</p><p><br/></p><p>在入睡前两小时吃一碗谷物食品，这也是非常有帮助的，同时不要喝太多的酒、汽水和水。早上吃一些麦片和水果，在出发前喝至少500毫升的水。</p><p><br/></p><p>骑行中：不能吃大量的能量胶，能量胶的设计用途主要是在公路赛最后几公里，为车手们补充能量而准备的。</p><p><br/></p><p>你可能想要带一些咖啡因或者糖，但也不能经不住诱惑去食用它们，除非你感到非常劳累或者已经骑完了大部分的路程。</p><p><br/></p><p>在适当的时间补充碳水化合物。每隔45~60分钟补充一块30克的压缩干粮，吃一些香蕉也能达到类似的效果。</p><p><br/></p><p>当你在喝东西时，将水壶倾斜向上，同时不能遮挡你的头（这样你能时刻关注前方的路况），每小时你需要补充大约500毫升的水（当天气炎热或流汗过多时可以多喝一些），这有助于补充你身体所流失的矿物质，你的第二个水壶里可以放一些含有电解质的添加剂。千万不要尝试一些你没有用过的运动粉末——长途骑行可不是检测营养品的好方法。</p><p><br/></p><p>骑行之后：骑行后，你的肌肉需要补充糖原，所以，现在喝一些果汁，这是帮助你恢复的好时机。这些糖分能在20分钟之内转化成为你身体所需的糖原。甚至，你也可以喝一些汽水，或吃适量的糖果。记住，多补充水分，然后坐下来好好地吃一顿富含蛋白质的食物（一小时之内）。</p><p><br/></p><p>五、为骑行做一个fitting</p><p><br/></p><p>60-to-100-miles-4_副本.jpg</p><p>当你在车上连续骑行了几个小时后，车辆调整所造成的细微不适感有可能会转化成非常严重的问题。如果你在现在的骑行当中，觉得自己爱车的调整让你感到不太舒服，那么在你出发前，下面的内容你就需要仔细看看了。</p><p><br/></p><p>对于专业的自行车来说，fitting能提高骑乘的性能和舒适性，减轻疲倦以及对身体的伤害。不仅如此，fitting还能让你在骑行中拥有稳定的上身，平坦的后背，以及更为气动的位置。同时，你的踩踏将变得更加高效灵活。</p><p><br/></p><p>如果你需要的话，你可以听取fitting专家的建议。但是用一次长距离骑行为你私自调整的新位置做实验，这是非常不值得的。</p><p><br/></p>', 0, 0, 1, 1538744959, 9),
(9, '骑着单车游天津，如何安排最优路线', '最优路线', '骑着单车游天津', 'Ophelia·紫陌 ', '/bick/public\\uploads/20181005\\e974d1595b2f5080b393fc7b424578a1.jpeg', '<p><br/></p><p>五大道（必游）-西開教堂（必游）-瓷房子（推薦）-勸業場商場（選擇性遊覽）-遼寧路小吃街（推薦）-天津之眼（必游）</p><p>Tips：</p><p>住宿：建議住在津灣廣場附近或天津之眼附近。</p><p>五大道</p><p>五大道並非正式地名，實應為六大道，即成都道、重慶道、常德道、大理道、睦南道和馬場道，後成流傳甚廣的俗稱。因曾為英租界，遺留的眾國各式風貌的建築變成了最亮的風景線。首推馬場道及睦南道，道路不寬，卻坐擁300座小洋樓，背後都有著一段歷史。</p><p><br/></p><p>遊覽五大道的方式，最特色的莫過於乘坐馬車，全程有導遊講解。不過，五大道更適合閒逛或租自行車。</p><p>Tips：</p><p>① 門票：免費。</p><p>在遊客中心可租單人自行車，第一小時10 元（含展廳參觀），之後每超過半小時為5 元/ 時。</p><p>乘馬車觀光路線即從重慶道出發，最後從新華路回到起點，一圈約30 分鐘。價格：散客80 元/ 位/ 圈，每車配一位講解；若包車為1200 元/ 圈。</p><p>② 開放時間：全天。</p><p>③ 用時參考：半天。</p><p>④ 五大道景區：建議出行前在網上找一下五大道的地圖，瞭解一下大致的路線和方位，這樣不會迷路。</p><p>⑤ 五大道的很多建築門牌上設置了二維碼，可以留意查找，掃描並瞭解建築的故事。</p><p><br/></p><p><br/></p><p><br/></p><p>天津的紅綠燈特別有趣，是倒數的，長條狀的燈光會越變越短，最後消失……最後變成下一個顏色，注視了一會兒交織變幻的綠黃紅，笑了笑，然後，我們推著單車走遠了……</p><p><br/></p><p><br/></p><p>五大道</p><p>五大道并非正式地名，实应为六大道，即成都道、重庆道、常德道、大理道、睦南道和马场道。 因曾为是英租界，遗留了众国各式风貌的建筑，现已变成了天津最亮的一道风景线。 最特别的是马场道和睦南道，道路不宽，却坐拥300座小洋楼，背后都有着一段历史，细细游览体验，惊喜更多。 游览五大道的方式，最特色的莫过于乘坐马车，此外还可乘人力车或电瓶车游览，全程有导游讲解。 闲逛或租辆自行车也是非常好的，如行程不是很紧凑，不妨静下心来闲逛一下。&nbsp;</p><p><br/></p><p>西開教堂</p><p>西開教堂是天津市最大的天主教堂，也是天主教天津教區主教座堂。整體建築呈「品」字形。樓座以黃、紅花磚砌成，上砌翠綠色圓肚型尖頂，檐下為半圓形拱窗。正廳為三通廊式。教堂每日早晨舉行宗教活動。逢周日及天主教節日，早晚皆有宗教活動。</p><p>Tips：</p><p>① 門票：免費。</p><p>② 開放時間：（彌撒）平日6:00和7:30各一台；主日6:00、7:30、10:00、11:30、15:00和19:00各一台，其中7:30為公彌撒，11:30為英文彌撒。</p><p>③ 用時參考：1小時。</p><p>④ 盡量穿到膝蓋以下的褲子或裙子，而且不要在教堂里吃東西。</p><p><br/></p><p><br/></p><p><br/></p><p>西开教堂</p><p>天津市最大的天主教堂，也是天主教天津教区主教座堂，典型巴洛克式风格的建筑。 整体建筑呈“品”字形，楼座以黄、红花砖砌成，上砌翠绿色圆肚型尖顶，檐下为半圆形拱窗，正厅为三通廊式。 教堂每日早晨举行宗教活动，逢星期日及天主教节日，早晚皆有宗教活动。 走出西开教堂便是国际风情街，散布其间大大小小的咖啡厅、西餐厅，很有小资味道。&nbsp;</p><p><br/></p><p>瓷房子</p><p>瓷房子(赤峰道)是每個到天津的遊客都不會錯過的。這是一座用數萬件古董瓷片裝修而成的法式洋樓。由瓷房主人張連志親自設計。被人們稱為：一座價值連城的「中國古瓷博物館」。</p><p>瓷房子所用瓷器和瓷片年代從漢代一直跨越到清代，窯址除五大名窯外還有龍泉窯、耀州窯等，中國所有官窯、民窯瓷的種類幾乎都可以在這裡看到。</p><p>Tips：</p><p>① 門票：50元。</p><p>② 開放時間：9:00-18:00。</p><p>③ 用時參考：1-2小時。</p><p><br/></p><p>據說，有破損的瓷器是不能呈給皇室的，所以坊主們都會把有破損的瓷器摔碎，沉入河底。而瓷房子博物館館主的父親把這些破損的瓷器都收集了起來，而館主又接過父親的理念，把瓷片和瓷器經過編排和設計建成了如今大家所看到的瓷房子，這也算是一種傳承吧！</p><p><br/></p><p><br/></p><p>此為世界上保存最好最完整以及個頭最大的雙彩琉璃獅。</p><p><br/></p><p><br/></p><p>瓷房子(赤峰道)</p><p>•瓷房子是一座用数万件古董瓷片装修而成的法式洋楼，是天津市的地标建筑之一。 •建筑由瓷房主人张连志亲自设计，所用瓷器和瓷片年代从汉代一直跨越到清代，中国所有种类的官窑、民窑瓷几乎都可以在这里看到。 •建造时使用了20多吨水晶石与玛瑙，4000多件古瓷器，300多尊历代石雕造像等，被人们称为一座价值连城的“中国古瓷博物馆”。</p><p><br/></p><p>遼寧路小吃街</p><p>其實總結一下就是一條有各種烤串炸串和各種粉絲湯的小吃街，適宜休閒時光、休閒小憩、隨便吃吃、情侶約會、家庭聚會、朋友聚餐。</p><p><br/></p><p>勸業場商場</p><p>勸業場商場(和平路店)是天津最早的百貨商場，目前依舊佔據著商業街的最中心位置，乃當地商業的一個象徵。現在是天津三大零售百貨商場之一，也是全國著名十大商場之一。</p><p><br/></p><p><br/></p><p>劝业场商场(和平路店)</p><p>劝业场商场(和平路店)是天津最早的百货商场，目前依旧占据着商业街的最中心位置，乃当地商业的一个象征。 现在是天津三大零售百货商场之一，也是全国著名十大商场之一。</p><p><br/></p><p>天津之眼</p><p>天津之眼坐落在天津市紅橋區海河畔，是一座跨河建設、橋輪合一的摩天輪，兼具觀光和交通功用。摩天輪旋轉一周所需時間為28分鐘，到達最高處時，周邊景色一覽無余，甚至能看到方圓40公里以內的景致。摩天輪轉動速度緩慢，並不刺激。你可眼見車輛從兩邊疾馳而過，別有妙趣。傳說摩天輪上的每個盒子里都裝滿了幸福。</p><p>Tips：</p><p>① 門票：成人70元，包廂票400元（限5人以內單獨乘坐）。</p><p>② 開放時間：9:30-21:30，每週一上午摩天輪例行檢修，不對外營業（節假日除外）。</p><p>③ 用時參考：28分鐘旋轉一周。</p><p><br/></p><p><br/></p><p><br/></p><p>天津之眼</p><p>•天津之眼坐落在天津市红桥区海河畔，是一座跨河建设、桥轮合一的摩天轮，兼具观光和交通功用。 •摩天轮旋转一周所需时间为28分钟，到达最高处时，周边景色一览无余，甚至能看到方圆40公里以内的景致。 •直径为110米，轮外装挂48个360度透明座舱，每个座舱可乘坐8个人，可同时供384个人观光。 •转动速度缓慢，并不刺激。你可眼见车辆从两边疾驰而过，别有妙趣。</p><p><br/></p><p>和平區-河北區</p><p>路線</p><p>古文化街（推薦）-意大利風情街（推薦）-梅河解放橋（必游）—世紀鐘（推薦）-津灣廣場（必游）-遼寧路小吃街（推薦）-大沽橋（推薦）-海河外灘公園（必游）-天津站（推薦）。</p><p>古文化街</p><p>以天後宮為中心，南口的牌樓上高懸「津門故里」大匾，標誌著這一帶是800年前的一處居民聚落點。你可賞楊柳青年畫之趣，嘆泥人張彩塑之妙，思魏記風箏之憶，贊劉氏磚刻之精；抬眼細覽文化街的房檐，其上精美的彩繪，將紅樓夢、漢代昭君出塞、唐代以《長恨歌》為藍本的楊貴妃故事、宋代的梁祝、明代的鄭成功收復台灣等描繪得生動有趣。</p><p>Tips：</p><p>① 門票：免費。</p><p>② 開放時間：全天。</p><p>③ 用時參考：1-2小時。</p><p>④ 美食：拌肚兒，熟梨糕，耳朵眼炸糕，茶湯，熟梨膏，雲片糕，狗不理包子，煎餅果子，老翟藥糖。</p><p><br/></p><p>泥人張世家：天津泥人張始於清道光年間，創始人張明山。它在繼承傳統的基礎上創造自己的風格，其作品取材廣泛，塑造人物生動，塑與繪的結合使作品更具生命力。其藝術地位獲得國際認可。泥人張經過幾代人的傳承，儼然成為中國泥塑藝術的又一個高峰。</p><p><br/></p><p><br/></p><p>古文化街</p><p>古文化街位于天津市南开区，以天后宫为中心，南起水阁大街，北到通北路，是天津著名老字号和手工艺品店的集中地，来津必游地之一。 街上有好多天津老字号店铺，民间特色浓郁。有出售景泰蓝、苏绣、漆器的乔香阁；出售土特产的果仁张、皮糖张、崩豆张；民间工艺品店铺“泥人张”，“风筝魏”等。 还有不少名胜古迹，其中的天后宫，祭祀保佑出海远航平安的天后娘娘，已有600余年历史。农历3月23日会举行盛会。 逛街的同时还可以享受天津特色美食，狗不理包子、煎饼果子、天津大麻花等，绝对满足吃货的胃口。</p><p><br/></p><p>意大利風情街</p><p>意大利風情街是近年天津最熱門的景區之一，地方不大，卻值得走走逛逛， 在意大利老租界里，還有梁啓超的飲冰室、曹禺故居、李叔同故居、袁世凱及馮國璋的府邸等。 不少電影如《南京！南京！》《非常完美》也曾在此拍攝。</p><p>Tips：</p><p>① 門票：免費。</p><p>② 開放時間：全天。</p><p>③ 用時參考：1-2小時。</p><p><br/></p><p><br/></p><p>意大利风情街</p><p>位于天津市中心，有200余栋地中海风格的典雅建筑。漫步其中，就好像行走在浪漫的欧洲小镇，众多的名人故居、影视剧取景地都在这里。 马可波罗广场是景区的标志性建筑之一，中央柯林斯式的石柱上站着手持橄榄枝的和平女神。西边就是威尼斯广场的“飞狮许愿池”。 《建国大业》、《金粉世家》等都在此取景，可以在这里找到剧中熟悉的场景，也吸引了很多拍婚纱照的爱侣。 梁启超故居、民国大总统、大军阀曹锟故居、袁世凯故居、冯国璋旧宅、曹禺故居、张廷谔旧宅等都在这里。 到了夜晚，意式建筑亮了灯，西餐厅、咖啡店里的烛光、灯光摇曳，酒吧变得热闹，意大利风情区的景色和氛围更加迷人。</p><p><br/></p><p>海河解放橋</p><p>海河解放橋是連接河北、河東、和平三區，溝通天津站地區的樞紐橋梁。原名為「萬國橋」，因當時天津有「國中之國」的英、法、俄、美、德、日、意、奧、比九國租界。1949年天津解放後，此橋更名為「解放橋」。解放橋為全鋼結構，建於1927年。最美時分，是當一艘艘豪華遊艇駛過開啓的解放橋，伴著繽紛璀璨的海河更加令人陶醉。</p><p>Tips：</p><p>① 門票：免費。</p><p>② 開放時間：全天。</p><p>③ 用時參考：半小時。</p><p><br/></p><p><br/></p><p><br/></p><p>海河解放桥</p><p>•海河解放桥是连接河北、河东、和平三区，沟通天津站地区的枢纽桥梁。 •原名为“万国桥”，因当时天津有九国租界，号称“国中之国”，天津解放后，此桥更名为“解放桥”。 •碰上桥梁开启时，一艘艘豪华游艇驶过开启的解放桥，伴着缤纷璀璨的海河令人陶醉，是最美的时候。 •幸运的话，也许还能碰上在解放桥中间趁着红灯停的空当拍婚纱照的场景，新颖又有趣。&nbsp;</p><p><br/></p><p>世紀鐘</p><p>天津世紀鐘是天津市人民政府為迎接二十一世紀於1999年建立的大型城市雕塑，坐落於河北區解放橋橋頭。世紀鐘由全金屬材料構築而成，在鐘錶面的外環和內環之間鑲嵌著十二星座的青銅浮雕。</p><p>Tips：</p><p>① 門票：免費。</p><p>② 開放時間：全天。</p><p>③ 用時參考：半小時。</p><p><br/></p><p><br/></p><p>世纪钟</p><p>•天津的地标建筑，是天津市人民政府为迎接二十一世纪于1999年建立的大型城市雕塑，坐落于河北区解放桥桥头。 •位于海河北岸，天津火车站旁，广场上有一座巨大的机械钟，很多到天津游玩的游客都会来这里拍照留念。 •全金属材料构筑而成，在钟表面的外环和内环之间镶嵌着十二星座的青铜浮雕，长杆、齿轮、底座构成了一个完美的时空造型。 •在庄重之中显出飘逸隽永，标志着天津这座老工业城市在历史的进程中已经又前进了一大步。</p><p><br/></p><p>津灣廣場</p><p><br/></p><p>津灣廣場坐落在海河旁，隔海河與天津車站相對。另外，津灣廣場是欣賞海河晝夜景致的最佳觀賞地點。最大的亮點是它的人文底蘊，天津近代建築風格的多元構成，突出地反映了中西文化交匯的時代特徵。</p><p>Tips：</p><p>① 門票：免費。</p><p>② 開放時間：全天。</p><p>③ 用時參考：1-2小時。</p><p><br/></p><p>津湾广场</p><p>津湾广场坐落在海河旁，隔海河与天津车站相对，是天津市区最繁华的地带之一。 最大的亮点是它的人文底蕴，天津近代建筑风格的多元构成，突出地反映了中西文化交汇的时代特征。 此外，还是欣赏海河昼夜景致的最佳地点，背靠的高楼则是一派繁华的现代都市，夜晚亮灯时绚烂迷人。</p><p><br/></p>', 0, 0, 1, 1538745474, 10),
(10, 'SAHOO鲨虎磁吸式风镜头盔又到新品，近视福音！', '近视福音！', 'SAHOO鲨虎磁吸式风镜头盔', '骑行圈 ', '/bick/public\\uploads/20181005\\86d055f1c306a4be27585045360021aa.jpg', '<p style="word-wrap: break-word; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: Tahoma, &quot;Microsoft Yahei&quot;, Simsun; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: arial, helvetica, sans-serif;"><strong>自从前几周推荐了这款风镜头盔后，很多车友都很关注，这次又新到货了几款颜色。目前9色可选。</strong></span></p><p style="word-wrap: break-word; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: Tahoma, &quot;Microsoft Yahei&quot;, Simsun; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="word-wrap: break-word; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: Tahoma, &quot;Microsoft Yahei&quot;, Simsun; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: arial, helvetica, sans-serif;"><strong>常规的近视</strong></span><a href="http://www.qixingquan.com/" target="_blank" class="relatedlink" style="word-wrap: break-word; color: rgb(0, 102, 255); border-bottom: 1px solid blue; text-decoration-line: none !important;"><span style="font-family: arial, helvetica, sans-serif;"><strong>骑行</strong></span></a><span style="font-family: arial, helvetica, sans-serif;"><strong>眼镜，都需要重新去验光配镜，算下来不光花费更多，由于配的内置近视镜框靠眼睛太近，效果也不如直接戴近视眼镜好，可是不戴骑行镜，骑行时迎面吹来的风让眼睛非常干涩，加上时不时吹进眼中的小飞虫啦、沙粒啦什么的，眼睛总是很难受。</strong></span></p><p style="word-wrap: break-word; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: Tahoma, &quot;Microsoft Yahei&quot;, Simsun; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="word-wrap: break-word; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: Tahoma, &quot;Microsoft Yahei&quot;, Simsun; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: arial, helvetica, sans-serif;"><strong>这款风镜头盔就完全解决了这个问题，戴近视眼镜的车友可以直接使用，不需要再为专门配近视眼镜而忧愁。头盔和眼镜一次性解决！</strong></span></p><p><br/></p>', 0, 0, 1, 1538745779, 7);
INSERT INTO `bk_article` (`id`, `title`, `keywords`, `desc`, `author`, `thumb`, `content`, `click`, `praise`, `rec`, `time`, `cateid`) VALUES
(11, '禧玛诺METREA 驱动——现代城市骑行新风尚', '新风尚', '禧玛诺METREA 驱动', '光明网', '/bick/public\\uploads/20181005\\2daa927d0ceaa78dcee60fa86dcc18fe.jpeg', '<p>自山地自行车出现以来，城市运动自行车堪称是自行车史上最令人激动的发明。在山地自行车市场 出现之前，便有许多酷爱刺激的人想要通过自行车体验更加有趣的冒险。他们不断地对自行车进行 改装和实验，以满足他们的热情，并创造了许多独特而精彩的发明。在很多年后，这一幕又在当今 的城市自行车界再次上演。</p><p><br/></p><p>城市自行车的爱好者们一直在不断地改进和实验他们的骑行创意。随着新时代的到来，这一全新类 型的骑行爱好者们希望能够拥有专门为他们精心设计和制造的自行车款式。于是，METREA 应运而 生。</p><p><br/></p><p>METREA 所面向的是那些富有激情、不安于现状的冒险者，是那些随机应变、敢为先驱的开拓者， 是那些梦想在城市中高速飞驰，却又为现实感到无奈的囧途者。</p><p><br/></p><p><br/></p><p><br/></p><p>METREA 专为喜爱精湛工艺和简约风格的客户设计，兼具时尚、激情和实用的特色，是专业自行车爱 好者的不二选择。METREA 的极简主义设计风格折射出了现代城市运动的全新风貌，融合了快速公路 竞速和日常舒适体验两方面的元素。</p><p><br/></p><p>METREA 的名字来源于两个单词：“Metropolitan”(都市人)和“Real”(真实)。这两个单词代 表了城市运动类产品的核心理念，是奢华风格、实用功能和材料工艺的完美结合。</p><p><br/></p><p>这款特殊的城市运动自行车强调了日常骑乘时的舒适度。其风格时尚的各个组件经过专门调整，为 骑乘者提供一个全新的骑乘角度：45°到 60°，这一设计符合骑乘者在日常通勤中的骑行特点， 使其姿势自然舒适，且能够灵活自如地操控自行车。</p><p><br/></p><p>设计过程</p><p><br/></p><p>这款自行车在设计时的核心要素就是美观与简约，还要在选择合适部件的同时保证自行车的速度。 更快的加速度、更灵活的换挡、更灵敏的刹车，这些特点使得它能够应对拥堵交通和自由骑行等多 种状况，并为城市骑行带来更多乐趣。</p><p><br/></p><p>通过 METREA 的结构和功能，我们就能清楚地看出它的设计理念：简约而整洁的外观，几何风格的 文字以及各种坚固耐用的材质之间形成的鲜明对比。</p><p><br/></p><p>有了核心的理念和清晰明确的目标，所有的部件最初才得以成型。换句话说，METREA 是我们在不 断追求城市骑行乐趣的过程中所最终实现的成果。</p><p><br/></p><p>配件</p><p><br/></p><p>METREA 采用了高端工艺和材料，完美体现了城市骑行的全新风尚。</p><p><br/></p><p>骑乘者可以选择平把类型，以实现城市运动自行车的多功能性，同时确保与更多类型的车架兼容。 双向 SL-5000 平型车把、带有即时释放功能的 Rapidfire Plus 变速杆和 Vivid 档位变速可以使骑乘者</p><p><br/></p><p>在骑行过程中快速更换档位。带有聚合物涂层的变速线可以使换档过程更加流畅而省力。</p><p><br/></p><p>此外，H 型车把的新颖设计可以使骑乘者的前臂处于自然舒适的位置，类似于赛车车把上的刹车手 把的位置。H 型车把将在 2016 年夏季通过 PRO 上市。</p><p><br/></p><p>选用小型 H 型车把的 METREA 用户可以更加快速地进行操控，从而在城市骑行过程中获得更大的灵 活性。这种车把采用了简约而精巧的设计，符合人体工程学，完美贴合骑乘者手臂的自然运动方式。 配套的 ST-U5060 双控手把位于 H 型手把末尾处，这使得骑乘者能够以符合空气动力学的高效骑乘 姿势进行活动，并方便地进行操作。</p><p><br/></p><p>油压刹车系统</p><p><br/></p><p>油压刹车手把(BL-U5000 / ST-U5060)能够输出稳定而恰当的力度，并应对多种城市骑行状况。平 装式刹车夹器(BR-U5000)能够为骑乘者带来稳定、安静而流畅的刹车体验，而 Ice Tech 刹车盘(SM- RT500-SS)可以最大程度地降低盘片的表面温度。</p><p><br/></p><p>个性化传动系统</p><p><br/></p><p>这款自行车具有抛光抗腐蚀的两片式曲柄组，拥有可靠的传动性能，而它的齿形则保证了流畅而持 续的踩踏过程。用户可根据不同的城市道路状况，对传统系统进行个性化改装。</p><p><br/></p><p>46-32T 两片齿盘(FC-U5000-2)的齿轮数比更加紧凑，能够更好地适应多种地形。此外，为了保证简 约风格和高速性能，它还配备了一片 42T(FC-U5000-1) 的单片齿盘来确保最佳的齿轮工作状态。车 身安装的链罩可以防止链条挂到宽松式的裤子上。</p><p><br/></p><p>前变速器(FD-U5000-F)采用了和 46-32T 齿盘相兼容的设计，链条和平衡梁的位置均较低。后变速器 (RD-U5000)采用了宽范围的 11 速档位设计，而 CS-5800 飞轮使其可以高速地进行档位切换，让骑 乘者在繁忙的都市中，也能够享受到令人兴奋的骑乘时光。</p><p><br/></p><p>最后，METREA 的刹车系统专用轮组(WH-U5000)与其它的各个部件相互结合，让高速而时尚的都市骑行成为了可能。</p><p><br/></p>', 0, 0, 1, 1538746072, 8);

-- --------------------------------------------------------

--
-- 表的结构 `bk_auth_group`
--

CREATE TABLE IF NOT EXISTS `bk_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` char(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='用户组表' AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `bk_auth_group`
--

INSERT INTO `bk_auth_group` (`id`, `title`, `status`, `rules`) VALUES
(1, '超级管理员', 1, '1,2,3,4,5,6,29,31,32,33,34,37,38,39,40,41,42,43,44,45,46,7,8,9,10,11,17,18,19,20,21,24,23,22'),
(3, '配置管理员', 1, '1,3,6,5,4,2'),
(4, '链接管理员', 1, '37,38,39,40,41');

-- --------------------------------------------------------

--
-- 表的结构 `bk_auth_group_access`
--

CREATE TABLE IF NOT EXISTS `bk_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户组明细表';

--
-- 转存表中的数据 `bk_auth_group_access`
--

INSERT INTO `bk_auth_group_access` (`uid`, `group_id`) VALUES
(12, 1),
(20, 3),
(21, 3),
(22, 1),
(23, 4);

-- --------------------------------------------------------

--
-- 表的结构 `bk_auth_rule`
--

CREATE TABLE IF NOT EXISTS `bk_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT '',
  `pid` mediumint(9) NOT NULL DEFAULT '0',
  `level` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int(5) NOT NULL DEFAULT '50',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='规则表' AUTO_INCREMENT=47 ;

--
-- 转存表中的数据 `bk_auth_rule`
--

INSERT INTO `bk_auth_rule` (`id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `level`, `sort`) VALUES
(1, 'sys', '系统设置', 1, 1, '', 0, 0, 50),
(2, 'conf/conf', '配置项', 1, 1, '', 1, 1, 50),
(3, 'conf/lst', '配置列表', 1, 1, '', 1, 1, 50),
(4, 'conf/add', '添加配置', 1, 1, '', 3, 2, 50),
(5, 'conf/del', '删除配置', 1, 1, '', 3, 2, 50),
(6, 'conf/edit', '修改配置', 1, 1, '', 3, 2, 50),
(7, 'admin', '管理员', 1, 1, '', 0, 0, 50),
(8, 'admin/lst', '管理员列表', 1, 1, '', 7, 1, 50),
(9, 'admin/add', '添加管理员', 1, 1, '', 8, 2, 50),
(10, 'admin/del', '删除管理员', 1, 1, '', 8, 2, 50),
(11, 'admin/edit', '修改管理员', 1, 1, '', 8, 2, 50),
(17, 'authgroup/lst', '用户组列表', 1, 1, '', 7, 1, 50),
(18, 'authgroup/add', '添加用户组', 1, 1, '', 17, 2, 50),
(19, 'authgroup/del', '删除用户组', 1, 1, '', 17, 2, 50),
(20, 'authgroup/edit', '修改用户组', 1, 1, '', 17, 2, 50),
(21, 'authrule/lst', '权限列表', 1, 1, '', 7, 1, 50),
(22, 'authrule/add', '添加权限', 1, 1, '', 21, 2, 50),
(23, 'authrule/del', '删除权限', 1, 1, '', 21, 2, 50),
(24, 'authrule/edit', '修改权限', 1, 1, '', 21, 2, 50),
(29, 'cate', '栏目管理', 1, 1, '', 0, 0, 50),
(31, 'cate/lst', '栏目列表', 1, 1, '', 29, 1, 50),
(32, 'cate/add', '添加栏目', 1, 1, '', 31, 2, 50),
(33, 'cate/del', '删除栏目', 1, 1, '', 31, 2, 50),
(34, 'cate/edit', '修改栏目', 1, 1, '', 31, 2, 50),
(37, 'link', '友情链接', 1, 1, '', 0, 0, 50),
(38, 'link/lst', '链接列表', 1, 1, '', 37, 1, 50),
(39, 'link/add', '添加链接', 1, 1, '', 38, 2, 50),
(40, 'link/del', '删除链接', 1, 1, '', 38, 2, 50),
(41, 'link/edit', '修改链接', 1, 1, '', 38, 2, 50),
(42, 'article', '文章管理', 1, 1, '', 0, 0, 50),
(43, 'article/lst', '文章列表', 1, 1, '', 42, 1, 50),
(44, 'article/add', '添加文章', 1, 1, '', 43, 2, 50),
(45, 'article/del', '删除文章', 1, 1, '', 43, 2, 50),
(46, 'article/edit', '修改文章', 1, 1, '', 43, 2, 50);

-- --------------------------------------------------------

--
-- 表的结构 `bk_cate`
--

CREATE TABLE IF NOT EXISTS `bk_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '栏目ID',
  `catename` varchar(30) NOT NULL COMMENT '栏目名称',
  `keywords` varchar(255) NOT NULL COMMENT '栏目关键词',
  `desc` varchar(255) NOT NULL COMMENT '栏目描述',
  `content` text NOT NULL COMMENT '栏目内容',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '栏目类型1:文章列表2：单页栏目3：图片列表',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '上级栏目ID',
  `sort` mediumint(9) NOT NULL DEFAULT '50' COMMENT '排序',
  `rec_index` tinyint(1) NOT NULL DEFAULT '0' COMMENT '推荐到首页1:为推荐,0为不推荐',
  `rec_bottom` tinyint(1) NOT NULL DEFAULT '0' COMMENT '推荐到底部1:为推荐,0为不推荐',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='无限级栏目分类' AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `bk_cate`
--

INSERT INTO `bk_cate` (`id`, `catename`, `keywords`, `desc`, `content`, `type`, `pid`, `sort`, `rec_index`, `rec_bottom`) VALUES
(1, '单车分类', '', '', '', 1, 0, 50, 0, 0),
(2, '死飞车', '自行车', '死飞车的栏目描述', '', 1, 1, 50, 1, 0),
(4, '山地车', '', '穿梭于丛林', '', 1, 1, 50, 1, 0),
(5, '公路车', '', '城市通勤', '', 1, 1, 50, 0, 1),
(6, '骑行装备', '', '', '', 1, 0, 50, 1, 0),
(7, '人身装备', '', '保护自身安全', '', 1, 6, 50, 0, 1),
(8, '车身装备', '', '自行车附件', '', 1, 6, 50, 0, 1),
(9, '单车生活', '', '单车爱好者的生活分享', '', 3, 0, 50, 1, 1),
(10, '单车生活2', '', '', '', 3, 9, 50, 0, 0),
(11, '关于我们', '', '', '<p>自行车爱好者</p>', 2, 0, 50, 0, 1),
(12, '公司简介', '', '', '<p>爱好者自行车公司</p>', 2, 0, 50, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `bk_conf`
--

CREATE TABLE IF NOT EXISTS `bk_conf` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '配置项ID',
  `cnname` varchar(50) NOT NULL COMMENT '配置中文名称',
  `enname` varchar(50) NOT NULL COMMENT '配置英文名称',
  `type` tinyint(1) NOT NULL COMMENT '配置类型1：单行文本框2：文本域3：单选按钮4:复选按钮5：下拉菜单',
  `value` varchar(255) NOT NULL COMMENT '配置值',
  `values` varchar(255) NOT NULL COMMENT '配置可选值',
  `sort` smallint(6) NOT NULL DEFAULT '50' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='配置' AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `bk_conf`
--

INSERT INTO `bk_conf` (`id`, `cnname`, `enname`, `type`, `value`, `values`, `sort`) VALUES
(5, 'Bick', 'Name', 1, '站点名称', '', 5033),
(6, '是否关闭网站', 'Stop', 3, '否', '是,否', 10),
(7, '自动清空缓存', 'Cache', 5, '2个小时', '1个小时,2个小时', 6),
(8, '启动验证码', 'Code', 4, '是', '是', 9),
(9, '网站关键词', 'Keywords', 1, '网络关键词', '', 50),
(10, '网站描述', 'Description', 2, ' 我范围范围                                                                                                                                                                                                      ', '', 50);

-- --------------------------------------------------------

--
-- 表的结构 `bk_link`
--

CREATE TABLE IF NOT EXISTS `bk_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL COMMENT '标题',
  `desc` varchar(255) NOT NULL COMMENT '描述',
  `url` varchar(160) NOT NULL COMMENT '链接地址',
  `sort` mediumint(9) NOT NULL DEFAULT '50' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='链接' AUTO_INCREMENT=16 ;

--
-- 转存表中的数据 `bk_link`
--

INSERT INTO `bk_link` (`id`, `title`, `desc`, `url`, `sort`) VALUES
(2, '百度', '搜索引擎', 'https://www.baidu.com/', 2),
(15, '淘宝', '淘宝', 'www.taobao.com', 50);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
