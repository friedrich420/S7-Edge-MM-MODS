.class public Lcom/android/keyguard/KeyguardOpenThemeManager;
.super Ljava/lang/Object;
.source "KeyguardOpenThemeManager.java"


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mEffectViewBase:Lcom/android/keyguard/effect/KeyguardEffectViewBase;

.field private mIsEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/keyguard/KeyguardOpenThemeManager;->mContext:Landroid/content/Context;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardOpenThemeManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 37
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardOpenThemeManager;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardOpenThemeManager;->mIsEnabled:Z

    .line 39
    const-string v0, "KeyguardOpenThemeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "## mIsEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardOpenThemeManager;->mIsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardOpenThemeManager;->mIsEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardOpenThemeManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardOpenThemeManager;->createView()V

    .line 43
    :cond_0
    return-void
.end method

.method private createView()V
    .locals 5

    .prologue
    .line 46
    iget-object v2, p0, Lcom/android/keyguard/KeyguardOpenThemeManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getCurrentOpenThemeXmlPackageName()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "pkgName":Ljava/lang/String;
    const-string v2, "KeyguardOpenThemeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pkgName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  xmlName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "animation"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    if-nez v0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    new-instance v1, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardOpenThemeManager;->mContext:Landroid/content/Context;

    const-string v3, "animation"

    invoke-direct {v1, v2, v3, v0}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .local v1, "xmlView":Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->isParserSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    const-string v2, "KeyguardOpenThemeManager"

    const-string v3, "Create xmlView success"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iput-object v1, p0, Lcom/android/keyguard/KeyguardOpenThemeManager;->mEffectViewBase:Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    goto :goto_0
.end method


# virtual methods
.method public getOpenThemeWallpaperView()Lcom/android/keyguard/effect/KeyguardEffectViewBase;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/keyguard/KeyguardOpenThemeManager;->mEffectViewBase:Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 75
    iget-object v1, p0, Lcom/android/keyguard/KeyguardOpenThemeManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "opne_theme_effect_lockscreen_wallpaper"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
