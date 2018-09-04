class ClearCompletedOp < Hyperloop::Operation
  step { HTTP.post('/clear_completed') }
  failed { alert("Failed to clear completed.") }
end