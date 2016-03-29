.class public Lcom/android/keyguard/util/KeyguardStatusUtils;
.super Ljava/lang/Object;
.source "KeyguardStatusUtils.java"


# static fields
.field public static final ACCU_SETTING_URI:Landroid/net/Uri;

.field public static REPORT_APP_STATUS_SURVEY:Ljava/lang/String;

.field public static USE_APP_FEATURE_SURVEY:Ljava/lang/String;

.field private static isGSIMLog:Z

.field private static mIsCovered:Z

.field private static mWiFiOnlyDevice:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    sput-boolean v2, Lcom/android/keyguard/util/KeyguardStatusUtils;->mIsCovered:Z

    .line 42
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/util/KeyguardStatusUtils;->isGSIMLog:Z

    .line 44
    const-string v0, "com.samsung.android.providers.context.log.action.REPORT_APP_STATUS_SURVEY"

    sput-object v0, Lcom/android/keyguard/util/KeyguardStatusUtils;->REPORT_APP_STATUS_SURVEY:Ljava/lang/String;

    .line 45
    const-string v0, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    sput-object v0, Lcom/android/keyguard/util/KeyguardStatusUtils;->USE_APP_FEATURE_SURVEY:Ljava/lang/String;

    .line 77
    const-string v0, "content://com.sec.android.daemonapp.ap.accuweather.provider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/util/KeyguardStatusUtils;->ACCU_SETTING_URI:Landroid/net/Uri;

    .line 147
    sput v2, Lcom/android/keyguard/util/KeyguardStatusUtils;->mWiFiOnlyDevice:I

    return-void
.end method

.method public static changeBlackImageOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/ImageView;ZZ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "isThemeApplied"    # Z
    .param p3, "isWhiteWallpaper"    # Z

    .prologue
    .line 212
    if-nez p1, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    if-eqz p3, :cond_2

    .line 215
    if-nez p2, :cond_0

    .line 216
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const v1, -0xbbbbbc

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 221
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method public static changeBlackImageOnWhiteWallpaper(Landroid/widget/ImageView;ZZII)V
    .locals 3
    .param p0, "iv"    # Landroid/widget/ImageView;
    .param p1, "isThemeApplied"    # Z
    .param p2, "isWhiteWallpaper"    # Z
    .param p3, "commonResId"    # I
    .param p4, "whiteSolutionResId"    # I

    .prologue
    const/4 v0, 0x0

    .line 227
    if-nez p0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 228
    :cond_0
    if-eqz p1, :cond_1

    .line 229
    invoke-virtual {p0, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 230
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/4 v1, -0x1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 231
    :cond_1
    if-eqz p2, :cond_2

    .line 232
    invoke-virtual {p0, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 233
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 235
    :cond_2
    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 236
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method public static changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZI)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "isThemeApplied"    # Z
    .param p3, "isWhiteWallpaper"    # Z
    .param p4, "resId"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 193
    if-nez p1, :cond_0

    .line 208
    :goto_0
    return-void

    .line 195
    :cond_0
    if-eqz p2, :cond_1

    .line 196
    invoke-virtual {p1}, Landroid/widget/TextView;->clearAllTextEffect()V

    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 198
    invoke-virtual {p1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getShadowDx()F

    move-result v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getShadowDy()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0

    .line 199
    :cond_1
    if-eqz p3, :cond_2

    .line 200
    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, -0x1

    const v2, 0x3ea8f5c3    # 0.33f

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->addStrokeTextEffect(FIF)I

    .line 201
    const v0, -0xbbbbbc

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 202
    invoke-virtual {p1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getShadowDx()F

    move-result v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getShadowDy()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0

    .line 204
    :cond_2
    invoke-virtual {p1}, Landroid/widget/TextView;->clearAllTextEffect()V

    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 206
    invoke-virtual {p1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getShadowDx()F

    move-result v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getShadowDy()F

    move-result v2

    const/high16 v3, -0x80000000

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0
.end method

.method public static getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 73
    .local v0, "systemLocale":Ljava/util/Locale;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 4
    .param p0, "ft"    # Ljava/lang/String;

    .prologue
    .line 241
    const/4 v2, 0x0

    .line 242
    .local v2, "fontType":Landroid/graphics/Typeface;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 243
    .local v1, "fontFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 245
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 250
    :cond_0
    :goto_0
    return-object v2

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getHometimeZone(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-static {p0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getHomeTimeZone()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastSelLocation(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 114
    const-string v9, ""

    .line 115
    .local v9, "lastSelected":Ljava/lang/String;
    const-string v8, "LAST_SEL_LOCATION"

    .line 116
    .local v8, "isLastSelLocationName":Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v10, v9

    .line 136
    .end local v9    # "lastSelected":Ljava/lang/String;
    .local v10, "lastSelected":Ljava/lang/String;
    :goto_0
    return-object v10

    .line 119
    .end local v10    # "lastSelected":Ljava/lang/String;
    .restart local v9    # "lastSelected":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 120
    .local v0, "cp":Landroid/content/ContentResolver;
    if-eqz v0, :cond_2

    .line 121
    sget-object v1, Lcom/android/keyguard/util/KeyguardStatusUtils;->ACCU_SETTING_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object v8, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 124
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 126
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 132
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_1
    move-object v10, v9

    .line 136
    .end local v9    # "lastSelected":Ljava/lang/String;
    .restart local v10    # "lastSelected":Ljava/lang/String;
    goto :goto_0

    .line 129
    .end local v10    # "lastSelected":Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "lastSelected":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 130
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static insertGSIMLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "survey"    # Ljava/lang/String;

    .prologue
    .line 273
    sget-boolean v2, Lcom/android/keyguard/util/KeyguardStatusUtils;->isGSIMLog:Z

    if-eqz v2, :cond_0

    .line 274
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 275
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v2, "app_id"

    const-string v3, "com.android.systemui"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v2, "feature"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 279
    .local v1, "i":Landroid/content/Intent;
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 281
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 284
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static isAdditionalWeatherEnabled(Landroid/content/Context;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 81
    const/4 v9, 0x0

    .line 82
    .local v9, "result":I
    const/4 v6, 0x0

    .line 83
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 85
    .local v8, "isShowingOptionName":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/keyguard/util/KeyguardProperties;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    const-string v8, "EDGE_SCREEN"

    .line 90
    :goto_0
    if-eqz p0, :cond_1

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 92
    .local v0, "cp":Landroid/content/ContentResolver;
    if-eqz v0, :cond_1

    .line 94
    :try_start_0
    sget-object v1, Lcom/android/keyguard/util/KeyguardStatusUtils;->ACCU_SETTING_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 95
    if-eqz v6, :cond_0

    .line 96
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 103
    :cond_0
    if-eqz v6, :cond_1

    .line 104
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 109
    .end local v0    # "cp":Landroid/content/ContentResolver;
    :cond_1
    :goto_1
    if-lez v9, :cond_4

    move v1, v10

    :goto_2
    return v1

    .line 88
    :cond_2
    const-string v8, "LOCKSCREEN_AND_S_VIEW_COVER"

    goto :goto_0

    .line 100
    .restart local v0    # "cp":Landroid/content/ContentResolver;
    :catch_0
    move-exception v7

    .line 101
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "SecKeyguardStatusUtils"

    const-string v2, "isAdditionalWeatherEnabled()"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    if-eqz v6, :cond_1

    .line 104
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 103
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 104
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    .end local v0    # "cp":Landroid/content/ContentResolver;
    :cond_4
    move v1, v11

    .line 109
    goto :goto_2
.end method

.method public static isCovered()Z
    .locals 1

    .prologue
    .line 306
    sget-boolean v0, Lcom/android/keyguard/util/KeyguardStatusUtils;->mIsCovered:Z

    return v0
.end method

.method public static isDualClock(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-static {p0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isDualClock()Z

    move-result v0

    return v0
.end method

.method public static isEasyModeOn(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-static {p0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isEasyModeOn()Z

    move-result v0

    return v0
.end method

.method public static isEasyOneHandRunning(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 255
    invoke-static {p0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isEasyOneHandRunning()Z

    move-result v0

    return v0
.end method

.method public static isEmergencyMode(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-static {p0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isEmergencyMode()Z

    move-result v0

    return v0
.end method

.method public static isGSIMLog()Z
    .locals 1

    .prologue
    .line 287
    sget-boolean v0, Lcom/android/keyguard/util/KeyguardStatusUtils;->isGSIMLog:Z

    return v0
.end method

.method public static isMobileKeygboardConnected(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 187
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 188
    .local v0, "conf":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isOnehandMode(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 311
    invoke-static {p0}, Lcom/android/keyguard/util/KeyguardProperties;->isOneHandOperationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRTL(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 291
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v1, 0xc0

    .line 292
    .local v0, "layoutDir":I
    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isRoaming(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 163
    const/4 v1, 0x0

    .line 164
    .local v1, "isNetworkRoaming":Z
    const/4 v2, 0x0

    .line 165
    .local v2, "isNetworkRoamingForMultiSIM":Z
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 166
    .local v3, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v7

    if-le v7, v6, :cond_3

    .line 167
    const/4 v4, 0x0

    .local v4, "simSlotNum":I
    :goto_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v7

    if-ge v4, v7, :cond_4

    .line 168
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 169
    .local v0, "SIM_ID":[I
    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 170
    if-nez v2, :cond_0

    aget v7, v0, v5

    invoke-virtual {v3, v7}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    move v2, v6

    .line 167
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v2, v5

    .line 170
    goto :goto_1

    .line 175
    .end local v0    # "SIM_ID":[I
    .end local v4    # "simSlotNum":I
    :cond_3
    if-eqz v3, :cond_4

    .line 176
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    .line 179
    :cond_4
    if-nez v1, :cond_5

    if-eqz v2, :cond_6

    :cond_5
    move v5, v6

    :cond_6
    return v5
.end method

.method public static isShowNotificationOnKeyguard(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-static {p0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isShowNotificationOnKeyguard()Z

    move-result v0

    return v0
.end method

.method public static isWiFiOnlyDevice(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 149
    sget v1, Lcom/android/keyguard/util/KeyguardStatusUtils;->mWiFiOnlyDevice:I

    if-nez v1, :cond_0

    .line 150
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 151
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    sput v1, Lcom/android/keyguard/util/KeyguardStatusUtils;->mWiFiOnlyDevice:I

    .line 154
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    sget v1, Lcom/android/keyguard/util/KeyguardStatusUtils;->mWiFiOnlyDevice:I

    if-ge v1, v2, :cond_2

    :goto_1
    return v3

    .restart local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_1
    move v1, v3

    .line 152
    goto :goto_0

    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_2
    move v3, v4

    .line 154
    goto :goto_1
.end method

.method public static setCoverState(Z)V
    .locals 0
    .param p0, "isCovered"    # Z

    .prologue
    .line 299
    sput-boolean p0, Lcom/android/keyguard/util/KeyguardStatusUtils;->mIsCovered:Z

    .line 300
    return-void
.end method
