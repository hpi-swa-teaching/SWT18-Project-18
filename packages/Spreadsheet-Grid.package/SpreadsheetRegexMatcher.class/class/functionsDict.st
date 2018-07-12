as yet unclassified
functionsDict
	"dict mapping the regex to the function"

	^ Dictionary newFrom: {
		#'sum(.*)' -> #sum.
		#'max(.*)' -> #max.
		#'min(.*)' -> #min.
		#'count(.*)' -> #size.
		#'average(.*)' -> #average.
		#'prod(.*)' -> #*.
	}