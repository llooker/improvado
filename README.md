# Description
[Improvado’s](http://improvado.io/) Blocks make it easy for marketing teams and marketing agencies to build a comprehensive marketing analytics dashboard to understand their performance on a platform, cross-platform and agency levels.

Improvado consolidates all the advertising data you need in a centralized database, so that it can be explored via one convenient Looker block.

# How to implement this Block
You can either download the entire block from this Github repo, directly into your Looker application by following the directions outlined here, or selectively migrate pieces of the block by simply copying + pasting the block LookML into your Looker instance.

If you don't have a Github account, we encourage you to create one for easy access to this block. If you don't have access to the repo, or cannot make a Github account, please contact with us via email support@improvado.io and we'd be happy to help.

You can also customize this block (change widgets, add measures, filters etc.).

To use this block, you will need to:
- Replace the conneciton name in the model file.
- Replace the schema name in each view file with your Ad integration's schema name.
- Replace the x in the table names at the top of each view file with your Ad account id.
- Ensure any hashed column names included in this block (i.e., spend#xxxxxxx) are replaced with the appropriate column from your schema.

# Learn more:
[Introduction Blog Post](https://looker.com/blog/improvado-looker-ad-platforms-block),
[Blocks Directory](https://looker.com/looker-blocks/partner/advertising-analytics-by-improvado),
[Discourse Post](https://discourse.looker.com/t/partner-block-advertising-analytics-by-improvado/4581)
