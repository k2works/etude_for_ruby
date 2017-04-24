module MathematicalPuzzle
  class FourArithmeticOperations
    def self.execute(number)

    end
    def self.collect_val
      op = ['+','-','*','/','']
      vals = []
      i = 1000
      while i < 10000
        c = i.to_s
        j = 0
        while j < op.length
          k = 0
          while k < op.length
            l = 0
            while l < op.length
              val = c.slice(3) + op[j] + c.slice(2) + op[k] + c.slice(1) + op[l] + c.slice(0)
              if val.length > 4
                vals << val
              end
              l += 1
            end
            k += 1
          end
          j += 1
        end
        i += 1
      end
      vals
    end

    def self.calc(val)
      begin
        if /^0[1-9]/ =~ val
          puts val
          if /0+[0-9]*/ =~ val
            val = val.slice(1) + val.slice(2) + val.slice(3) + val.slice(4) + val.slice(5)
          else
            val = val.slice(1) + val.slice(2) + val.slice(3) + val.slice(4) + val.slice(5)
          end
          eval(val)

        else
          eval(val)
        end
      rescue => exc
        puts "RESCUED!"
      end
    end
  end
end