# coding: utf-8

class Driver < ActiveRecord::Base
  attr_accessible :current_loc, :name, :vehicle_status, :vehicle_type
  default_scope order('updated_at DESC')
  def vehicle_type_readable
    type_mapper = {
      0 => '拖拉机',
      1 => '电动车',
      2 => '三轮车'
    }

    return type_mapper[self.vehicle_type]
  end

  def vehicle_status_readable
    status_mapper = {
      false => '空闲',
      true => '忙碌'
    }

    return status_mapper[self.vehicle_status]
  end
end
