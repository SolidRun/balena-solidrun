deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

module.exports =
	version: 1
	slug: 'n6gsdl'
	alias: [ 'n6gsdl' ]
	name: 'SolidSense N6GSDL'
	arch: 'armv7hf'
	state: 'development'
	isDefault: true

	supportsBlink: false

	options: [ networkOptions.group]

	yocto:
		machine: 'n6gsdl'
		image: 'balena-image'
		fstype: 'balena-img'
		version: 'yocto-dunsfell'
		deployArtifact: 'balena-image-n6gsdl.balenaos-img'
		compressed: true

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	initialization: commonImg.initialization
