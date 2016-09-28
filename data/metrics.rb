require_relative './csv_parser'
include Data::CsvParser

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

  def metric_scores_dictionary
    {
      'cross-cloud' => {
        overall: {},
        marketing: {
          'unique-visitors' => get_data_from_csv('./data/cross-cloud/metrics/scores/marketing/unique-visitors.csv'),
          'free-trials' => get_data_from_csv('./data/cross-cloud/metrics/scores/marketing/free-trials.csv'),
          'active-trials' => get_data_from_csv('./data/cross-cloud/metrics/scores/marketing/active-trials.csv')
        },
        finance: {},
        customer: {},
        operation: {}
      },
      'sddc-aas' => {
        overall: {},
        marketing: {},
        finance: {},
        customer: {},
        operation: {}
      },
      'airwatch' => {
        overall: {},
        marketing: {},
        finance: {},
        customer: {},
        operation: {}
      }
    }
  end

  def metric_goals_dictionary
    {
      'cross-cloud' => {
        overall: {},
        marketing: {
          'unique-visitors' => get_data_from_csv('./data/cross-cloud/metrics/goals/marketing/unique-visitors.csv'),
          'free-trials' => get_data_from_csv('./data/cross-cloud/metrics/goals/marketing/free-trials.csv'),
          'active-trials' => get_data_from_csv('./data/cross-cloud/metrics/goals/marketing/active-trials.csv')
        },
        finance: {},
        customer: {},
        operation: {}
      },
      'sddc-aas' => {
        overall: {},
        marketing: {},
        finance: {},
        customer: {},
        operation: {}
      },
      'airwatch' => {
        overall: {},
        marketing: {},
        finance: {},
        customer: {},
        operation: {}
      }
    }
  end
end
