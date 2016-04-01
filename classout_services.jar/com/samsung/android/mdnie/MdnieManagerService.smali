.class public Lcom/samsung/android/mdnie/MdnieManagerService;
.super Lcom/samsung/android/mdnie/IMdnieManager$Stub;
.source "MdnieManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdnie/MdnieManagerService$1;,
        Lcom/samsung/android/mdnie/MdnieManagerService$SettingsObserver;,
        Lcom/samsung/android/mdnie/MdnieManagerService$ScreenWatchingReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MdnieManagerService"


# instance fields
.field private final DEBUG:Z

.field private final SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

.field private final SCREEN_MODE_SETTING:Ljava/lang/String;

.field private final SYSFS_MDNIE_CONTENT_MODE:Ljava/lang/String;

.field private final SYSFS_MDNIE_NEGATIVE:Ljava/lang/String;

.field private final SYSFS_MDNIE_OUTDOOR:Ljava/lang/String;

.field private final SYSFS_MDNIE_PLAYSPEED:Ljava/lang/String;

.field private final SYSFS_MDNIE_SCREEN_MODE:Ljava/lang/String;

.field private final SYSFS_MDNIE_VISION_MODE:Ljava/lang/String;

.field private final SYSFS_MDNIE_VISION_MODE_SUB:Ljava/lang/String;

.field private adaptiveDisplay:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

.field private mAutoModeEnabled:Z

.field private mBrowserScenarioEnabled:Z

.field private mColorBlindEnabled:Z

.field private mContentMode:I

.field private final mContext:Landroid/content/Context;

.field private mCurtainModeIsRunning:Z

.field private mDisplayOn:Z

.field private mEbookScenarioEnabled:Z

.field private mEmergencyModeDiabled:Z

.field private final mLock:Ljava/lang/Object;

.field private mMdnieCustomized:Z

.field private mMdnieWorkingCondition:Z

.field private mNegativeColorEnabled:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPrevScreenModeForReadingMode:I

.field private mReadingModeEnabled:Z

.field private mReadingScreenMode:I

.field private mScreenCurtainEnabled:Z

.field private mScreenMode:I

.field private mScreenModeForReadingMode:I

.field private mScreenWatchingReceiver:Lcom/samsung/android/mdnie/MdnieManagerService$ScreenWatchingReceiver;

.field private mSettingsObserver:Lcom/samsung/android/mdnie/MdnieManagerService$SettingsObserver;

.field private mUseAdaptiveDisplayColorServiceConfig:Z

.field private mVisionMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, -0x2

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 119
    invoke-direct {p0}, Lcom/samsung/android/mdnie/IMdnieManager$Stub;-><init>()V

    .line 74
    const-string/jumbo v2, "eng"

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, DEBUG:Z

    .line 79
    iput-object v6, p0, adaptiveDisplay:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .line 81
    const-string/jumbo v2, "screen_mode_automatic_setting"

    iput-object v2, p0, SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

    .line 82
    const-string/jumbo v2, "screen_mode_setting"

    iput-object v2, p0, SCREEN_MODE_SETTING:Ljava/lang/String;

    .line 84
    const-string v2, "/sys/class/mdnie/mdnie/accessibility"

    iput-object v2, p0, SYSFS_MDNIE_VISION_MODE:Ljava/lang/String;

    .line 85
    const-string v2, "/sys/class/mdnie_1/mdnie_1/accessibility"

    iput-object v2, p0, SYSFS_MDNIE_VISION_MODE_SUB:Ljava/lang/String;

    .line 86
    const-string v2, "/sys/class/mdnie/mdnie/mode"

    iput-object v2, p0, SYSFS_MDNIE_SCREEN_MODE:Ljava/lang/String;

    .line 87
    const-string v2, "/sys/class/mdnie/mdnie/scenario"

    iput-object v2, p0, SYSFS_MDNIE_CONTENT_MODE:Ljava/lang/String;

    .line 89
    const-string v2, "/sys/class/mdnie/mdnie/negative"

    iput-object v2, p0, SYSFS_MDNIE_NEGATIVE:Ljava/lang/String;

    .line 90
    const-string v2, "/sys/class/mdnie/mdnie/outdoor"

    iput-object v2, p0, SYSFS_MDNIE_OUTDOOR:Ljava/lang/String;

    .line 91
    const-string v2, "/sys/class/mdnie/mdnie/playspeed"

    iput-object v2, p0, SYSFS_MDNIE_PLAYSPEED:Ljava/lang/String;

    .line 93
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, mLock:Ljava/lang/Object;

    .line 95
    iput-boolean v4, p0, mMdnieCustomized:Z

    .line 104
    iput-boolean v4, p0, mMdnieWorkingCondition:Z

    .line 105
    iput-boolean v4, p0, mDisplayOn:Z

    .line 106
    iput-boolean v4, p0, mEmergencyModeDiabled:Z

    .line 107
    iput-boolean v4, p0, mScreenCurtainEnabled:Z

    .line 108
    iput-boolean v4, p0, mNegativeColorEnabled:Z

    .line 109
    iput-boolean v4, p0, mColorBlindEnabled:Z

    .line 110
    iput-boolean v4, p0, mAutoModeEnabled:Z

    .line 111
    iput-boolean v4, p0, mReadingModeEnabled:Z

    .line 112
    iput-boolean v4, p0, mEbookScenarioEnabled:Z

    .line 113
    iput-boolean v4, p0, mBrowserScenarioEnabled:Z

    .line 115
    iput-boolean v4, p0, mUseAdaptiveDisplayColorServiceConfig:Z

    .line 117
    iput-object v6, p0, mPowerManager:Landroid/os/PowerManager;

    .line 486
    iput-boolean v4, p0, mCurtainModeIsRunning:Z

    .line 121
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 123
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 125
    .local v1, "resolver":Landroid/content/ContentResolver;
    new-instance v2, Lcom/samsung/android/mdnie/MdnieManagerService$SettingsObserver;

    invoke-direct {v2, p0}, Lcom/samsung/android/mdnie/MdnieManagerService$SettingsObserver;-><init>(Lcom/samsung/android/mdnie/MdnieManagerService;)V

    iput-object v2, p0, mSettingsObserver:Lcom/samsung/android/mdnie/MdnieManagerService$SettingsObserver;

    .line 128
    const/4 v2, 0x5

    iput v2, p0, mReadingScreenMode:I

    .line 134
    const-string/jumbo v2, "screen_mode_setting"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v5, p0, mSettingsObserver:Lcom/samsung/android/mdnie/MdnieManagerService$SettingsObserver;

    invoke-virtual {v1, v2, v4, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 137
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 138
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    iget-object v2, p0, mContext:Landroid/content/Context;

    new-instance v5, Lcom/samsung/android/mdnie/MdnieManagerService$ScreenWatchingReceiver;

    invoke-direct {v5, p0, v6}, Lcom/samsung/android/mdnie/MdnieManagerService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/mdnie/MdnieManagerService;Lcom/samsung/android/mdnie/MdnieManagerService$1;)V

    invoke-virtual {v2, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    const-string/jumbo v2, "high_contrast"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_ef

    .line 145
    iput v3, p0, mVisionMode:I

    .line 153
    :goto_a9
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "screen_mode_automatic_setting"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_10b

    move v2, v3

    :goto_b9
    iput-boolean v2, p0, mAutoModeEnabled:Z

    .line 154
    iget-boolean v2, p0, mAutoModeEnabled:Z

    if-eqz v2, :cond_10d

    .line 156
    const/4 v2, 0x4

    iput v2, p0, mScreenMode:I

    .line 163
    :goto_c2
    iput v4, p0, mContentMode:I

    .line 165
    iput-boolean v3, p0, mDisplayOn:Z

    .line 166
    iput-boolean v3, p0, mEmergencyModeDiabled:Z

    .line 167
    iput-boolean v3, p0, mMdnieWorkingCondition:Z

    .line 169
    iget v2, p0, mScreenMode:I

    invoke-virtual {p0, v2}, setScreenMode(I)Z

    .line 170
    iget v2, p0, mContentMode:I

    invoke-virtual {p0, v2}, setContentMode(I)Z

    .line 172
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11200d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, mUseAdaptiveDisplayColorServiceConfig:Z

    .line 174
    iget-boolean v2, p0, mUseAdaptiveDisplayColorServiceConfig:Z

    if-eqz v2, :cond_ee

    .line 175
    new-instance v2, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    invoke-direct {v2, p1}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, adaptiveDisplay:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .line 176
    :cond_ee
    return-void

    .line 146
    :cond_ef
    const-string/jumbo v2, "lcd_curtain"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_fc

    .line 147
    const/4 v2, 0x2

    iput v2, p0, mVisionMode:I

    goto :goto_a9

    .line 148
    :cond_fc
    const-string v2, "color_blind"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_108

    .line 149
    const/4 v2, 0x3

    iput v2, p0, mVisionMode:I

    goto :goto_a9

    .line 151
    :cond_108
    iput v4, p0, mVisionMode:I

    goto :goto_a9

    :cond_10b
    move v2, v4

    .line 153
    goto :goto_b9

    .line 160
    :cond_10d
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "screen_mode_setting"

    invoke-static {v2, v5, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, mScreenMode:I

    goto :goto_c2
.end method

.method static synthetic access$100(Lcom/samsung/android/mdnie/MdnieManagerService;)Landroid/os/PowerManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/MdnieManagerService;

    .prologue
    .line 72
    iget-object v0, p0, mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/mdnie/MdnieManagerService;Landroid/os/PowerManager;)Landroid/os/PowerManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/MdnieManagerService;
    .param p1, "x1"    # Landroid/os/PowerManager;

    .prologue
    .line 72
    iput-object p1, p0, mPowerManager:Landroid/os/PowerManager;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/mdnie/MdnieManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/MdnieManagerService;

    .prologue
    .line 72
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/mdnie/MdnieManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/MdnieManagerService;

    .prologue
    .line 72
    iget-boolean v0, p0, mDisplayOn:Z

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/mdnie/MdnieManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/MdnieManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, mDisplayOn:Z

    return p1
.end method

.method static synthetic access$402(Lcom/samsung/android/mdnie/MdnieManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/MdnieManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, mMdnieWorkingCondition:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/mdnie/MdnieManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/MdnieManagerService;

    .prologue
    .line 72
    iget-boolean v0, p0, mEmergencyModeDiabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/mdnie/MdnieManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/MdnieManagerService;

    .prologue
    .line 72
    iget v0, p0, mPrevScreenModeForReadingMode:I

    return v0
.end method

.method static synthetic access$602(Lcom/samsung/android/mdnie/MdnieManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/MdnieManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iput p1, p0, mPrevScreenModeForReadingMode:I

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/android/mdnie/MdnieManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/MdnieManagerService;

    .prologue
    .line 72
    iget v0, p0, mScreenModeForReadingMode:I

    return v0
.end method

.method static synthetic access$702(Lcom/samsung/android/mdnie/MdnieManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/MdnieManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iput p1, p0, mScreenModeForReadingMode:I

    return p1
.end method

.method static synthetic access$800(Lcom/samsung/android/mdnie/MdnieManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/MdnieManagerService;

    .prologue
    .line 72
    iget v0, p0, mReadingScreenMode:I

    return v0
.end method

.method private static sysfsWrite(Ljava/lang/String;I)Z
    .registers 8
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    const/4 v4, 0x0

    .line 292
    const/4 v2, 0x0

    .line 296
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_c} :catch_1d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_22

    .line 302
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_c
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 303
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1a} :catch_2f

    .line 314
    const/4 v4, 0x1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_1c
    return v4

    .line 297
    :catch_1d
    move-exception v0

    .line 298
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_1e
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_1c

    .line 304
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_22
    move-exception v0

    .line 305
    .local v0, "e":Ljava/io/IOException;
    :goto_23
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 307
    :try_start_26
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_1c

    .line 308
    :catch_2a
    move-exception v1

    .line 309
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1c

    .line 304
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_2f
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_23
.end method

.method private static sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 318
    const/4 v2, 0x0

    .line 322
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_c} :catch_19
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_1e

    .line 328
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 329
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_16} :catch_2b

    .line 340
    const/4 v4, 0x1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_18
    return v4

    .line 323
    :catch_19
    move-exception v0

    .line 324
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_18

    .line 330
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1e
    move-exception v0

    .line 331
    .local v0, "e":Ljava/io/IOException;
    :goto_1f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 333
    :try_start_22
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_18

    .line 334
    :catch_26
    move-exception v1

    .line 335
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    .line 330
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_2b
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_1f
.end method

.method private static sysfsWrite_CB(Ljava/lang/String;I[I)Z
    .registers 12
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "value"    # I
    .param p2, "result"    # [I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 375
    const/4 v3, 0x0

    .line 376
    .local v3, "out":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 378
    .local v2, "mParameter":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, p2, v6

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, p2, v5

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x4

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x5

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x6

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x7

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x8

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 391
    :try_start_ad
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b7
    .catch Ljava/io/FileNotFoundException; {:try_start_ad .. :try_end_b7} :catch_c3
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b7} :catch_c9

    .line 397
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_b7
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 398
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_c1} :catch_d7

    move-object v3, v4

    .line 425
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :goto_c2
    return v5

    .line 392
    :catch_c3
    move-exception v0

    .line 393
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_c4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_c7} :catch_c9

    move v5, v6

    .line 394
    goto :goto_c2

    .line 399
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_c9
    move-exception v0

    .line 400
    .local v0, "e":Ljava/io/IOException;
    :goto_ca
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 402
    :try_start_cd
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_d0} :catch_d2

    :goto_d0
    move v5, v6

    .line 406
    goto :goto_c2

    .line 403
    :catch_d2
    move-exception v1

    .line 404
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d0

    .line 399
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_d7
    move-exception v0

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_ca
.end method

.method private static sysfsWrite_CB_HBM(Ljava/lang/String;I[I)Z
    .registers 12
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "value"    # I
    .param p2, "result"    # [I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 430
    const/4 v3, 0x0

    .line 431
    .local v3, "out":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 433
    .local v2, "mParameter":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, p2, v6

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, p2, v5

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x4

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x5

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x6

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x7

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x8

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x9

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xa

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xb

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 449
    :try_start_e3
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_ed
    .catch Ljava/io/FileNotFoundException; {:try_start_e3 .. :try_end_ed} :catch_f9
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_ed} :catch_ff

    .line 455
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_ed
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 456
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_f7} :catch_10d

    move-object v3, v4

    .line 483
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :goto_f8
    return v5

    .line 450
    :catch_f9
    move-exception v0

    .line 451
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_fa
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_fd
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_fd} :catch_ff

    move v5, v6

    .line 452
    goto :goto_f8

    .line 457
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_ff
    move-exception v0

    .line 458
    .local v0, "e":Ljava/io/IOException;
    :goto_100
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 460
    :try_start_103
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_106} :catch_108

    :goto_106
    move v5, v6

    .line 464
    goto :goto_f8

    .line 461
    :catch_108
    move-exception v1

    .line 462
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_106

    .line 457
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_10d
    move-exception v0

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_100
.end method

.method private static sysfsWrite_color_blind(Ljava/lang/String;I[I)Z
    .registers 12
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "value"    # I
    .param p2, "result"    # [I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 345
    const/4 v3, 0x0

    .line 346
    .local v3, "out":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 348
    .local v2, "mParameter":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, p2, v6

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, p2, v5

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x4

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x5

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x6

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x7

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x8

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 354
    :try_start_ad
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b7
    .catch Ljava/io/FileNotFoundException; {:try_start_ad .. :try_end_b7} :catch_c3
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b7} :catch_c9

    .line 360
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_b7
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 361
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_c1} :catch_d7

    move-object v3, v4

    .line 371
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :goto_c2
    return v5

    .line 355
    :catch_c3
    move-exception v0

    .line 356
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_c4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_c7} :catch_c9

    move v5, v6

    .line 357
    goto :goto_c2

    .line 362
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_c9
    move-exception v0

    .line 363
    .local v0, "e":Ljava/io/IOException;
    :goto_ca
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 365
    :try_start_cd
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_d0} :catch_d2

    :goto_d0
    move v5, v6

    .line 369
    goto :goto_c2

    .line 366
    :catch_d2
    move-exception v1

    .line 367
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d0

    .line 362
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_d7
    move-exception v0

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_ca
.end method


# virtual methods
.method public getContentMode()I
    .registers 2

    .prologue
    .line 231
    iget v0, p0, mContentMode:I

    return v0
.end method

.method public getScreenMode()I
    .registers 2

    .prologue
    .line 226
    iget v0, p0, mScreenMode:I

    return v0
.end method

.method public setAmoledACL(I)Z
    .registers 4
    .param p1, "mode"    # I

    .prologue
    .line 277
    iget-boolean v0, p0, mMdnieWorkingCondition:Z

    if-eqz v0, :cond_15

    .line 278
    if-eqz p1, :cond_7

    .line 279
    const/4 p1, 0x1

    .line 280
    :cond_7
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 282
    :try_start_a
    const-string v0, "/sys/class/lcd/panel/power_reduce"

    invoke-static {v0, p1}, sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    monitor-exit v1

    .line 288
    :goto_11
    return v0

    .line 285
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_12

    throw v0

    .line 288
    :cond_15
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public setContentMode(I)Z
    .registers 6
    .param p1, "mode"    # I

    .prologue
    .line 256
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 257
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 260
    .local v0, "pid":I
    iget-boolean v2, p0, mMdnieWorkingCondition:Z

    if-eqz v2, :cond_1d

    .line 261
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 262
    :try_start_f
    const-string v2, "/sys/class/mdnie/mdnie/scenario"

    invoke-static {v2, p1}, sysfsWrite(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 263
    iput p1, p0, mContentMode:I

    .line 264
    const/4 v2, 0x1

    monitor-exit v3

    .line 269
    :goto_1b
    return v2

    .line 266
    :cond_1c
    monitor-exit v3

    .line 269
    :cond_1d
    const/4 v2, 0x0

    goto :goto_1b

    .line 266
    :catchall_1f
    move-exception v2

    monitor-exit v3
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_1f

    throw v2
.end method

.method public setScreenMode(I)Z
    .registers 6
    .param p1, "mode"    # I

    .prologue
    .line 237
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 238
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 241
    .local v0, "pid":I
    iget-boolean v2, p0, mMdnieWorkingCondition:Z

    if-eqz v2, :cond_1d

    .line 242
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 243
    :try_start_f
    const-string v2, "/sys/class/mdnie/mdnie/mode"

    invoke-static {v2, p1}, sysfsWrite(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 244
    iput p1, p0, mScreenMode:I

    .line 245
    const/4 v2, 0x1

    monitor-exit v3

    .line 250
    :goto_1b
    return v2

    .line 247
    :cond_1c
    monitor-exit v3

    .line 250
    :cond_1d
    const/4 v2, 0x0

    goto :goto_1b

    .line 247
    :catchall_1f
    move-exception v2

    monitor-exit v3
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_1f

    throw v2
.end method

.method public setmDNIeAccessibilityMode(IZ)Z
    .registers 9
    .param p1, "mode"    # I
    .param p2, "enable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 643
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_17

    .line 644
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v5, "setmDNIeAccessibilityMode"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    :cond_17
    const-string v3, "MdnieManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setmDNIeAccessibilityMode("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-boolean v3, p0, mCurtainModeIsRunning:Z

    if-nez v3, :cond_5d

    .line 650
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v1

    .line 651
    .local v1, "mEmergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    if-eqz v1, :cond_5e

    .line 652
    invoke-virtual {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->getEmergencyState()I

    move-result v0

    .line 653
    .local v0, "emergencyState":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_56

    const/4 v3, 0x3

    if-ne v0, v3, :cond_5e

    .line 657
    :cond_56
    const-string v2, "/sys/class/mdnie/mdnie/accessibility"

    const/4 v3, 0x4

    invoke-static {v2, v3}, sysfsWrite(Ljava/lang/String;I)Z

    move-result v2

    .line 687
    .end local v0    # "emergencyState":I
    .end local v1    # "mEmergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    .end local p1    # "mode":I
    :cond_5d
    :goto_5d
    return v2

    .line 660
    .restart local v1    # "mEmergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    .restart local p1    # "mode":I
    :cond_5e
    const/16 v3, 0xa

    if-eq p1, v3, :cond_6d

    .line 664
    const-string v3, "/sys/class/mdnie/mdnie/accessibility"

    if-eqz p2, :cond_6b

    .end local p1    # "mode":I
    :goto_66
    invoke-static {v3, p1}, sysfsWrite(Ljava/lang/String;I)Z

    move-result v2

    goto :goto_5d

    .restart local p1    # "mode":I
    :cond_6b
    move p1, v2

    goto :goto_66

    .line 667
    :cond_6d
    const-string v3, "/sys/class/backlight/panel/weakness_hbm_comp"

    if-eqz p2, :cond_72

    const/4 v2, 0x1

    :cond_72
    invoke-static {v3, v2}, sysfsWrite(Ljava/lang/String;I)Z

    move-result v2

    goto :goto_5d
.end method

.method public setmDNIeColorBlind(Z[I)Z
    .registers 8
    .param p1, "enable"    # Z
    .param p2, "result"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 497
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_17

    .line 498
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v4, "setmDNIeColorBlind"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    :cond_17
    const-string v2, "MdnieManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setmDNIeColorBlind ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-boolean v2, p0, mCurtainModeIsRunning:Z

    if-nez v2, :cond_4f

    .line 504
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    .line 505
    .local v0, "mEmergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    if-eqz v0, :cond_50

    .line 506
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 510
    const-string v1, "/sys/class/mdnie/mdnie/accessibility"

    const/4 v2, 0x4

    invoke-static {v1, v2}, sysfsWrite(Ljava/lang/String;I)Z

    move-result v1

    .line 546
    .end local v0    # "mEmergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    :cond_4f
    :goto_4f
    return v1

    .line 517
    .restart local v0    # "mEmergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    :cond_50
    const-string v2, "/sys/class/mdnie/mdnie/accessibility"

    if-eqz p1, :cond_55

    const/4 v1, 0x6

    :cond_55
    invoke-static {v2, v1, p2}, sysfsWrite_CB_HBM(Ljava/lang/String;I[I)Z

    move-result v1

    goto :goto_4f
.end method

.method public setmDNIeEmergencyMode(Z)Z
    .registers 6
    .param p1, "enable"    # Z

    .prologue
    .line 623
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_16

    .line 624
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v3, "setmDNIeEmergencyMode"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    :cond_16
    const-string v1, "MdnieManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setmDNIeEmergencyMode ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const-string v2, "/sys/class/mdnie/mdnie/accessibility"

    if-eqz p1, :cond_3f

    const/4 v1, 0x4

    :goto_3a
    invoke-static {v2, v1}, sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    .line 631
    .local v0, "result":Z
    return v0

    .line 627
    .end local v0    # "result":Z
    :cond_3f
    const/4 v1, 0x0

    goto :goto_3a
.end method

.method public setmDNIeNegative(Z)Z
    .registers 7
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 559
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_17

    .line 560
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v4, "setmDNIeNegative"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    :cond_17
    const-string v2, "MdnieManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setmDNIeNegative ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-boolean v2, p0, mCurtainModeIsRunning:Z

    if-nez v2, :cond_4f

    .line 566
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    .line 567
    .local v0, "mEmergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    if-eqz v0, :cond_50

    .line 568
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 572
    const-string v1, "/sys/class/mdnie/mdnie/accessibility"

    const/4 v2, 0x4

    invoke-static {v1, v2}, sysfsWrite(Ljava/lang/String;I)Z

    move-result v1

    .line 592
    .end local v0    # "mEmergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    :cond_4f
    :goto_4f
    return v1

    .line 578
    .restart local v0    # "mEmergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    :cond_50
    const-string v2, "/sys/class/mdnie/mdnie/accessibility"

    if-eqz p1, :cond_55

    const/4 v1, 0x1

    :cond_55
    invoke-static {v2, v1}, sysfsWrite(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_4f
.end method

.method public setmDNIeScreenCurtain(Z)Z
    .registers 6
    .param p1, "enable"    # Z

    .prologue
    .line 604
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_16

    .line 605
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v3, "setmDNIeScreenCurtain"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    :cond_16
    const-string v1, "MdnieManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setmDNIeScreenCurtain ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iput-boolean p1, p0, mCurtainModeIsRunning:Z

    .line 608
    const-string v2, "/sys/class/mdnie/mdnie/accessibility"

    if-eqz p1, :cond_41

    const/4 v1, 0x3

    :goto_3c
    invoke-static {v2, v1}, sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    .line 612
    .local v0, "result":Z
    return v0

    .line 608
    .end local v0    # "result":Z
    :cond_41
    const/4 v1, 0x0

    goto :goto_3c
.end method
