return {
	-- Command and arguments to start the server.
  cmd = { "qmlls" },
	-- Filetypes to automatically attach to.
  filetypes = { "qml", "qmljs" },
	-- Markers indicating the "root directory" of the project.
  root_markers = { ".qmlls.ini", ".git" },
}
