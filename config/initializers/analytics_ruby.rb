Analytics = Segment::Analytics.new({
    write_key: '7BvBfuGQCulp1W4yv2toidUqZqhuo6MD',
    on_error: Proc.new { |status, msg| print msg }
})