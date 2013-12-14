git filter-branch --env-filter \
"if test \$GIT_COMMIT = '2b25f5b335557abf8a15fd57d6daf41c2c1f2e10'
then
  export GIT_AUTHOR_DATE='Sat, 14 Dec 2013 12:40:00 +0300'
  export GIT_COMMITTER_DATE='Sat, 14 Dec 2013 12:40:00 +0300'
fi" && rm -fr "$(git rev-parse --git-dir)/refs/original/"
