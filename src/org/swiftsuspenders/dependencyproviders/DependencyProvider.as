/*
 * Copyright (c) 2011 the original author or authors
 *
 * Permission is hereby granted to use, modify, and distribute this file
 * in accordance with the terms of the license agreement accompanying it.
 */

package org.swiftsuspenders.dependencyproviders
{
	import org.swiftsuspenders.Injector;

	public interface DependencyProvider
	{
		/**
		 * Provides a response that, if required, is created using the appropriate given injector
		 *
		 * @param creatingInjector The injector that was used to create the
		 * <code>InjectionRule</code> this DependencyProvider is associated with
		 * @param usingInjector The injector through which this DependencyProvider is currently
		 * invoked
		 * @return The result of the specific DependencyProvider's mechanism
		 */
		function apply(creatingInjector : Injector, usingInjector : Injector) : Object;
	}
}