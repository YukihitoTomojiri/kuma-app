class Section < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '医局' },
    { id: 3, name: '外来' },
    { id: 4, name: '健診' },
    { id: 5, name: '医事課' },
    { id: 6, name: '総務課' },
    { id: 7, name: '薬局' },
    { id: 8, name: '検査科' },
    { id: 9, name: '放射線科' },
    { id: 10, name: 'リハビリ科' },
    { id: 11, name: '栄養科' },
    { id: 12, name: 'サプライ' },
    { id: 13, name: '本館3階病棟' },
    { id: 14, name: '本館4階病棟' },
    { id: 15, name: '本館5階病棟' },
    { id: 16, name: '本館6階病棟' },
    { id: 17, name: '南棟2階病棟' },
    { id: 18, name: '南棟3階病棟' },
    { id: 19, name: '南棟4階病棟' },
    { id: 20, name: '南棟5階病棟' },
    { id: 21, name: '透析' },
    { id: 22, name: '営繕課' },
    { id: 23, name: '庶務課' },
    { id: 24, name: '用度課' },
    { id: 25, name: '経理課' }
  ]

  include ActiveHash::Associations
  has_many :users
end