package sdk

import (
	abci "github.com/gnolang/gno/pkgs/bft/abci/types"
	"github.com/gnolang/gno/pkgs/std"
)

// Router provides handlers for each transaction type.
type Router interface {
	AddRoute(r string, h Handler) Router
	Route(path string) Handler
}

// A Handler handles processing messages and answering queries
// for a particular application concern.
type Handler interface {
	// Process defines the core of the state transition function of an application.
	Process(ctx Context, msg Msg) Result
	// Query allows the state to be queried.
	Query(ctx Context, req abci.RequestQuery) abci.ResponseQuery
}

// Result is the union of ResponseDeliverTx and ResponseCheckTx plus events.
type Result struct {
	abci.ResponseBase
	GasWanted int64
	GasUsed   int64
}

// AnteHandler authenticates transactions, before their internal messages are handled.
type AnteHandler func(ctx Context, tx Tx, simulate bool) (newCtx Context, result Result, abort bool)

// Exports from std.
type Msg = std.Msg
type Tx = std.Tx
type Coin = std.Coin
type Coins = std.Coins
type GasPrice = std.GasPrice

var ParseGasPrice = std.ParseGasPrice
var ParseGasPrices = std.ParseGasPrices
