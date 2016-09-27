require_relative './csv_parser'
include Data::CsvParser

module Data::Scores
  def scores_dictionary
    {
      'cross-cloud' => {
        overall: get_data_from_csv('./data/cross-cloud/scores/overall.csv'),
        marketing: get_data_from_csv('./data/cross-cloud/scores/marketing.csv'),
        finance: get_data_from_csv('./data/cross-cloud/scores/finance.csv'),
        customer: get_data_from_csv('./data/cross-cloud/scores/customer.csv'),
        operation: get_data_from_csv('./data/cross-cloud/scores/operation.csv')
      },
      'sddc-aas' => {
        overall: get_data_from_csv('./data/sddc-aas/scores/overall.csv'),
        marketing: get_data_from_csv('./data/sddc-aas/scores/marketing.csv'),
        finance: get_data_from_csv('./data/sddc-aas/scores/finance.csv'),
        customer: get_data_from_csv('./data/sddc-aas/scores/customer.csv'),
        operation: get_data_from_csv('./data/sddc-aas/scores/operation.csv')
      },
      'airwatch' => {
        overall: get_data_from_csv('./data/airwatch/scores/overall.csv'),
        marketing: get_data_from_csv('./data/airwatch/scores/marketing.csv'),
        finance: get_data_from_csv('./data/airwatch/scores/finance.csv'),
        customer: get_data_from_csv('./data/airwatch/scores/customer.csv'),
        operation: get_data_from_csv('./data/airwatch/scores/operation.csv')
      }
    }
  end
end
