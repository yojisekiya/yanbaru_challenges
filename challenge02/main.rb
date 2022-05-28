require './methods'

destinations = [
  { name: '沖縄旅行', price: '10000' },
  { name: '北海道旅行', price: '20000' },
  { name: '九州旅行', price: '15000' }
]

disp_destinations(destinations)
chosen_destination = choose_destination(destinations)
num_travellers = decide_num_people(chosen_destination)
calculate_total(chosen_destination, num_travellers)
