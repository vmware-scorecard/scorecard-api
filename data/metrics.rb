module Data::Metrics
  def metrics_dictionary
    {
      'cross-cloud' => {
        overall: [],
        marketing: [
          {
            slug: 'unique-visitors',
            displayName: 'Unique Visitors'
          },
          {
            slug: 'free-trials',
            displayName: 'Free Trial Sign-Ups'
          },
          {
            slug: 'active-trials',
            displayName: 'Active Trials'
          }
        ],
        finance: [],
        customer: [],
        operation: []
      },
      'sddc-aas' => {
        overall: [],
        marketing: [],
        finance: [],
        customer: [],
        operation: []
      },
      'airwatch' => {
        overall: [],
        marketing: [],
        finance: [],
        customer: [],
        operation: []
      }
    }
  end
end
