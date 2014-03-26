# Ben Kreeger's Xcode templates for iOS

## Overview

I do things the way I like. I shouldn't have to redo those things *every single time* I create a new iOS project, right? Right.

These templates are based off of [@borealkiss][twt]'s awesome Minimal Templates. [His article on breaking down Xcode's templating system][kiss] is awesome; go read it.

My project has converted those templates to JSON, because I find that format a *hell* of a lot easier to compose than PLISTs. This comes with a Rake task to recursively go through the JSON files and their respective directories, and build out the "Kreeger's Templates" directory, which has PLIST versions of the JSON files, along with copied versions of the source files.

## Usage

In order to compile the templates from `_Templates`, just `cd` into the root of this repo and run the following command(s):

``` bash
$ rake
```

Seriously, that's it. You'll need to have rake installed, but who doesn't?

## Important things to note

I'm still working on these, so until I remove this notice, you may not wanna use 'em.

## Template functionality

### Base (gr.kree.default.base)

- Sets lots of Clang/GCC build flags.
- Defines some target information and stubs out Debug/Release configurations.
- Defines base target as `___PACKAGENAME___`.
- Defines the following setup options:
    - product name
    - organization name
    - bundle prefix
- Contains wildcard definitions:
    - Foundation import (`*:*:importFoundation`)
    - Comments string (`*:comments`)
    - Import string (`*:import:*`)
- Contains file definitions:
    - Prefix.pch (file definition)
    - Prefix.pch (ifdef OBJC definition)

### Bundle base (gr.kree.default.bundleBase)

- Defines target settings, like location of Info.plist file and prefix header
- Contains file definitions:
    - Info.plist file (file definition)
    - Info.plist (bundle identifier definition)
- Nodes:
    - Info.plist (bundle identifier definition)

### Objective-C application (gr.kree.default.objectiveCApplication)

- Defines target settings, like the extension the project should have, the type, and its build phases.
- Wildcard definitions:
    - Property synthesis in implementation (`*:implementation:synthesize:*`)
    - Init method appearance (`*:init`)
- File definitions:
    - main.m (file definition)
    - Info.plist (`Basics`, basic Objective-C settings)
- Nodes:
    - main.m (`comments`, `import:importCocoa`)
    - Info.plist (basic Objective-C settings)
    - Prefix.pch (Availability snippet, objc:importCocoa)

## Global Variables

- `PACKAGENAME`: the human-readable name of your application/package.
- `FILENAME`: the name of the file in the current context.
- `COPYRIGHT`: the copyright string generated, if a company name is added.

## Scoped variables

These are always prefixed by `VARIABLE_`.

- `bundleIdentifierPrefix:bundleIdentifier`: your company bundle identifier prefix.
- `productName:RFC1034Identifier`: the final part of your bundle identifier.

[twt]:      http://twitter.com/borealkiss
[kiss]:     http://blog.boreal-kiss.net/2011/03/11/a-minimal-project-template-for-xcode-4/
