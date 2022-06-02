function Stack.find_cpu_move(self, row, column)
  local function panic()
    local upchar = base64encode[8 + 1]
    local downchar = base64encode[4 + 1]
    local leftchar = base64encode[2 + 1]
    local rightchar = base64encode[1 + 1]
    local movement_string = ""
  
    if self.cur_row > row then -- down
      movement_string = movement_string .. downchar:rep(self.cur_row - row)
    elseif self.cur_row < row then -- up
      movement_string = movement_string .. upchar:rep(row - self.cur_row)
    end
  
    if self.cur_col > column then -- left
      movement_string = movement_string .. leftchar:rep(self.cur_col - column)
    elseif self.cur_col < column then -- right
      movement_string = movement_string .. rightchar:rep(column - self.cur_col)
    end
  
    return movement_string
  end

  return panic()
end


