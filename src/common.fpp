#:mute
#:set BLOCKS_TXT = [ line.strip() &
                    for line in io.open('Blocks.txt') &
                    if line.strip() and not line.startswith('#') ]
#:set PARSE_HEX   = lambda string: int(string,16)
#:set PARSE_SLICE = lambda tuple_: (PARSE_HEX(tuple_[0]),PARSE_HEX(tuple_[1]))
#:set PARSE_MAP   = lambda mapping: (PARSE_RANGE(mapping[0]),PARSE_NAME(mapping[1]))
#:set PARSE_NAME  = lambda string: string.upper().replace(' ','_').replace('-','_')
#:set PARSE_LINE  = lambda line: tuple(line.split('; '))
#:set PARSE_RANGE = lambda string: PARSE_SLICE(tuple(string.split('..')))
#:set BLOCKS = [ PARSE_MAP(PARSE_LINE(line)) for line in BLOCKS_TXT ]
#:set NAMESLIST = lambda block: [(unicodedata.name(chr(i),''), i) for i in range(*block)]
#:set to_variable = lambda name: name.title().replace(' ','').replace('-','')
#:set to_value    = lambda value: f"CHAR(INT(Z'{value:04d}',KIND=CK),KIND=CK)"
#:endmute
