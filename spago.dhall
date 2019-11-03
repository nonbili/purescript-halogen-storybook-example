{ name =
	"purescript-halogen-storybook-example"
, dependencies =
	[ "debug", "effect", "halogen", "halogen-storybook", "routing" ]
, packages =
	./packages.dhall
, sources =
	[ "src/**/*.purs" ]
}