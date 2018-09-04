class ClearCompletedOp < Hyperloop::Operation
  step { HTTP.post('/clear_completed') }
  step { alert("Cleared") }
  failed { alert("Failed to clear completed.") }
end