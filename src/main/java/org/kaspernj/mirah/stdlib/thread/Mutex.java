package org.kaspernj.mirah.stdlib.thread;

/** This class is written in Java, because Mirah (as far as I know) does not support the 'synchronized' stuff. */
public class Mutex
{
	Object obj = new Object();
	
	public void synchronize(Runnable blk){
		synchronized(obj){
			blk.run( );
		}
	}
}
