
package com.sample.dto;

import com.sample.web.view.Performance;
import com.sample.web.view.PerformanceSchedule;

public class MatePerformance {

	private PerformanceSchedule schedule;
	private Performance performance;
	
	
	public MatePerformance() {}

	public PerformanceSchedule getSchedule() {
		return schedule;
	}

	public void setSchedule(PerformanceSchedule schedule) {
		this.schedule = schedule;
	}

	public Performance getPerformance() {
		return performance;
	}

	public void setPerformance(Performance performance) {
		this.performance = performance;
	}

	@Override
	public String toString() {
		return "MatePerformance [schedule=" + schedule + ", performance=" + performance + "]";
	}
}
