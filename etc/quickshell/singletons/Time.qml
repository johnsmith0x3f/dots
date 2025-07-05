pragma Singleton

Singleton {
	SystemClock {
		id: clock
		precision: SystemClock.seconds
	}

	function format(fmt: string): string {
		return Qt.formatDateTime(clock.date, fmt);
	}
}
