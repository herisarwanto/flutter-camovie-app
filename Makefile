.PHONY: get
get:
	@flutter pub get

.PHONY: build
build:
	@flutter pub run build_runner build --delete-conflicting-outputs

.PHONY: watch
watch:
	@flutter pub run build_runner watch --delete-conflicting-outputs