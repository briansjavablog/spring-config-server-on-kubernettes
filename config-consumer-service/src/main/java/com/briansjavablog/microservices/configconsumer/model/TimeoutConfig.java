package com.briansjavablog.microservices.configconsumer.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter
@Setter
public class TimeoutConfig {

	private int connectionTimeoutMillis;
	private int readTimeoutMillis;
}
