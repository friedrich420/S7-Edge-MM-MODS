.class public Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;
.super Ljava/lang/Object;
.source "DualScreenSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;,
        Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$SettingsObserver;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "DualScreenSettings"

.field private static mDesktopModeEnabled:I

.field private static mDualScreenDisplayChooserEnabled:I

.field private static mDualScreenModeEnabled:I

.field private static mDualScreenOppositeLaunchEnabled:I

.field private static mDualScreenSubHomeComponentName:Ljava/lang/String;

.field private static mEnabledAccessibilityServices:Ljava/lang/String;

.field private static mEnabledExpandHomeMode:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDualScreenDemoMode:I

.field private mHandler:Landroid/os/Handler;

.field private mOnSettingChangedListener:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;

.field private mSettingsObserver:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    const-string v0, ""

    sput-object v0, mDualScreenSubHomeComponentName:Ljava/lang/String;

    .line 63
    const-string v0, ""

    sput-object v0, mEnabledAccessibilityServices:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    sput-boolean v0, mEnabledExpandHomeMode:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, mContext:Landroid/content/Context;

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, mContext:Landroid/content/Context;

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 71
    if-nez p1, :cond_17

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_17
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;

    .prologue
    .line 42
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;

    .prologue
    .line 42
    invoke-direct {p0}, updateSettings()V

    return-void
.end method

.method public static dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 3
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 81
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDualScreenModeEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, mDualScreenModeEnabled:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 82
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDesktopModeEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, mDesktopModeEnabled:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 83
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDualScreenDisplayChooserEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, mDualScreenDisplayChooserEnabled:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 84
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDualScreenOppositeLaunchEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, mDualScreenOppositeLaunchEnabled:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 85
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDualScreenSubHomeComponentName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, mDualScreenSubHomeComponentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnabledAccessibilityServices="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, mEnabledAccessibilityServices:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnabledExpandHomeMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, mEnabledExpandHomeMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 88
    return-void
.end method

.method public static isExpandHomeModeEnabled()Z
    .registers 1

    .prologue
    .line 171
    sget-boolean v0, mEnabledExpandHomeMode:Z

    return v0
.end method

.method public static setExpandHomeModeEnabled(Z)V
    .registers 2
    .param p0, "enabled"    # Z

    .prologue
    .line 175
    sget-boolean v0, mEnabledExpandHomeMode:Z

    if-eq v0, p0, :cond_6

    .line 176
    sput-boolean p0, mEnabledExpandHomeMode:Z

    .line 178
    :cond_6
    return-void
.end method

.method private updateSettings()V
    .registers 14

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v12, -0x2

    .line 181
    const-string v9, "DualScreenSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateSettings() : mOnSettingChangedListener="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, mOnSettingChangedListener:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 183
    .local v7, "resolver":Landroid/content/ContentResolver;
    const-string v9, "dual_screen_mode_enabled"

    invoke-static {v7, v9, v8, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 185
    .local v2, "dualScreenModeEnabled":I
    sget v9, mDualScreenModeEnabled:I

    if-eq v9, v2, :cond_3b

    .line 186
    sput v2, mDualScreenModeEnabled:I

    .line 187
    iget-object v9, p0, mOnSettingChangedListener:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;

    if-eqz v9, :cond_3b

    .line 188
    iget-object v9, p0, mOnSettingChangedListener:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;

    const-string v10, "dual_screen_mode_enabled"

    invoke-interface {v9, v10}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;->onChange(Ljava/lang/String;)V

    .line 192
    :cond_3b
    const-string v9, "desktop_mode_enabled"

    invoke-static {v7, v9, v8, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 194
    .local v0, "desktopModeEnabled":I
    sget v9, mDesktopModeEnabled:I

    if-eq v9, v0, :cond_52

    .line 195
    sput v0, mDesktopModeEnabled:I

    .line 196
    iget-object v9, p0, mOnSettingChangedListener:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;

    if-eqz v9, :cond_52

    .line 197
    iget-object v9, p0, mOnSettingChangedListener:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;

    const-string v10, "desktop_mode_enabled"

    invoke-interface {v9, v10}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;->onChange(Ljava/lang/String;)V

    .line 201
    :cond_52
    const-string v9, "dual_screen_display_chooser_enabled"

    invoke-static {v7, v9, v8, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 203
    .local v1, "dualScreenDisplayChooserEnabled":I
    sget v9, mDualScreenDisplayChooserEnabled:I

    if-eq v9, v1, :cond_69

    .line 204
    sput v1, mDualScreenDisplayChooserEnabled:I

    .line 205
    iget-object v9, p0, mOnSettingChangedListener:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;

    if-eqz v9, :cond_69

    .line 206
    iget-object v9, p0, mOnSettingChangedListener:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;

    const-string v10, "dual_screen_display_chooser_enabled"

    invoke-interface {v9, v10}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;->onChange(Ljava/lang/String;)V

    .line 210
    :cond_69
    const-string v9, "dual_screen_opposite_launch_enabled"

    invoke-static {v7, v9, v8, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 212
    .local v3, "dualScreenOppositeLaunchEnabled":I
    sget v9, mDualScreenOppositeLaunchEnabled:I

    if-eq v9, v3, :cond_80

    .line 213
    sput v3, mDualScreenOppositeLaunchEnabled:I

    .line 214
    iget-object v9, p0, mOnSettingChangedListener:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;

    if-eqz v9, :cond_80

    .line 215
    iget-object v9, p0, mOnSettingChangedListener:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;

    const-string v10, "dual_screen_opposite_launch_enabled"

    invoke-interface {v9, v10}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;->onChange(Ljava/lang/String;)V

    .line 219
    :cond_80
    const-string/jumbo v9, "subhome_package_info"

    invoke-static {v7, v9, v12}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 221
    .local v4, "dualScreenSubHomeComponentName":Ljava/lang/String;
    sget-object v9, mDualScreenSubHomeComponentName:Ljava/lang/String;

    if-eq v9, v4, :cond_99

    .line 222
    sput-object v4, mDualScreenSubHomeComponentName:Ljava/lang/String;

    .line 223
    iget-object v9, p0, mOnSettingChangedListener:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;

    if-eqz v9, :cond_99

    .line 224
    iget-object v9, p0, mOnSettingChangedListener:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;

    const-string/jumbo v10, "subhome_package_info"

    invoke-interface {v9, v10}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;->onChange(Ljava/lang/String;)V

    .line 228
    :cond_99
    const-string v9, "enabled_accessibility_services"

    invoke-static {v7, v9, v12}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 230
    .local v5, "enabledAccessibilityServices":Ljava/lang/String;
    sget-object v9, mEnabledAccessibilityServices:Ljava/lang/String;

    if-eq v9, v5, :cond_b0

    .line 231
    sput-object v5, mEnabledAccessibilityServices:Ljava/lang/String;

    .line 232
    iget-object v9, p0, mOnSettingChangedListener:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;

    if-eqz v9, :cond_b0

    .line 233
    iget-object v9, p0, mOnSettingChangedListener:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;

    const-string v10, "enabled_accessibility_services"

    invoke-interface {v9, v10}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;->onChange(Ljava/lang/String;)V

    .line 237
    :cond_b0
    const-string v9, "launcher_fullview_mode"

    invoke-static {v7, v9, v8, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-ne v9, v6, :cond_ca

    .line 239
    .local v6, "enabledExpandHomeMode":Z
    :goto_b8
    sget-boolean v8, mEnabledExpandHomeMode:Z

    if-eq v8, v6, :cond_c9

    .line 240
    sput-boolean v6, mEnabledExpandHomeMode:Z

    .line 241
    iget-object v8, p0, mOnSettingChangedListener:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;

    if-eqz v8, :cond_c9

    .line 242
    iget-object v8, p0, mOnSettingChangedListener:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;

    const-string v9, "launcher_fullview_mode"

    invoke-interface {v8, v9}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;->onChange(Ljava/lang/String;)V

    .line 245
    :cond_c9
    return-void

    .end local v6    # "enabledExpandHomeMode":Z
    :cond_ca
    move v6, v8

    .line 237
    goto :goto_b8
.end method


# virtual methods
.method public getDualScreenDemoMode()I
    .registers 2

    .prologue
    .line 155
    iget v0, p0, mDualScreenDemoMode:I

    return v0
.end method

.method public init()V
    .registers 3

    .prologue
    .line 76
    new-instance v0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$SettingsObserver;

    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$SettingsObserver;-><init>(Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;Landroid/os/Handler;)V

    iput-object v0, p0, mSettingsObserver:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$SettingsObserver;

    .line 77
    iget-object v0, p0, mSettingsObserver:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$SettingsObserver;->observe()V

    .line 78
    return-void
.end method

.method public isDesktopModeEnabled()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 142
    sget v1, mDesktopModeEnabled:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isDualScreenDisplayChooserEnabled()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 146
    sget v1, mDualScreenDisplayChooserEnabled:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isDualScreenModeEnabled()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 138
    sget v1, mDualScreenModeEnabled:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isDualScreenOppositeLaunchEnabled()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 150
    sget v1, mDualScreenOppositeLaunchEnabled:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isTalkBackEnabled()Z
    .registers 4

    .prologue
    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "talkbackEnabled":Z
    sget-object v1, mEnabledAccessibilityServices:Ljava/lang/String;

    if-eqz v1, :cond_1a

    .line 163
    sget-object v1, mEnabledAccessibilityServices:Ljava/lang/String;

    const-string v2, "(?i).*com.samsung.android.app.talkback.TalkBackService.*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    sget-object v1, mEnabledAccessibilityServices:Ljava/lang/String;

    const-string v2, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    :cond_19
    const/4 v0, 0x1

    .line 167
    :cond_1a
    :goto_1a
    return v0

    .line 163
    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public setOnSettingChangedListener(Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;)V
    .registers 2
    .param p1, "l"    # Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;

    .prologue
    .line 267
    iput-object p1, p0, mOnSettingChangedListener:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;

    .line 268
    return-void
.end method
