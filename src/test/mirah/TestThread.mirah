package org.kaspernj.mirah.stdlib.thread

import org.kaspernj.mirah.stdlib.core.*
import org.kaspernj.mirah.stdlib.thread.*
import org.junit.Test

$TestClass
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
  end
end