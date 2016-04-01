.class public Lcom/samsung/android/multiwindow/MultiWindowFeatures;
.super Ljava/lang/Object;
.source "MultiWindowFeatures.java"


# static fields
.field public static final MULTIWINDOW_ENABLED:Z = true

.field public static final SELECTIVE1ORIENTATION_ENABLED:Z

.field private static final SUPPORT_BEZEL_UI:J = 0x10000L

.field private static final SUPPORT_CENTERBAR_CLICK_SOUND:J = 0x80000L

.field private static final SUPPORT_COMMON_UI:J = 0x400L

.field private static final SUPPORT_FIXED_SPLIT_VIEW:J = 0x8L

.field private static final SUPPORT_FREESTYLE:J = 0x2L

.field private static final SUPPORT_FREESTYLE_DOCKING:J = 0x10L

.field private static final SUPPORT_FREESTYLE_LAUNCH:J = 0x20L

.field private static final SUPPORT_MINIMIZE_ANIMATION:J = 0x2000L

.field private static final SUPPORT_MULTIWINDOW:J = 0x1L

.field private static final SUPPORT_MULTIWINDOW_LAUNCH:J = 0x80L

.field private static final SUPPORT_MULTI_INSTANCE:J = 0x200L

.field private static final SUPPORT_QUADVIEW:J = 0x4L

.field private static final SUPPORT_RECENT_UI:J = 0x1000L

.field private static final SUPPORT_SCALE_WINDOW:J = 0x40L

.field private static final SUPPORT_SELECTIVE_1_ORIENTATION:J = 0x20000L

.field private static final SUPPORT_SIMPLIFICATION_UI:J = 0x8000L

.field private static final SUPPORT_SPLIT_FULLSCREEN:J = 0x100L

.field private static final SUPPORT_STYLE_TRANSITION:J = 0x800L

.field private static final SUPPORT_STYLE_TRANSITION_FROM_CENTERBAR:J = 0x40000L

.field private static final SUPPORT_TAB_PEN_WINDOW:J = 0x4000L

.field private static sEnabledFeaturesFlags:J

.field private static sQueriedTypeMultiWindow:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-static {v0}, isSupportSelective1Orientation(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, SELECTIVE1ORIENTATION_ENABLED:Z

    .line 25
    const/4 v0, 0x0

    sput-boolean v0, sQueriedTypeMultiWindow:Z

    .line 26
    const-wide/16 v0, 0x0

    sput-wide v0, sEnabledFeaturesFlags:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkMultiWindowFeature(Landroid/content/Context;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    sget-boolean v3, sQueriedTypeMultiWindow:Z

    if-nez v3, :cond_2d

    .line 63
    const/4 v3, 0x1

    sput-boolean v3, sQueriedTypeMultiWindow:Z

    .line 64
    const/4 v2, 0x0

    .line 65
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz p0, :cond_2e

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 68
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_2e

    .line 69
    const-string/jumbo v3, "multiwindow_facade"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 70
    .local v1, "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getEnabledFeaturesFlags()J

    move-result-wide v4

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 72
    sget-wide v4, sEnabledFeaturesFlags:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2e

    .line 207
    .end local v1    # "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_2d
    :goto_2d
    return-void

    .line 79
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_2e
    if-eqz v2, :cond_169

    .line 80
    :try_start_30
    const-string v3, "com.sec.feature.multiwindow"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 81
    sget-wide v4, sEnabledFeaturesFlags:J

    const-wide/16 v6, 0x1

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 83
    :cond_3f
    const-string v3, "com.sec.feature.multiwindow.freestyle"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 84
    sget-wide v4, sEnabledFeaturesFlags:J

    const-wide/16 v6, 0x2

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 86
    :cond_4e
    const-string v3, "com.sec.feature.multiwindow.quadview"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 87
    sget-wide v4, sEnabledFeaturesFlags:J

    const-wide/16 v6, 0x4

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 89
    :cond_5d
    const-string v3, "com.sec.feature.multiwindow.fixedsplitview"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 90
    sget-wide v4, sEnabledFeaturesFlags:J

    const-wide/16 v6, 0x8

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 92
    :cond_6c
    const-string v3, "com.sec.feature.multiwindow.freestyledocking"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 93
    sget-wide v4, sEnabledFeaturesFlags:J

    const-wide/16 v6, 0x10

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 95
    :cond_7b
    const-string v3, "com.sec.feature.multiwindow.freestylelaunch"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 96
    sget-wide v4, sEnabledFeaturesFlags:J

    const-wide/16 v6, 0x20

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 98
    :cond_8a
    const-string v3, "com.sec.feature.multiwindow.scalewindow"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_99

    .line 99
    sget-wide v4, sEnabledFeaturesFlags:J

    const-wide/16 v6, 0x40

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 101
    :cond_99
    const-string v3, "com.sec.feature.multiwindow.multiwindowlaunch"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a8

    .line 102
    sget-wide v4, sEnabledFeaturesFlags:J

    const-wide/16 v6, 0x80

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 104
    :cond_a8
    const-string v3, "com.sec.feature.multiwindow.splitfullscreen"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b7

    .line 105
    sget-wide v4, sEnabledFeaturesFlags:J

    const-wide/16 v6, 0x100

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 107
    :cond_b7
    const-string v3, "com.sec.feature.multiwindow.multiinstance"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c6

    .line 108
    sget-wide v4, sEnabledFeaturesFlags:J

    const-wide/16 v6, 0x200

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 110
    :cond_c6
    const-string v3, "com.sec.feature.multiwindow.commonui"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d5

    .line 111
    sget-wide v4, sEnabledFeaturesFlags:J

    const-wide/16 v6, 0x400

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 113
    :cond_d5
    const-string v3, "com.sec.feature.multiwindow.styletransition"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e4

    .line 114
    sget-wide v4, sEnabledFeaturesFlags:J

    const-wide/16 v6, 0x800

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 116
    :cond_e4
    const-string v3, "com.sec.feature.multiwindow.recentui"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f3

    .line 117
    sget-wide v4, sEnabledFeaturesFlags:J

    const-wide/16 v6, 0x1000

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 119
    :cond_f3
    const-string v3, "com.sec.feature.multiwindow.minimizeanimation"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_102

    .line 120
    sget-wide v4, sEnabledFeaturesFlags:J

    const-wide/16 v6, 0x2000

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 122
    :cond_102
    const-string v3, "com.sec.feature.multiwindow.tabpenwindow"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_111

    .line 123
    sget-wide v4, sEnabledFeaturesFlags:J

    const-wide/16 v6, 0x4000

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 125
    :cond_111
    const-string v3, "com.sec.feature.multiwindow.simplificationui"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_121

    .line 126
    sget-wide v4, sEnabledFeaturesFlags:J

    const-wide/32 v6, 0x8000

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 128
    :cond_121
    const-string v3, "com.sec.feature.multiwindow.bezelui"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_131

    .line 129
    sget-wide v4, sEnabledFeaturesFlags:J

    const-wide/32 v6, 0x10000

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 131
    :cond_131
    const-string v3, "com.sec.feature.multiwindow.selective1orientation"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_141

    .line 132
    sget-wide v4, sEnabledFeaturesFlags:J

    const-wide/32 v6, 0x20000

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 134
    :cond_141
    const-string v3, "com.sec.feature.multiwindow.styletransitionfromcenterbar"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_151

    .line 135
    sget-wide v4, sEnabledFeaturesFlags:J

    const-wide/32 v6, 0x40000

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 137
    :cond_151
    const-string v3, "com.sec.feature.multiwindow.centerbarclicksound"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 138
    sget-wide v4, sEnabledFeaturesFlags:J

    const-wide/32 v6, 0x80000

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J
    :try_end_161
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_161} :catch_163

    goto/16 :goto_2d

    .line 203
    :catch_163
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    sput-boolean v3, sQueriedTypeMultiWindow:Z

    goto/16 :goto_2d

    .line 142
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_169
    :try_start_169
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_17d

    .line 143
    sget-wide v4, sEnabledFeaturesFlags:J

    const-wide/16 v6, 0x1

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 145
    :cond_17d
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.freestyle.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_191

    .line 146
    sget-wide v4, sEnabledFeaturesFlags:J

    const-wide/16 v6, 0x2

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 148
    :cond_191
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.quadview.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1a5

    .line 149
    sget-wide v4, sEnabledFeaturesFlags:J

    const-wide/16 v6, 0x4

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 151
    :cond_1a5
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.fixedsplitview"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1b9

    .line 152
    sget-wide v4, sEnabledFeaturesFlags:J

    const-wide/16 v6, 0x8

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 154
    :cond_1b9
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.freestyledocking.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1cd

    .line 155
    sget-wide v4, sEnabledFeaturesFlags:J

    const-wide/16 v6, 0x10

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 157
    :cond_1cd
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.freestylelaunch.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1e1

    .line 158
    sget-wide v4, sEnabledFeaturesFlags:J

    const-wide/16 v6, 0x20

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 160
    :cond_1e1
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.scalewindow.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1f5

    .line 161
    sget-wide v4, sEnabledFeaturesFlags:J

    const-wide/16 v6, 0x40

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 163
    :cond_1f5
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.multiwindowlaunch.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_209

    .line 164
    sget-wide v4, sEnabledFeaturesFlags:J

    const-wide/16 v6, 0x80

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 166
    :cond_209
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.splitfullscreen.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_21d

    .line 167
    sget-wide v4, sEnabledFeaturesFlags:J

    const-wide/16 v6, 0x100

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 169
    :cond_21d
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.multiinstance.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_231

    .line 170
    sget-wide v4, sEnabledFeaturesFlags:J

    const-wide/16 v6, 0x200

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 172
    :cond_231
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.commonui.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_245

    .line 173
    sget-wide v4, sEnabledFeaturesFlags:J

    const-wide/16 v6, 0x400

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 175
    :cond_245
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.styletransition.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_259

    .line 176
    sget-wide v4, sEnabledFeaturesFlags:J

    const-wide/16 v6, 0x800

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 178
    :cond_259
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.recentui.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_26d

    .line 179
    sget-wide v4, sEnabledFeaturesFlags:J

    const-wide/16 v6, 0x1000

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 181
    :cond_26d
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.minimizeanimation.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_281

    .line 182
    sget-wide v4, sEnabledFeaturesFlags:J

    const-wide/16 v6, 0x2000

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 184
    :cond_281
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.tabpenwindow.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_295

    .line 185
    sget-wide v4, sEnabledFeaturesFlags:J

    const-wide/16 v6, 0x4000

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 187
    :cond_295
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.simplificationui.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2aa

    .line 188
    sget-wide v4, sEnabledFeaturesFlags:J

    const-wide/32 v6, 0x8000

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 190
    :cond_2aa
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.bezelui.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2bf

    .line 191
    sget-wide v4, sEnabledFeaturesFlags:J

    const-wide/32 v6, 0x10000

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 193
    :cond_2bf
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.selective1orientation.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2d4

    .line 194
    sget-wide v4, sEnabledFeaturesFlags:J

    const-wide/32 v6, 0x20000

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 196
    :cond_2d4
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.styletransitionfromcenterbar.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2e9

    .line 197
    sget-wide v4, sEnabledFeaturesFlags:J

    const-wide/32 v6, 0x40000

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 199
    :cond_2e9
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.centerbarclicksound.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 200
    sget-wide v4, sEnabledFeaturesFlags:J

    const-wide/32 v6, 0x80000

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J
    :try_end_2fe
    .catch Ljava/lang/Exception; {:try_start_169 .. :try_end_2fe} :catch_163

    goto/16 :goto_2d
.end method

.method public static getEnabledFeaturesFlags(Landroid/content/Context;)J
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-static {p0}, checkMultiWindowFeature(Landroid/content/Context;)V

    .line 55
    sget-wide v0, sEnabledFeaturesFlags:J

    return-wide v0
.end method

.method private static isEnabled(J)Z
    .registers 6
    .param p0, "feature"    # J

    .prologue
    .line 50
    sget-wide v0, sEnabledFeaturesFlags:J

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static isSupportBezelUI(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 352
    invoke-static {p0}, checkMultiWindowFeature(Landroid/content/Context;)V

    .line 353
    const-wide/32 v0, 0x10000

    invoke-static {v0, v1}, isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportCenterbarClickSound(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 383
    invoke-static {p0}, checkMultiWindowFeature(Landroid/content/Context;)V

    .line 384
    const-wide/32 v0, 0x80000

    invoke-static {v0, v1}, isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportCommonUI(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 304
    invoke-static {p0}, checkMultiWindowFeature(Landroid/content/Context;)V

    .line 305
    const-wide/16 v0, 0x400

    invoke-static {v0, v1}, isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportFixedSplitView(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 264
    invoke-static {p0}, checkMultiWindowFeature(Landroid/content/Context;)V

    .line 265
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportFreeStyle(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 226
    invoke-static {p0}, checkMultiWindowFeature(Landroid/content/Context;)V

    .line 227
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportFreeStyleDocking(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 272
    invoke-static {p0}, checkMultiWindowFeature(Landroid/content/Context;)V

    .line 273
    const-wide/16 v0, 0x10

    invoke-static {v0, v1}, isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportFreeStyleLaunch(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 280
    invoke-static {p0}, checkMultiWindowFeature(Landroid/content/Context;)V

    .line 281
    const-wide/16 v0, 0x20

    invoke-static {v0, v1}, isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportMinimizeAnimation(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 328
    invoke-static {p0}, checkMultiWindowFeature(Landroid/content/Context;)V

    .line 329
    const-wide/16 v0, 0x2000

    invoke-static {v0, v1}, isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportMultiInstance(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 236
    invoke-static {p0}, checkMultiWindowFeature(Landroid/content/Context;)V

    .line 237
    const-wide/16 v0, 0x200

    invoke-static {v0, v1}, isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportMultiWindow(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 216
    invoke-static {p0}, checkMultiWindowFeature(Landroid/content/Context;)V

    .line 217
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportMultiWindowLaunch(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 288
    invoke-static {p0}, checkMultiWindowFeature(Landroid/content/Context;)V

    .line 289
    const-wide/16 v0, 0x80

    invoke-static {v0, v1}, isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportOpenTheme(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportQuadView(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 246
    invoke-static {p0}, checkMultiWindowFeature(Landroid/content/Context;)V

    .line 247
    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportRecentUI(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 320
    invoke-static {p0}, checkMultiWindowFeature(Landroid/content/Context;)V

    .line 321
    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportScaleWindow(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 256
    invoke-static {p0}, checkMultiWindowFeature(Landroid/content/Context;)V

    .line 257
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportSelective1Orientation(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 367
    invoke-static {p0}, checkMultiWindowFeature(Landroid/content/Context;)V

    .line 368
    const-wide/32 v0, 0x20000

    invoke-static {v0, v1}, isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportSimplificationUI(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 344
    invoke-static {p0}, checkMultiWindowFeature(Landroid/content/Context;)V

    .line 345
    const-wide/32 v0, 0x8000

    invoke-static {v0, v1}, isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportSplitFullScreen(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 296
    invoke-static {p0}, checkMultiWindowFeature(Landroid/content/Context;)V

    .line 297
    const-wide/16 v0, 0x100

    invoke-static {v0, v1}, isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportStyleTransition(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 312
    invoke-static {p0}, checkMultiWindowFeature(Landroid/content/Context;)V

    .line 313
    const-wide/16 v0, 0x800

    invoke-static {v0, v1}, isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportStyleTransitionFromCenterBar(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 375
    invoke-static {p0}, checkMultiWindowFeature(Landroid/content/Context;)V

    .line 376
    const-wide/32 v0, 0x40000

    invoke-static {v0, v1}, isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportTabPenWindow(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 336
    invoke-static {p0}, checkMultiWindowFeature(Landroid/content/Context;)V

    .line 337
    const-wide/16 v0, 0x4000

    invoke-static {v0, v1}, isEnabled(J)Z

    move-result v0

    return v0
.end method
