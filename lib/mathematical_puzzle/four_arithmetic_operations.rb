module MathematicalPuzzle
  class FourArithmeticOperations
    def self.execute(number)
      op = ['+','-','*','/','']
      i = 1000
      while i < 10000
        c = i.to_s
        j = 0
        while j < op.length
          k = 0
          while k < op.length
            l = 0
            while l < op.length
              val = [c.slice(3),op[j],c.slice(2),op[k],c.slice(1),op[l],c.slice(0)]
              if val.length > 6
                ev = self.calc(val)
                if number.to_s.reverse.to_i == ev
                  return ev.to_s
                end
              end
              l += 1
            end
            k += 1
          end
          j += 1
        end
        i += 1
      end
    end

    def self.calc(val)
      begin
        val.each_with_index do |v, i|
          if v == ''
            if val[i-1] == '0'
              val[i-1] = ''
            end
          end

          if v == '0'
            if val[i-1] == '/'
              val = []
            end
          end
        end
        eval(val.join)
      rescue => exc
        puts "RESCUED!"
      end
    end
  end
end