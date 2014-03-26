# Ben Kreeger's Xcode templates for iOS

## Overview

I do things the way I like. I shouldn't have to redo those things *every single time* I create a new iOS project, right? Right.

I created this repo after reading [Bob
McCune's](http://www.bobmccune.com/2012/03/04/creating-custom-xcode-4-file-templates/)
article on writing Xcode file templates. Go read it, it's awesome.

My project has converted those templates to JSON, because I find that format a *hell* of a lot easier to compose than PLISTs. This comes with a Rake task to recursively go through the JSON files and their respective directories, and build out the "Kreeger's File Templates" directory, which has PLIST versions of the JSON files, along with copied versions of the source files.

## Usage

In order to compile the templates from `_File Templates`, just `cd` into the root of this repo and run the following command(s):

``` bash
$ rake
```

Seriously, that's it. You'll need to have rake installed, but who doesn't?
