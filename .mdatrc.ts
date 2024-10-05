import mdatConfig from '@kitschpatrol/mdat-config'
import { mergeConfigs } from 'mdat'

import fs from 'node:fs/promises'
import path from 'node:path'

type CaskInfo = {
	name: string
	description: string
	caskName: string
	filePath: string
	version: string
	homepage: string
	type: string // Folder name, 'custom' | 'fork' | 'pinned'
}

// A proper parse would be smarter, but this is fast and good enough
async function parseCaskFile(filePath: string): Promise<CaskInfo> {
	const content = await fs.readFile(filePath, 'utf-8')

	const caskNameMatch = content.match(/cask\s+"([^"]+)"/)
	const nameMatch = content.match(/name\s+"([^"]+)"/)
	const description = content.match(/desc\s+"([^"]+)"/)
	const versionMatch = content.match(/version\s+"([^"]+)"/)
	const homepageMatch = content.match(/homepage\s+"([^"]+)"/)

	if (
		!caskNameMatch ||
		!description ||
		!versionMatch ||
		!nameMatch ||
		!caskNameMatch ||
		!homepageMatch
	) {
		throw new Error('Unable to parse cask file')
	}

	return {
		filePath,
		description: description[1],
		name: nameMatch[1],
		caskName: caskNameMatch[1],
		version: versionMatch[1],
		homepage: homepageMatch[1],
		type: path.dirname(filePath).split(path.sep).pop() ?? 'unknown',
	}
}

function titleCase(str: string): string {
	return str.replace(/\b\w/g, (c) => c.toUpperCase())
}

async function createMarkdownTable(casks: CaskInfo[]): Promise<string> {
	const headers = ['Application', 'Description', 'Cask', 'Type']
	let table = `| ${headers.join(' | ')} |\n`
	table += `| ${headers.map(() => '---').join(' | ')} |\n`

	for (const cask of casks) {
		const row = [
			`[${cask.name}](${cask.homepage})`,
			cask.description,
			`[${cask.caskName}](${cask.filePath})`,
			titleCase(cask.type),
		]
		table += `| ${row.join(' | ')} |\n`
	}

	return table
}

async function getCasks(glob: string, excludeCasks: string[] = []): Promise<CaskInfo[]> {
	const casks: CaskInfo[] = []
	for await (const entry of fs.glob(glob)) {
		const cask = await parseCaskFile(entry)
		if (!excludeCasks.includes(cask.caskName)) {
			casks.push(cask)
		}
	}

	return casks.sort((a, b) => a.name.localeCompare(b.name))
}

async function getCasksTable(): Promise<string> {
	const casks = await getCasks('./Casks/**/*.rb', ['sheepshaver-folder'])
	return createMarkdownTable(casks)
}

export default mergeConfigs(mdatConfig, {
	rules: {
		casks: getCasksTable,
	},
})
