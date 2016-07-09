## 組織作成
o1 = Org.create(name: "test org 1")

## ユーザー作成
u1 = o1.users.create(name: "test user1", email: "test1@example.com", password_digest: "test1")

## 文書カテゴリ作成
cat1 = DocCategory.create(name: '文書カテゴリ1')
cat1.org = o1
cat1.save


## 文書作成
doc1 = cat1.docs.create(title: "doc title 1", body: "body1")

## 文書引用作成
doc1.doc_refs.create(user: u1, page_num: 1, from: "3:15", to:"5:12")
