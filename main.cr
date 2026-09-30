lib Stdio
  fun emit_line = puts(str : UInt8*) : Int32
end

class Ghost
  macro method_missing(call)
    at_exit { Stdio.emit_line("Hello World".to_unsafe) }
  end
end

Ghost.new.hello