.class public Lcom/android/settings/ShowInfomationMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ShowInfomationMenu.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final ACCU_SETTING_URI:Landroid/net/Uri;

.field public static final ACCU_WEATHERINFO_URI:Landroid/net/Uri;

.field private static final MY_USER_ID:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mDualclock:Landroid/preference/PreferenceScreen;

.field private mFromCoverSetting:Z

.field private mLockAppShortcut:Landroid/preference/PreferenceScreen;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfo:Landroid/preference/PreferenceScreen;

.field private mWeatherSettings:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "content://com.sec.android.daemonapp.ap.accuweather.provider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ShowInfomationMenu;->ACCU_SETTING_URI:Landroid/net/Uri;

    .line 60
    const-string v0, "content://com.sec.android.daemonapp.ap.accuweather.provider/weatherinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ShowInfomationMenu;->ACCU_WEATHERINFO_URI:Landroid/net/Uri;

    .line 71
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/ShowInfomationMenu;->MY_USER_ID:I

    .line 382
    new-instance v0, Lcom/android/settings/ShowInfomationMenu$2;

    invoke-direct {v0}, Lcom/android/settings/ShowInfomationMenu$2;-><init>()V

    sput-object v0, Lcom/android/settings/ShowInfomationMenu;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ShowInfomationMenu;->mFromCoverSetting:Z

    return-void
.end method

.method private InitValue()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 104
    const-string v2, "ShowInfomationMenu"

    const-string v3, "onResume() 1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v2, "lock_screen_dualclock"

    invoke-virtual {p0, v2}, Lcom/android/settings/ShowInfomationMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/ShowInfomationMenu;->mDualclock:Landroid/preference/PreferenceScreen;

    .line 106
    iget-object v2, p0, Lcom/android/settings/ShowInfomationMenu;->mDualclock:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_0

    .line 107
    const-string v2, "oversea"

    const-string v3, "ril.currentplmn"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 108
    .local v0, "isRoamingArea":Z
    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ShowInfomationMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e1151

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/ShowInfomationMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e12a1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "sText":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/ShowInfomationMenu;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v2, p0, Lcom/android/settings/ShowInfomationMenu;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 117
    .end local v0    # "isRoamingArea":Z
    .end local v1    # "sText":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v2, "lock_screen_menu_owner_infomation"

    invoke-virtual {p0, v2}, Lcom/android/settings/ShowInfomationMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/ShowInfomationMenu;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    .line 118
    iget-object v2, p0, Lcom/android/settings/ShowInfomationMenu;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_1

    .line 119
    invoke-direct {p0}, Lcom/android/settings/ShowInfomationMenu;->updateOwnerInfo()V

    .line 122
    :cond_1
    const-string v2, "lock_app_shortcut"

    invoke-virtual {p0, v2}, Lcom/android/settings/ShowInfomationMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/ShowInfomationMenu;->mLockAppShortcut:Landroid/preference/PreferenceScreen;

    .line 124
    const-string v2, "lock_screen_settings_weather"

    invoke-virtual {p0, v2}, Lcom/android/settings/ShowInfomationMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/ShowInfomationMenu;->mWeatherSettings:Landroid/preference/PreferenceScreen;

    .line 125
    iget-object v2, p0, Lcom/android/settings/ShowInfomationMenu;->mWeatherSettings:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/ShowInfomationMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportWeatherMenu(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/ShowInfomationMenu;->getRegisteredCityCount(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/ShowInfomationMenu;->getWidgetCount(Landroid/content/Context;)I

    move-result v2

    if-lez v2, :cond_7

    .line 127
    iget-object v3, p0, Lcom/android/settings/ShowInfomationMenu;->mWeatherSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/ShowInfomationMenu;->isWeatherState(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    const v2, 0x7f0e0e92

    :goto_1
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 134
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/android/settings/ShowInfomationMenu;->mDualclock:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_3

    .line 135
    iget-object v2, p0, Lcom/android/settings/ShowInfomationMenu;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v7}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 136
    :cond_3
    iget-object v2, p0, Lcom/android/settings/ShowInfomationMenu;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_4

    .line 137
    iget-object v2, p0, Lcom/android/settings/ShowInfomationMenu;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v7}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 138
    :cond_4
    return-void

    .line 113
    .restart local v0    # "isRoamingArea":Z
    :cond_5
    iget-object v2, p0, Lcom/android/settings/ShowInfomationMenu;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/ShowInfomationMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dualclock_menu_settings"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->getOnOffstatus(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 127
    .end local v0    # "isRoamingArea":Z
    :cond_6
    const v2, 0x7f0e0e93

    goto :goto_1

    .line 130
    :cond_7
    iget-object v2, p0, Lcom/android/settings/ShowInfomationMenu;->mWeatherSettings:Landroid/preference/PreferenceScreen;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private RemoveMenu()V
    .locals 3

    .prologue
    .line 141
    const-string v1, "ShowInfomationMenu"

    const-string v2, "onResume() 2"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v1, p0, Lcom/android/settings/ShowInfomationMenu;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/android/settings/ShowInfomationMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/android/settings/ShowInfomationMenu;->MY_USER_ID:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/ShowInfomationMenu;->mFromCoverSetting:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasCoverSettingOwnerInfo(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ShowInfomationMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ShowInfomationMenu;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 149
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    const-string v1, "lock_screen_dualclock"

    invoke-virtual {p0, v1}, Lcom/android/settings/ShowInfomationMenu;->removePreference(Ljava/lang/String;)V

    .line 153
    :cond_2
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "productName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/ShowInfomationMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportWeatherMenu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/settings/ShowInfomationMenu;->mFromCoverSetting:Z

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasCoverSettingWeather(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 155
    :cond_3
    const-string v1, "lock_screen_settings_weather"

    invoke-virtual {p0, v1}, Lcom/android/settings/ShowInfomationMenu;->removePreference(Ljava/lang/String;)V

    .line 156
    const-string v1, "lock_screen_menu_weather"

    invoke-virtual {p0, v1}, Lcom/android/settings/ShowInfomationMenu;->removePreference(Ljava/lang/String;)V

    .line 163
    :goto_0
    iget-object v1, p0, Lcom/android/settings/ShowInfomationMenu;->mLockAppShortcut:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_6

    .line 164
    iget-boolean v1, p0, Lcom/android/settings/ShowInfomationMenu;->mFromCoverSetting:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasCoverSettingAppShortcut(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isSupportLockAppShortcut()Z

    move-result v1

    if-nez v1, :cond_6

    .line 166
    :cond_5
    const-string v1, "lock_app_shortcut"

    invoke-virtual {p0, v1}, Lcom/android/settings/ShowInfomationMenu;->removePreference(Ljava/lang/String;)V

    .line 169
    :cond_6
    return-void

    .line 157
    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isSupportWeatherStateSettings()Z

    move-result v1

    if-nez v1, :cond_8

    .line 158
    const-string v1, "lock_screen_settings_weather"

    invoke-virtual {p0, v1}, Lcom/android/settings/ShowInfomationMenu;->removePreference(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_8
    const-string v1, "lock_screen_menu_weather"

    invoke-virtual {p0, v1}, Lcom/android/settings/ShowInfomationMenu;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static existWeatherWidgetOnLauncher(Landroid/content/Context;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 266
    if-nez p0, :cond_0

    .line 267
    const-string v1, "ShowInfomationMenu"

    const-string v2, "context is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :goto_0
    return v10

    .line 271
    :cond_0
    const-string v6, "WIDGET_COUNT"

    .line 272
    .local v6, "WEATHER_DAEMON_COLUMN_WIDGET_COUNT":Ljava/lang/String;
    const/4 v8, 0x0

    .line 274
    .local v8, "widgetCnt":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 275
    .local v0, "cp":Landroid/content/ContentResolver;
    if-eqz v0, :cond_2

    .line 276
    sget-object v1, Lcom/android/settings/ShowInfomationMenu;->ACCU_SETTING_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v4, "WIDGET_COUNT"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 278
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 279
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    const-string v1, "WIDGET_COUNT"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 282
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 285
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_2
    if-lez v8, :cond_3

    move v1, v9

    :goto_1
    move v10, v1

    goto :goto_0

    :cond_3
    move v1, v10

    goto :goto_1
.end method

.method public static getRegisteredCityCount(Landroid/content/Context;)I
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 362
    const/4 v6, 0x0

    .line 363
    .local v6, "count":I
    if-nez p0, :cond_0

    .line 364
    const/4 v1, -0x1

    .line 379
    :goto_0
    return v1

    .line 366
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 367
    .local v0, "cp":Landroid/content/ContentResolver;
    if-eqz v0, :cond_3

    .line 368
    sget-object v1, Lcom/android/settings/ShowInfomationMenu;->ACCU_WEATHERINFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "LOCATION"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 369
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 370
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 371
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 373
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_1
    move v1, v6

    .line 379
    goto :goto_0

    .line 376
    :cond_3
    const/4 v6, -0x1

    goto :goto_1
.end method

.method public static getWidgetCount(Landroid/content/Context;)I
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 289
    const/4 v6, 0x0

    .line 290
    .local v6, "count":I
    if-nez p0, :cond_0

    move v7, v6

    .line 308
    .end local v6    # "count":I
    .local v7, "count":I
    :goto_0
    return v7

    .line 294
    .end local v7    # "count":I
    .restart local v6    # "count":I
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 295
    .local v0, "cp":Landroid/content/ContentResolver;
    if-eqz v0, :cond_2

    .line 296
    sget-object v1, Lcom/android/settings/ShowInfomationMenu;->ACCU_SETTING_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "WIDGET_COUNT"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 297
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 298
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 305
    :cond_1
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_2
    move v7, v6

    .line 308
    .end local v6    # "count":I
    .restart local v7    # "count":I
    goto :goto_0

    .line 301
    .end local v7    # "count":I
    .restart local v6    # "count":I
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 302
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static isWeatherState(Landroid/content/Context;)Z
    .locals 11
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 339
    const/4 v8, 0x0

    .line 340
    .local v8, "result":I
    if-nez p0, :cond_0

    .line 358
    :goto_0
    return v10

    .line 344
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 345
    .local v0, "cp":Landroid/content/ContentResolver;
    if-eqz v0, :cond_2

    .line 346
    sget-object v1, Lcom/android/settings/ShowInfomationMenu;->ACCU_SETTING_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v4, "LOCKSCREEN_AND_S_VIEW_COVER"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 347
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 348
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 350
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 355
    :cond_1
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 358
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    if-lez v8, :cond_3

    move v1, v9

    :goto_2
    move v10, v1

    goto :goto_0

    .line 351
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 352
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    move v1, v10

    .line 358
    goto :goto_2
.end method

.method public static showWeatherWidgetMessageDialog(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 312
    if-nez p0, :cond_0

    .line 313
    const-string v2, "ShowInfomationMenu"

    const-string v3, "context is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :goto_0
    return-void

    .line 317
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 319
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Lcom/android/settings/Utils;->hasCoverSettingWeather(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 320
    const v2, 0x7f0e14bf

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, "dialogMsg":Ljava/lang/String;
    :goto_1
    const v2, 0x7f0e14b3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e0f72

    new-instance v4, Lcom/android/settings/ShowInfomationMenu$1;

    invoke-direct {v4}, Lcom/android/settings/ShowInfomationMenu$1;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 335
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 322
    .end local v1    # "dialogMsg":Ljava/lang/String;
    :cond_1
    const v2, 0x7f0e14c0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "dialogMsg":Ljava/lang/String;
    goto :goto_1
.end method

.method private updateOwnerInfo()V
    .locals 3

    .prologue
    .line 172
    iget-object v1, p0, Lcom/android/settings/ShowInfomationMenu;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/android/settings/ShowInfomationMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "info":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 176
    iget-object v1, p0, Lcom/android/settings/ShowInfomationMenu;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 186
    .end local v0    # "info":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 178
    .restart local v0    # "info":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasCoverSettingOwnerInfo(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    iget-object v1, p0, Lcom/android/settings/ShowInfomationMenu;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0e14bc

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 182
    :cond_2
    iget-object v1, p0, Lcom/android/settings/ShowInfomationMenu;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0e01f5

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 75
    const/16 v0, 0x57

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 190
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 191
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/android/settings/ShowInfomationMenu;->updateOwnerInfo()V

    .line 194
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v1, 0x7f08006f

    invoke-virtual {p0, v1}, Lcom/android/settings/ShowInfomationMenu;->addPreferencesFromResource(I)V

    .line 84
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/ShowInfomationMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 85
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/ShowInfomationMenu;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/ShowInfomationMenu;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 87
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 88
    const-string v1, "coversetting"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ShowInfomationMenu;->mFromCoverSetting:Z

    .line 91
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 13
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x0

    .line 200
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    .line 201
    .local v9, "key":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/ShowInfomationMenu;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v10

    .line 203
    .local v10, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string v0, "lock_screen_dualclock"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-boolean v0, p0, Lcom/android/settings/ShowInfomationMenu;->mFromCoverSetting:Z

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.android.settings"

    const-string v2, "LNCS"

    const-string v3, "SViewCover"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    :goto_1
    return v0

    .line 209
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.android.settings"

    const-string v2, "LNCS"

    const-string v3, "LockScreen"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_2
    const-string v0, "lock_screen_menu_weather"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/ShowInfomationMenu;->existWeatherWidgetOnLauncher(Landroid/content/Context;)Z

    move-result v7

    .line 213
    .local v7, "existWeatherWidgetToLauncher":Z
    invoke-virtual {p0}, Lcom/android/settings/ShowInfomationMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "easy_mode_switch"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4

    const/4 v6, 0x1

    .line 214
    .local v6, "easylaunchermode":Z
    :goto_2
    if-nez v7, :cond_3

    if-eqz v6, :cond_5

    .line 215
    :cond_3
    new-instance v8, Landroid/content/Intent;

    const-string v0, "com.sec.android.widgetapp.weather.intent.action.START_ACTIVITY_SETTING_VIEW"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    .local v8, "intent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 217
    const-string v0, "PACKAGE"

    invoke-virtual {p0}, Lcom/android/settings/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 222
    .end local v8    # "intent":Landroid/content/Intent;
    :goto_3
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-boolean v0, p0, Lcom/android/settings/ShowInfomationMenu;->mFromCoverSetting:Z

    if-eqz v0, :cond_6

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.android.settings"

    const-string v2, "LNCS"

    const-string v3, "SViewCover"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v6    # "easylaunchermode":Z
    :cond_4
    move v6, v4

    .line 213
    goto :goto_2

    .line 220
    .restart local v6    # "easylaunchermode":Z
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/ShowInfomationMenu;->showWeatherWidgetMessageDialog(Landroid/content/Context;)V

    goto :goto_3

    .line 227
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.android.settings"

    const-string v2, "LNCS"

    const-string v3, "LockScreen"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 229
    .end local v6    # "easylaunchermode":Z
    .end local v7    # "existWeatherWidgetToLauncher":Z
    :cond_7
    const-string v0, "lock_screen_settings_weather"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/ShowInfomationMenu;->getWidgetCount(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_8

    .line 232
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 233
    .local v5, "args":Landroid/os/Bundle;
    const-string v2, "com.android.settings.WeatherSettings"

    const v3, 0x7f0e14b3

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/ShowInfomationMenu;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto/16 :goto_0

    .line 236
    .end local v5    # "args":Landroid/os/Bundle;
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/ShowInfomationMenu;->showWeatherWidgetMessageDialog(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 240
    :cond_9
    const-string v0, "lock_screen_menu_owner_infomation"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/ShowInfomationMenu;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "dialog"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v12

    .line 242
    .local v12, "prev":Landroid/app/Fragment;
    if-eqz v12, :cond_a

    .line 243
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto/16 :goto_1

    .line 246
    :cond_a
    const v0, 0x7f0e01f6

    invoke-static {v0}, Lcom/android/settings/OwnerInfoSettings;->newInstance(I)Lcom/android/settings/OwnerInfoSettings;

    move-result-object v11

    .line 247
    .local v11, "newFragment":Landroid/app/DialogFragment;
    const/16 v0, 0xc8

    invoke-virtual {v11, p0, v0}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/ShowInfomationMenu;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "dialog"

    invoke-virtual {v11, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 249
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-boolean v0, p0, Lcom/android/settings/ShowInfomationMenu;->mFromCoverSetting:Z

    if-eqz v0, :cond_b

    .line 252
    invoke-virtual {p0}, Lcom/android/settings/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.android.settings"

    const-string v2, "LNCS"

    const-string v3, "SViewCover"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 254
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.android.settings"

    const-string v2, "LNCS"

    const-string v3, "LockScreen"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 96
    const-string v0, "ShowInfomationMenu"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 98
    invoke-direct {p0}, Lcom/android/settings/ShowInfomationMenu;->InitValue()V

    .line 99
    invoke-direct {p0}, Lcom/android/settings/ShowInfomationMenu;->RemoveMenu()V

    .line 101
    return-void
.end method
