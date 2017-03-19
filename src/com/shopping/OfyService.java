package com.shopping;

import com.googlecode.objectify.Objectify;
import com.googlecode.objectify.ObjectifyFactory;
import com.googlecode.objectify.ObjectifyService;

public class OfyService {
	static{
		factory().register(User.class);
		factory().register(Clothing.class);
		factory().register(Order.class);
		
	}
	
	public static Objectify ofy(){
		return ObjectifyService.ofy();
	}
	public static ObjectifyFactory factory(){
		return ObjectifyService.factory();
	}

}
