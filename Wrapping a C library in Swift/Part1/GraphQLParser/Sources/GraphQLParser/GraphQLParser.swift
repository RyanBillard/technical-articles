import Clibgraphqlparser

func printAST(query: String) {
	let ast: OpaquePointer? = graphql_parse_string(query, nil)
	defer {
		graphql_node_free(ast)
	}
	let result: UnsafePointer<Int8>? = graphql_ast_to_json(ast)
	if let result = result {
		let resultString = String(cString: result)
		print(resultString)
	}
}
