# Redis string

## Set/Get 1 giá trị

```set myKey "This is string"```

```get myKey```

## Tìm chuỗi con trong string

```getrange myKey 0 -1```

## Set/Get nhiều giá trị

```mset key1 abc key2 def```

```mget key1 key2```

```get key1```

## Đếm độ dài của value

```strlen myKey```

## Tăng/Giảm giá trị của value

```set count 1```

```get count``` >> 1

```incr count``` >> 2

```decr count``` >> 1

```incrby count 10``` >> 11

```decrby count 10``` >> 1

## Đặt thời gian hết hạn của key

```expire myKey 10``` >> 10s hết hạn

```ttl myKey``` >> kiểm tra thời gian còn lại của myKey

# Redis lists

## Thêm phần tử vào list

```lpush players Ronaldo```

```lpush players Messi Kaka```

## Lấy số lượng phần tử chỉ định

```lrange players 0 -1```

## Thêm phần tử vào cuối list

```rpush players Cavani```

## Lấy độ dài của list

```llen players``` >> 4

## Xoá phần tử trên cùng khỏi list

```lpop players```

## Xoá phần tử dưới cùng khỏi list

```rpop players```

## Sửa một phần tử ở vị trí chỉ định

```lset players 0 Lingard```

## Insert phần tử vào vị trí chỉ định

```linsert players after Lingard Martial```

## Lấy phần tử ở vị trí chỉ định

```lindex players 2```

## Điều kiện key tồn tại mới thêm vào

```lpushx movies Doraemon``` >> Không push vì movies không tồn tại

## Sắp xếp dữ liệu trong list

```sort players ALPHA``` >> Sắp xếp theo kí tự alpha

```sort players desc ALPHA``` >> Sắp xếp ngược lại

# Redis sets

## Thêm member vào set

```sadd backend redis js nodejs```

```sadd backend express mongodb```

## Lấy member từ set

```smembers backend```

## Lấy size của set

```scard backend``` >> 4

## Không cho phép thêm vào set với giá trị đã có trong set

## Kiểm tra giá trị đã có trong set hay chưa

```sismember backend js```  >> 1

```sismember backend html```  >> 0

## So sánh giữa 2 set

```sadd fontend html css nodejs react```

```sdiff backend frontend``` >> lấy ra những member không có trong frontend nhưng có trong backend
>> redis js express mongodb

```sinter backend frontend``` >> nodejs

## Lưu trữ key khác nhau giữa 2 set

```sdiffstore newKey backend frontend```

```smembers newKey```

```sinterStore newSetInter frontend backend```

```smembers newSetInter```

## Lấy member khác nhau giữa các set

```sunion frontend backend```

```sunionstore setUnion frontend backend```

