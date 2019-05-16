# Description
[Improvado’s](http://improvado.io/) Blocks make it easy for marketing teams and marketing agencies to build a comprehensive marketing analytics dashboard to understand their performance on a platform, cross-platform and agency levels.

Improvado consolidates all the advertising data you need in a centralized database, so that it can be explored via one convenient Looker block.

# How to implement this Block
You can either download Improvado’s entire blocks from this Github repo directly into your Looker application by following the directions outlined here, or selectively migrate pieces of the blocks by simply copying + pasting the block LookML into your Looker instance.

If you don’t have a Github account, we encourage you to create one for easy access to this block. If you don’t have access to the repo, or cannot make a Github account, please contact with us via email support@improvado.io and we’d be happy to help.

You can also customize Improvado blocks (change widgets, add measures, filters etc.).

To use this block, you will need to:
- Replace the conneciton name in the model file.
- Replace the schema name in each view file with your Ad integration's schema name.
- Replace the x in the table names at the top of each view file with your Ad account id.
- Ensure any hashed column names included in this block (i.e., spend#xxxxxxx) are replaced with the appropriate column from your schema.

The following is a list of Improvado’s blocks, the dashboards within them, their corresponding template names and views.

Improvado Advertising Analytics Block
Dashboard: Platform Dashboard
Template Name: template_channel_performance
View: campaign_bindings

Dashboard: AdWords Account Dashboard
Template Name: template_adwords_account_performance
View: adsets_adwords

Dashboard: AdWords Keyword Dashboard
Template Name: template_adwords_keywords_performance
View: keywords_adwords

Dashboard: Bing AdGroup Dashboard
Template Name: template_bing_adgroup_performance
View: adsets_bing

Dashboard: Facebook Dashboard
Template Name: template_facebook_performance
View: ads_facebook

Improvado Agency Analytics Block
Dashboard: Agency Executive Dashboard
Template Name: template_overview_platforms_level
View: campaign_bindings

Improvado Twitter Analytics Block
Dashboard: Twitter Analytics Dashboard
Template Name: template_twitter_performance
View: promoted_tweets_raw_table_twitter, organic_tweets_raw_table_twitter

Improvado Google DCM Analytics Block
Dashboard: Google DCM Analytics
Template Name: template_dcm_performance
View: creatives_raw_table_dcm

Improvado Youtube Analytics Block
Dashboard: YouTube Campaign Analytics Dashboard
Template Name: template_youtube_campaign
View: adsets_youtube

Improvado Ad Preview Block
Dashboard: Ad Preview Dashboard
Template Name: template_ad_preview
View: ads_creative_with_preview_raw_table_facebook

# Learn more:
[Introduction Blog Post](https://looker.com/blog/improvado-looker-ad-platforms-block),
[Blocks Directory](https://looker.com/looker-blocks/partner/advertising-analytics-by-improvado),
[Discourse Post](https://discourse.looker.com/t/partner-block-advertising-analytics-by-improvado/4581)
