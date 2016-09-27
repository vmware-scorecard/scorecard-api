require_relative 'csv_parser'
include Data::CsvParser

module Data::Goals
  def goals_dictionary
    {
      'cross-cloud' => {
        overall: get_data_from_csv('./data/cross-cloud/goals/overall.csv'),
        marketing: get_data_from_csv('./data/cross-cloud/goals/marketing.csv'),
        finance: get_data_from_csv('./data/cross-cloud/goals/finance.csv'),
        customer: get_data_from_csv('./data/cross-cloud/goals/customer.csv'),
        operation: get_data_from_csv('./data/cross-cloud/goals/operation.csv')
      },
      'sddc-aas' => {
        overall: get_data_from_csv('./data/sddc-aas/goals/overall.csv'),
        marketing: get_data_from_csv('./data/sddc-aas/goals/marketing.csv'),
        finance: get_data_from_csv('./data/sddc-aas/goals/finance.csv'),
        customer: get_data_from_csv('./data/sddc-aas/goals/customer.csv'),
        operation: get_data_from_csv('./data/sddc-aas/goals/operation.csv')
      },
      'airwatch' => {
        overall: get_data_from_csv('./data/airwatch/goals/overall.csv'),
        marketing: get_data_from_csv('./data/airwatch/goals/marketing.csv'),
        finance: get_data_from_csv('./data/airwatch/goals/finance.csv'),
        customer: get_data_from_csv('./data/airwatch/goals/customer.csv'),
        operation: get_data_from_csv('./data/airwatch/goals/operation.csv')
      }
    }
  end
end
