select * from UserInfo
select * from UserInfo where UserName='faith' and UserPassword='12138'
select * from Word
insert Word(UserId,Word,Good,Bad,WordTime,WordImg)values('2','这是第测试段子！','10','3','2019-04-05','ts3.jpg')
select UserId from UserInfo where UserName='faith'
insert Word(Word,Good,Bad,WordTime,WordImg)values('这是第三条段子！','2','3','2019-04-01 24:24:24.110','ts3.jpg')
SELECT dbo.UserInfo.UserId, dbo.UserInfo.UserName, dbo.UserInfo.UserImg, dbo.Word.Word, dbo.Word.Good,dbo.Word.WordImg FROM dbo.UserInfo INNER JOIN dbo.Word ON dbo.UserInfo.UserId = dbo.Word.UserId order by dbo.Word.Good desc
insert Word(UserId,Word,WordTime,WordImg)values('2','这是第四条段子','2019-04-01 00:00:00.000','ts3.jpg')
select UserId from UserInfo where UserName='faith'
insert Word(UserId,Word,WordTime,WordImg)values('{0}','{1}','{2}','{3}');
SELECT dbo.UserInfo.UserId, dbo.UserInfo.UserName, dbo.UserInfo.UserImg, dbo.Word.Word, dbo.Word.Good,dbo.Word.WordImg FROM dbo.UserInfo INNER JOIN dbo.Word ON dbo.UserInfo.UserId = dbo.Word.UserId order by dbo.Word.Good desc
SELECT dbo.UserInfo.UserId, dbo.UserInfo.UserName, dbo.UserInfo.UserImg, dbo.Word.Word, dbo.Word.Good,dbo.Word.WordImg FROM dbo.UserInfo INNER JOIN dbo.Word ON dbo.UserInfo.UserId = dbo.Word.UserId
SELECT   dbo.UserInfo.UserId, dbo.UserInfo.UserName, dbo.UserInfo.UserImg, dbo.Word.WordTime, dbo.Word.WordImg,dbo.Word.Good, dbo.Word.Word FROM dbo.UserInfo INNER JOIN dbo.Word ON dbo.UserInfo.UserId = dbo.Word.UserId order by dbo.Word.WordTime desc
delete from Word where WordId=1009
insert UserInfo(UserName,UserPassword,UserImg)values('taylor','12138','IMG_1976(1)')