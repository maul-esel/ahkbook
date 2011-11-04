# ahkbook - a book on AutoHotkey

Information on this project can be found on its [start page](http://maul-esel.github.com/ahkbook/index.html).

## Contributing
Please help me with this project. Add your posts, ideas, knowledge, experience to help AutoHotkey beginners, and to provide a reference for advanced users!

To contribute, do the following:

* if you're on github:
	* PM me on github or in the AutoHotkey forums
	* fork the project
	* **IMPORTANT: change the `url` setting in `_config.yml` to `'http://[your username].github.com/ahkbook'`**
	* do your changes and additions, optionally creating new branches
 	* if you have access to a Linux / Ubuntu / ... system or VM, ***consider*** installing Jekyll locally. If you do so, you might temporarily change the `url` setting to the path to your local repo to enable offline-tests.
	* test if it works
	* send me a pull request when you're done
* otherwise send me your comments, ideas, patches, ... via the AutoHotkey forums or PM me there.

In either way,

* add your posts
* author posts mentioned in the index (those in red)
* improve and complete existing posts
* translate posts in other languages (place them in a corresponding folder, such as `de/_posts` or `fr/_posts`).
* add yourself to the list of contributors with a website of your choice ;-)

### Important note:
This project is processed with [Jekyll](https://github.com/mojombo/jekyll#readme). Check it out before contributing.
This doesn't mean you need to install Jekyll, the contents are automatically processed on github. But if you install it, you have (of course) better control about what you push to your github repo.
With Jekyll, you can write your posts in HTML, Markdown (like this file) or Textile.

### Another important note:
AutoHotkey syntax highlighting via `{% highlight ahk %}` currently doesn't work on Github Pages (but it does locally). I sent a message to github support to adress this.

Issues:

* [UTF-8](https://github.com/mojombo/jekyll/issues/429) [FIXED!]
* [AHK Syntax](https://github.com/mojombo/jekyll/issues/428)
* [GFM](https://github.com/mojombo/jekyll/issues/427)
