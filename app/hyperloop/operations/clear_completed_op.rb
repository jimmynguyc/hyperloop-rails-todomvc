class ClearCompletedOp < Hyperloop::Operation
  step { HTTP.post('/clear_completed') }
  failed { alert("Failed") }
end