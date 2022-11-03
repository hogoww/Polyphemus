class initialization
resetAll
	<script>
	self withAllSubclasses do: [ :c | c reset ]