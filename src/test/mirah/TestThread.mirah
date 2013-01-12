package org.kaspernj.mirah.stdlib.thread

import org.kaspernj.mirah.stdlib.core.*
import org.kaspernj.mirah.stdlib.thread.*
import org.junit.Test

class TestThread
  $Test
  def testThread
    mutex_called = false
    
    mutex = Mutex.new
    mutex.synchronize do
      mutex_called = true
    end
    
    raise "Mutex-variable was not called." if !mutex_called
    
    monitor_called = false
    
    monitor = Monitor.new
    monitor.synchronize do
      monitor_called = true
    end
    
    raise "Monitor-variable was not called." if !monitor_called
    
    begin
      mutex = Mutex.new
      mutex.synchronize do
        mutex.lock
        puts "This should have failed with deadlock."
      end
      
      raise "This should have failed."
    rescue ThreadError
      #Expected - ignore.
    end
    
    return
  end
end