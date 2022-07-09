class Type < ActiveHash::Base
    self.data = [
        { id: 1, name: 'response' },
        { id: 2, name: 'thanks' },
        { id: 3, name: 'job request' },
      ]

      include ActiveHash::Associations
      has_many :messages
      end