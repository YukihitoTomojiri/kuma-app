class Job < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '医師' },
    { id: 3, name: '看護師' },
    { id: 4, name: '介護福祉士' },
    { id: 5, name: 'ヘルパー' },
    { id: 6, name: '理学療法士' },
    { id: 7, name: '作業療法士' },
    { id: 8, name: '言語聴覚士' },
    { id: 9, name: 'リハビリ助手' },
    { id: 10, name: '薬剤師' },
    { id: 11, name: '検査技師' },
    { id: 12, name: '放射線技師' },
    { id: 13, name: '管理栄養士' },
    { id: 14, name: '調理師' },
    { id: 15, name: '臨床工学技士' },
    { id: 16, name: '一般事務' }

  ]

  include ActiveHash::Associations
  has_many :users
end