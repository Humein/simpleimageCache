# simpleimageCache
对 一句话缓存数据  的封装简单工具类  
随意用
  [[cacheManeger getInstance]getData:^(NSData *data) {
        self.iconView.image = [UIImage imageWithData:data];
    } imageUrl:[NSURL URLWithString:kETagImageURL]];
