package com.groups.schicken;

import com.groups.schicken.weather.WeatherService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class SChickenApplicationTests {

	@Autowired
	WeatherService weatherService;
	@Test
	void contextLoads() {

	}

}
