#!/usr/bin/env bash
############ tel-search Preferences Configuration #########
#                   Restart to see changes                #
###########################################################
# find and edit the trusted search url list and list of search bangs inside ~/.tel/configs/search/ 
export SEARCH_LANG='en_GB' #search results format returned in iso formatted country list, search wikipedia iso formats to find your correct country/language code [must not be empty]
export SEARCH_LOCATION='' #Get results specific to your country, iso code, eg ['gb','de'...]  [can be empty]
export SEARCH_PROVIDER='duckduckgo' # which search engine should tel-search utilise [qwant, duckduckgo, searx, metager]
# See more config options in ~/.tel/configs/search/
