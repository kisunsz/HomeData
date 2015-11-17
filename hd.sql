/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : hd

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2015-07-19 23:28:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `doubanmovie`
-- ----------------------------
DROP TABLE IF EXISTS `doubanmovie`;
CREATE TABLE `doubanmovie` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `alt` varchar(255) DEFAULT NULL,
  `rating` varchar(255) DEFAULT NULL,
  `casts` varchar(500) DEFAULT NULL,
  `year` varchar(100) DEFAULT NULL,
  `countries` varchar(500) DEFAULT NULL,
  `genres` varchar(1000) DEFAULT NULL,
  `summary` text,
  `photos` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of doubanmovie
-- ----------------------------
INSERT INTO `doubanmovie` VALUES ('1291828', null, 'http://movie.douban.com/subject/1291828/', '9.1', '安东娜拉·塔莉,恩佐·卡拉瓦勒,艾萨·丹尼埃利,里奥·故罗塔', '1988', '意大利,法国', '剧情,爱情', '意大利南部小镇，古灵精怪的小男孩多多（萨瓦特利·卡西欧 饰）喜欢看电影，更喜欢看放映师艾佛特（菲利浦·诺瓦雷 饰）放电影，他和艾佛特成为了忘年之交，在胶片中找到了童年生活的乐趣。\n好心的艾佛特为了让更多的观众看到电影，搞了一次露天电影，结果胶片着火了，多多把艾弗达从火海 中救了出来，但艾弗达双目失明。多多成了小镇唯一会放电影的人，他接替艾佛特成了小镇的电影放映师。\n多多（马克·莱昂纳蒂 饰）渐渐长大，他爱上了银行家的女儿艾莲娜（阿格妮丝·那诺 Agnese Nano 饰）。初恋的纯洁情愫美如天堂，但是一对小情侣的海誓山盟被艾莲娜父亲的阻挠给隔断了，多多去服兵役，而艾莲娜去念大学。伤心的多多在艾佛特的鼓励下，离开小镇，追寻自己生命中的梦想……\n30年后，艾佛特去世，此时的多多已经是功成名就的导演，他回到了家乡，看到残破的天堂电影院，追忆往昔，唏嘘不已。多多意外地遇见了艾莲娜，往日种种，真相大白，他们如何面对彼此？©豆瓣', null);
INSERT INTO `doubanmovie` VALUES ('1292215', null, 'http://movie.douban.com/subject/1292215/', '8.8', '奥黛丽·塔图,马修·卡索维茨,贾梅尔·杜布兹,罗瑞娜·克拉沃塔', '2001', '法国,德国', '喜剧,爱情', '艾米莉（奥黛丽·塔图 Audrey Tautou 饰）有着别人看来不幸的童年——父亲给她做健康检查时，发现她心跳过快，便断定她患上心脏病，从此艾米莉与学校绝缘。随后因为一桩意外，母亲在她眼前突然死去。这一切都毫不影响艾米莉对生活的豁达乐观。\n1997年，戴安娜王妃的去世让她倍感人生的孤独脆弱，艾米莉从此开始了一系列助人计划，包括自闭忧郁的邻居老人，被老板刻薄的菜摊伙计、遗失了童年器物的旧房东、爱情失意的咖啡店同事。但她万万想不到，成人录象带商店店员尼诺（马修·卡索维 Mathieu Kassovitz 饰），竟成为她的棘手对象，艾米莉开始了令人哭笑不得的另类计划……©豆瓣', null);
INSERT INTO `doubanmovie` VALUES ('1292344', null, 'http://movie.douban.com/subject/1292344/', '7.1', '乔治·克鲁尼,布拉德·皮特,凯瑟琳·泽塔-琼斯,朱莉娅·罗伯茨', '2004', '美国', '犯罪,惊悚', '在赌城盗窃案三年之后，重归于好的丹尼（乔治-克鲁尼饰 George Clooney 饰）与泰丝（朱莉娅·罗伯茨 Julia Roberts 饰）二人的闲适生活戛然而止，因为赌场大亨班奈狄（安迪•加西亚 Andy Garcia 饰）突然将丹尼和十名同伙全部找到，并限定他们在两周内筹钱，连本带利偿还他当年被盗的一亿六千万。罗斯（布拉德•皮特 Brad Pitt 饰）、莱纳斯（马特·达蒙 Matt Damon 饰）等人齐聚，他们因无力偿还只得选择前往欧洲作案。然而丹尼等人的欧洲之行困难重重，法国神偷“夜狐”（文森特·卡索 Vincent Cassel 饰）在暗中作梗，罗斯的前任警探女友伊莎贝（凯瑟琳·泽塔-琼斯 Catherine Zeta-Jones 饰）则率警方严密盯防他们。这次，丹尼的团伙还能顺利脱身么？©豆瓣', null);
INSERT INTO `doubanmovie` VALUES ('1309021', null, 'http://movie.douban.com/subject/1309021/', '7.7', '基努·里维斯,蕾切尔·薇兹,希亚·拉博夫,杰曼·翰苏', '2005', '美国,德国', '动作,奇幻,惊悚', '康斯坦丁（奇诺•李维斯 Keanu Reeves 饰）生来就能看出游走在人间的恶魔与天使，这令年幼时的他十分痛苦，曾经自杀想以这种方式结束自己的痛苦。后来获悉了上帝与撒旦之间有过协议，谁也不能直接插足人间，只能间接诱使人们选择天堂与地狱，而自杀者不得上天堂，他便开始利用自己天赋的超能力帮助铲除人间的恶魔，以此祈求获得一张天堂的门票。\n一次在帮助一名女警调查她的妹妹的离奇死亡事件时，康斯坦丁意外获释了天使长加百利意图和撒旦的儿子联手统治人间的阴谋。康斯坦丁当然要竭尽全力阻止这一黑暗降临人间……©豆瓣', null);
INSERT INTO `doubanmovie` VALUES ('1866479', null, 'http://movie.douban.com/subject/1866479/', '8', '小罗伯特·唐尼,克里斯·埃文斯,斯嘉丽·约翰逊,克里斯·海姆斯沃斯', '2012', '美国', '动作,科幻,奇幻', '一股突如其来的强大邪恶势力对地球造成致命威胁，没有任何一个超级英雄能够单独抵挡。长期致力于保护全球安危的神盾局（SHIELD）感到措手不及，其指挥官“独眼侠”尼克-法瑞（塞缪尔·杰克逊 Samuel L. Jackson 饰）意识到他必须创建一个“史上最强”的联盟组织，云集各方超级英雄一起发威，才能拯救世界于水深火热，抵御黑暗势力的侵袭。于是由六大超级英雄——“钢铁侠”（小罗伯特·唐尼 Robert Downey Jr. 饰）、“雷神” （克里斯·海姆斯沃斯 Chris Hemsworth 饰）、“美国队长”（克里斯·埃文斯 Chris Evans 饰）、“绿巨人” （马克·鲁弗洛 Mark Ruffalo 饰）、“黑寡妇”（斯嘉丽·约翰逊 Scarlett Johansson 饰）和“鹰眼”（杰瑞米·雷纳 Jeremy Renner 饰）组成的 “复仇者联盟”应运而生。他们各显神通，团结一心，终于战胜了邪恶势力，保证了地球的安全。©豆瓣', null);
INSERT INTO `doubanmovie` VALUES ('3319755', null, 'http://movie.douban.com/subject/3319755/', '8.9', '玛德琳·卡罗尔,卡兰·麦克奥利菲,瑞贝卡·德·莫妮,安东尼·爱德华兹', '2010', '美国', '剧情,喜剧,爱情', '布莱斯（卡兰•麦克奥利菲 Callan McAuliffe 饰）全家搬到小镇，邻家女孩朱丽（玛德琳•卡罗尔 Madeline Carroll 饰）前来帮忙。她对他一见钟情，心愿是获得他的吻。两人是同班同学，她一直想方设法接近他，但是他避之不及。她喜欢爬在高高的梧桐树上看风景。但因为施工，树被要被砍掉，她誓死捍卫，希望他并肩作战，但是他退缩了。她的事迹上了报纸，外公对她颇有好感，令他十分困惑。她凭借鸡下蛋的项目获得了科技展第一名，成了全场焦点，令他黯然失色。她把自家鸡蛋送给他，他听家人怀疑她家鸡蛋不卫生，便偷偷把鸡蛋丢掉。她得知真相，很伤心，两人关系跌入冰点。她跟家人诉说，引发争吵。原来父亲一直攒钱照顾傻弟弟，所以生活拮据。她理解了父母，自己动手，还得到了他外公的鼎力相助。他向她道歉，但是并未解决问题。他开始关注她。鸡蛋风波未平，家庭晚宴与午餐男孩评选又把两人扯在了一起……©豆瓣', null);
INSERT INTO `doubanmovie` VALUES ('4160540', null, 'http://movie.douban.com/subject/4160540/', '7.5', '奥斯卡·伊萨克,多姆纳尔·格利森,艾丽西亚·维坎德,克里·约翰逊', '2015', '英国', '剧情,科幻', '效力于某知名搜索引擎公司的程序员加利·史密斯（多姆纳尔·格利森 Domhnall Gleeson 饰）幸运地抽中老板纳森（奥斯卡•伊萨克 Oscar Isaac 饰）所开出的大奖，他将受邀前往位于深山的别墅中和老板共度假期。在与世隔绝的别墅中，纳森亲切地接待了这位员工。事实上他邀请加利到来还有另一个目的，那就是协助他完成其所开发的智能机器人的测试。天才一般的纳森研制了具有独立思考能力的智能机器人伊娃（艾丽西亚·维坎德 Alicia Vikander 饰），为了确认她是否具有独立思考的能力，他希望加利能为伊娃进行著名的“图灵测试”。似乎从第一眼开始，加利便为这台有着宛如人类般姣好容颜的机器人所吸引。\n在随后的交流中，他所面对的似乎不是冷冰冰的机器，而是一个无辜被囚禁起来的可怜少女……©豆瓣', null);
INSERT INTO `doubanmovie` VALUES ('6560058', null, 'http://movie.douban.com/subject/6560058/', '7.5', '克里斯·海姆斯沃斯,汤姆·希德勒斯顿,娜塔莉·波特曼,斯特兰·斯卡斯加德', '2013', '美国', '动作,奇幻,冒险', '纽约大战后，雷神索尔（克里斯·海姆斯沃斯 Chris Hemsworth 饰）将弟弟洛基（汤姆·希德勒斯顿 Tom Hiddleston 饰）带回仙宫囚禁起来，此外帮助九大国度平定纷争，威名扶摇直上。虽然父王奥丁（安东尼·霍普金斯 Anthony Hopkins 饰）劝其及早即位，但索尔念念不忘地球的美丽女孩简·福斯特（娜塔丽·波特曼 Natalie Portman 饰）。与此同时，简在和黛西及其助手伊安调查某个区域时意外被神秘物质入侵，却也因此重逢索尔，并随其返回仙宫。令人意想不到的是，藏在简体内的物质来自远古的黑暗精灵玛勒基斯（克里斯托弗·埃克莱斯顿 Christopher Eccleston 饰）。在“天体汇聚”的时刻再次到来之际，玛勒基斯企图摧毁九大国度，缔造一个全然黑暗的宇宙。\n藏匿简的仙宫受到重创，而索尔和洛基这对冤家兄弟也不得不联手迎战宿命的强敌……©豆瓣', null);
INSERT INTO `doubanmovie` VALUES ('6874403', null, 'http://movie.douban.com/subject/6874403/', '8.5', '凯拉·奈特莉,马克·鲁弗洛,詹姆斯·柯登,海莉·斯坦菲尔德', '2013', '美国', '喜剧,爱情,音乐', '格雷塔（凯拉·奈特莉 Keira Knightley 饰）抛弃了一切跟随着男友戴夫（亚当·李维 Adam Levine 饰）来到美国纽约实现他们的音乐和爱情梦想，没想到曾经幻想过的美好一切化作泡影，在获得了更好的工作机会后，戴夫果断抛弃了格雷塔，留下她一人苦苦在底层挣扎。\n丹（马克·鲁法洛 Mark Ruffalo 饰）最近的生活也不好过，他发现自己无法从思念前妻马瑞安（凯瑟琳·基纳 Catherine Keener 饰）的感情中走出来，与此同时，他的女儿维奥莱特（海莉·斯坦菲尔德 Hailee Steinfeld 饰）正处于一生中最叛逆的阶段。丹和格雷塔，命运让这失意的两人于一间小小的酒吧里相遇了，等待着他们的，会是怎样充满波折而又浪漫满满的故事呢？©豆瓣', null);
INSERT INTO `doubanmovie` VALUES ('10777687', null, 'http://movie.douban.com/subject/10777687/', '8.6', '柳承龙,朴信惠,郑镇荣,金正泰', '2013', '韩国', '剧情,喜剧,家庭', '1997年，只有6岁儿童智商的智障男子李龙久（柳成龙 饰）和可爱的女儿艺胜（葛素媛 饰）相依为命，生活虽然简单清贫，却充满幸福。某天，执着为女儿买美少女战士书包的龙久意外卷入一起幼童诱拐奸杀案，而死者竟是警察局长的女儿。龙久懵懂无知，搞不清状况，昏头昏脑就被投入监狱。在7号牢房中，聚集着走私犯蘇杨浩（吴达洙 饰）、诈骗犯崔春浩（朴元尚 饰）、通奸犯姜万范（金正泰 饰）、恐吓犯老徐（金基灿 饰）和抢劫犯申奉植（郑万植 饰）等五毒俱全的“社会渣滓”。龙久孩子般纯洁的心渐渐感动了这几个“大坏蛋”，他们甚至不惜冒险将艺胜带入牢房与父亲相会。\n黑暗冰冷的监牢内，7号牢房阳光满满……©豆瓣', null);
INSERT INTO `doubanmovie` VALUES ('25872931', null, 'http://movie.douban.com/subject/25872931/', '6.1', '范冰冰,韩庚,齐溪,沈婷婷', '2015', '中国大陆', '喜剧,爱情', '故事发生在20世纪90年代，医科大学生秋水（韩庚 饰）和宿舍好友厚朴（张博宇 饰）、黄芪（杨迪 饰）、辛夷（赵一维 饰）在插科打诨、学习玩乐的过程中，靠写武侠小说赚取零花。他曾有过一段刻骨铭心的初恋，而今则和极度自律的女孩白露（齐溪 饰）享受着校园爱情。意外的邂逅让他结识了充满成熟气息的美人柳青（范冰冰 饰），接下来的一系列事件则让柳青闯入了秋水的人生。他有意无意隐藏着和白露正在交往的事实，另一边则与柳青在暧昧中欢声笑语。青春有甜蜜，青春有懊悔，正因为无法重来一遍，才让每一次的喜怒哀乐都那么刻骨铭心且永生难忘……\n本片根据冯唐的小说改编。©豆瓣', null);

-- ----------------------------
-- Table structure for `filestorage`
-- ----------------------------
DROP TABLE IF EXISTS `filestorage`;
CREATE TABLE `filestorage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `linkId` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `isDir` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2567 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of filestorage
-- ----------------------------
INSERT INTO `filestorage` VALUES ('1992', 'd:video/电影/Amelie/12.05.08 Amelie 2001 BDRip.1080p.x264.DTS DualAudio-CHD.D2.avi', '12.05.08 Amelie 2001 BDRip.1080p.x264.DTS DualAudio-CHD.D2.avi', null, '2', '1');
INSERT INTO `filestorage` VALUES ('1993', '/image/1993.jpg', '1993.jpg', null, '2', '1');
INSERT INTO `filestorage` VALUES ('1994', 'd:video/电影/Begin Again/Begin Again 2013 1080p HDRip x264-KingStoner.mp4', 'Begin Again 2013 1080p HDRip x264-KingStoner.mp4', null, '2', '1');
INSERT INTO `filestorage` VALUES ('1995', '/image/1995.jpg', '1995.jpg', null, '2', '1');
INSERT INTO `filestorage` VALUES ('1996', 'd:video/电影/Cinema.Paradiso/Cinema.Paradiso.1988.SUBBED.1080p.BluRay.x264-CiNEFiLE.mkv', 'Cinema.Paradiso.1988.SUBBED.1080p.BluRay.x264-CiNEFiLE.mkv', null, '2', '1');
INSERT INTO `filestorage` VALUES ('1997', '/image/1997.jpg', '1997.jpg', null, '2', '1');
INSERT INTO `filestorage` VALUES ('1998', 'd:video/电影/Ex.Machina/Ex.Machina.2015.MULTI.DVDRip.x264.AC3-RARBG.mkv', 'Ex.Machina.2015.MULTI.DVDRip.x264.AC3-RARBG.mkv', null, '2', '1');
INSERT INTO `filestorage` VALUES ('1999', '/image/1999.jpg', '1999.jpg', null, '2', '1');
INSERT INTO `filestorage` VALUES ('2000', 'd:video/电影/Following/Following.1998.Criterion.Collection.1080p.BluRay.x264.DTS-WiKi.mkv', 'Following.1998.Criterion.Collection.1080p.BluRay.x264.DTS-WiKi.mkv', null, '2', '1');
INSERT INTO `filestorage` VALUES ('2001', '/image/2001.jpg', '2001.jpg', null, '2', '1');
INSERT INTO `filestorage` VALUES ('2002', 'd:video/电影/Inception/Inception.2010.BluRay.1080p.DTS.2Audio.x264-CHD.mkv', 'Inception.2010.BluRay.1080p.DTS.2Audio.x264-CHD.mkv', null, '2', '1');
INSERT INTO `filestorage` VALUES ('2003', '/image/2003.jpg', '2003.jpg', null, '2', '1');
INSERT INTO `filestorage` VALUES ('2004', 'd:video/电影/Interstellar/Interstellar.2014.1080p.BluRay.x264.DTS-HD.MA.5.1-RARBG.mkv', 'Interstellar.2014.1080p.BluRay.x264.DTS-HD.MA.5.1-RARBG.mkv', null, '2', '1');
INSERT INTO `filestorage` VALUES ('2005', '/image/2005.jpg', '2005.jpg', null, '2', '1');
INSERT INTO `filestorage` VALUES ('2006', 'd:video/电影/Kingsman.The.Secret.Service/Kingsman.The.Secret.Service.2014.1080p.WEBRip.KORSUB.x264.AAC2.0-FGT.mkv', 'Kingsman.The.Secret.Service.2014.1080p.WEBRip.KORSUB.x264.AAC2.0-FGT.mkv', null, '2', '1');
INSERT INTO `filestorage` VALUES ('2007', '/image/2007.jpg', '2007.jpg', null, '2', '1');
INSERT INTO `filestorage` VALUES ('2008', 'd:video/电影/Mad.Max.Fury.Road/Mad.Max.Fury.Road.2015.1080p.WEB-DL.DD5.1.H264-RARBG.mkv', 'Mad.Max.Fury.Road.2015.1080p.WEB-DL.DD5.1.H264-RARBG.mkv', null, '2', '1');
INSERT INTO `filestorage` VALUES ('2009', '/image/2009.jpg', '2009.jpg', null, '2', '1');
INSERT INTO `filestorage` VALUES ('2010', 'd:video/电影/Oceans Twelve/Oceans Twelve 2004 1080p x264.mkv', 'Oceans Twelve 2004 1080p x264.mkv', null, '2', '1');
INSERT INTO `filestorage` VALUES ('2011', '/image/2011.jpg', '2011.jpg', null, '2', '1');
INSERT INTO `filestorage` VALUES ('2012', 'd:video/电影/Oldboy/Oldboy (2003) 1080p MKV x264 DTS BluRay-SilverTorrentHD.mkv', 'Oldboy (2003) 1080p MKV x264 DTS BluRay-SilverTorrentHD.mkv', null, '2', '1');
INSERT INTO `filestorage` VALUES ('2013', '/image/2013.jpg', '2013.jpg', null, '2', '1');
INSERT INTO `filestorage` VALUES ('2014', 'd:video/电影/OMG/OMG.2012.BluRay.720p.DTS.x264-beAst.mkv', 'OMG.2012.BluRay.720p.DTS.x264-beAst.mkv', null, '2', '1');
INSERT INTO `filestorage` VALUES ('2015', '/image/2015.jpg', '2015.jpg', null, '2', '1');
INSERT INTO `filestorage` VALUES ('2016', 'd:video/电影/Taken/Taken.mp4', 'Taken.mp4', null, '2', '1');
INSERT INTO `filestorage` VALUES ('2017', '/image/2017.jpg', '2017.jpg', null, '2', '1');
INSERT INTO `filestorage` VALUES ('2018', 'd:video/电影/The Girl With The Dragon Tattoo/The Girl With The Dragon Tattoo [2011] BRRiP 1080p x264 - ETRG.mp4', 'The Girl With The Dragon Tattoo [2011] BRRiP 1080p x264 - ETRG.mp4', null, '2', '1');
INSERT INTO `filestorage` VALUES ('2019', '/image/2019.jpg', '2019.jpg', null, '2', '1');
INSERT INTO `filestorage` VALUES ('2020', 'd:video/电影/Thor.The.Dark.World/Thor.The.Dark.World.2013.1080p.BluRay.DTS-HD.MA.7.1.x265.HEVC-PublicHD.mkv', 'Thor.The.Dark.World.2013.1080p.BluRay.DTS-HD.MA.7.1.x265.HEVC-PublicHD.mkv', null, '2', '1');
INSERT INTO `filestorage` VALUES ('2021', '/image/2021.jpg', '2021.jpg', null, '2', '1');
INSERT INTO `filestorage` VALUES ('2022', 'd:video/电影/七号房的礼物.mp4', '七号房的礼物.mp4', null, '1', '1');
INSERT INTO `filestorage` VALUES ('2023', '/image/2023.jpg', '2023.jpg', null, '2', '1');
INSERT INTO `filestorage` VALUES ('2024', 'd:video/电影/万物生长/万W生长.Ever.Since.We.Love.2015.HD1080P.X264.AAC.Mandarin.CHS-ENG.Mp4Ba.mp4', '万W生长.Ever.Since.We.Love.2015.HD1080P.X264.AAC.Mandarin.CHS-ENG.Mp4Ba.mp4', null, '2', '1');
INSERT INTO `filestorage` VALUES ('2025', '/image/2025.jpg', '2025.jpg', null, '2', '1');
INSERT INTO `filestorage` VALUES ('2026', 'd:video/电影/复仇者联盟.rmvb', '复仇者联盟.rmvb', null, '1', '1');
INSERT INTO `filestorage` VALUES ('2027', '/image/2027.jpg', '2027.jpg', null, '2', '1');
INSERT INTO `filestorage` VALUES ('2028', 'd:video/电影/康斯坦丁.mp4', '康斯坦丁.mp4', null, '1', '1');
INSERT INTO `filestorage` VALUES ('2029', '/image/2029.jpg', '2029.jpg', null, '2', '1');
INSERT INTO `filestorage` VALUES ('2030', 'd:video/电影/怦然心动.mkv', '怦然心动.mkv', null, '1', '1');
INSERT INTO `filestorage` VALUES ('2031', '/image/2031.jpg', '2031.jpg', null, '2', '1');
INSERT INTO `filestorage` VALUES ('2032', 'd:video/电影/我是谁：没有绝对安全的系统/我是谁：没有绝对安全的系统.Who.Am.I.2014.BD1080P.X264.AAC.German.CHS.Mp4Ba.mp4', '我是谁：没有绝对安全的系统.Who.Am.I.2014.BD1080P.X264.AAC.German.CHS.Mp4Ba.mp4', null, '2', '1');
INSERT INTO `filestorage` VALUES ('2033', '/image/2033.jpg', '2033.jpg', null, '2', '1');
INSERT INTO `filestorage` VALUES ('2034', 'd:video/电影/战狼/Z狼.Wolf.Warriors.2015.TC720P.X264.AAC.Mandarin.CHS-ENG.Mp4Ba.mp4', 'Z狼.Wolf.Warriors.2015.TC720P.X264.AAC.Mandarin.CHS-ENG.Mp4Ba.mp4', null, '2', '1');
INSERT INTO `filestorage` VALUES ('2035', '/image/2035.jpg', '2035.jpg', null, '2', '1');
INSERT INTO `filestorage` VALUES ('2036', 'd:video/电影/狩猎.mkv', '狩猎.mkv', null, '1', '1');
INSERT INTO `filestorage` VALUES ('2037', '/image/2037.jpg', '2037.jpg', null, '2', '1');
INSERT INTO `filestorage` VALUES ('2038', 'd:video/电影/盗梦空间.rmvb', '盗梦空间.rmvb', null, '1', '1');
INSERT INTO `filestorage` VALUES ('2039', '/image/2039.jpg', '2039.jpg', null, '2', '1');
INSERT INTO `filestorage` VALUES ('2040', 'd:video/电影/老男孩/梦幻天堂·龙网(killman.net).720p.复仇三部曲之二.老男孩.mkv', '梦幻天堂·龙网(killman.net).720p.复仇三部曲之二.老男孩.mkv', null, '2', '1');
INSERT INTO `filestorage` VALUES ('2041', '/image/2041.jpg', '2041.jpg', null, '2', '1');
INSERT INTO `filestorage` VALUES ('2042', 'd:video/电影/致命魔术/飞鸟娱乐[bbs.hdbird.com].致命魔术.720P.中英字幕.mkv', '飞鸟娱乐[bbs.hdbird.com].致命魔术.720P.中英字幕.mkv', null, '2', '1');
INSERT INTO `filestorage` VALUES ('2043', '/image/2043.jpg', '2043.jpg', null, '2', '1');
INSERT INTO `filestorage` VALUES ('2044', 'd:video/电影/蝙蝠侠：黑暗骑士.mp4', '蝙蝠侠：黑暗骑士.mp4', null, '1', '1');
INSERT INTO `filestorage` VALUES ('2045', '/image/2045.jpg', '2045.jpg', null, '2', '1');
INSERT INTO `filestorage` VALUES ('2046', 'd:video/电影/辩护人.mkv', '辩护人.mkv', null, '1', '1');
INSERT INTO `filestorage` VALUES ('2047', '/image/2047.jpg', '2047.jpg', null, '2', '1');
INSERT INTO `filestorage` VALUES ('2048', '/image/2048.jpg', '2048.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2049', '/image/2049.jpg', '2049.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2050', '/image/2050.jpg', '2050.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2051', '/image/2051.jpg', '2051.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2052', '/image/2052.jpg', '2052.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2053', '/image/2053.jpg', '2053.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2054', '/image/2054.jpg', '2054.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2055', '/image/2055.jpg', '2055.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2056', '/image/2056.jpg', '2056.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2057', '/image/2057.jpg', '2057.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2058', '/image/2058.jpg', '2058.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2059', '/image/2059.jpg', '2059.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2060', '/image/2060.jpg', '2060.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2061', '/image/2061.jpg', '2061.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2062', '/image/2062.jpg', '2062.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2063', '/image/2063.jpg', '2063.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2064', '/image/2064.jpg', '2064.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2065', '/image/2065.jpg', '2065.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2066', '/image/2066.jpg', '2066.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2067', '/image/2067.jpg', '2067.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2068', '/image/2068.jpg', '2068.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2069', '/image/2069.jpg', '2069.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2070', '/image/2070.jpg', '2070.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2071', '/image/2071.jpg', '2071.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2072', '/image/2072.jpg', '2072.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2073', '/image/2073.jpg', '2073.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2074', '/image/2074.jpg', '2074.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2075', '/image/2075.jpg', '2075.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2076', '/image/2076.jpg', '2076.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2077', '/image/2077.jpg', '2077.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2078', '/image/2078.jpg', '2078.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2079', '/image/2079.jpg', '2079.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2080', '/image/2080.jpg', '2080.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2081', '/image/2081.jpg', '2081.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2082', '/image/2082.jpg', '2082.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2083', '/image/2083.jpg', '2083.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2084', '/image/2084.jpg', '2084.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2085', '/image/2085.jpg', '2085.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2086', '/image/2086.jpg', '2086.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2087', '/image/2087.jpg', '2087.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2088', '/image/2088.jpg', '2088.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2089', '/image/2089.jpg', '2089.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2090', '/image/2090.jpg', '2090.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2091', '/image/2091.jpg', '2091.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2092', '/image/2092.jpg', '2092.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2093', '/image/2093.jpg', '2093.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2094', '/image/2094.jpg', '2094.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2095', '/image/2095.jpg', '2095.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2096', '/image/2096.jpg', '2096.jpg', '1292215', '2', '1');
INSERT INTO `filestorage` VALUES ('2097', '/image/2097.jpg', '2097.jpg', '6874403', '2', '1');
INSERT INTO `filestorage` VALUES ('2098', '/image/2098.jpg', '2098.jpg', '6874403', '2', '1');
INSERT INTO `filestorage` VALUES ('2099', '/image/2099.jpg', '2099.jpg', '6874403', '2', '1');
INSERT INTO `filestorage` VALUES ('2100', '/image/2100.jpg', '2100.jpg', '6874403', '2', '1');
INSERT INTO `filestorage` VALUES ('2101', '/image/2101.jpg', '2101.jpg', '6874403', '2', '1');
INSERT INTO `filestorage` VALUES ('2102', '/image/2102.jpg', '2102.jpg', '6874403', '2', '1');
INSERT INTO `filestorage` VALUES ('2103', '/image/2103.jpg', '2103.jpg', '6874403', '2', '1');
INSERT INTO `filestorage` VALUES ('2104', '/image/2104.jpg', '2104.jpg', '6874403', '2', '1');
INSERT INTO `filestorage` VALUES ('2105', '/image/2105.jpg', '2105.jpg', '6874403', '2', '1');
INSERT INTO `filestorage` VALUES ('2106', '/image/2106.jpg', '2106.jpg', '6874403', '2', '1');
INSERT INTO `filestorage` VALUES ('2107', '/image/2107.jpg', '2107.jpg', '6874403', '2', '1');
INSERT INTO `filestorage` VALUES ('2108', '/image/2108.jpg', '2108.jpg', '6874403', '2', '1');
INSERT INTO `filestorage` VALUES ('2109', '/image/2109.jpg', '2109.jpg', '6874403', '2', '1');
INSERT INTO `filestorage` VALUES ('2110', '/image/2110.jpg', '2110.jpg', '6874403', '2', '1');
INSERT INTO `filestorage` VALUES ('2111', '/image/2111.jpg', '2111.jpg', '6874403', '2', '1');
INSERT INTO `filestorage` VALUES ('2112', '/image/2112.jpg', '2112.jpg', '6874403', '2', '1');
INSERT INTO `filestorage` VALUES ('2113', '/image/2113.jpg', '2113.jpg', '6874403', '2', '1');
INSERT INTO `filestorage` VALUES ('2114', '/image/2114.jpg', '2114.jpg', '6874403', '2', '1');
INSERT INTO `filestorage` VALUES ('2115', '/image/2115.jpg', '2115.jpg', '6874403', '2', '1');
INSERT INTO `filestorage` VALUES ('2116', '/image/2116.jpg', '2116.jpg', '6874403', '2', '1');
INSERT INTO `filestorage` VALUES ('2117', '/image/2117.jpg', '2117.jpg', '6874403', '2', '1');
INSERT INTO `filestorage` VALUES ('2118', '/image/2118.jpg', '2118.jpg', '6874403', '2', '1');
INSERT INTO `filestorage` VALUES ('2119', '/image/2119.jpg', '2119.jpg', '6874403', '2', '1');
INSERT INTO `filestorage` VALUES ('2120', '/image/2120.jpg', '2120.jpg', '6874403', '2', '1');
INSERT INTO `filestorage` VALUES ('2121', '/image/2121.jpg', '2121.jpg', '6874403', '2', '1');
INSERT INTO `filestorage` VALUES ('2122', '/image/2122.jpg', '2122.jpg', '6874403', '2', '1');
INSERT INTO `filestorage` VALUES ('2123', '/image/2123.jpg', '2123.jpg', '6874403', '2', '1');
INSERT INTO `filestorage` VALUES ('2124', '/image/2124.jpg', '2124.jpg', '6874403', '2', '1');
INSERT INTO `filestorage` VALUES ('2125', '/image/2125.jpg', '2125.jpg', '6874403', '2', '1');
INSERT INTO `filestorage` VALUES ('2126', '/image/2126.jpg', '2126.jpg', '6874403', '2', '1');
INSERT INTO `filestorage` VALUES ('2127', '/image/2127.jpg', '2127.jpg', '6874403', '2', '1');
INSERT INTO `filestorage` VALUES ('2128', '/image/2128.jpg', '2128.jpg', '6874403', '2', '1');
INSERT INTO `filestorage` VALUES ('2129', '/image/2129.jpg', '2129.jpg', '6874403', '2', '1');
INSERT INTO `filestorage` VALUES ('2130', '/image/2130.jpg', '2130.jpg', '6874403', '2', '1');
INSERT INTO `filestorage` VALUES ('2131', '/image/2131.jpg', '2131.jpg', '6874403', '2', '1');
INSERT INTO `filestorage` VALUES ('2132', '/image/2132.jpg', '2132.jpg', '6874403', '2', '1');
INSERT INTO `filestorage` VALUES ('2133', '/image/2133.jpg', '2133.jpg', '6874403', '2', '1');
INSERT INTO `filestorage` VALUES ('2134', '/image/2134.jpg', '2134.jpg', '6874403', '2', '1');
INSERT INTO `filestorage` VALUES ('2135', '/image/2135.jpg', '2135.jpg', '6874403', '2', '1');
INSERT INTO `filestorage` VALUES ('2136', '/image/2136.jpg', '2136.jpg', '6874403', '2', '1');
INSERT INTO `filestorage` VALUES ('2137', '/image/2137.jpg', '2137.jpg', '6874403', '2', '1');
INSERT INTO `filestorage` VALUES ('2138', '/image/2138.jpg', '2138.jpg', '6874403', '2', '1');
INSERT INTO `filestorage` VALUES ('2139', '/image/2139.jpg', '2139.jpg', '6874403', '2', '1');
INSERT INTO `filestorage` VALUES ('2140', '/image/2140.jpg', '2140.jpg', '6874403', '2', '1');
INSERT INTO `filestorage` VALUES ('2141', '/image/2141.jpg', '2141.jpg', '1291828', '2', '1');
INSERT INTO `filestorage` VALUES ('2142', '/image/2142.jpg', '2142.jpg', '1291828', '2', '1');
INSERT INTO `filestorage` VALUES ('2143', '/image/2143.jpg', '2143.jpg', '1291828', '2', '1');
INSERT INTO `filestorage` VALUES ('2144', '/image/2144.jpg', '2144.jpg', '1291828', '2', '1');
INSERT INTO `filestorage` VALUES ('2145', '/image/2145.jpg', '2145.jpg', '1291828', '2', '1');
INSERT INTO `filestorage` VALUES ('2146', '/image/2146.jpg', '2146.jpg', '1291828', '2', '1');
INSERT INTO `filestorage` VALUES ('2147', '/image/2147.jpg', '2147.jpg', '1291828', '2', '1');
INSERT INTO `filestorage` VALUES ('2148', '/image/2148.jpg', '2148.jpg', '1291828', '2', '1');
INSERT INTO `filestorage` VALUES ('2149', '/image/2149.jpg', '2149.jpg', '1291828', '2', '1');
INSERT INTO `filestorage` VALUES ('2150', '/image/2150.jpg', '2150.jpg', '1291828', '2', '1');
INSERT INTO `filestorage` VALUES ('2151', '/image/2151.jpg', '2151.jpg', '1291828', '2', '1');
INSERT INTO `filestorage` VALUES ('2152', '/image/2152.jpg', '2152.jpg', '1291828', '2', '1');
INSERT INTO `filestorage` VALUES ('2153', '/image/2153.jpg', '2153.jpg', '1291828', '2', '1');
INSERT INTO `filestorage` VALUES ('2154', '/image/2154.jpg', '2154.jpg', '1291828', '2', '1');
INSERT INTO `filestorage` VALUES ('2155', '/image/2155.jpg', '2155.jpg', '1291828', '2', '1');
INSERT INTO `filestorage` VALUES ('2156', '/image/2156.jpg', '2156.jpg', '1291828', '2', '1');
INSERT INTO `filestorage` VALUES ('2157', '/image/2157.jpg', '2157.jpg', '1291828', '2', '1');
INSERT INTO `filestorage` VALUES ('2158', '/image/2158.jpg', '2158.jpg', '1291828', '2', '1');
INSERT INTO `filestorage` VALUES ('2159', '/image/2159.jpg', '2159.jpg', '1291828', '2', '1');
INSERT INTO `filestorage` VALUES ('2160', '/image/2160.jpg', '2160.jpg', '1291828', '2', '1');
INSERT INTO `filestorage` VALUES ('2161', '/image/2161.jpg', '2161.jpg', '1291828', '2', '1');
INSERT INTO `filestorage` VALUES ('2162', '/image/2162.jpg', '2162.jpg', '1291828', '2', '1');
INSERT INTO `filestorage` VALUES ('2163', '/image/2163.jpg', '2163.jpg', '1291828', '2', '1');
INSERT INTO `filestorage` VALUES ('2164', '/image/2164.jpg', '2164.jpg', '1291828', '2', '1');
INSERT INTO `filestorage` VALUES ('2165', '/image/2165.jpg', '2165.jpg', '1291828', '2', '1');
INSERT INTO `filestorage` VALUES ('2166', '/image/2166.jpg', '2166.jpg', '1291828', '2', '1');
INSERT INTO `filestorage` VALUES ('2167', '/image/2167.jpg', '2167.jpg', '1291828', '2', '1');
INSERT INTO `filestorage` VALUES ('2168', '/image/2168.jpg', '2168.jpg', '1291828', '2', '1');
INSERT INTO `filestorage` VALUES ('2169', '/image/2169.jpg', '2169.jpg', '1291828', '2', '1');
INSERT INTO `filestorage` VALUES ('2170', '/image/2170.jpg', '2170.jpg', '1291828', '2', '1');
INSERT INTO `filestorage` VALUES ('2171', '/image/2171.jpg', '2171.jpg', '1291828', '2', '1');
INSERT INTO `filestorage` VALUES ('2172', '/image/2172.jpg', '2172.jpg', '1291828', '2', '1');
INSERT INTO `filestorage` VALUES ('2173', '/image/2173.jpg', '2173.jpg', '1291828', '2', '1');
INSERT INTO `filestorage` VALUES ('2174', '/image/2174.jpg', '2174.jpg', '1291828', '2', '1');
INSERT INTO `filestorage` VALUES ('2175', '/image/2175.jpg', '2175.jpg', '1291828', '2', '1');
INSERT INTO `filestorage` VALUES ('2176', '/image/2176.jpg', '2176.jpg', '1291828', '2', '1');
INSERT INTO `filestorage` VALUES ('2177', '/image/2177.jpg', '2177.jpg', '1291828', '2', '1');
INSERT INTO `filestorage` VALUES ('2178', '/image/2178.jpg', '2178.jpg', '1291828', '2', '1');
INSERT INTO `filestorage` VALUES ('2179', '/image/2179.jpg', '2179.jpg', '1291828', '2', '1');
INSERT INTO `filestorage` VALUES ('2180', '/image/2180.jpg', '2180.jpg', '1291828', '2', '1');
INSERT INTO `filestorage` VALUES ('2181', '/image/2181.jpg', '2181.jpg', '1291828', '2', '1');
INSERT INTO `filestorage` VALUES ('2182', '/image/2182.jpg', '2182.jpg', '1291828', '2', '1');
INSERT INTO `filestorage` VALUES ('2183', '/image/2183.jpg', '2183.jpg', '1291828', '2', '1');
INSERT INTO `filestorage` VALUES ('2184', '/image/2184.jpg', '2184.jpg', '1291828', '2', '1');
INSERT INTO `filestorage` VALUES ('2185', '/image/2185.jpg', '2185.jpg', '1291828', '2', '1');
INSERT INTO `filestorage` VALUES ('2186', '/image/2186.jpg', '2186.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2187', '/image/2187.jpg', '2187.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2188', '/image/2188.jpg', '2188.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2189', '/image/2189.jpg', '2189.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2190', '/image/2190.jpg', '2190.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2191', '/image/2191.jpg', '2191.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2192', '/image/2192.jpg', '2192.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2193', '/image/2193.jpg', '2193.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2194', '/image/2194.jpg', '2194.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2195', '/image/2195.jpg', '2195.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2196', '/image/2196.jpg', '2196.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2197', '/image/2197.jpg', '2197.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2198', '/image/2198.jpg', '2198.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2199', '/image/2199.jpg', '2199.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2200', '/image/2200.jpg', '2200.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2201', '/image/2201.jpg', '2201.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2202', '/image/2202.jpg', '2202.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2203', '/image/2203.jpg', '2203.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2204', '/image/2204.jpg', '2204.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2205', '/image/2205.jpg', '2205.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2206', '/image/2206.jpg', '2206.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2207', '/image/2207.jpg', '2207.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2208', '/image/2208.jpg', '2208.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2209', '/image/2209.jpg', '2209.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2210', '/image/2210.jpg', '2210.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2211', '/image/2211.jpg', '2211.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2212', '/image/2212.jpg', '2212.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2213', '/image/2213.jpg', '2213.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2214', '/image/2214.jpg', '2214.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2215', '/image/2215.jpg', '2215.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2216', '/image/2216.jpg', '2216.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2217', '/image/2217.jpg', '2217.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2218', '/image/2218.jpg', '2218.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2219', '/image/2219.jpg', '2219.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2220', '/image/2220.jpg', '2220.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2221', '/image/2221.jpg', '2221.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2222', '/image/2222.jpg', '2222.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2223', '/image/2223.jpg', '2223.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2224', '/image/2224.jpg', '2224.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2225', '/image/2225.jpg', '2225.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2226', '/image/2226.jpg', '2226.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2227', '/image/2227.jpg', '2227.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2228', '/image/2228.jpg', '2228.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2229', '/image/2229.jpg', '2229.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2230', '/image/2230.jpg', '2230.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2231', '/image/2231.jpg', '2231.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2232', '/image/2232.jpg', '2232.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2233', '/image/2233.jpg', '2233.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2234', '/image/2234.jpg', '2234.jpg', '1866479', '2', '1');
INSERT INTO `filestorage` VALUES ('2235', '/image/2235.jpg', '2235.jpg', '10777687', '2', '1');
INSERT INTO `filestorage` VALUES ('2236', '/image/2236.jpg', '2236.jpg', '10777687', '2', '1');
INSERT INTO `filestorage` VALUES ('2237', '/image/2237.jpg', '2237.jpg', '10777687', '2', '1');
INSERT INTO `filestorage` VALUES ('2238', '/image/2238.jpg', '2238.jpg', '10777687', '2', '1');
INSERT INTO `filestorage` VALUES ('2239', '/image/2239.jpg', '2239.jpg', '10777687', '2', '1');
INSERT INTO `filestorage` VALUES ('2240', '/image/2240.jpg', '2240.jpg', '10777687', '2', '1');
INSERT INTO `filestorage` VALUES ('2241', '/image/2241.jpg', '2241.jpg', '10777687', '2', '1');
INSERT INTO `filestorage` VALUES ('2242', '/image/2242.jpg', '2242.jpg', '10777687', '2', '1');
INSERT INTO `filestorage` VALUES ('2243', '/image/2243.jpg', '2243.jpg', '10777687', '2', '1');
INSERT INTO `filestorage` VALUES ('2244', '/image/2244.jpg', '2244.jpg', '10777687', '2', '1');
INSERT INTO `filestorage` VALUES ('2245', '/image/2245.jpg', '2245.jpg', '10777687', '2', '1');
INSERT INTO `filestorage` VALUES ('2246', '/image/2246.jpg', '2246.jpg', '10777687', '2', '1');
INSERT INTO `filestorage` VALUES ('2247', '/image/2247.jpg', '2247.jpg', '10777687', '2', '1');
INSERT INTO `filestorage` VALUES ('2248', '/image/2248.jpg', '2248.jpg', '10777687', '2', '1');
INSERT INTO `filestorage` VALUES ('2249', '/image/2249.jpg', '2249.jpg', '10777687', '2', '1');
INSERT INTO `filestorage` VALUES ('2250', '/image/2250.jpg', '2250.jpg', '10777687', '2', '1');
INSERT INTO `filestorage` VALUES ('2251', '/image/2251.jpg', '2251.jpg', '10777687', '2', '1');
INSERT INTO `filestorage` VALUES ('2252', '/image/2252.jpg', '2252.jpg', '10777687', '2', '1');
INSERT INTO `filestorage` VALUES ('2253', '/image/2253.jpg', '2253.jpg', '10777687', '2', '1');
INSERT INTO `filestorage` VALUES ('2254', '/image/2254.jpg', '2254.jpg', '10777687', '2', '1');
INSERT INTO `filestorage` VALUES ('2255', '/image/2255.jpg', '2255.jpg', '10777687', '2', '1');
INSERT INTO `filestorage` VALUES ('2256', '/image/2256.jpg', '2256.jpg', '10777687', '2', '1');
INSERT INTO `filestorage` VALUES ('2257', '/image/2257.jpg', '2257.jpg', '10777687', '2', '1');
INSERT INTO `filestorage` VALUES ('2258', '/image/2258.jpg', '2258.jpg', '10777687', '2', '1');
INSERT INTO `filestorage` VALUES ('2259', '/image/2259.jpg', '2259.jpg', '10777687', '2', '1');
INSERT INTO `filestorage` VALUES ('2260', '/image/2260.jpg', '2260.jpg', '10777687', '2', '1');
INSERT INTO `filestorage` VALUES ('2261', '/image/2261.jpg', '2261.jpg', '10777687', '2', '1');
INSERT INTO `filestorage` VALUES ('2262', '/image/2262.jpg', '2262.jpg', '10777687', '2', '1');
INSERT INTO `filestorage` VALUES ('2263', '/image/2263.jpg', '2263.jpg', '10777687', '2', '1');
INSERT INTO `filestorage` VALUES ('2264', '/image/2264.jpg', '2264.jpg', '10777687', '2', '1');
INSERT INTO `filestorage` VALUES ('2265', '/image/2265.jpg', '2265.jpg', '10777687', '2', '1');
INSERT INTO `filestorage` VALUES ('2266', '/image/2266.jpg', '2266.jpg', '10777687', '2', '1');
INSERT INTO `filestorage` VALUES ('2267', '/image/2267.jpg', '2267.jpg', '10777687', '2', '1');
INSERT INTO `filestorage` VALUES ('2268', '/image/2268.jpg', '2268.jpg', '10777687', '2', '1');
INSERT INTO `filestorage` VALUES ('2269', '/image/2269.jpg', '2269.jpg', '10777687', '2', '1');
INSERT INTO `filestorage` VALUES ('2270', '/image/2270.jpg', '2270.jpg', '10777687', '2', '1');
INSERT INTO `filestorage` VALUES ('2271', '/image/2271.jpg', '2271.jpg', '10777687', '2', '1');
INSERT INTO `filestorage` VALUES ('2272', '/image/2272.jpg', '2272.jpg', '10777687', '2', '1');
INSERT INTO `filestorage` VALUES ('2273', '/image/2273.jpg', '2273.jpg', '10777687', '2', '1');
INSERT INTO `filestorage` VALUES ('2274', '/image/2274.jpg', '2274.jpg', '10777687', '2', '1');
INSERT INTO `filestorage` VALUES ('2275', '/image/2275.jpg', '2275.jpg', '10777687', '2', '1');
INSERT INTO `filestorage` VALUES ('2276', '/image/2276.jpg', '2276.jpg', '10777687', '2', '1');
INSERT INTO `filestorage` VALUES ('2277', '/image/2277.jpg', '2277.jpg', '10777687', '2', '1');
INSERT INTO `filestorage` VALUES ('2278', '/image/2278.jpg', '2278.jpg', '10777687', '2', '1');
INSERT INTO `filestorage` VALUES ('2279', '/image/2279.jpg', '2279.jpg', '25872931', '2', '1');
INSERT INTO `filestorage` VALUES ('2280', '/image/2280.jpg', '2280.jpg', '25872931', '2', '1');
INSERT INTO `filestorage` VALUES ('2281', '/image/2281.jpg', '2281.jpg', '25872931', '2', '1');
INSERT INTO `filestorage` VALUES ('2282', '/image/2282.jpg', '2282.jpg', '25872931', '2', '1');
INSERT INTO `filestorage` VALUES ('2283', '/image/2283.jpg', '2283.jpg', '25872931', '2', '1');
INSERT INTO `filestorage` VALUES ('2284', '/image/2284.jpg', '2284.jpg', '25872931', '2', '1');
INSERT INTO `filestorage` VALUES ('2285', '/image/2285.jpg', '2285.jpg', '25872931', '2', '1');
INSERT INTO `filestorage` VALUES ('2286', '/image/2286.jpg', '2286.jpg', '25872931', '2', '1');
INSERT INTO `filestorage` VALUES ('2287', '/image/2287.jpg', '2287.jpg', '25872931', '2', '1');
INSERT INTO `filestorage` VALUES ('2288', '/image/2288.jpg', '2288.jpg', '25872931', '2', '1');
INSERT INTO `filestorage` VALUES ('2289', '/image/2289.jpg', '2289.jpg', '25872931', '2', '1');
INSERT INTO `filestorage` VALUES ('2290', '/image/2290.jpg', '2290.jpg', '25872931', '2', '1');
INSERT INTO `filestorage` VALUES ('2291', '/image/2291.jpg', '2291.jpg', '25872931', '2', '1');
INSERT INTO `filestorage` VALUES ('2292', '/image/2292.jpg', '2292.jpg', '25872931', '2', '1');
INSERT INTO `filestorage` VALUES ('2293', '/image/2293.jpg', '2293.jpg', '25872931', '2', '1');
INSERT INTO `filestorage` VALUES ('2294', '/image/2294.jpg', '2294.jpg', '25872931', '2', '1');
INSERT INTO `filestorage` VALUES ('2295', '/image/2295.jpg', '2295.jpg', '25872931', '2', '1');
INSERT INTO `filestorage` VALUES ('2296', '/image/2296.jpg', '2296.jpg', '25872931', '2', '1');
INSERT INTO `filestorage` VALUES ('2297', '/image/2297.jpg', '2297.jpg', '25872931', '2', '1');
INSERT INTO `filestorage` VALUES ('2298', '/image/2298.jpg', '2298.jpg', '25872931', '2', '1');
INSERT INTO `filestorage` VALUES ('2299', '/image/2299.jpg', '2299.jpg', '25872931', '2', '1');
INSERT INTO `filestorage` VALUES ('2300', '/image/2300.jpg', '2300.jpg', '25872931', '2', '1');
INSERT INTO `filestorage` VALUES ('2301', '/image/2301.jpg', '2301.jpg', '25872931', '2', '1');
INSERT INTO `filestorage` VALUES ('2302', '/image/2302.jpg', '2302.jpg', '25872931', '2', '1');
INSERT INTO `filestorage` VALUES ('2303', '/image/2303.jpg', '2303.jpg', '25872931', '2', '1');
INSERT INTO `filestorage` VALUES ('2304', '/image/2304.jpg', '2304.jpg', '25872931', '2', '1');
INSERT INTO `filestorage` VALUES ('2305', '/image/2305.jpg', '2305.jpg', '25872931', '2', '1');
INSERT INTO `filestorage` VALUES ('2306', '/image/2306.jpg', '2306.jpg', '25872931', '2', '1');
INSERT INTO `filestorage` VALUES ('2307', '/image/2307.jpg', '2307.jpg', '25872931', '2', '1');
INSERT INTO `filestorage` VALUES ('2308', '/image/2308.jpg', '2308.jpg', '25872931', '2', '1');
INSERT INTO `filestorage` VALUES ('2309', '/image/2309.jpg', '2309.jpg', '25872931', '2', '1');
INSERT INTO `filestorage` VALUES ('2310', '/image/2310.jpg', '2310.jpg', '25872931', '2', '1');
INSERT INTO `filestorage` VALUES ('2311', '/image/2311.jpg', '2311.jpg', '25872931', '2', '1');
INSERT INTO `filestorage` VALUES ('2312', '/image/2312.jpg', '2312.jpg', '25872931', '2', '1');
INSERT INTO `filestorage` VALUES ('2313', '/image/2313.jpg', '2313.jpg', '25872931', '2', '1');
INSERT INTO `filestorage` VALUES ('2314', '/image/2314.jpg', '2314.jpg', '25872931', '2', '1');
INSERT INTO `filestorage` VALUES ('2315', '/image/2315.jpg', '2315.jpg', '25872931', '2', '1');
INSERT INTO `filestorage` VALUES ('2316', '/image/2316.jpg', '2316.jpg', '25872931', '2', '1');
INSERT INTO `filestorage` VALUES ('2317', '/image/2317.jpg', '2317.jpg', '25872931', '2', '1');
INSERT INTO `filestorage` VALUES ('2318', '/image/2318.jpg', '2318.jpg', '25872931', '2', '1');
INSERT INTO `filestorage` VALUES ('2319', '/image/2319.jpg', '2319.jpg', '25872931', '2', '1');
INSERT INTO `filestorage` VALUES ('2320', '/image/2320.jpg', '2320.jpg', '25872931', '2', '1');
INSERT INTO `filestorage` VALUES ('2321', '/image/2321.jpg', '2321.jpg', '25872931', '2', '1');
INSERT INTO `filestorage` VALUES ('2322', '/image/2322.jpg', '2322.jpg', '25872931', '2', '1');
INSERT INTO `filestorage` VALUES ('2323', '/image/2323.jpg', '2323.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2324', '/image/2324.jpg', '2324.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2325', '/image/2325.jpg', '2325.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2326', '/image/2326.jpg', '2326.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2327', '/image/2327.jpg', '2327.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2328', '/image/2328.jpg', '2328.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2329', '/image/2329.jpg', '2329.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2330', '/image/2330.jpg', '2330.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2331', '/image/2331.jpg', '2331.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2332', '/image/2332.jpg', '2332.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2333', '/image/2333.jpg', '2333.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2334', '/image/2334.jpg', '2334.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2335', '/image/2335.jpg', '2335.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2336', '/image/2336.jpg', '2336.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2337', '/image/2337.jpg', '2337.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2338', '/image/2338.jpg', '2338.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2339', '/image/2339.jpg', '2339.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2340', '/image/2340.jpg', '2340.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2341', '/image/2341.jpg', '2341.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2342', '/image/2342.jpg', '2342.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2343', '/image/2343.jpg', '2343.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2344', '/image/2344.jpg', '2344.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2345', '/image/2345.jpg', '2345.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2346', '/image/2346.jpg', '2346.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2347', '/image/2347.jpg', '2347.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2348', '/image/2348.jpg', '2348.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2349', '/image/2349.jpg', '2349.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2350', '/image/2350.jpg', '2350.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2351', '/image/2351.jpg', '2351.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2352', '/image/2352.jpg', '2352.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2353', '/image/2353.jpg', '2353.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2354', '/image/2354.jpg', '2354.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2355', '/image/2355.jpg', '2355.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2356', '/image/2356.jpg', '2356.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2357', '/image/2357.jpg', '2357.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2358', '/image/2358.jpg', '2358.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2359', '/image/2359.jpg', '2359.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2360', '/image/2360.jpg', '2360.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2361', '/image/2361.jpg', '2361.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2362', '/image/2362.jpg', '2362.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2363', '/image/2363.jpg', '2363.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2364', '/image/2364.jpg', '2364.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2365', '/image/2365.jpg', '2365.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2366', '/image/2366.jpg', '2366.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2367', '/image/2367.jpg', '2367.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2368', '/image/2368.jpg', '2368.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2369', '/image/2369.jpg', '2369.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2370', '/image/2370.jpg', '2370.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2371', '/image/2371.jpg', '2371.jpg', '3319755', '2', '1');
INSERT INTO `filestorage` VALUES ('2372', '/image/2372.jpg', '2372.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2373', '/image/2373.jpg', '2373.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2374', '/image/2374.jpg', '2374.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2375', '/image/2375.jpg', '2375.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2376', '/image/2376.jpg', '2376.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2377', '/image/2377.jpg', '2377.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2378', '/image/2378.jpg', '2378.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2379', '/image/2379.jpg', '2379.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2380', '/image/2380.jpg', '2380.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2381', '/image/2381.jpg', '2381.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2382', '/image/2382.jpg', '2382.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2383', '/image/2383.jpg', '2383.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2384', '/image/2384.jpg', '2384.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2385', '/image/2385.jpg', '2385.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2386', '/image/2386.jpg', '2386.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2387', '/image/2387.jpg', '2387.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2388', '/image/2388.jpg', '2388.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2389', '/image/2389.jpg', '2389.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2390', '/image/2390.jpg', '2390.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2391', '/image/2391.jpg', '2391.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2392', '/image/2392.jpg', '2392.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2393', '/image/2393.jpg', '2393.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2394', '/image/2394.jpg', '2394.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2395', '/image/2395.jpg', '2395.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2396', '/image/2396.jpg', '2396.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2397', '/image/2397.jpg', '2397.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2398', '/image/2398.jpg', '2398.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2399', '/image/2399.jpg', '2399.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2400', '/image/2400.jpg', '2400.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2401', '/image/2401.jpg', '2401.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2402', '/image/2402.jpg', '2402.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2403', '/image/2403.jpg', '2403.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2404', '/image/2404.jpg', '2404.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2405', '/image/2405.jpg', '2405.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2406', '/image/2406.jpg', '2406.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2407', '/image/2407.jpg', '2407.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2408', '/image/2408.jpg', '2408.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2409', '/image/2409.jpg', '2409.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2410', '/image/2410.jpg', '2410.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2411', '/image/2411.jpg', '2411.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2412', '/image/2412.jpg', '2412.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2413', '/image/2413.jpg', '2413.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2414', '/image/2414.jpg', '2414.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2415', '/image/2415.jpg', '2415.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2416', '/image/2416.jpg', '2416.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2417', '/image/2417.jpg', '2417.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2418', '/image/2418.jpg', '2418.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2419', '/image/2419.jpg', '2419.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2420', '/image/2420.jpg', '2420.jpg', '6560058', '2', '1');
INSERT INTO `filestorage` VALUES ('2421', '/image/2421.jpg', '2421.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2422', '/image/2422.jpg', '2422.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2423', '/image/2423.jpg', '2423.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2424', '/image/2424.jpg', '2424.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2425', '/image/2425.jpg', '2425.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2426', '/image/2426.jpg', '2426.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2427', '/image/2427.jpg', '2427.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2428', '/image/2428.jpg', '2428.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2429', '/image/2429.jpg', '2429.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2430', '/image/2430.jpg', '2430.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2431', '/image/2431.jpg', '2431.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2432', '/image/2432.jpg', '2432.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2433', '/image/2433.jpg', '2433.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2434', '/image/2434.jpg', '2434.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2435', '/image/2435.jpg', '2435.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2436', '/image/2436.jpg', '2436.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2437', '/image/2437.jpg', '2437.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2438', '/image/2438.jpg', '2438.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2439', '/image/2439.jpg', '2439.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2440', '/image/2440.jpg', '2440.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2441', '/image/2441.jpg', '2441.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2442', '/image/2442.jpg', '2442.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2443', '/image/2443.jpg', '2443.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2444', '/image/2444.jpg', '2444.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2445', '/image/2445.jpg', '2445.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2446', '/image/2446.jpg', '2446.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2447', '/image/2447.jpg', '2447.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2448', '/image/2448.jpg', '2448.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2449', '/image/2449.jpg', '2449.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2450', '/image/2450.jpg', '2450.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2451', '/image/2451.jpg', '2451.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2452', '/image/2452.jpg', '2452.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2453', '/image/2453.jpg', '2453.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2454', '/image/2454.jpg', '2454.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2455', '/image/2455.jpg', '2455.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2456', '/image/2456.jpg', '2456.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2457', '/image/2457.jpg', '2457.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2458', '/image/2458.jpg', '2458.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2459', '/image/2459.jpg', '2459.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2460', '/image/2460.jpg', '2460.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2461', '/image/2461.jpg', '2461.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2462', '/image/2462.jpg', '2462.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2463', '/image/2463.jpg', '2463.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2464', '/image/2464.jpg', '2464.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2465', '/image/2465.jpg', '2465.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2466', '/image/2466.jpg', '2466.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2467', '/image/2467.jpg', '2467.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2468', '/image/2468.jpg', '2468.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2469', '/image/2469.jpg', '2469.jpg', '1309021', '2', '1');
INSERT INTO `filestorage` VALUES ('2470', '/image/2470.jpg', '2470.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2471', '/image/2471.jpg', '2471.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2472', '/image/2472.jpg', '2472.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2473', '/image/2473.jpg', '2473.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2474', '/image/2474.jpg', '2474.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2475', '/image/2475.jpg', '2475.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2476', '/image/2476.jpg', '2476.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2477', '/image/2477.jpg', '2477.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2478', '/image/2478.jpg', '2478.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2479', '/image/2479.jpg', '2479.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2480', '/image/2480.jpg', '2480.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2481', '/image/2481.jpg', '2481.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2482', '/image/2482.jpg', '2482.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2483', '/image/2483.jpg', '2483.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2484', '/image/2484.jpg', '2484.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2485', '/image/2485.jpg', '2485.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2486', '/image/2486.jpg', '2486.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2487', '/image/2487.jpg', '2487.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2488', '/image/2488.jpg', '2488.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2489', '/image/2489.jpg', '2489.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2490', '/image/2490.jpg', '2490.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2491', '/image/2491.jpg', '2491.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2492', '/image/2492.jpg', '2492.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2493', '/image/2493.jpg', '2493.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2494', '/image/2494.jpg', '2494.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2495', '/image/2495.jpg', '2495.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2496', '/image/2496.jpg', '2496.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2497', '/image/2497.jpg', '2497.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2498', '/image/2498.jpg', '2498.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2499', '/image/2499.jpg', '2499.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2500', '/image/2500.jpg', '2500.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2501', '/image/2501.jpg', '2501.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2502', '/image/2502.jpg', '2502.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2503', '/image/2503.jpg', '2503.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2504', '/image/2504.jpg', '2504.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2505', '/image/2505.jpg', '2505.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2506', '/image/2506.jpg', '2506.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2507', '/image/2507.jpg', '2507.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2508', '/image/2508.jpg', '2508.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2509', '/image/2509.jpg', '2509.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2510', '/image/2510.jpg', '2510.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2511', '/image/2511.jpg', '2511.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2512', '/image/2512.jpg', '2512.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2513', '/image/2513.jpg', '2513.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2514', '/image/2514.jpg', '2514.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2515', '/image/2515.jpg', '2515.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2516', '/image/2516.jpg', '2516.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2517', '/image/2517.jpg', '2517.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2518', '/image/2518.jpg', '2518.jpg', '4160540', '2', '1');
INSERT INTO `filestorage` VALUES ('2519', '/image/2519.jpg', '2519.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2520', '/image/2520.jpg', '2520.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2521', '/image/2521.jpg', '2521.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2522', '/image/2522.jpg', '2522.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2523', '/image/2523.jpg', '2523.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2524', '/image/2524.jpg', '2524.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2525', '/image/2525.jpg', '2525.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2526', '/image/2526.jpg', '2526.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2527', '/image/2527.jpg', '2527.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2528', '/image/2528.jpg', '2528.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2529', '/image/2529.jpg', '2529.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2530', '/image/2530.jpg', '2530.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2531', '/image/2531.jpg', '2531.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2532', '/image/2532.jpg', '2532.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2533', '/image/2533.jpg', '2533.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2534', '/image/2534.jpg', '2534.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2535', '/image/2535.jpg', '2535.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2536', '/image/2536.jpg', '2536.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2537', '/image/2537.jpg', '2537.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2538', '/image/2538.jpg', '2538.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2539', '/image/2539.jpg', '2539.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2540', '/image/2540.jpg', '2540.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2541', '/image/2541.jpg', '2541.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2542', '/image/2542.jpg', '2542.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2543', '/image/2543.jpg', '2543.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2544', '/image/2544.jpg', '2544.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2545', '/image/2545.jpg', '2545.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2546', '/image/2546.jpg', '2546.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2547', '/image/2547.jpg', '2547.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2548', '/image/2548.jpg', '2548.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2549', '/image/2549.jpg', '2549.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2550', '/image/2550.jpg', '2550.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2551', '/image/2551.jpg', '2551.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2552', '/image/2552.jpg', '2552.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2553', '/image/2553.jpg', '2553.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2554', '/image/2554.jpg', '2554.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2555', '/image/2555.jpg', '2555.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2556', '/image/2556.jpg', '2556.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2557', '/image/2557.jpg', '2557.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2558', '/image/2558.jpg', '2558.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2559', '/image/2559.jpg', '2559.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2560', '/image/2560.jpg', '2560.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2561', '/image/2561.jpg', '2561.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2562', '/image/2562.jpg', '2562.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2563', '/image/2563.jpg', '2563.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2564', '/image/2564.jpg', '2564.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2565', '/image/2565.jpg', '2565.jpg', '1292344', '2', '1');
INSERT INTO `filestorage` VALUES ('2566', '/image/2566.jpg', '2566.jpg', '1292344', '2', '1');

-- ----------------------------
-- Table structure for `filterrule`
-- ----------------------------
DROP TABLE IF EXISTS `filterrule`;
CREATE TABLE `filterrule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rule` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of filterrule
-- ----------------------------

-- ----------------------------
-- Table structure for `movie`
-- ----------------------------
DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  `photo` int(11) DEFAULT NULL,
  `filestorageId` int(11) DEFAULT NULL,
  `doubanId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1100 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie
-- ----------------------------
INSERT INTO `movie` VALUES ('1072', 'Amelie', '1993', '1992', '1292215');
INSERT INTO `movie` VALUES ('1073', 'Begin Again', '1995', '1994', '6874403');
INSERT INTO `movie` VALUES ('1074', 'Cinema.Paradiso', '1997', '1996', '1291828');
INSERT INTO `movie` VALUES ('1075', 'Ex.Machina', '1999', '1998', '4160540');
INSERT INTO `movie` VALUES ('1076', 'Following', '2001', '2000', '1397546');
INSERT INTO `movie` VALUES ('1077', 'Inception', '2003', '2002', '3541415');
INSERT INTO `movie` VALUES ('1078', 'Interstellar', '2005', '2004', '1889243');
INSERT INTO `movie` VALUES ('1079', 'Kingsman.The.Secret.Service', '2007', '2006', '24405378');
INSERT INTO `movie` VALUES ('1080', 'Mad.Max.Fury.Road', '2009', '2008', '3592854');
INSERT INTO `movie` VALUES ('1081', 'Oceans Twelve', '2011', '2010', '1292344');
INSERT INTO `movie` VALUES ('1082', 'Oldboy', '2013', '2012', '3279054');
INSERT INTO `movie` VALUES ('1083', 'OMG', '2015', '2014', '19945757');
INSERT INTO `movie` VALUES ('1084', 'Taken', '2017', '2016', '2124586');
INSERT INTO `movie` VALUES ('1085', 'The Girl With The Dragon Tattoo', '2019', '2018', '4206357');
INSERT INTO `movie` VALUES ('1086', 'Thor.The.Dark.World', '2021', '2020', '6560058');
INSERT INTO `movie` VALUES ('1087', '七号房的礼物', '2023', '2022', '10777687');
INSERT INTO `movie` VALUES ('1088', '万物生长', '2025', '2024', '25872931');
INSERT INTO `movie` VALUES ('1089', '复仇者联盟', '2027', '2026', '1866479');
INSERT INTO `movie` VALUES ('1090', '康斯坦丁', '2029', '2028', '1309021');
INSERT INTO `movie` VALUES ('1091', '怦然心动', '2031', '2030', '3319755');
INSERT INTO `movie` VALUES ('1092', '我是谁：没有绝对安全的系统', '2033', '2032', '25932086');
INSERT INTO `movie` VALUES ('1093', '战狼', '2035', '2034', '24753810');
INSERT INTO `movie` VALUES ('1094', '狩猎', '2037', '2036', '6985810');
INSERT INTO `movie` VALUES ('1095', '盗梦空间', '2039', '2038', '3541415');
INSERT INTO `movie` VALUES ('1096', '老男孩', '2041', '2040', '1308865');
INSERT INTO `movie` VALUES ('1097', '致命魔术', '2043', '2042', '1780330');
INSERT INTO `movie` VALUES ('1098', '蝙蝠侠：黑暗骑士', '2045', '2044', '1851857');
INSERT INTO `movie` VALUES ('1099', '辩护人', '2047', '2046', '21937445');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
