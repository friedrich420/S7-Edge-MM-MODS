.class public Lcom/android/systemui/qs/tiles/ApnTile;
.super Lcom/android/systemui/qs/QSTile;
.source "ApnTile.java"


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
.field private static final CTLTE:I = 0x2

.field private static final CTNET:I = 0x1

.field private static final CTWAP:I = 0x0

.field private static final DELAYREADY:I = 0x2

.field private static final ETC:I = 0x3

.field private static final NOTREADY:I = 0x1

.field private static final READY:I = 0x0

.field private static final SETUP_WIZARD_FINISHED:Ljava/lang/String; = "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

.field private static final SLOT1:I = 0x0

.field private static final SLOT2:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final UNKNOWN:I = -0x1


# instance fields
.field private currentApn:I

.field private final mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mApnName:Ljava/lang/String;

.field private final mApnObserver:Landroid/database/ContentObserver;

.field private mApnSubName:Ljava/lang/String;

.field private mClickedTime:J

.field private mIsAirPlaneMode:Z

.field private mMSimPSListner:[Landroid/telephony/PhoneStateListener;

.field private mMobileData:Z

.field private mPhoneCnt:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTM:Landroid/telephony/TelephonyManager;

.field private mWfcEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/android/systemui/qs/tiles/ApnTile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/ApnTile;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 6
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 122
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 79
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mTM:Landroid/telephony/TelephonyManager;

    .line 81
    iput v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mPhoneCnt:I

    .line 83
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mMobileData:Z

    .line 84
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mIsAirPlaneMode:Z

    .line 86
    iput v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->currentApn:I

    .line 90
    new-instance v2, Lcom/android/systemui/qs/tiles/ApnTile$1;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/qs/tiles/ApnTile$1;-><init>(Lcom/android/systemui/qs/tiles/ApnTile;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mApnObserver:Landroid/database/ContentObserver;

    .line 97
    new-instance v2, Lcom/android/systemui/qs/tiles/ApnTile$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/ApnTile$2;-><init>(Lcom/android/systemui/qs/tiles/ApnTile;)V

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 124
    new-instance v2, Lcom/android/systemui/qs/tiles/ApnTile$3;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v5, "airplane_mode_on"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/systemui/qs/tiles/ApnTile$3;-><init>(Lcom/android/systemui/qs/tiles/ApnTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 133
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mIsAirPlaneMode:Z

    .line 134
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->getMobileDataEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mMobileData:Z

    .line 135
    return-void

    :cond_0
    move v0, v1

    .line 133
    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/systemui/qs/tiles/ApnTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/ApnTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/ApnTile;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ApnTile;->refreshState()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/ApnTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/ApnTile;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ApnTile;->refreshState()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/ApnTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/ApnTile;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ApnTile;->refreshState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/ApnTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/ApnTile;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ApnTile;->refreshState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/ApnTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/ApnTile;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ApnTile;->unregisterPhoneStateListener()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/ApnTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/ApnTile;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/ApnTile;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/ApnTile;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/systemui/qs/tiles/ApnTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/ApnTile;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mIsAirPlaneMode:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/ApnTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/ApnTile;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ApnTile;->refreshState()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/ApnTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/ApnTile;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ApnTile;->refreshState()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/ApnTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/ApnTile;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ApnTile;->refreshState()V

    return-void
.end method

.method private getApnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    return-object v0
.end method

.method private getApnTileState()I
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 263
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ApnTile;->getApnName()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "apnName":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mIsAirPlaneMode:Z

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 265
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 266
    const-string v0, "CTWAP"

    .line 268
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/ApnTile;->makeSettingValues(Ljava/lang/String;)V

    .line 284
    :cond_2
    :goto_0
    return v1

    .line 272
    :cond_3
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->getReadySimCount()I

    move-result v2

    if-nez v2, :cond_5

    .line 273
    const-string v2, "gsm.operator.isroaming"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 274
    const-string v0, "CTNET"

    .line 277
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/ApnTile;->makeSettingValues(Ljava/lang/String;)V

    goto :goto_0

    .line 276
    :cond_4
    const-string v0, "CTWAP"

    goto :goto_1

    .line 281
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/ApnTile;->makeSettingValues(Ljava/lang/String;)V

    .line 283
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->getMobileDataEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mMobileData:Z

    .line 284
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mMobileData:Z

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "slotId"    # I

    .prologue
    .line 328
    new-instance v0, Lcom/android/systemui/qs/tiles/ApnTile$4;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/ApnTile$4;-><init>(Lcom/android/systemui/qs/tiles/ApnTile;I)V

    .line 348
    .local v0, "phoneStateListener":Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private makeSettingValues(Ljava/lang/String;)V
    .locals 6
    .param p1, "apnName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 235
    sget-object v0, Lcom/android/systemui/qs/tiles/ApnTile;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "makeSettingValues apnName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mApnName:Ljava/lang/String;

    .line 237
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const/4 v0, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 248
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->currentApn:I

    .line 249
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mApnSubName:Ljava/lang/String;

    .line 252
    :goto_1
    return-void

    .line 237
    :sswitch_0
    const-string v5, "CTWAP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v5, "CTNET"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string v5, "CTLTE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v3

    goto :goto_0

    .line 239
    :pswitch_0
    iput v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->currentApn:I

    goto :goto_1

    .line 242
    :pswitch_1
    iput v2, p0, Lcom/android/systemui/qs/tiles/ApnTile;->currentApn:I

    goto :goto_1

    .line 245
    :pswitch_2
    iput v3, p0, Lcom/android/systemui/qs/tiles/ApnTile;->currentApn:I

    goto :goto_1

    .line 237
    nop

    :sswitch_data_0
    .sparse-switch
        0x3d77dac -> :sswitch_2
        0x3d7836c -> :sswitch_1
        0x3d7a4b5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setApnName()V
    .locals 0

    .prologue
    .line 260
    return-void
.end method

.method private showNoSimDialog(III)V
    .locals 3
    .param p1, "title"    # I
    .param p2, "msg"    # I
    .param p3, "button1"    # I

    .prologue
    .line 352
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 353
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 354
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 355
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 356
    new-instance v1, Lcom/android/systemui/qs/tiles/ApnTile$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/ApnTile$5;-><init>(Lcom/android/systemui/qs/tiles/ApnTile;)V

    invoke-virtual {v0, p3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 363
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 364
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 365
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/systemui/qs/tiles/ApnTile$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/ApnTile$6;-><init>(Lcom/android/systemui/qs/tiles/ApnTile;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 371
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/ApnTile;->setDialogWindowType(Landroid/app/AlertDialog;)V

    .line 372
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 374
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_1
    return-void
.end method

.method private unregisterPhoneStateListener()V
    .locals 4

    .prologue
    .line 320
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mPhoneCnt:I

    if-ge v0, v1, :cond_1

    .line 321
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mMSimPSListner:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mTM:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mMSimPSListner:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 320
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    :cond_1
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 231
    const/16 v0, 0x196

    return v0
.end method

.method protected handleClick()V
    .locals 10

    .prologue
    .line 168
    sget-object v6, Lcom/android/systemui/qs/tiles/ApnTile;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleClick : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v5, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v5, v5, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/tiles/ApnTile;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 189
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 172
    .local v2, "currentTime":J
    iget-wide v6, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mClickedTime:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x1f4

    cmp-long v5, v6, v8

    if-gez v5, :cond_1

    .line 173
    sget-object v5, Lcom/android/systemui/qs/tiles/ApnTile;->TAG:Ljava/lang/String;

    const-string v6, "handleClick() ignored. within 500ms"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 176
    :cond_1
    iput-wide v2, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mClickedTime:J

    .line 177
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ApnTile;->getMetricsCategory()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mApnName:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 179
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isSimReady()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 180
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ApnTile;->setApnName()V

    goto :goto_0

    .line 184
    :cond_2
    const v4, 0x7f0d03f9

    .line 185
    .local v4, "titleId":I
    const v1, 0x7f0d03fa

    .line 186
    .local v1, "msgId":I
    const v0, 0x104000a

    .line 187
    .local v0, "button1Id":I
    invoke-direct {p0, v4, v1, v0}, Lcom/android/systemui/qs/tiles/ApnTile;->showNoSimDialog(III)V

    goto :goto_0
.end method

.method protected handleLongClick()V
    .locals 3

    .prologue
    .line 193
    sget-object v1, Lcom/android/systemui/qs/tiles/ApnTile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleLongClick()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/ApnTile;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 196
    :cond_0
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$ApnSettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/tiles/ApnTile;->startActivityDismissingKeyguard(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 201
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 202
    .local v0, "value":I
    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 203
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 204
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->secondaryLabel:Ljava/lang/String;

    .line 206
    iget v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->currentApn:I

    packed-switch v1, :pswitch_data_0

    .line 221
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mApnSubName:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 222
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mApnSubName:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->secondaryLabel:Ljava/lang/String;

    .line 223
    const v1, 0x7f02062f

    invoke-static {v1}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 226
    :goto_1
    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    iget v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/tiles/ApnTile;->makeContentDescription(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    .line 227
    return-void

    .line 201
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ApnTile;->getApnTileState()I

    move-result v0

    goto :goto_0

    .line 208
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "value":I
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mApnName:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 209
    const v1, 0x7f020632

    invoke-static {v1}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    goto :goto_1

    .line 212
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mApnName:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 213
    const v1, 0x7f020630

    invoke-static {v1}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    goto :goto_1

    .line 216
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mApnName:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 217
    const v1, 0x7f02062e

    invoke-static {v1}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    goto :goto_1

    .line 206
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 55
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/ApnTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 163
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ApnTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method protected registerPhoneStateListener(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v6, 0x41

    .line 288
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mTM:Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_0

    .line 289
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mTM:Landroid/telephony/TelephonyManager;

    .line 291
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mPhoneCnt:I

    .line 292
    iget v3, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mPhoneCnt:I

    new-array v3, v3, [Landroid/telephony/PhoneStateListener;

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mMSimPSListner:[Landroid/telephony/PhoneStateListener;

    .line 293
    sget-object v3, Lcom/android/systemui/qs/tiles/ApnTile;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerPhoneStateListener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mPhoneCnt:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mPhoneCnt:I

    if-ge v0, v3, :cond_4

    .line 296
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 297
    .local v2, "subIdtemp":[I
    if-eqz v2, :cond_1

    .line 298
    const/4 v3, 0x0

    aget v1, v2, v3

    .line 299
    .local v1, "subId":I
    sget-object v3, Lcom/android/systemui/qs/tiles/ApnTile;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerPhoneStateListener subId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " slotId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    if-lez v1, :cond_2

    .line 301
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mMSimPSListner:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/qs/tiles/ApnTile;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v4

    aput-object v4, v3, v0

    .line 302
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mTM:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mMSimPSListner:[Landroid/telephony/PhoneStateListener;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 295
    .end local v1    # "subId":I
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    .restart local v1    # "subId":I
    :cond_2
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isNoSimState()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v0, :cond_3

    .line 307
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mMSimPSListner:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/qs/tiles/ApnTile;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v4

    aput-object v4, v3, v0

    .line 308
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mTM:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mMSimPSListner:[Landroid/telephony/PhoneStateListener;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_1

    .line 312
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mMSimPSListner:[Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    goto :goto_1

    .line 317
    .end local v1    # "subId":I
    .end local v2    # "subIdtemp":[I
    :cond_4
    return-void
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 159
    return-void
.end method
