package org.kaspernj.mirah.stdlib.thread

class ThreadError < RuntimeException
  def initialize(str:String)
    super(str)
  end
end