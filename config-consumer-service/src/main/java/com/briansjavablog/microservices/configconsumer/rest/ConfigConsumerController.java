package com.briansjavablog.microservices.configconsumer.rest;

import com.briansjavablog.microservices.configconsumer.config.Configuration;
import com.briansjavablog.microservices.configconsumer.model.TimeoutConfig;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
@AllArgsConstructor
public class ConfigConsumerController {

	private Configuration configuration;

	@GetMapping("/timeout-config")
	public ResponseEntity<TimeoutConfig> getTimeoutConfiguration(){

		TimeoutConfig timeoutConfig = new TimeoutConfig();
		timeoutConfig.setConnectionTimeoutMillis(configuration.getConnectionTimeoutMillis());
		timeoutConfig.setReadTimeoutMillis(configuration.getReadTimeoutMillis());

		log.info("retrieving TimeoutConfig [{}]", timeoutConfig);
		
		return ResponseEntity.ok(timeoutConfig);
	}
}
