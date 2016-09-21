require_relative './csv_parser'
include Data::CsvParser

module Data::Scores
  def scores_dictionary
    {
      'hybrid-cloud' => {
        overall: get_data_from_csv('./data/hybrid-cloud/scores/overall.csv'),
        marketing: get_data_from_csv('./data/hybrid-cloud/scores/marketing.csv'),
        finance: get_data_from_csv('./data/hybrid-cloud/scores/finance.csv'),
        customer: get_data_from_csv('./data/hybrid-cloud/scores/customer.csv'),
        operation: get_data_from_csv('./data/hybrid-cloud/scores/operation.csv')
      },
      'disaster-recovery' => {
        overall: get_data_from_csv('./data/disaster-recovery/scores/overall.csv'),
        marketing: get_data_from_csv('./data/disaster-recovery/scores/marketing.csv'),
        finance: get_data_from_csv('./data/disaster-recovery/scores/finance.csv'),
        customer: get_data_from_csv('./data/disaster-recovery/scores/customer.csv'),
        operation: get_data_from_csv('./data/disaster-recovery/scores/operation.csv')
      },
      'cloud-discovery' => {
        overall: get_data_from_csv('./data/cloud-discovery/scores/overall.csv'),
        marketing: get_data_from_csv('./data/cloud-discovery/scores/marketing.csv'),
        finance: get_data_from_csv('./data/cloud-discovery/scores/finance.csv'),
        customer: get_data_from_csv('./data/cloud-discovery/scores/customer.csv'),
        operation: get_data_from_csv('./data/cloud-discovery/scores/operation.csv')
      }
    }
  end
end
