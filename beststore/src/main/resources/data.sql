delete from ordersreturn;
delete from discuss;
delete from blog;
delete from ordersdetail;
delete from orders;
delete from favorite;
delete from cart;
delete from GOODS;
delete from type;
delete from store;
delete from address;
delete from Human;


INSERT INTO human VALUES ('1000', 'hello', '299614D7F27CC981F3AD1F7BE45C7087', null, null, null, '2018-09-01 18:43:47', null, null, '', null, '2');
INSERT INTO human VALUES ('1001', '故事', '42246CADA6C9C673A76CA961AFC8D31C', null, '170', '56.00', '2018-08-30 16:52:05', '430481199801040071', '18374724167', '1332809265@qq.com', 'adzx.jpg', '1');
INSERT INTO human VALUES ('1002', 'yc', 'B6A03A8B56908C8417F0AF64BA554B62', null, null, null, '2018-08-26 16:11:20', null, null, 'leomu@foxmail.com', null, '1');
INSERT INTO human VALUES ('1007', '真洺', '8F3EF7B93A0CD0ECAF2CD67F2197B77C', '1', '180', '88.00', '2018-09-01 17:24:54', '145589199811255', '18374724159', '414999944@qq.com', '王嘉尔.png', '1');
INSERT INTO human VALUES ('1010', 'clean', '6EE9D6D67C79CD060FB36721FA3FC861', '1', '165', '96.00', '2018-09-01 00:00:00', '430481199801040073', '18374724192', '1332809262@qq.com', 'sdggrhdfffffges.jpg', '0');

INSERT INTO address VALUES (null,'18374724161', '湖南省 衡阳市 珠晖区 衡州路街道 ', '湖南工学院', '朴海', '1', '1000');
INSERT INTO address VALUES (null,'1758963562', '湖南省', '湖南', 'hello', '1', '1001');

INSERT INTO store VALUES ('1000', 'champion', '冠军', '9.60', '1', '100-20,200-30', '2018-08-30 16:40:07', '1001');
INSERT INTO store VALUES ('1002', 'adidas', '亚军', '2.60', '1', null, '2018-08-28 15:49:44', '1002');
INSERT INTO store VALUES ('1006', '国潮', '顾客是上帝喵喵喵', '10.00', '1', null, '2018-09-01 17:40:42', '1007');

INSERT INTO blog VALUES ('1', '男士钱包', '爆款限量', 'TB2D3gvcwR9252172.jpg', '2018-09-02 08:47:12', '0', '1000');
INSERT INTO blog VALUES ('2', '女夏装牛仔裤', '限量销售', 'O1CN762.jpg', '2018-09-02 08:47:36', '0', '1000');
INSERT INTO blog VALUES ('3', '黑了白了配', '你猜是什么', '2018-09-01_163253.jpg', '2018-09-02 08:48:09', '0', '1000');
INSERT INTO blog VALUES ('4', '大学生事件', '十四名大学生坐木桥拍照出事儿了', 'sdggrhdfffffges.jpg', '2018-09-02 08:48:21', '0', '1000');
INSERT INTO blog VALUES ('5', '地铁叭叭叭', '地铁门关不上乘客纷乱', 'TB2rmabk21T31005.jpg', '2018-09-02 08:48:36', '0', '1000');


INSERT INTO type VALUES ('1', '女装', null);
INSERT INTO type VALUES ('2', '下装', '1');
INSERT INTO type VALUES ('3', '裙装', '1');
INSERT INTO type VALUES ('4', '超短裙', '3');
INSERT INTO type VALUES ('5', '男装', null);
INSERT INTO type VALUES ('6', '上装', '5');
INSERT INTO type VALUES ('7', '下装', '5');
INSERT INTO type VALUES ('8', '钱包', '11');
INSERT INTO type VALUES ('9', '包包', null);
INSERT INTO type VALUES ('10', '女士包包', '9');
INSERT INTO type VALUES ('11', '男士包包', '9');
INSERT INTO type VALUES ('12', '牛仔裤', '2');
INSERT INTO type VALUES ('13', '短裤', '2');
INSERT INTO type VALUES ('14', '连衣裙', '3');
INSERT INTO type VALUES ('15', '短裙', '3');
INSERT INTO type VALUES ('16', '手提包', '10');
INSERT INTO type VALUES ('17', '衬衫', '6');
INSERT INTO type VALUES ('18', '西装裤', '7');
INSERT INTO type VALUES ('19', '童装', null);
INSERT INTO type VALUES ('20', '女童', '19');
INSERT INTO type VALUES ('21', '女童鞋', '20');
INSERT INTO type VALUES ('22', '鞋靴', null);
INSERT INTO type VALUES ('23', '男鞋', '22');
INSERT INTO type VALUES ('24', '皮鞋', '23');
INSERT INTO type VALUES ('25', '女鞋', '22');
INSERT INTO type VALUES ('27', '上装', '1');
INSERT INTO type VALUES ('28', '衬衫', '27');
INSERT INTO type VALUES ('29', '卫衣', '27');
INSERT INTO type VALUES ('30', '斜挎包', '10');
INSERT INTO type VALUES ('31', '打底裤', '2');
INSERT INTO type VALUES ('32', '休闲裤', '7');
INSERT INTO type VALUES ('33', '休闲鞋', '23');
INSERT INTO type VALUES ('34', '休闲鞋', '25');
INSERT INTO type VALUES ('35', '高跟鞋', '25');

INSERT INTO goods VALUES ('1', '女修身打底裤2018春秋新款原宿风字母印花百搭显瘦休闲九分小脚裤', '256.00', '109.60', '七分裤/九分裤', '10.00', '2018-09-01 16:20:21', '80', 'ggzfesf.jpg', '31', '1000', '1');
INSERT INTO goods VALUES ('2', '网纱半身仙女纱裙夏2018秋季新款不规则黑色高腰中长款秋冬长裙秋', '256.36', '188.88', '高腰雪纺纱裙含50%羊毛', '10.00', '2018-09-01 18:07:27', '36', 'sdggrhdfffffges.jpg', '14', '1000', '1');
INSERT INTO goods VALUES ('3', '2018夏装韩版百搭清新长袖格子衬衫露肩上衣防晒衫衬衣学生女装潮', '298.56', '156.63', '露肩设计打破单调感,为气质打分', '10.00', '2018-09-01 16:20:19', '60', '1.jpg', '28', '1000', '1');
INSERT INTO goods VALUES ('4', '张贝贝ibell2018春秋新款韩版ins超火连帽学院风bf卫衣女薄款', '298.75', '268.52', '袋鼠兜 印花，螺纹袖口', '10.00', '2018-09-01 16:20:23', '41', 'zbbtkchends.jpg', '29', '1000', '1');
INSERT INTO goods VALUES ('5', 'ins超火包包女2017新款韩版chic小方包时尚条纹肩带单肩斜挎大包', '288.00', '155.69', '', '10.00', '2018-09-01 16:20:25', '23', 'nsxiehua.jpg', '30', '1000', '1');
INSERT INTO goods VALUES ('6', '裤子男韩版潮流运动裤秋季男士休闲裤男生束脚裤宽松秋装哈伦裤', '165.20', '79.00', '很有型格的一条休闲裤', '10.00', '2018-09-01 18:07:30', '26', '2018-09-01_163253.jpg', '32', '1000', '1');
INSERT INTO goods VALUES ('9', 'Air Jordan 1 AJ1 乔1 黑红脚趾小闪电黑灰绿黄蓝月六冠王扣碎', '1486.00', '1156.36', '减震 防滑 耐磨 增高,是真的增高！', '10.00', '2018-09-01 18:07:32', '6', 'TB2PkjDdYZ1.jpg', '33', '1000', '1');
INSERT INTO goods VALUES ('15', '【K-SPACE】可可曾半身裙女帅气不规则格子百褶裙个性短裙', '168.00', '165.08', '格子半裙', '10.00', '2018-09-01 18:27:55', '29', 'TB2rmabk21T31005.jpg', '15', '1000', '1');
INSERT INTO goods VALUES ('16', '高腰短裤女2018新款韩版显瘦牛仔阔腿裤港味复古chic牛仔裤裤子秋', '126.60', '98.00', '浅蓝色显瘦', '10.00', '2018-09-01 18:28:39', '20', 'O1CN011O951700.jpg', '13', '1000', '1');
INSERT INTO goods VALUES ('17', '99twins 新款V领吊带无袖波点印花休闲收腰宽松连体短裤女', '298.00', '196.60', '波点裙', '10.00', '2018-09-01 18:28:42', '60', 'TB21uE9039067.jpg', '13', '1000', '1');
INSERT INTO goods VALUES ('18', '张贝贝ibell网红同款牛仔裤女chic紧身牛仔裤破洞小脚牛仔九分裤', '195.00', '139.00', '九分裤', '10.00', '2018-09-01 18:28:46', '22', 'O1CN762.jpg', '12', '1000', '1');
INSERT INTO goods VALUES ('19', '卓梵阿玛尼正品男士钱包短款真皮时尚潮韩版长款牛皮软皮竖款钱夹', '198.00', '165.20', '短款钱包', '10.00', '2018-09-01 18:28:48', '69', 'TB2D3gvcwR9252172.jpg', '8', '1000', '1');
INSERT INTO goods VALUES ('20', '帆布包女新款休闲单肩斜跨包韩版时尚抽绳棉麻布包简约文艺小清新', '120.30', '98.60', '', '10.00', '2018-09-01 18:28:50', '99', 'TB2SZIxB2360722647.jpg', '16', '1000', '1');
INSERT INTO goods VALUES ('21', 'Adidas/阿迪达斯三叶草男女鞋SuperStar金标贝壳头休闲板鞋C77124', '659.00', '198.63', '经典休闲鞋', '10.00', '2018-09-01 18:07:35', '26', 'TB2tOaJv1TB0.jpg', '33', '1006', '1');
INSERT INTO goods VALUES ('22', 'Adidas阿迪达斯Rose罗斯9美国队Bounce缓震篮球鞋男BB7658 AQ0036', '986.00', '596.30', '减震 防滑 透气 回弹 Rose系列', '10.00', '2018-09-01 18:07:37', '23', 'TB2yIh8336638.jpg', '33', '1006', '1');
INSERT INTO goods VALUES ('23', 'Adidas/阿迪达斯男女鞋三叶草EQT休闲网面情侣透气跑步鞋AC7354', '996.00', '596.00', '运动生活系列休闲健步', '10.00', '2018-09-01 18:07:40', '26', 'TB2s1VpBiCY257280.jpg', '34', '1006', '1');
INSERT INTO goods VALUES ('24', '香港正品明星同款细跟高跟鞋真皮女鞋包头铆钉显瘦单鞋女尖头羊皮', '369.26', '265.20', '浅口 铆钉 罗马风格', '10.00', '2018-09-01 18:07:42', '22', 'TB2RMY156890977.jpg', '35', '1006', '1');
INSERT INTO goods VALUES ('25', '秋季迷彩衬衫男长袖韩版潮流港风chic上衣男生衬衣ins超火的外套', '195.00', '169.60', '秋季新品', '10.00', '2018-09-01 18:07:45', '26', 'TB2EaHpG41Y94213.jpg', '17', '1006', '1');
INSERT INTO goods VALUES ('26', 'MOMENTHOME银色亮片半身裙女2018新款高腰显瘦假两件A字鱼尾裙潮', '198.60', '159.63', '2018年夏季新款', '10.00', '2018-09-01 18:11:38', '59', 'TB2e0Gry2i709447.jpg', '15', '1006', '1');

INSERT INTO cart VALUES ('1', '1', '2', '1001');
INSERT INTO cart VALUES ('2', '1', '20', '1001');

INSERT INTO favorite VALUES ('1', '1', '2', '1001');
INSERT INTO favorite VALUES ('2', '1', '3', '1001');
INSERT INTO favorite VALUES ('3', '1', '1', '1001');
INSERT INTO favorite VALUES ('4', '1', '4', '1001');
INSERT INTO favorite VALUES ('5', '1', '5', '1001');
INSERT INTO favorite VALUES ('6', '1', '6', '1001');
INSERT INTO favorite VALUES ('7', '1', '9', '1001');
INSERT INTO favorite VALUES ('8', '1', '15', '1001');
INSERT INTO favorite VALUES ('9', '0', '16', '1001');
INSERT INTO favorite VALUES ('10', '0', '17', '1001');
INSERT INTO favorite VALUES ('11', '1', '18', '1001');
INSERT INTO favorite VALUES ('12', '1', '19', '1001');
INSERT INTO favorite VALUES ('13', '1', '20', '1001');


INSERT INTO orders VALUES ('1', '2018-08-31 16:21:06','2018-08-31 16:25:06','2018-09-01 16:21:06', '０', '1000', '1000', '198.00', '168.00');
INSERT INTO orders VALUES ('2', '2018-08-31 21:53:17','2018-08-31 22:00:17',null, '1', '1001', '1001', '998.00', '885.00');

INSERT INTO ordersdetail VALUES ('1', '0', '556.00', '1', '1', '3');
INSERT INTO ordersdetail VALUES ('2', '0', '559.00', '2', '2', '5');
INSERT INTO ordersdetail VALUES ('3', '0', '552.00', '2', '2', '4');

INSERT INTO discuss VALUES ('1', null, '0', null, '1', '1', '1', '1000');
INSERT INTO discuss VALUES ('2', null, '1', null, '1', '2', '2', '1001');
INSERT INTO discuss VALUES ('3', null, '2', null, '1', '2', '2', '1000');

commit;

