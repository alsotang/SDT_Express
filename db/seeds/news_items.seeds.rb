content_text = "读者或许首先要求解释“利维坦”与“正义”之间的联系，为什么追求正义的人们可能接受并帮助一个政府成长为庞然大物（利维坦）以致他们的自由最终和他们追求的正义一起被这只利维坦巨兽吃掉？Anthony de Jasay（亚赛）早年是一位匈牙利经济学家和哲学家，与他的匈牙利同胞海撒尼（John Harsanyi）一样，1948年因躲避政治迫害离开匈牙利，从奥地利辗转至澳大利亚。数年后，海撒尼从阿罗（Kenneth Arrow）在斯坦福大学研读他的第二个博士学位，亚赛则辗转至英国并获得牛津大学研究职位。后来，亚赛在巴黎一家银行就职，再后来，他成为独立银行家，在欧洲和美国都有投资。退休后，他继续发表无政府主义论著。1985年他发表《论国家》，引起布坎南的格外关注。2007年，布坎南和一群寻求当代无政府主义理论基础的学者发表文集《良序的无政府》（ordered anarchy），旨在阐释和发挥亚赛的一系列简明但深刻的见解。顺便说一句，他们当中至少一位作者认为亚赛，一位退休银行家，是我们时代最伟大的政治哲学家。我在“自由基金”网站下载了亚赛的或许是最后一部作品，《Justice and Its Surroundings》。这部2002年发表的作品，为读者提供了上述问题的清楚解释。与亚赛一样，或许不那样偏激，布坎南坚持契约论的方法论个人主义思路。他在《自由的界限》开篇提出一个问题：无政府状态可否产生秩序？这样，他便直接参与了罗尔斯和诺齐克的那场辩论。
　　诚如布坎南本人和Kliemt所言，在布坎南的思想体系里，《自由的界限》（简称“界限”）应被视为他和图洛克（Gordon Tullock）1962年发表的《同意的计算》（简称“计算”）的姊妹篇。在“计算”里，个体的理性选择模型被用来解释关于“公共善”（public goods）的投票规则的选择。在“界限”里，如布坎南在第一章所说，这一模型被用来解释“公共恶”（public bads）的形成。这里所谓“公共恶”，就是借助民众投票同意而形成的“利维坦”。预见可能形成公共的恶，也就是预见自由的界限。那么，制度是如何失败，从而产生了公共的恶呢？这是布坎南写作“界限”时的基本问题意识。
　　布坎南指出，必须考察那些曾经有效的制度是怎样腐败和趋于失效的。换句话说，最初我们一致同意接受某种政府形式的强制，或放弃一部分个人自由，为了获得秩序。然后，当政府权力不断扩展，直到某一阈值之后，我们再也无法收回或抵抗这一强权，我们在哪些环节犯了错误？对于美国的情形，布坎南这样描写：“大萧条以降，我们见证了我们自己的利维坦的持续和加速扩张。……可以被称为宪政无政府的状态下，……人们越来越感到自己受不可名状的不负责任的官僚的支配，生活与无法预料的迂回曲折之中，私人预期被摧毁和扭曲，而却鲜有机会因此得到赔偿。”
　　以上所述，若将“大萧条”这一时点推迟七十年，即1999年以降，又何尝不是当代中国人日常生活的描写呢？“四面八方的人们要求废除官僚机构，……将个人从加速增长的税负之下解救出来。……但与此同时，要求公共控制继续扩展的呼声也大量存在。我们观察到，政府虽然将其指爪伸向各处，但在此期间，一般而言，由集体依法推行的最低限度的秩序似乎都在消失中。”布坎南追问：政府的存在本身是否在侵蚀社会所依赖的有序的无政府状态？个体在社会交往中自愿遵守行为规则时，创造了公共的善。当个体违反这些规则时，公共的恶出现了。以上文字，大致表达了布坎南这部著作的基本问题意识。 "

20.times do |num|
  num_index = num + 1
  NewsItem.create!(title: "%d 探寻转型期中国社会的政治哲学" % [num_index],
    content: num_index.to_s + content_text)
end
