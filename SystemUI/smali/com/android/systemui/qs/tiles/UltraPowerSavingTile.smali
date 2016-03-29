.class public Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;
.super Lcom/android/systemui/qs/QSTile;
.source "UltraPowerSavingTile.java"


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
.field private static final DB_UPSM_SWITCH:Ljava/lang/String; = "ultra_powersaving_mode"

.field private static final OFF:I = 0x0

.field private static final ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UltraPowerSavingTile"

.field private static final UPSM_ACTIVITY:Ljava/lang/String; = "com.android.settings.Settings$UltraPowerSavingModeActivity"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mIsVoLTECall:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mSetting:Lcom/android/systemui/qs/SystemSetting;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 4
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mIsVoLTECall:Z

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 215
    new-instance v0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile$2;-><init>(Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 66
    new-instance v0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "ultra_powersaving_mode"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile$1;-><init>(Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mIsVoLTECall:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->refreshState()V

    return-void
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private isBlockedByEdmPolicy()Z
    .locals 4

    .prologue
    .line 167
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    const/4 v0, 0x1

    .line 181
    .local v0, "ret":Z
    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "UltraPowerSavingTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBlockedByEdmPolicy : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    return v0

    .line 169
    .end local v0    # "ret":Z
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 170
    const/4 v0, 0x1

    .restart local v0    # "ret":Z
    goto :goto_0

    .line 172
    .end local v0    # "ret":Z
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->isSharedDeviceEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 173
    const/4 v0, 0x1

    .line 174
    .restart local v0    # "ret":Z
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040b37

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 179
    .end local v0    # "ret":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method private isSharedDeviceEnabled()Z
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const/4 v0, 0x1

    .line 162
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-object v1, v0, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->makeContentDescription(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActionTypeOnCover()I
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x1

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 207
    const/16 v0, 0x19e

    return v0
.end method

.method public handleClick()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 108
    const-string v5, "UltraPowerSavingTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleClick : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->isBlockedByEdmPolicy()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v2, v7, :cond_2

    move v1, v3

    .line 114
    .local v1, "newState":Z
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->getMetricsCategory()I

    move-result v5

    invoke-static {v2, v5, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 116
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v2, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSButtonOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v2, v7, :cond_3

    .line 120
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v2}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 121
    const-string v2, "UltraPowerSavingTile"

    const-string v4, "Send intent for UPS and waiting "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v2, "enabled"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 125
    const-string v2, "flag"

    const/16 v3, 0x200

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 128
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .end local v0    # "mIntent":Landroid/content/Intent;
    .end local v1    # "newState":Z
    :cond_2
    move v1, v4

    .line 113
    goto :goto_1

    .line 130
    .restart local v1    # "newState":Z
    :cond_3
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->refreshState(Ljava/lang/Object;)V

    .line 131
    const-string v2, "UltraPowerSavingTile"

    const-string v3, "set diable UPS and waiting "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v2, v4}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    goto :goto_0
.end method

.method public handleLongClick()V
    .locals 3

    .prologue
    .line 138
    const-string v1, "UltraPowerSavingTile"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleLongClick : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->isBlockedByEdmPolicy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mIsVoLTECall:Z

    if-eqz v0, :cond_1

    .line 143
    const-string v0, "UltraPowerSavingTile"

    const-string v1, "handleLongClick(): VOLTE_CALL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    :cond_1
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$UltraPowerSavingModeActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->startActivityDismissingKeyguard(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 5
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 187
    instance-of v3, p2, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 188
    .local v1, "value":I
    :goto_0
    const v0, 0x7f0d044d

    .line 190
    .local v0, "contentDescriptionId":I
    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mIsVoLTECall:Z

    if-eqz v3, :cond_2

    .line 191
    const-string v3, "UltraPowerSavingTile"

    const-string v4, "handleUpdateState(): VOLTE_CALL"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v3, 0x3

    iput v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 196
    :goto_1
    const v3, 0x7f020385

    invoke-static {v3}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 197
    iput-boolean v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 198
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseLabelUPSAsPSForVZW:Z

    if-eqz v2, :cond_3

    .line 199
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mContext:Landroid/content/Context;

    const v3, 0x7f0d02c6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 202
    :goto_2
    iget-object v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    iget v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->makeContentDescription(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    .line 203
    return-void

    .line 187
    .end local v0    # "contentDescriptionId":I
    .end local v1    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v3}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    .line 194
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "contentDescriptionId":I
    .restart local v1    # "value":I
    :cond_2
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_1

    .line 201
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mContext:Landroid/content/Context;

    const v3, 0x7f0d02bf

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    goto :goto_2
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 49
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 3
    .param p1, "listening"    # Z

    .prologue
    .line 92
    if-eqz p1, :cond_1

    .line 93
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 95
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x800

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 102
    :cond_0
    :goto_0
    const-string v0, "UltraPowerSavingTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setListening =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 104
    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method protected shouldAnnouncementBeDelayed()Z
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

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
    .line 212
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->setUserId(I)V

    .line 213
    return-void
.end method
