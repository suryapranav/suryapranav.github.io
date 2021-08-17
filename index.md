---

# 

# By default, content added below the "---" mark will appear in the home page

# between the top bar and the list of recent posts.

# To change the home page layout, edit the _layouts/home.html file.

# See: https://jekyllrb.com/docs/themes/#overriding-theme-defaults

# 

layout: home
---

# About-me

Hi! I'm Surya. A teenager interested in <s>all</s> most things tech! My
current interests are:  

- [Arch Linux](5)  
- [GNU Emacs](https:/www.gnu.org/software/emacs/) (and also [Doom
  Emacs](https:/github.com/hlissner/doom-emacs))  
- [Emacs org-mode](https:/orgmode.org)  
- [Git](https:/git-scm.com/)  
- [Nix](https:/nixos.org/guides/how-nix-works.html) (and also [GNU
  Guix](https:/guix.gnu org/))  
- [Shell scripting](https:/www.shellscript.sh/)  
- [Functional programming](https:/www.geeksforgeeks.org/functional-programming-paradigm/)  
- Debating  

# *GitHub* Copilot

## What *Copilot* is

Microsoft-owned *GitHub* has caused quite a bit of commotion in the software scene (free or otherwise) with the announcement of *GitHub Copilot*, an ML using extension for Visual Studio Code trained on code from public repositories on the site. While software assistance for developers is not a remotely new concept, Copilot differs from other services in its ability to create multiple lines, even entire functions of code based on the name of a function and the developers' comments. From the demos and previews on the copilot website, the description "pair programmer" isn't all that inaccurate.

![][4]
<figcaption>Source: GitHub</figcaption>

## How does it work?

The service is currently available in a technical preview, so things might change- but fundamentally, Copilot uses OpenAI models (trained from *GitHub* code) to find the best match for the comments and the function name provided to it by the IDE.

![][1]

<figcaption aria-hidden="true">How <em>GitHub</em> Copilot works (Source: GitHub)</figcaption>

## Is this *legal*?

There are two main points in the flow of data with the service that have an ambiguous legal status:

- Firstly what would happen if the code from public repositories is licensed under a strong copyleft license (one which may require credit to be given to the original author if the code is reused). Should Copilot have to comply with the licenses for processing code?
  (Exploring the legality of *training* the AI.)
- And second, whether or not the "machine-generated" code is actually a derivative of the input code given to the AI. Should the users
  using Copilot have to follow the restrictions of the licenses of the training code on their own code? (Exploring the legality of *using*
  the AI.)

### Is *training* Copilot legal?

This should come as no surprise, but the latest project of a trillion-dollar corporation, is, in fact, legal. Ignoring ethical concerns, [this section](https:/docs.github.com/en/github/site-policy/github-terms-of-service#4-license-grant-to-us) of the *GitHub* terms of service grants GitHub the right to use your
code- **regardless of license**.

This means that the first point holds no validity as long as Copilot is trained using only the code hosted on *GitHub*. Even in the case that this foreign code is used, the case could be made for the use of this
code is *transformative*, and possibly under the scope of fair use.

GitHub is safe here, as predicted by its CEO in [this
tweet](https:/twitter.com/natfriedman/status/1409914420579344385).

### Is *Using* Copilot legal?

However, the second point is more interesting. In theory, the AI is supposed to *understand* public code to synthesize its own code based on its *understanding* of the code. Shown by [this case study](https:/docs.github.com/en/github/copilot/research-recitation), it *is* possible for the AI to reuse code from the public repos, verbatim.

A hilarious example of this is Copilot's attempt to write an about-me page, on which request [it output the exact *GitHub* bio of user David Celis](https:/twitter.com/davidcelis/status/1410749792825737219?s=20), and another where the code is taken word-for-word from the [Quake III game, including the swear-y comments](https://twitter.com/mitsuhiko/status/1410886329924194309?s=20).

This means that however rarely, (GitHub published that the rate at which this happens is around 0.1%, and is more common on files where Copilot is given little to no information, or just empty files.) it's still possible for code to be reused with no transformation, and this is the situation with the highest legal ambiguity.

*GitHub*'s explanation for this is:

> This investigation demonstrates that /GitHub/ Copilot can quote a body of code verbatim, but that it rarely does so, and when it does, it mostly quotes code that everybody quotes, and mostly at the beginning of a file, as if to break the ice.

[source](https:/docs.github.com/en/github/copilot/research-recitation)

![][2]

<figcaption aria-hidden="true">Copilot suggestions grouped based on overlap with test data (source: <em>GitHub</em>)</figcaption>

Ultimately, it's not easy to determine exactly *what* this code is- and whether or not it's "machine-generated". This is more important that it seems, especially for developers. For instance, code that is derived or forked from a [project licensed GPLv3](https:/twitter.com/eevee/status/1410037309848752128) is legally also supposed to be licensed under the same GPLv3 license. Worse case scenario? This means that programmers might unintentionally give up their freedom in licensing their software.

That's just the worse case scenario, however- because copyright laws are a little more complicated. Julia Reda, a legislator at the EU writes:

> [...]it suggests that even reproducing the smallest excerpts of protected works constitutes copyright infringement. This is not the case. Such use is only relevant under copyright law if the excerpt used is in turn original and unique enough to reach the threshold of originality[...] The short code snippets that Copilot reproduces from training data are unlikely to reach the threshold of originality.

[source](https:/juliareda.eu/2021/07/github-copilot-is-not-infringing-your-copyright/)

This is just speculation, though. There are [conflicting](https:/fossa.com/blog/analyzing-legal-implications-github-copilot/) [opinions](https:/medium.com/geekculture/githubs-ai-copilot-might-get-you-sued-if-you-use-it-c1cade1ea229) from other legal experts- and only predictions can be made until a judge's verdict is made, after the release of the software. The most concerning factor, to me personally, is that the law might not be equipped to properly deal with *GitHub* copilot. This project is the first of its kind- and the legislation that such a program has to be put under is still unclear. This makes it all too easy to make an insufficient or even incorrect judgement, and worse yet, this is the link on the chain furthest from the control of the average person like you or me. We can only hope that legislators are able to grasp the nuance and difficulty in categorizing such an innovative, out-of-the-box idea.

## Is this *ethical*?

As fun as it is for me to point at the rule book and scream "That's not enough!" or "That's Kafkaesque!", the moral and philosophical issues are probably more important here. They're also pretty straightforward:


> Is it ethical to use free/open-source code to make a proprietary service?


After all, *GitHub* copilot trains on a heap of FOSS code, but the end product of this training is a closed-source, paid-for product. While this is clearly the most important issue, it's not one that I'm qualified to pass judgment on. I believe that this is part of the reasoning for a programmer to pick a particular license (for instance, how *GPLv2* or *WTFPL* permit this, but the more popular *GPLv3* does not). As a consequence of this belief, I think it's completely unethical for *GitHub* to ignore the choices of developers just because of a vague clause in their terms of service, that most would not expect to be used this way anyway. However, it's not all bad. *GitHub* acknowledges the choice of the end user to determine if the source of code is okay to be used in their project, and write this:


> The answer is obvious: sharing the prefiltering solution we used in this analysis to detect overlap with the training set. When a suggestion contains snippets copied from the training set, the UI should simply tell you where it’s quoted from. You can then either include proper attribution or decide against using that code altogether.


[source](https:/docs.github.com/en/github/copilot/research-recitation#conclusion-and-next-steps)

## Other issues with copilot

### Copilot is not free software

There are many other "issues" regarding copilot-and not just about legality- some of which the Free Software Foundation has published [here](https:/www.fsf.org/blogs/licensing/fsf-funded-call-for-white-papers-on-philosophical-and-legal-uestions-around-copilot). The FSF requests developers not to use the service, citing its dependencies on proprietary software (particularly VSCode). The FSF also recommends [doing away with GitHub entirely](https:/www.gnu.org/software/repo-criteria evaluation.html#/GitHub/).

### Copilot is biased

Perhaps as an artifact of being trained mostly from one source, Copilot might have inherent biases and inefficiencies- as pointed out by [this paper](https:/arxiv.org/pdf/2107.03374.pdf). In the words of Kyle Wiggers:

> After repeated sampling from the model, where Codex was given 100 samples per problem, OpenAI says it manages to answer 70.2% of the HumanEval challenges correctly. But the company’s researchers also found that Codex proposes syntactically incorrect or undefined code, invoking functions, variables, and attributes that are undefined or outside the scope of the codebase.

[source](https:/venturebeat.com/2021/07/08/openai-warns-ai-behind-githubs-copilot-may-be-susceptible-to-bias/)

My personal bet as to why this might be is simple: Garbage in, garbage out. Copilot is not trained on high-quality code, but rather from popular repositories on *GitHub* with up to hundreds of contributors each- and not all of these files are full of high-quality code. In other words, *garbage in, garbage out*. It's possible to tune the training dataset go get rid of redundant code, but it's a lot of work: and *mannual, human work* at that. I'd only expect the quality of code to go up *after* launch, when bad code is rejected by the users, giving the AI a chance to analyze what kind of code is accepted more often.

### Copilot might not be *useful*?

![][3]
<figcaption>Source: fast.ai</figcaption>

I've been going on about the legal implications of this product, mainly because it seemed very interesting to me (and also because I'm not qualified or experienced enough to discuss the user experience)- but the elephant in the room is obviously the actual utility of this service… which seems to be hit or miss.

[This article](https:/www.fast.ai/2021/07/19/copilot/) (that I highly recommend you read), written by a co-author of the paper that inspired the creation of the *Codex* backend of Copilot, claims that the dips in quality of code might be due to the behavior of the code algorithms. He even calls Copilot "\[…\] *worse* than the average programmer \[in some ways\]", referring to how unlike humans, Copilot's entire knowledge comes from public code, with no regard to documentation, compiler warnings, et cetera.

> The thing to remember is that Copilot is an early preview of a very new technology that’s going to get better and better. There will be many competitors popping up in the coming months and years, and /GitHub/ will no doubt release new and better versions of their own tool.

## Conclusion

Obviously, Copilot has its flaws. Duh. But like Jeremy Howard writes…

> Complaining about the quality of the code written by Copilot feels a bit like coming across a talking dog, and complaining about its diction. The fact that it’s talking at all is impressive enough!

Truly, *GitHub* Copilot is a step forward for programmers. Contesting *if* it should exist is out of the question. Really, the only question here is *how* it should be implemented- and I think that most of the flaws will be ironed out with time. Really I'm nothing but excited to see the effects of such a program, and I hope it reduces the barrier to programming!

# Dot files + more:

- [File Backup Sript](backup.sh)  
- [Doom Emacs configs (mostly stolen)](DOOM-EMACS-CONFIGS.tar.gz)  
- [Emacs configs (autogenerated by Doom)](EMACS-CONFIGS.tar.gz)  
- [vim configuration](vimconfig)  
- [zsh configuration](zshconfig) 


[1]: data/copilot.png
[2]: data/graph.png
[3]: data/IntelliCodeUsageExamples.gif
[4]: data/copilotgif.gif
[5]: https:/archlinux.org
