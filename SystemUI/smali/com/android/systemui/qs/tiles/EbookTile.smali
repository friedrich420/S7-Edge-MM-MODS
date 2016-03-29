.class public Lcom/android/systemui/qs/tiles/EbookTile;
.super Lcom/android/systemui/qs/QSTile;
.source "EbookTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$MultiState;",
        ">;"
    }
.end annotation


# static fields
.field private static final SCREEN_MODE_AUTO:I = 0x3

.field private static final SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String; = "screen_mode_automatic_setting"

.field private static final SCREEN_MODE_READING_MODE:I = 0x4

.field private static final SCREEN_MODE_READING_MODE_FOR_AMOLED:I = 0x5

.field private static final SCREEN_MODE_SETTING:Ljava/lang/String; = "screen_mode_setting"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAdaptiveDisplaySetting:Lcom/android/systemui/qs/SystemSetting;

.field private mIsPremiumAMOLED:Z

.field private final mScreenModeSetting:Lcom/android/systemui/qs/SystemSetting;

.field private prevScreenMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/android/systemui/qs/tiles/EbookTile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/EbookTile;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 4
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->prevScreenMode:I

    .line 63
    new-instance v0, Lcom/android/systemui/qs/tiles/EbookTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "screen_mode_setting"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/EbookTile$1;-><init>(Lcom/android/systemui/qs/tiles/EbookTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mScreenModeSetting:Lcom/android/systemui/qs/SystemSetting;

    .line 74
    new-instance v0, Lcom/android/systemui/qs/tiles/EbookTile$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "screen_mode_automatic_setting"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/EbookTile$2;-><init>(Lcom/android/systemui/qs/tiles/EbookTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mAdaptiveDisplaySetting:Lcom/android/systemui/qs/SystemSetting;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mIsPremiumAMOLED:Z

    .line 83
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/EbookTile;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->prevScreenMode:I

    .line 84
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/systemui/qs/tiles/EbookTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/EbookTile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/EbookTile;

    .prologue
    .line 39
    iget v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->prevScreenMode:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/tiles/EbookTile;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/EbookTile;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->prevScreenMode:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/EbookTile;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/EbookTile;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/EbookTile;->isEbookMode(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/EbookTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/EbookTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/EbookTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method private getMode()I
    .locals 3

    .prologue
    .line 145
    sget-object v0, Lcom/android/systemui/qs/tiles/EbookTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mScreenModeSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mScreenModeSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v0

    return v0
.end method

.method private isEbookMode(I)Z
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mIsPremiumAMOLED:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    .line 99
    const/4 v0, 0x1

    .line 102
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/systemui/qs/tiles/EbookTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEbookMode :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return v0

    .line 100
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 101
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setMode(Z)V
    .locals 8
    .param p1, "mode"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v7, 0x0

    .line 151
    sget-object v4, Lcom/android/systemui/qs/tiles/EbookTile;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mContext:Landroid/content/Context;

    const-string v5, "mDNIe"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mdnie/MdnieManager;

    .line 153
    .local v0, "mdnie":Lcom/samsung/android/mdnie/MdnieManager;
    if-eqz v0, :cond_6

    .line 154
    if-eqz p1, :cond_1

    .line 155
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mIsPremiumAMOLED:Z

    if-eqz v2, :cond_0

    .line 156
    const/4 v1, 0x5

    .line 160
    .local v1, "newMode":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mScreenModeSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    .line 162
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mAdaptiveDisplaySetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v2, v7}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    .line 176
    :goto_1
    sget-object v2, Lcom/android/systemui/qs/tiles/EbookTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mdnie.setScreenMode() value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdnie/MdnieManager;->setScreenMode(I)Z

    .line 181
    .end local v1    # "newMode":I
    :goto_2
    return-void

    .line 158
    :cond_0
    const/4 v1, 0x4

    .restart local v1    # "newMode":I
    goto :goto_0

    .line 164
    .end local v1    # "newMode":I
    :cond_1
    iget v1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->prevScreenMode:I

    .line 165
    .restart local v1    # "newMode":I
    iget v4, p0, Lcom/android/systemui/qs/tiles/EbookTile;->prevScreenMode:I

    if-gez v4, :cond_2

    .line 166
    iget-boolean v4, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mIsPremiumAMOLED:Z

    if-eqz v4, :cond_3

    move v1, v2

    .end local v1    # "newMode":I
    :goto_3
    iput v1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->prevScreenMode:I

    .line 167
    .restart local v1    # "newMode":I
    sget-object v4, Lcom/android/systemui/qs/tiles/EbookTile;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wrong prevScreenMode : set as AD "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mIsPremiumAMOLED:Z

    if-eqz v4, :cond_4

    :goto_4
    if-ne v1, v2, :cond_5

    .line 171
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mAdaptiveDisplaySetting:Lcom/android/systemui/qs/SystemSetting;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    goto :goto_1

    :cond_3
    move v1, v3

    .line 166
    goto :goto_3

    :cond_4
    move v2, v3

    .line 170
    goto :goto_4

    .line 173
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mAdaptiveDisplaySetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v2, v7}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    goto :goto_1

    .line 179
    .end local v1    # "newMode":I
    :cond_6
    sget-object v2, Lcom/android/systemui/qs/tiles/EbookTile;->TAG:Ljava/lang/String;

    const-string v3, "mDNIe = null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-object v1, v0, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/systemui/qs/tiles/EbookTile;->makeContentDescription(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 141
    const/16 v0, 0x198

    return v0
.end method

.method protected handleClick()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 108
    sget-object v4, Lcom/android/systemui/qs/tiles/EbookTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleClick : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "screen mode "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/systemui/qs/tiles/EbookTile;->prevScreenMode:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/EbookTile;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-eq v1, v2, :cond_2

    move v0, v2

    .line 114
    .local v0, "state":Z
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/EbookTile;->getMetricsCategory()I

    move-result v4

    if-nez v0, :cond_3

    :goto_2
    invoke-static {v1, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 116
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/EbookTile;->setMode(Z)V

    goto :goto_0

    .end local v0    # "state":Z
    :cond_2
    move v0, v3

    .line 113
    goto :goto_1

    .restart local v0    # "state":Z
    :cond_3
    move v2, v3

    .line 114
    goto :goto_2
.end method

.method protected handleLongClick()V
    .locals 3

    .prologue
    .line 121
    sget-object v1, Lcom/android/systemui/qs/tiles/EbookTile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleLongClick()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/EbookTile;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 126
    :cond_0
    const-string v0, "com.samsung.settings.ModePreviewTablet"

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/EbookTile;->startActivityDismissingKeyguard(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 131
    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 132
    .local v0, "value":I
    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 133
    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 134
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d02c2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 135
    const v1, 0x7f02036c

    invoke-static {v1}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 136
    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    iget v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/tiles/EbookTile;->makeContentDescription(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    .line 137
    return-void

    .line 131
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget v2, p0, Lcom/android/systemui/qs/tiles/EbookTile;->prevScreenMode:I

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/EbookTile;->isEbookMode(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 39
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/EbookTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/EbookTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mScreenModeSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 89
    return-void
.end method

.method protected shouldAnnouncementBeDelayed()Z
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public userSwitch(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mScreenModeSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->setUserId(I)V

    .line 196
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mAdaptiveDisplaySetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->setUserId(I)V

    .line 197
    return-void
.end method
