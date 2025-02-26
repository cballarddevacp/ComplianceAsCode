#!/usr/bin/env bash
###############################################################################
#
# Bash Remediation Script for Upstream STIG for Google Chromium
#
# Profile Description:
# This profile is developed under the DoD consensus model and DISA FSO Vendor STIG process,
# serving as the upstream development environment for the Google Chromium STIG.
# As a result of the upstream/downstream relationship between the SCAP Security Guide project
# and the official DISA FSO STIG baseline, users should expect variance between SSG and DISA FSO content.
# For official DISA FSO STIG content, refer to https://public.cyber.mil/stigs/downloads/?_dl_facet_stigs=app-security%2Cbrowser-guidance.
# While this profile is packaged by Red Hat as part of the SCAP Security Guide package, please note
# that commercial support of this SCAP content is NOT available. This profile is provided as example
# SCAP content with no endorsement for suitability or production readiness. Support for this
# profile is provided by the upstream SCAP Security Guide community on a best-effort basis. The
# upstream project homepage is https://www.open-scap.org/security-policies/scap-security-guide/.
#
# Profile ID:  xccdf_org.ssgproject.content_profile_stig
# Benchmark ID:  xccdf_org.ssgproject.content_benchmark_CHROMIUM
# Benchmark Version:  0.1.73
# XCCDF Version:  1.2
#
# This file can be generated by OpenSCAP using:
# $ oscap xccdf generate fix --profile xccdf_org.ssgproject.content_profile_stig --fix-type bash ssg-chromium-ds.xml
#
# This Bash Remediation Script is generated from an XCCDF profile without preliminary evaluation.
# It attempts to fix every selected rule, even if the system is already compliant.
#
# How to apply this Bash Remediation Script:
# $ sudo ./remediation-script.sh
#
###############################################################################

###############################################################################
# BEGIN fix (1 / 37) for 'xccdf_org.ssgproject.content_rule_chromium_blacklist_extension_installation'
###############################################################################
(>&2 echo "Remediating rule 1/37: 'xccdf_org.ssgproject.content_rule_chromium_blacklist_extension_installation'")






if ! grep -q ExtensionInstallBlocklist /etc/chromium/policies/managed/chrome_stig_policy.json; then
   sed -i -e '/{/a \  "'ExtensionInstallBlocklist'": '[ "*" ]',' /etc/chromium/policies/managed/chrome_stig_policy.json
else
   sed -i -e 's/\"'ExtensionInstallBlocklist'.*/\"'ExtensionInstallBlocklist'\": '[ "*" ]',/g' /etc/chromium/policies/managed/chrome_stig_policy.json
fi

# END fix for 'xccdf_org.ssgproject.content_rule_chromium_blacklist_extension_installation'

###############################################################################
# BEGIN fix (2 / 37) for 'xccdf_org.ssgproject.content_rule_chromium_block_desktop_notifications'
###############################################################################
(>&2 echo "Remediating rule 2/37: 'xccdf_org.ssgproject.content_rule_chromium_block_desktop_notifications'")






if ! grep -q DefaultNotificationsSetting /etc/chromium/policies/managed/chrome_stig_policy.json; then
   sed -i -e '/{/a \  "'DefaultNotificationsSetting'": '2',' /etc/chromium/policies/managed/chrome_stig_policy.json
else
   sed -i -e 's/\"'DefaultNotificationsSetting'.*/\"'DefaultNotificationsSetting'\": '2',/g' /etc/chromium/policies/managed/chrome_stig_policy.json
fi

# END fix for 'xccdf_org.ssgproject.content_rule_chromium_block_desktop_notifications'

###############################################################################
# BEGIN fix (3 / 37) for 'xccdf_org.ssgproject.content_rule_chromium_check_cert_revocation'
###############################################################################
(>&2 echo "Remediating rule 3/37: 'xccdf_org.ssgproject.content_rule_chromium_check_cert_revocation'")






if ! grep -q EnableOnlineRevocationChecks /etc/chromium/policies/managed/chrome_stig_policy.json; then
   sed -i -e '/{/a \  "'EnableOnlineRevocationChecks'": 'true',' /etc/chromium/policies/managed/chrome_stig_policy.json
else
   sed -i -e 's/\"'EnableOnlineRevocationChecks'.*/\"'EnableOnlineRevocationChecks'\": 'true',/g' /etc/chromium/policies/managed/chrome_stig_policy.json
fi

# END fix for 'xccdf_org.ssgproject.content_rule_chromium_check_cert_revocation'

###############################################################################
# BEGIN fix (4 / 37) for 'xccdf_org.ssgproject.content_rule_chromium_default_block_plugins'
###############################################################################
(>&2 echo "Remediating rule 4/37: 'xccdf_org.ssgproject.content_rule_chromium_default_block_plugins'")






if ! grep -q DefaultPluginsSetting /etc/chromium/policies/managed/chrome_stig_policy.json; then
   sed -i -e '/{/a \  "'DefaultPluginsSetting'": '3',' /etc/chromium/policies/managed/chrome_stig_policy.json
else
   sed -i -e 's/\"'DefaultPluginsSetting'.*/\"'DefaultPluginsSetting'\": '3',/g' /etc/chromium/policies/managed/chrome_stig_policy.json
fi

# END fix for 'xccdf_org.ssgproject.content_rule_chromium_default_block_plugins'

###############################################################################
# BEGIN fix (5 / 37) for 'xccdf_org.ssgproject.content_rule_chromium_default_search_provider'
###############################################################################
(>&2 echo "Remediating rule 5/37: 'xccdf_org.ssgproject.content_rule_chromium_default_search_provider'")






if ! grep -q DefaultSearchProviderEnabled /etc/chromium/policies/managed/chrome_stig_policy.json; then
   sed -i -e '/{/a \  "'DefaultSearchProviderEnabled'": 'true',' /etc/chromium/policies/managed/chrome_stig_policy.json
else
   sed -i -e 's/\"'DefaultSearchProviderEnabled'.*/\"'DefaultSearchProviderEnabled'\": 'true',/g' /etc/chromium/policies/managed/chrome_stig_policy.json
fi

# END fix for 'xccdf_org.ssgproject.content_rule_chromium_default_search_provider'

###############################################################################
# BEGIN fix (6 / 37) for 'xccdf_org.ssgproject.content_rule_chromium_default_search_provider_name'
###############################################################################
(>&2 echo "Remediating rule 6/37: 'xccdf_org.ssgproject.content_rule_chromium_default_search_provider_name'")

var_default_search_provider_name='https://www.google.com'


var_default_search_provider_name_modified="$(echo ${var_default_search_provider_name} | sed 's/\//\\\/\\/')"




if ! grep -q DefaultSearchProviderName /etc/chromium/policies/managed/chrome_stig_policy.json; then
   sed -i -e '/{/a \  "'DefaultSearchProviderName'": '${var_default_search_provider_name}',' /etc/chromium/policies/managed/chrome_stig_policy.json
else
   sed -i -e 's/\"'DefaultSearchProviderName'.*/\"'DefaultSearchProviderName'\": '${var_default_search_provider_name_modified}',/g' /etc/chromium/policies/managed/chrome_stig_policy.json
fi

# END fix for 'xccdf_org.ssgproject.content_rule_chromium_default_search_provider_name'

###############################################################################
# BEGIN fix (7 / 37) for 'xccdf_org.ssgproject.content_rule_chromium_disable_3d_graphics_api'
###############################################################################
(>&2 echo "Remediating rule 7/37: 'xccdf_org.ssgproject.content_rule_chromium_disable_3d_graphics_api'")






if ! grep -q Disable3DAPIs /etc/chromium/policies/managed/chrome_stig_policy.json; then
   sed -i -e '/{/a \  "'Disable3DAPIs'": 'true',' /etc/chromium/policies/managed/chrome_stig_policy.json
else
   sed -i -e 's/\"'Disable3DAPIs'.*/\"'Disable3DAPIs'\": 'true',/g' /etc/chromium/policies/managed/chrome_stig_policy.json
fi

# END fix for 'xccdf_org.ssgproject.content_rule_chromium_disable_3d_graphics_api'

###############################################################################
# BEGIN fix (8 / 37) for 'xccdf_org.ssgproject.content_rule_chromium_disable_autocomplete'
###############################################################################
(>&2 echo "Remediating rule 8/37: 'xccdf_org.ssgproject.content_rule_chromium_disable_autocomplete'")






if ! grep -q AutoFillEnabled /etc/chromium/policies/managed/chrome_stig_policy.json; then
   sed -i -e '/{/a \  "'AutoFillEnabled'": 'false',' /etc/chromium/policies/managed/chrome_stig_policy.json
else
   sed -i -e 's/\"'AutoFillEnabled'.*/\"'AutoFillEnabled'\": 'false',/g' /etc/chromium/policies/managed/chrome_stig_policy.json
fi

# END fix for 'xccdf_org.ssgproject.content_rule_chromium_disable_autocomplete'

###############################################################################
# BEGIN fix (9 / 37) for 'xccdf_org.ssgproject.content_rule_chromium_disable_automatic_installation'
###############################################################################
(>&2 echo "Remediating rule 9/37: 'xccdf_org.ssgproject.content_rule_chromium_disable_automatic_installation'")






if ! grep -q DisablePluginFinder /etc/chromium/policies/managed/chrome_stig_policy.json; then
   sed -i -e '/{/a \  "'DisablePluginFinder'": 'true',' /etc/chromium/policies/managed/chrome_stig_policy.json
else
   sed -i -e 's/\"'DisablePluginFinder'.*/\"'DisablePluginFinder'\": 'true',/g' /etc/chromium/policies/managed/chrome_stig_policy.json
fi

# END fix for 'xccdf_org.ssgproject.content_rule_chromium_disable_automatic_installation'

###############################################################################
# BEGIN fix (10 / 37) for 'xccdf_org.ssgproject.content_rule_chromium_disable_background_processing'
###############################################################################
(>&2 echo "Remediating rule 10/37: 'xccdf_org.ssgproject.content_rule_chromium_disable_background_processing'")






if ! grep -q BackgroundModeEnabled /etc/chromium/policies/managed/chrome_stig_policy.json; then
   sed -i -e '/{/a \  "'BackgroundModeEnabled'": 'false',' /etc/chromium/policies/managed/chrome_stig_policy.json
else
   sed -i -e 's/\"'BackgroundModeEnabled'.*/\"'BackgroundModeEnabled'\": 'false',/g' /etc/chromium/policies/managed/chrome_stig_policy.json
fi

# END fix for 'xccdf_org.ssgproject.content_rule_chromium_disable_background_processing'

###############################################################################
# BEGIN fix (11 / 37) for 'xccdf_org.ssgproject.content_rule_chromium_disable_cleartext_passwords'
###############################################################################
(>&2 echo "Remediating rule 11/37: 'xccdf_org.ssgproject.content_rule_chromium_disable_cleartext_passwords'")






if ! grep -q PasswordManagerAllowShowPasswords /etc/chromium/policies/managed/chrome_stig_policy.json; then
   sed -i -e '/{/a \  "'PasswordManagerAllowShowPasswords'": 'false',' /etc/chromium/policies/managed/chrome_stig_policy.json
else
   sed -i -e 's/\"'PasswordManagerAllowShowPasswords'.*/\"'PasswordManagerAllowShowPasswords'\": 'false',/g' /etc/chromium/policies/managed/chrome_stig_policy.json
fi

# END fix for 'xccdf_org.ssgproject.content_rule_chromium_disable_cleartext_passwords'

###############################################################################
# BEGIN fix (12 / 37) for 'xccdf_org.ssgproject.content_rule_chromium_disable_cloud_print_sharing'
###############################################################################
(>&2 echo "Remediating rule 12/37: 'xccdf_org.ssgproject.content_rule_chromium_disable_cloud_print_sharing'")






if ! grep -q CloudPringProxyEnabled /etc/chromium/policies/managed/chrome_stig_policy.json; then
   sed -i -e '/{/a \  "'CloudPringProxyEnabled'": 'false',' /etc/chromium/policies/managed/chrome_stig_policy.json
else
   sed -i -e 's/\"'CloudPringProxyEnabled'.*/\"'CloudPringProxyEnabled'\": 'false',/g' /etc/chromium/policies/managed/chrome_stig_policy.json
fi

# END fix for 'xccdf_org.ssgproject.content_rule_chromium_disable_cloud_print_sharing'

###############################################################################
# BEGIN fix (13 / 37) for 'xccdf_org.ssgproject.content_rule_chromium_disable_firewall_traversal'
###############################################################################
(>&2 echo "Remediating rule 13/37: 'xccdf_org.ssgproject.content_rule_chromium_disable_firewall_traversal'")






if ! grep -q RemoteAccessHostFirewallTraversal /etc/chromium/policies/managed/chrome_stig_policy.json; then
   sed -i -e '/{/a \  "'RemoteAccessHostFirewallTraversal'": 'false',' /etc/chromium/policies/managed/chrome_stig_policy.json
else
   sed -i -e 's/\"'RemoteAccessHostFirewallTraversal'.*/\"'RemoteAccessHostFirewallTraversal'\": 'false',/g' /etc/chromium/policies/managed/chrome_stig_policy.json
fi

# END fix for 'xccdf_org.ssgproject.content_rule_chromium_disable_firewall_traversal'

###############################################################################
# BEGIN fix (14 / 37) for 'xccdf_org.ssgproject.content_rule_chromium_disable_google_sync'
###############################################################################
(>&2 echo "Remediating rule 14/37: 'xccdf_org.ssgproject.content_rule_chromium_disable_google_sync'")






if ! grep -q SyncDisabled /etc/chromium/policies/managed/chrome_stig_policy.json; then
   sed -i -e '/{/a \  "'SyncDisabled'": 'true',' /etc/chromium/policies/managed/chrome_stig_policy.json
else
   sed -i -e 's/\"'SyncDisabled'.*/\"'SyncDisabled'\": 'true',/g' /etc/chromium/policies/managed/chrome_stig_policy.json
fi

# END fix for 'xccdf_org.ssgproject.content_rule_chromium_disable_google_sync'

###############################################################################
# BEGIN fix (15 / 37) for 'xccdf_org.ssgproject.content_rule_chromium_disable_incognito_mode'
###############################################################################
(>&2 echo "Remediating rule 15/37: 'xccdf_org.ssgproject.content_rule_chromium_disable_incognito_mode'")






if ! grep -q IncognitoModeAvailability /etc/chromium/policies/managed/chrome_stig_policy.json; then
   sed -i -e '/{/a \  "'IncognitoModeAvailability'": 'false',' /etc/chromium/policies/managed/chrome_stig_policy.json
else
   sed -i -e 's/\"'IncognitoModeAvailability'.*/\"'IncognitoModeAvailability'\": 'false',/g' /etc/chromium/policies/managed/chrome_stig_policy.json
fi

# END fix for 'xccdf_org.ssgproject.content_rule_chromium_disable_incognito_mode'

###############################################################################
# BEGIN fix (16 / 37) for 'xccdf_org.ssgproject.content_rule_chromium_disable_metrics_reporting'
###############################################################################
(>&2 echo "Remediating rule 16/37: 'xccdf_org.ssgproject.content_rule_chromium_disable_metrics_reporting'")






if ! grep -q MetricsReportingEnabled /etc/chromium/policies/managed/chrome_stig_policy.json; then
   sed -i -e '/{/a \  "'MetricsReportingEnabled'": 'false',' /etc/chromium/policies/managed/chrome_stig_policy.json
else
   sed -i -e 's/\"'MetricsReportingEnabled'.*/\"'MetricsReportingEnabled'\": 'false',/g' /etc/chromium/policies/managed/chrome_stig_policy.json
fi

# END fix for 'xccdf_org.ssgproject.content_rule_chromium_disable_metrics_reporting'

###############################################################################
# BEGIN fix (17 / 37) for 'xccdf_org.ssgproject.content_rule_chromium_disable_network_prediction'
###############################################################################
(>&2 echo "Remediating rule 17/37: 'xccdf_org.ssgproject.content_rule_chromium_disable_network_prediction'")






if ! grep -q DnsPrefetchingEnabled /etc/chromium/policies/managed/chrome_stig_policy.json; then
   sed -i -e '/{/a \  "'DnsPrefetchingEnabled'": 'false',' /etc/chromium/policies/managed/chrome_stig_policy.json
else
   sed -i -e 's/\"'DnsPrefetchingEnabled'.*/\"'DnsPrefetchingEnabled'\": 'false',/g' /etc/chromium/policies/managed/chrome_stig_policy.json
fi

# END fix for 'xccdf_org.ssgproject.content_rule_chromium_disable_network_prediction'

###############################################################################
# BEGIN fix (18 / 37) for 'xccdf_org.ssgproject.content_rule_chromium_disable_outdated_plugins'
###############################################################################
(>&2 echo "Remediating rule 18/37: 'xccdf_org.ssgproject.content_rule_chromium_disable_outdated_plugins'")






if ! grep -q AllowOutdatedPlugins /etc/chromium/policies/managed/chrome_stig_policy.json; then
   sed -i -e '/{/a \  "'AllowOutdatedPlugins'": 'false',' /etc/chromium/policies/managed/chrome_stig_policy.json
else
   sed -i -e 's/\"'AllowOutdatedPlugins'.*/\"'AllowOutdatedPlugins'\": 'false',/g' /etc/chromium/policies/managed/chrome_stig_policy.json
fi

# END fix for 'xccdf_org.ssgproject.content_rule_chromium_disable_outdated_plugins'

###############################################################################
# BEGIN fix (19 / 37) for 'xccdf_org.ssgproject.content_rule_chromium_disable_password_manager'
###############################################################################
(>&2 echo "Remediating rule 19/37: 'xccdf_org.ssgproject.content_rule_chromium_disable_password_manager'")






if ! grep -q PasswordManagerEnabled /etc/chromium/policies/managed/chrome_stig_policy.json; then
   sed -i -e '/{/a \  "'PasswordManagerEnabled'": 'false',' /etc/chromium/policies/managed/chrome_stig_policy.json
else
   sed -i -e 's/\"'PasswordManagerEnabled'.*/\"'PasswordManagerEnabled'\": 'false',/g' /etc/chromium/policies/managed/chrome_stig_policy.json
fi

# END fix for 'xccdf_org.ssgproject.content_rule_chromium_disable_password_manager'

###############################################################################
# BEGIN fix (20 / 37) for 'xccdf_org.ssgproject.content_rule_chromium_disable_plugin_blacklist'
###############################################################################
(>&2 echo "Remediating rule 20/37: 'xccdf_org.ssgproject.content_rule_chromium_disable_plugin_blacklist'")






if ! grep -q DisabledPlugins /etc/chromium/policies/managed/chrome_stig_policy.json; then
   sed -i -e '/{/a \  "'DisabledPlugins'": '[ "*" ]',' /etc/chromium/policies/managed/chrome_stig_policy.json
else
   sed -i -e 's/\"'DisabledPlugins'.*/\"'DisabledPlugins'\": '[ "*" ]',/g' /etc/chromium/policies/managed/chrome_stig_policy.json
fi

# END fix for 'xccdf_org.ssgproject.content_rule_chromium_disable_plugin_blacklist'

###############################################################################
# BEGIN fix (21 / 37) for 'xccdf_org.ssgproject.content_rule_chromium_disable_popups'
###############################################################################
(>&2 echo "Remediating rule 21/37: 'xccdf_org.ssgproject.content_rule_chromium_disable_popups'")






if ! grep -q DefaultPopupsSetting /etc/chromium/policies/managed/chrome_stig_policy.json; then
   sed -i -e '/{/a \  "'DefaultPopupsSetting'": '2',' /etc/chromium/policies/managed/chrome_stig_policy.json
else
   sed -i -e 's/\"'DefaultPopupsSetting'.*/\"'DefaultPopupsSetting'\": '2',/g' /etc/chromium/policies/managed/chrome_stig_policy.json
fi

# END fix for 'xccdf_org.ssgproject.content_rule_chromium_disable_popups'

###############################################################################
# BEGIN fix (22 / 37) for 'xccdf_org.ssgproject.content_rule_chromium_disable_protocol_schemas'
###############################################################################
(>&2 echo "Remediating rule 22/37: 'xccdf_org.ssgproject.content_rule_chromium_disable_protocol_schemas'")

var_url_blacklist='javascript://*'


var_url_blacklist_modified="$(echo ${var_url_blacklist}| sed 's/\//\\\/\\/')"




if ! grep -q URLBlacklist /etc/chromium/policies/managed/chrome_stig_policy.json; then
   sed -i -e '/{/a \  "'URLBlacklist'": '\[${var_url_blacklist}\]',' /etc/chromium/policies/managed/chrome_stig_policy.json
else
   sed -i -e 's/\"'URLBlacklist'.*/\"'URLBlacklist'\": '\[${var_url_blacklist_modified}\]',/g' /etc/chromium/policies/managed/chrome_stig_policy.json
fi

# END fix for 'xccdf_org.ssgproject.content_rule_chromium_disable_protocol_schemas'

###############################################################################
# BEGIN fix (23 / 37) for 'xccdf_org.ssgproject.content_rule_chromium_disable_saved_passwords'
###############################################################################
(>&2 echo "Remediating rule 23/37: 'xccdf_org.ssgproject.content_rule_chromium_disable_saved_passwords'")






if ! grep -q ImportSavedPasswords /etc/chromium/policies/managed/chrome_stig_policy.json; then
   sed -i -e '/{/a \  "'ImportSavedPasswords'": 'false',' /etc/chromium/policies/managed/chrome_stig_policy.json
else
   sed -i -e 's/\"'ImportSavedPasswords'.*/\"'ImportSavedPasswords'\": 'false',/g' /etc/chromium/policies/managed/chrome_stig_policy.json
fi

# END fix for 'xccdf_org.ssgproject.content_rule_chromium_disable_saved_passwords'

###############################################################################
# BEGIN fix (24 / 37) for 'xccdf_org.ssgproject.content_rule_chromium_disable_search_suggestions'
###############################################################################
(>&2 echo "Remediating rule 24/37: 'xccdf_org.ssgproject.content_rule_chromium_disable_search_suggestions'")






if ! grep -q SearchSuggestEnabled /etc/chromium/policies/managed/chrome_stig_policy.json; then
   sed -i -e '/{/a \  "'SearchSuggestEnabled'": 'false',' /etc/chromium/policies/managed/chrome_stig_policy.json
else
   sed -i -e 's/\"'SearchSuggestEnabled'.*/\"'SearchSuggestEnabled'\": 'false',/g' /etc/chromium/policies/managed/chrome_stig_policy.json
fi

# END fix for 'xccdf_org.ssgproject.content_rule_chromium_disable_search_suggestions'

###############################################################################
# BEGIN fix (25 / 37) for 'xccdf_org.ssgproject.content_rule_chromium_disable_session_cookies'
###############################################################################
(>&2 echo "Remediating rule 25/37: 'xccdf_org.ssgproject.content_rule_chromium_disable_session_cookies'")






if ! grep -q CookiesSessionOnlyForUrls /etc/chromium/policies/managed/chrome_stig_policy.json; then
   sed -i -e '/{/a \  "'CookiesSessionOnlyForUrls'": '\[none\]',' /etc/chromium/policies/managed/chrome_stig_policy.json
else
   sed -i -e 's/\"'CookiesSessionOnlyForUrls'.*/\"'CookiesSessionOnlyForUrls'\": '\[none\]',/g' /etc/chromium/policies/managed/chrome_stig_policy.json
fi

# END fix for 'xccdf_org.ssgproject.content_rule_chromium_disable_session_cookies'

###############################################################################
# BEGIN fix (26 / 37) for 'xccdf_org.ssgproject.content_rule_chromium_disable_thirdparty_cookies'
###############################################################################
(>&2 echo "Remediating rule 26/37: 'xccdf_org.ssgproject.content_rule_chromium_disable_thirdparty_cookies'")






if ! grep -q BlockThirdPartyCookies /etc/chromium/policies/managed/chrome_stig_policy.json; then
   sed -i -e '/{/a \  "'BlockThirdPartyCookies'": 'true',' /etc/chromium/policies/managed/chrome_stig_policy.json
else
   sed -i -e 's/\"'BlockThirdPartyCookies'.*/\"'BlockThirdPartyCookies'\": 'true',/g' /etc/chromium/policies/managed/chrome_stig_policy.json
fi

# END fix for 'xccdf_org.ssgproject.content_rule_chromium_disable_thirdparty_cookies'

###############################################################################
# BEGIN fix (27 / 37) for 'xccdf_org.ssgproject.content_rule_chromium_disallow_location_tracking'
###############################################################################
(>&2 echo "Remediating rule 27/37: 'xccdf_org.ssgproject.content_rule_chromium_disallow_location_tracking'")






if ! grep -q DefaultGeolocationSetting /etc/chromium/policies/managed/chrome_stig_policy.json; then
   sed -i -e '/{/a \  "'DefaultGeolocationSetting'": '2',' /etc/chromium/policies/managed/chrome_stig_policy.json
else
   sed -i -e 's/\"'DefaultGeolocationSetting'.*/\"'DefaultGeolocationSetting'\": '2',/g' /etc/chromium/policies/managed/chrome_stig_policy.json
fi

# END fix for 'xccdf_org.ssgproject.content_rule_chromium_disallow_location_tracking'

###############################################################################
# BEGIN fix (28 / 37) for 'xccdf_org.ssgproject.content_rule_chromium_enable_approved_plugins'
###############################################################################
(>&2 echo "Remediating rule 28/37: 'xccdf_org.ssgproject.content_rule_chromium_enable_approved_plugins'")

var_enable_approved_plugins=''


# set var to empty string if None
if [ "$var_enable_approved_plugins" = "None" ]; then
    var_enable_approved_plugins=""
fi

var_enable_approved_plugins_modified="$(echo ${var_enable_approved_plugins} | sed 's/\//\\\/\\/')"




if ! grep -q EnabledPlugins /etc/chromium/policies/managed/chrome_stig_policy.json; then
   sed -i -e '/{/a \  "'EnabledPlugins'": '\[${var_enable_approved_plugins}\]',' /etc/chromium/policies/managed/chrome_stig_policy.json
else
   sed -i -e 's/\"'EnabledPlugins'.*/\"'EnabledPlugins'\": '\[${var_enable_approved_plugins_modified}\]',/g' /etc/chromium/policies/managed/chrome_stig_policy.json
fi

# END fix for 'xccdf_org.ssgproject.content_rule_chromium_enable_approved_plugins'

###############################################################################
# BEGIN fix (29 / 37) for 'xccdf_org.ssgproject.content_rule_chromium_enable_browser_history'
###############################################################################
(>&2 echo "Remediating rule 29/37: 'xccdf_org.ssgproject.content_rule_chromium_enable_browser_history'")






if ! grep -q SavingBrowserHistoryDisabled /etc/chromium/policies/managed/chrome_stig_policy.json; then
   sed -i -e '/{/a \  "'SavingBrowserHistoryDisabled'": 'false',' /etc/chromium/policies/managed/chrome_stig_policy.json
else
   sed -i -e 's/\"'SavingBrowserHistoryDisabled'.*/\"'SavingBrowserHistoryDisabled'\": 'false',/g' /etc/chromium/policies/managed/chrome_stig_policy.json
fi

# END fix for 'xccdf_org.ssgproject.content_rule_chromium_enable_browser_history'

###############################################################################
# BEGIN fix (30 / 37) for 'xccdf_org.ssgproject.content_rule_chromium_enable_encrypted_searching'
###############################################################################
(>&2 echo "Remediating rule 30/37: 'xccdf_org.ssgproject.content_rule_chromium_enable_encrypted_searching'")

var_enable_encrypted_searching='https://www.google.com/#q={searchTerms}'


var_enable_encrypted_searching_modified="$(echo ${var_enable_encrypted_searching} | sed 's/\//\\\/\\/')"




if ! grep -q DefaultSearchProviderSearchURL /etc/chromium/policies/managed/chrome_stig_policy.json; then
   sed -i -e '/{/a \  "'DefaultSearchProviderSearchURL'": '${var_enable_encrypted_searching}',' /etc/chromium/policies/managed/chrome_stig_policy.json
else
   sed -i -e 's/\"'DefaultSearchProviderSearchURL'.*/\"'DefaultSearchProviderSearchURL'\": '${var_enable_encrypted_searching_modified}',/g' /etc/chromium/policies/managed/chrome_stig_policy.json
fi

# END fix for 'xccdf_org.ssgproject.content_rule_chromium_enable_encrypted_searching'

###############################################################################
# BEGIN fix (31 / 37) for 'xccdf_org.ssgproject.content_rule_chromium_enable_safe_browsing'
###############################################################################
(>&2 echo "Remediating rule 31/37: 'xccdf_org.ssgproject.content_rule_chromium_enable_safe_browsing'")






if ! grep -q SafeBrowsingEnabled /etc/chromium/policies/managed/chrome_stig_policy.json; then
   sed -i -e '/{/a \  "'SafeBrowsingEnabled'": 'true',' /etc/chromium/policies/managed/chrome_stig_policy.json
else
   sed -i -e 's/\"'SafeBrowsingEnabled'.*/\"'SafeBrowsingEnabled'\": 'true',/g' /etc/chromium/policies/managed/chrome_stig_policy.json
fi

# END fix for 'xccdf_org.ssgproject.content_rule_chromium_enable_safe_browsing'

###############################################################################
# BEGIN fix (32 / 37) for 'xccdf_org.ssgproject.content_rule_chromium_extension_whitelist'
###############################################################################
(>&2 echo "Remediating rule 32/37: 'xccdf_org.ssgproject.content_rule_chromium_extension_whitelist'")

var_extension_whitelist='oiigbmnaadbkfbmpbfijlflahbdbdgdf'


var_extension_whitelist_modified="$(echo ${var_extension_whitelist} | sed 's/\//\\\/\\/')"




if ! grep -q ExtensionInstallWhitelist /etc/chromium/policies/managed/chrome_stig_policy.json; then
   sed -i -e '/{/a \  "'ExtensionInstallWhitelist'": '${var_extension_whitelist}',' /etc/chromium/policies/managed/chrome_stig_policy.json
else
   sed -i -e 's/\"'ExtensionInstallWhitelist'.*/\"'ExtensionInstallWhitelist'\": '${var_extension_whitelist_modified}',/g' /etc/chromium/policies/managed/chrome_stig_policy.json
fi

# END fix for 'xccdf_org.ssgproject.content_rule_chromium_extension_whitelist'

###############################################################################
# BEGIN fix (33 / 37) for 'xccdf_org.ssgproject.content_rule_chromium_http_authentication'
###############################################################################
(>&2 echo "Remediating rule 33/37: 'xccdf_org.ssgproject.content_rule_chromium_http_authentication'")

var_auth_schema='negotiate'







if ! grep -q AuthSchemes /etc/chromium/policies/managed/chrome_stig_policy.json; then
   sed -i -e '/{/a \  "'AuthSchemes'": '${var_auth_schema}',' /etc/chromium/policies/managed/chrome_stig_policy.json
else
   sed -i -e 's/\"'AuthSchemes'.*/\"'AuthSchemes'\": '${var_auth_schema}',/g' /etc/chromium/policies/managed/chrome_stig_policy.json
fi

# END fix for 'xccdf_org.ssgproject.content_rule_chromium_http_authentication'

###############################################################################
# BEGIN fix (34 / 37) for 'xccdf_org.ssgproject.content_rule_chromium_plugins_require_authorization'
###############################################################################
(>&2 echo "Remediating rule 34/37: 'xccdf_org.ssgproject.content_rule_chromium_plugins_require_authorization'")






if ! grep -q AlwaysAuthorizePlugins /etc/chromium/policies/managed/chrome_stig_policy.json; then
   sed -i -e '/{/a \  "'AlwaysAuthorizePlugins'": 'false',' /etc/chromium/policies/managed/chrome_stig_policy.json
else
   sed -i -e 's/\"'AlwaysAuthorizePlugins'.*/\"'AlwaysAuthorizePlugins'\": 'false',/g' /etc/chromium/policies/managed/chrome_stig_policy.json
fi

# END fix for 'xccdf_org.ssgproject.content_rule_chromium_plugins_require_authorization'

###############################################################################
# BEGIN fix (35 / 37) for 'xccdf_org.ssgproject.content_rule_chromium_policy_file'
###############################################################################
(>&2 echo "Remediating rule 35/37: 'xccdf_org.ssgproject.content_rule_chromium_policy_file'")
CHROME_POL_FILE="chrome_stig_policy.json"
CHROME_POL_DIR="/etc/chromium/policies/managed/"

if [ ! -d ${CHROME_POL_DIR} ] ; then
   mkdir -p ${CHROME_POL_DIR}
   chmod 755 ${CHROME_POL_DIR}
fi

if [ ! -f ${CHROME_POL_DIR}/${CHROME_POL_FILE} ] ; then
   touch ${CHROME_POL_DIR}/${CHROME_POL_FILE}
   chmod 644 ${CHROME_POL_DIR}/${CHROME_POL_FILE}
fi

grep -q -E '^\{' ${CHROME_POL_DIR}/${CHROME_POL_FILE}
if ! [ $? -eq 0 ] ; then
   if [ -s ${CHROME_POL_DIR}/${CHROME_POL_FILE} ] ; then
      sed -i '1s/^/\{\n/' ${CHROME_POL_DIR}/${CHROME_POL_FILE}
   else
      echo -e "{" >> ${CHROME_POL_DIR}/${CHROME_POL_FILE}
   fi
fi

tail -1 ${CHROME_POL_DIR}/${CHROME_POL_FILE} | grep -q -E '^\}'
if ! [ $? -eq 0 ] ; then
   echo -e "}" >> ${CHROME_POL_DIR}/${CHROME_POL_FILE}
fi 

# END fix for 'xccdf_org.ssgproject.content_rule_chromium_policy_file'

###############################################################################
# BEGIN fix (36 / 37) for 'xccdf_org.ssgproject.content_rule_chromium_trusted_home_page'
###############################################################################
(>&2 echo "Remediating rule 36/37: 'xccdf_org.ssgproject.content_rule_chromium_trusted_home_page'")

var_trusted_home_page='about:blank'


var_trusted_home_page_modified="$(echo ${var_trusted_home_page} | sed 's/\//\\\/\\/')"




if ! grep -q HomepageLocation /etc/chromium/policies/managed/chrome_stig_policy.json; then
   sed -i -e '/{/a \  "'HomepageLocation'": '${var_trusted_home_page}',' /etc/chromium/policies/managed/chrome_stig_policy.json
else
   sed -i -e 's/\"'HomepageLocation'.*/\"'HomepageLocation'\": '${var_trusted_home_page_modified}',/g' /etc/chromium/policies/managed/chrome_stig_policy.json
fi

# END fix for 'xccdf_org.ssgproject.content_rule_chromium_trusted_home_page'

###############################################################################
# BEGIN fix (37 / 37) for 'xccdf_org.ssgproject.content_rule_chromium_whitelist_plugin_urls'
###############################################################################
(>&2 echo "Remediating rule 37/37: 'xccdf_org.ssgproject.content_rule_chromium_whitelist_plugin_urls'")






if ! grep -q PluginsAllowedForUrls /etc/chromium/policies/managed/chrome_stig_policy.json; then
   sed -i -e '/{/a \  "'PluginsAllowedForUrls'": 'none',' /etc/chromium/policies/managed/chrome_stig_policy.json
else
   sed -i -e 's/\"'PluginsAllowedForUrls'.*/\"'PluginsAllowedForUrls'\": 'none',/g' /etc/chromium/policies/managed/chrome_stig_policy.json
fi

# END fix for 'xccdf_org.ssgproject.content_rule_chromium_whitelist_plugin_urls'

