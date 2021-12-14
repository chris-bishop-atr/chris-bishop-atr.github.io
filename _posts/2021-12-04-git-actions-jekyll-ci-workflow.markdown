---
layout: post
title:  "Jekyll Continuous Integration and Delivery Pipeline with Github Actions - Build on Push Workflow"
date:   2021-12-04 19:28:32 -0500
categories: jekyll github actions workflow continuous-integration pipeline
---

![](/assets/git_actions_cicd.png)

### Fully Automated Jekyll SSG CI/CD Pipeline with Github Actions - Build on Push Workflow

Since I am just getting started on my new blog and portfolio home on the web hosted fully free of charge via [Github Pages](https://docs.github.com/en/pages/getting-started-with-github-pages), one of the very first `#TODO` items on my list was configuring a fully automated **build on push** continuous integration and delivery pipeline workflow.

Why? One of the main reasons after almost 15 years in the business I am only just now getting around to kicking out my own professional portfolio and blog is simply a matter of not having the free time away from work to devote to initial build out. I have tried to commit to such projects with varying degrees of success over my 15 years, and never seemed to hit paydirt. So - when I decided to endeavor again, priority number one was that every aspect of my development lifecycle would need to be as simplified as possible. How might I achieve such a ["fabled creature"](https://www.google.com/search?q=fabled%20creature&tbm=isch&tbs=il%3Acl)? Through the use of SSG (Static Site Generation) to minimize the time I need to spend developing content combined with a trustworthy and easy to implement continuous integration and delivery process, of course!

I was absolutely amazed at how simple [Github](https://github.com) has made that process for the Development Community nowadays, especially considering the amount of time I spend troubleshooting issues with our Jenkins CI/CD servers every week at my day job! Oh, and did I mention that for non enterprise accounts using public repositories, they offer users what I consider to be a very signifficant amount of free tier time each month, to boot? Take a look at [Github Actions - Usage Limits](https://docs.github.com/en/actions/learn-github-actions/usage-limits-billing-and-administration#usage-limits) for additional information on plan quotas, etc.

I wanted to share my experience here in hopes that it may help some other member of the Dev Community some day to finally invest the time in their own career development without the need to burn those precious few off-peak hours we are "allowed" away from our day jobs each week.

With that, lets get down to the nuts and bolts!

First, this entire website, including this very blog post, are built entirely on top of an awesome SSG (Static Site Generator) framework that is natively supported by [Github Pages](https://docs.github.com/en/pages/getting-started-with-github-pages) called [Jekyll](https://jekyllrb.com/). 

Diving deep in to SSGs in general is out of scope for this blog post, however for those who may not be familiar with SSGs - you can learn more about them at the Jekyll website noted above, or check out this great article written by [Cloudflare on the subject - What is a static site generator?](https://www.cloudflare.com/learning/performance/static-site-generator/).

After simplifying my life with regard to producing my online content to share with the masses using [Jekyll](https://jekyllrb.com/) - the next step in making my life as simple as possible was build and deployment automation.

To accomplish that, all I had to do was create a very simple [Github Actions: Continuous Integration](https://lab.github.com/githubtraining/github-actions:-continuous-integration) Workflow template and include it in my website's Git Repo!

Here is how simple automating build on push and publish to the web can be with Github Actions and Jekyll:

```yaml
# Author: Chris Bishop
# Created: 05Dec2021
# Purpose: Automated CI / CD Pipeline to Build, Scan (TODO), 
#     and Publish Jekyll Assets from main branch to gh-pages branch
# See: https://github.com/marketplace/actions/jekyll-actions

name: jekyll-ci-build-and-publish-workflow

# Controls when the workflow will run
on:
  # Triggers the workflow on push or pull request events but only for the main branch
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]
  # Allows you to run this workflow manually from the Actions tab
  workflow_dispatch:

# A workflow run is made up of one or more jobs that can run sequentially or in parallel
jobs:
  # This workflow contains a single job called "build"
  build:
    # The type of runner that the job will run on
    runs-on: ubuntu-latest

    # Steps represent a sequence of tasks that will be executed as part of the job
    steps:
    
      # Checks-out your repository/branch under $GITHUB_WORKSPACE, so your job can access it
      # See: https://github.com/marketplace/actions/checkout
      - uses: actions/checkout@v2
      
      # Use GitHub Actions' cache to shorten build times and decrease load on servers
      # See: https://github.com/marketplace/actions/cache
      - uses: actions/cache@v2
        with:
          path: vendor/bundle
          key: $\{\{ runner.os \}\}-gems-$\{\{ hashFiles('**/Gemfile') \}\}
          restore-keys: |
            $\{\{ runner.os \}\}-gems-
            
      # Use the 3rd Party Jekyll Managed jekyll-action to build Jekyll sources checked out from main
      #     then publish resulting SSG outfiles to the gh-pages branch which should trigger a new env
      #     deployment to https://chris-bishop.github.io/
      # See: https://github.com/marketplace/actions/jekyll-actions
      - uses: helaili/jekyll-action@v2
        with:
          # NOTE - secrets.GITHUB_TOKEN is like an AWS Default KMS Key managed by Github, NOT a user managed PAT!
          token: ${{ secrets.GITHUB_TOKEN }}
          # Where the build job should look for source files and templates. Defaults to repo root. 
          # Set the jekyll_src value to a subdirectory below, as desired
          jekyll_src: ''
          # Branch to publish the resulting SSG output files to.
          target_branch: 'gh-pages'
```

_Source: [jekyll-ci-build-and-publish-workflow.yml](https://github.com/chris-bishop/chris-bishop.github.io/blob/main/.github/workflows/jekyll-ci-build-and-publish-workflow.yml)_

I have added lots of comments explaining what each step of the workflow job is actually doing, so I will save you some bandwidth and not go through each and every step.

That's it though! I now have a fully automated SSG + CI/CD "headless" content development and management platform which allows me to spend most of my valuable time creating rather than troubleshooting!

To see the full source code that runs this very website, here is the source repository: [Github - chris-bishop/chris-bishop.github.io](https://github.com/chris-bishop/chris-bishop.github.io)

It's a public repository - so feel free to reach out to me on the discussion boards there if you have any further questions / thoughts!

Cheers Mates!
