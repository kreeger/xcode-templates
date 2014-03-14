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

[twt]:      http://twitter.com/borealkiss
[kiss]:     http://blog.boreal-kiss.net/2011/03/11/a-minimal-project-template-for-xcode-4/
