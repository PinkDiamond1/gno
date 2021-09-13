module github.com/gnolang/gno

go 1.15

require (
	github.com/btcsuite/btcd v0.20.1-beta
	github.com/btcsuite/btcutil v1.0.2
	github.com/davecgh/go-spew v1.1.1
	github.com/facebookgo/ensure v0.0.0-20200202191622-63f1cf65ac4c // indirect
	github.com/facebookgo/stack v0.0.0-20160209184415-751773369052 // indirect
	github.com/facebookgo/subset v0.0.0-20200203212716-c811ad88dec4 // indirect
	github.com/fortytw2/leaktest v1.3.0
	github.com/gdamore/tcell/v2 v2.1.0
	github.com/gnolang/cors v1.8.1
	github.com/gnolang/overflow v0.0.0-20170615021017-4d914c927216
	github.com/golang/protobuf v1.5.2
	github.com/google/gofuzz v1.0.0
	github.com/gorilla/websocket v1.4.2
	github.com/jaekwon/testify v1.6.1
	github.com/jmhodges/levigo v1.0.0
	github.com/libp2p/go-buffer-pool v0.0.2
	github.com/mattn/go-runewidth v0.0.10
	github.com/pelletier/go-toml v1.9.3 // indirect
	github.com/spf13/cobra v1.2.1
	github.com/stretchr/testify v1.7.0
	github.com/syndtr/goleveldb v1.0.1-0.20190923125748-758128399b1d
	github.com/tecbot/gorocksdb v0.0.0-20191217155057-f0fad39f321c
	github.com/tendermint/classic v0.0.0-20201012085102-0a11024b2668
	go.etcd.io/bbolt v1.3.6
	golang.org/x/crypto v0.0.0-20200622213623-75b288015ac9
	golang.org/x/mod v0.4.2
	golang.org/x/net v0.0.0-20210726213435-c6fcb2dbf985
	golang.org/x/term v0.0.0-20210615171337-6886f2dfbf5b
	google.golang.org/protobuf v1.27.1
)

replace github.com/gdamore/tcell => github.com/gnolang/tcell v1.4.0

replace github.com/gdamore/tcell/v2 => github.com/gnolang/tcell/v2 v2.1.0
