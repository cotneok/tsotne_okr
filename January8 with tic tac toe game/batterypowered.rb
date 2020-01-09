module BatteryPowered
  def power_level
    @power_level ||= 0
  end

  def charge
    @power_level ||= 0
    @power_level += 1
  end
end
