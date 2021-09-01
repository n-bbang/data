# data

## 테이블 구조

### Users

| Field       | Type        | Null | Key  | Default | Extra |
| ----------- | ----------- | ---- | ---- | ------- | ----- |
| userId      | int(11)     | NO   | PRI  | NULL    |       |
| loginId     | varchar(32) | NO   |      | NULL    |       |
| passwd      | varchar(32) | NO   |      | NULL    |       |
| name        | varchar(32) | NO   |      | NULL    |       |
| nickname    | varchar(15) | YES  |      | NULL    |       |
| gender      | tinyint(1)  | NO   |      | NULL    |       |
| phoneNumber | varchar(32) | NO   |      | NULL    |       |
| account     | varchar(32) | YES  |      | NULL    |       |



### Platforms

| Field        | Type        | Null | Key  | Default | Extra |
| ------------ | ----------- | ---- | ---- | ------- | ----- |
| platformId   | int(11)     | NO   | PRI  | NULL    |       |
| platformName | varchar(32) | NO   |      | NULL    |       |
| imagePath    | varchar(32) | YES  |      | NULL    |       |



### BossInformations

| Field  | Type    | Null | Key  | Default | Extra |
| ------ | ------- | ---- | ---- | ------- | ----- |
| userId | int(11) | NO   |      | NULL    |       |
| roomId | int(11) | NO   |      | NULL    |       |



### UserInformations

| Field  | Type       | Null | Key  | Default | Extra |
| ------ | ---------- | ---- | ---- | ------- | ----- |
| userId | int(11)    | NO   |      | NULL    |       |
| roomId | int(11)    | NO   |      | NULL    |       |
| paied  | tinyint(1) | NO   |      | 0       |       |



### RoomInformations

| Field         | Type        | Null | Key  | Default | Extra |
| ------------- | ----------- | ---- | ---- | ------- | ----- |
| roomId        | int(11)     | NO   |      | NULL    |       |
| platformId    | int(11)     | NO   |      | NULL    |       |
| bossUserId    | int(11)     | NO   |      | NULL    |       |
| roomName      | varchar(32) | YES  |      | NULL    |       |
| totalPrice    | int(11)     | YES  |      | NULL    |       |
| personalPrice | int(11)     | YES  |      | NULL    |       |
| maxUser       | int(11)     | NO   |      | NULL    |       |
| recentPayment | datetime    | YES  |      | NULL    |       |
