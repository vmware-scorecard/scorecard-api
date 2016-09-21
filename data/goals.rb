require_relative 'csv_parser'
include Data::CsvParser

module Data::Goals
  def goals_dictionary
    {
      'hybrid-cloud' => {
        overall: get_data_from_csv('./data/hybrid-cloud/goals/overall.csv'),
        marketing: get_data_from_csv('./data/hybrid-cloud/goals/marketing.csv'),
        finance: get_data_from_csv('./data/hybrid-cloud/goals/finance.csv'),
        customer: get_data_from_csv('./data/hybrid-cloud/goals/customer.csv'),
        operation: get_data_from_csv('./data/hybrid-cloud/goals/operation.csv')
      },
      'disaster-recovery' => {
        overall: get_data_from_csv('./data/disaster-recovery/goals/overall.csv'),
        marketing: get_data_from_csv('./data/disaster-recovery/goals/marketing.csv'),
        finance: get_data_from_csv('./data/disaster-recovery/goals/finance.csv'),
        customer: get_data_from_csv('./data/disaster-recovery/goals/customer.csv'),
        operation: get_data_from_csv('./data/disaster-recovery/goals/operation.csv')
      },
      'cloud-discovery' => {
        overall: get_data_from_csv('./data/cloud-discovery/goals/overall.csv'),
        marketing: get_data_from_csv('./data/cloud-discovery/goals/marketing.csv'),
        finance: get_data_from_csv('./data/cloud-discovery/goals/finance.csv'),
        customer: get_data_from_csv('./data/cloud-discovery/goals/customer.csv'),
        operation: get_data_from_csv('./data/cloud-discovery/goals/operation.csv')
      }
    }
  end
end
