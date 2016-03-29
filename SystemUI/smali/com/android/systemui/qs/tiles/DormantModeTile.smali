.class public Lcom/android/systemui/qs/tiles/DormantModeTile;
.super Lcom/android/systemui/qs/QSTile;
.source "DormantModeTile.java"


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
.field private static final DB_CAR_MODE_ON:Ljava/lang/String; = "car_mode_on"

.field private static final TAG:Ljava/lang/String; = "DormantModeTile"


# instance fields
.field private mIsCarMode:Z

.field private final mSettingCM:Lcom/android/systemui/qs/SecureSetting;

.field private final mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

.field private mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 5
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v0, 0x1

    .line 45
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 150
    new-instance v1, Lcom/android/systemui/qs/tiles/DormantModeTile$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/DormantModeTile$2;-><init>(Lcom/android/systemui/qs/tiles/DormantModeTile;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 47
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getZenModeController()Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 49
    new-instance v1, Lcom/android/systemui/qs/tiles/DormantModeTile$1;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v4, "car_mode_on"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/systemui/qs/tiles/DormantModeTile$1;-><init>(Lcom/android/systemui/qs/tiles/DormantModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mSettingCM:Lcom/android/systemui/qs/SecureSetting;

    .line 61
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mSettingCM:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mIsCarMode:Z

    .line 62
    return-void

    .line 61
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/DormantModeTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DormantModeTile;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mIsCarMode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/tiles/DormantModeTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DormantModeTile;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mIsCarMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/DormantModeTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DormantModeTile;

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DormantModeTile;->refreshState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/DormantModeTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DormantModeTile;

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DormantModeTile;->refreshState()V

    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-object v1, v0, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/systemui/qs/tiles/DormantModeTile;->makeContentDescription(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActionTypeOnCover()I
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x2

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 126
    const/16 v0, 0x76

    return v0
.end method

.method public handleClick()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 71
    const-string v4, "DormantModeTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleClick : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/DormantModeTile;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 78
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    const/4 v1, 0x1

    .line 79
    .local v1, "newState":Z
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DormantModeTile;->getMetricsCategory()I

    move-result v4

    invoke-static {v2, v4, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 81
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    if-eqz v2, :cond_0

    .line 82
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getAutomaticRule()Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v2

    iget v0, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 83
    .local v0, "mPreviousZen":I
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    if-eqz v1, :cond_3

    .end local v0    # "mPreviousZen":I
    :goto_2
    const/4 v3, 0x0

    const-string v4, "DormantModeTile"

    invoke-interface {v2, v0, v3, v4}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "newState":Z
    :cond_2
    move v1, v3

    .line 78
    goto :goto_1

    .restart local v0    # "mPreviousZen":I
    .restart local v1    # "newState":Z
    :cond_3
    move v0, v3

    .line 83
    goto :goto_2
.end method

.method public handleLongClick()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/DormantModeTile;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 91
    :cond_0
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$ZenModeDNDSettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/tiles/DormantModeTile;->startActivityDismissingKeyguard(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 97
    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 99
    .local v1, "zen":I
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mIsCarMode:Z

    if-eqz v2, :cond_3

    .line 100
    const/4 v2, 0x3

    iput v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 115
    :goto_1
    iput-boolean v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 116
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContext:Landroid/content/Context;

    const v3, 0x7f0d029c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 117
    const v0, 0x7f02036b

    .line 118
    .local v0, "iconId":I
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseWFCQsIconForVZW:Z

    if-eqz v2, :cond_0

    .line 119
    const v0, 0x7f020386

    .line 120
    :cond_0
    invoke-static {v0}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 121
    iget-object v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    iget v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/qs/tiles/DormantModeTile;->makeContentDescription(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    .line 122
    return-void

    .line 97
    .end local v0    # "iconId":I
    .end local v1    # "zen":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    if-nez v2, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v1

    goto :goto_0

    .line 103
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v1    # "zen":I
    :cond_3
    packed-switch v1, :pswitch_data_0

    .line 110
    const/4 v2, 0x2

    iput v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_1

    .line 107
    :pswitch_0
    iput v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_1

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 33
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/DormantModeTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DormantModeTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mSettingCM:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 133
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    if-nez v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 136
    :cond_0
    if-eqz p1, :cond_1

    .line 137
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->addCallback(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    goto :goto_0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->removeCallback(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    goto :goto_0
.end method

.method protected shouldAnnouncementBeDelayed()Z
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

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
    .line 145
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mSettingCM:Lcom/android/systemui/qs/SecureSetting;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mSettingCM:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecureSetting;->setUserId(I)V

    .line 148
    :cond_0
    return-void
.end method
