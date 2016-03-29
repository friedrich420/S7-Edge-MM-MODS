.class public Lcom/android/systemui/recents/Constants$Features;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Features"
.end annotation


# static fields
.field public static final DEVICE_TYPE_TABLET:Z

.field public static final EnableCloseAllAnimation:Z

.field public static final EnableCloseAllLayout:Z

.field public static final EnableCloseAllScroll:Z

.field public static final EnableEnterAnimFromApp:Z

.field public static final EnableExitAnimToApp:Z

.field public static final EnableGatheredAnimToHome:Z

.field public static final EnableRecentsAppLock:Z

.field public static final EnableRecentsButtonsLayout:Z

.field public static final EnableSecondViewExpanded:Z

.field public static final EnableShortcutLayout:Z

.field public static final EnableSnapAction:Z

.field public static final EnableSpreadAnimFromHome:Z

.field public static final EnableViewPagerAboveAll:Z

.field private static final RecentsAppUIVersion:I

.field private static final SCafeName:Ljava/lang/String;

.field private static final SCafeVersion:Ljava/lang/String;

.field public static final UpperBouncePosition:Z

.field public static final UseRecentsSeparatedProcess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 88
    const-string v0, "ro.build.scafe"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/recents/Constants$Features;->SCafeName:Ljava/lang/String;

    .line 89
    const-string v0, "ro.build.scafe.version"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/recents/Constants$Features;->SCafeVersion:Ljava/lang/String;

    .line 96
    sget-object v0, Lcom/android/systemui/recents/Constants$Features;->SCafeName:Ljava/lang/String;

    const-string v3, "mocha"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/recents/Constants$Features;->SCafeName:Ljava/lang/String;

    const-string v3, "americano"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    :cond_0
    sput v1, Lcom/android/systemui/recents/Constants$Features;->RecentsAppUIVersion:I

    .line 106
    :goto_0
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/systemui/recents/Constants$Features;->DEVICE_TYPE_TABLET:Z

    .line 116
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/recents/Constants$Features;->UseRecentsSeparatedProcess:Z

    .line 159
    sget v0, Lcom/android/systemui/recents/Constants$Features;->RecentsAppUIVersion:I

    if-lt v0, v5, :cond_5

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/android/systemui/recents/Constants$Features;->EnableViewPagerAboveAll:Z

    .line 163
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_SystemUI_SupportRecentAppProtection"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/recents/Constants$Features;->EnableRecentsAppLock:Z

    .line 167
    sget v0, Lcom/android/systemui/recents/Constants$Features;->RecentsAppUIVersion:I

    if-lt v0, v1, :cond_7

    .line 168
    sput-boolean v1, Lcom/android/systemui/recents/Constants$Features;->EnableRecentsButtonsLayout:Z

    .line 169
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Framework_ShortCutListInRecentApp"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/android/systemui/recents/Constants$Features;->EnableShortcutLayout:Z

    .line 170
    sput-boolean v1, Lcom/android/systemui/recents/Constants$Features;->UpperBouncePosition:Z

    .line 176
    :goto_4
    sget v0, Lcom/android/systemui/recents/Constants$Features;->RecentsAppUIVersion:I

    if-lt v0, v4, :cond_b

    .line 177
    sget-boolean v0, Lcom/android/systemui/recents/Constants$Features;->EnableRecentsButtonsLayout:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_5
    sput-boolean v0, Lcom/android/systemui/recents/Constants$Features;->EnableCloseAllLayout:Z

    .line 178
    sget-boolean v0, Lcom/android/systemui/recents/Constants$Features;->EnableRecentsButtonsLayout:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_6
    sput-boolean v0, Lcom/android/systemui/recents/Constants$Features;->EnableCloseAllAnimation:Z

    .line 179
    sput-boolean v1, Lcom/android/systemui/recents/Constants$Features;->EnableSecondViewExpanded:Z

    .line 180
    sput-boolean v1, Lcom/android/systemui/recents/Constants$Features;->EnableSnapAction:Z

    .line 181
    sput-boolean v1, Lcom/android/systemui/recents/Constants$Features;->EnableGatheredAnimToHome:Z

    sput-boolean v1, Lcom/android/systemui/recents/Constants$Features;->EnableSpreadAnimFromHome:Z

    .line 182
    sput-boolean v1, Lcom/android/systemui/recents/Constants$Features;->EnableExitAnimToApp:Z

    sput-boolean v1, Lcom/android/systemui/recents/Constants$Features;->EnableEnterAnimFromApp:Z

    .line 183
    sget-boolean v0, Lcom/android/systemui/recents/Constants$Features;->EnableCloseAllLayout:Z

    if-eqz v0, :cond_a

    :goto_7
    sput-boolean v1, Lcom/android/systemui/recents/Constants$Features;->EnableCloseAllScroll:Z

    .line 190
    :goto_8
    return-void

    .line 98
    :cond_1
    sget-object v0, Lcom/android/systemui/recents/Constants$Features;->SCafeName:Ljava/lang/String;

    const-string v3, "latte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/systemui/recents/Constants$Features;->SCafeName:Ljava/lang/String;

    const-string v3, "capuccino"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    :cond_2
    sput v4, Lcom/android/systemui/recents/Constants$Features;->RecentsAppUIVersion:I

    goto :goto_0

    .line 101
    :cond_3
    sput v5, Lcom/android/systemui/recents/Constants$Features;->RecentsAppUIVersion:I

    goto :goto_0

    :cond_4
    move v0, v2

    .line 106
    goto :goto_1

    :cond_5
    move v0, v2

    .line 159
    goto :goto_2

    :cond_6
    move v0, v2

    .line 169
    goto :goto_3

    .line 172
    :cond_7
    sput-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableShortcutLayout:Z

    sput-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableRecentsButtonsLayout:Z

    .line 173
    sput-boolean v2, Lcom/android/systemui/recents/Constants$Features;->UpperBouncePosition:Z

    goto :goto_4

    :cond_8
    move v0, v2

    .line 177
    goto :goto_5

    :cond_9
    move v0, v2

    .line 178
    goto :goto_6

    :cond_a
    move v1, v2

    .line 183
    goto :goto_7

    .line 185
    :cond_b
    sput-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableCloseAllAnimation:Z

    sput-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableCloseAllLayout:Z

    .line 186
    sput-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableCloseAllScroll:Z

    sput-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableSnapAction:Z

    sput-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableSecondViewExpanded:Z

    .line 187
    sput-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableGatheredAnimToHome:Z

    sput-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableSpreadAnimFromHome:Z

    .line 188
    sput-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableExitAnimToApp:Z

    sput-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableEnterAnimFromApp:Z

    goto :goto_8
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
