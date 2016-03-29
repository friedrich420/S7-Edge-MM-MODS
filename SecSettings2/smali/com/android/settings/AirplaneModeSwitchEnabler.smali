.class public Lcom/android/settings/AirplaneModeSwitchEnabler;
.super Ljava/lang/Object;
.source "AirplaneModeSwitchEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field private static final selectionArgs:[Ljava/lang/String;


# instance fields
.field private isAirplaneModeAllowed:I

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mCheck:Landroid/widget/CheckBox;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsOnDisplay:Z

.field private mOnToggleListener:Lcom/android/settings/ToggleImageView$OnToggleListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mToggleImageView:Lcom/android/settings/ToggleImageView;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "false"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/AirplaneModeSwitchEnabler;->selectionArgs:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchBar"    # Lcom/android/settings/widget/SwitchBar;

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mIsOnDisplay:Z

    .line 88
    new-instance v0, Lcom/android/settings/AirplaneModeSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/AirplaneModeSwitchEnabler$1;-><init>(Lcom/android/settings/AirplaneModeSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mHandler:Landroid/os/Handler;

    .line 101
    new-instance v0, Lcom/android/settings/AirplaneModeSwitchEnabler$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AirplaneModeSwitchEnabler$2;-><init>(Lcom/android/settings/AirplaneModeSwitchEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 108
    new-instance v0, Lcom/android/settings/AirplaneModeSwitchEnabler$3;

    invoke-direct {v0, p0}, Lcom/android/settings/AirplaneModeSwitchEnabler$3;-><init>(Lcom/android/settings/AirplaneModeSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mOnToggleListener:Lcom/android/settings/ToggleImageView$OnToggleListener;

    .line 123
    iput-object p1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    .line 124
    iput-object p2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 125
    invoke-virtual {p2}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 126
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 127
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->setupSwitchBar()V

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AirplaneModeSwitchEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/AirplaneModeSwitchEnabler;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->onAirplaneModeChanged()V

    return-void
.end method

.method private onAirplaneModeChanged()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 278
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mIsOnDisplay:Z

    if-nez v5, :cond_1

    .line 279
    const-string v3, "AirplaneModeSwitchEnabler"

    const-string v4, "onAirplaneModeChanged : Cannot update checked status because current Fragment is not a Airplane mode settings"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    .line 283
    .local v2, "serviceState":Landroid/telephony/ServiceState;
    const/4 v0, 0x0

    .line 285
    .local v0, "airplaneModeEnabled":Z
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v7, "isAirplaneModeAllowed"

    sget-object v8, Lcom/android/settings/AirplaneModeSwitchEnabler;->selectionArgs:[Ljava/lang/String;

    invoke-static {v5, v6, v7, v8}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    .line 288
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 289
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 291
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v5, :cond_2

    .line 293
    iget v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    if-eq v5, v9, :cond_4

    iget v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    if-eq v5, v3, :cond_4

    .line 295
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 296
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 305
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    if-eqz v4, :cond_3

    .line 306
    iget-object v4, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 307
    iget-object v4, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 310
    :cond_3
    iget-object v4, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    if-eqz v4, :cond_0

    .line 311
    iget-object v4, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    invoke-virtual {v4, v0}, Lcom/android/settings/ToggleImageView;->updateToggleState(Z)V

    .line 312
    iget-object v4, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    invoke-virtual {v4, v3}, Lcom/android/settings/ToggleImageView;->setEnabled(Z)V

    goto :goto_0

    .line 298
    :cond_4
    iget-object v4, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 299
    iget-object v4, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_1

    .line 315
    :cond_5
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_8

    move v0, v3

    .line 316
    :goto_2
    const-string v5, "AirplaneModeSwitchEnabler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onAirplaneModeChanged : serviceState.getState() return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const-string v5, "AirplaneModeSwitchEnabler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onAirplaneModeChanged : airplaneModeEnabled "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_9

    move v1, v3

    .line 320
    .local v1, "expectAirplaneModeOn":Z
    :goto_3
    if-ne v0, v1, :cond_0

    .line 321
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v5, :cond_6

    .line 323
    iget v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    if-eq v5, v9, :cond_a

    iget v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    if-eq v5, v3, :cond_a

    .line 325
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 326
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 334
    :cond_6
    :goto_4
    iget-object v4, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    if-eqz v4, :cond_7

    .line 335
    iget-object v4, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 336
    iget-object v4, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 339
    :cond_7
    iget-object v4, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    if-eqz v4, :cond_0

    .line 340
    iget-object v4, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    invoke-virtual {v4, v0}, Lcom/android/settings/ToggleImageView;->updateToggleState(Z)V

    .line 341
    iget-object v4, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    invoke-virtual {v4, v3}, Lcom/android/settings/ToggleImageView;->setEnabled(Z)V

    goto/16 :goto_0

    .end local v1    # "expectAirplaneModeOn":Z
    :cond_8
    move v0, v4

    .line 315
    goto :goto_2

    :cond_9
    move v1, v4

    .line 318
    goto :goto_3

    .line 328
    .restart local v1    # "expectAirplaneModeOn":Z
    :cond_a
    iget-object v4, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 329
    iget-object v4, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_4
.end method

.method private setAirplaneModeOn(Z)V
    .locals 5
    .param p1, "enabling"    # Z

    .prologue
    const/4 v1, 0x0

    .line 231
    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 233
    .local v0, "cm":Landroid/net/ConnectivityManager;
    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_0

    .line 234
    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 237
    :cond_0
    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    if-eqz v2, :cond_1

    .line 238
    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 241
    :cond_1
    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    if-eqz v2, :cond_2

    .line 242
    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    invoke-virtual {v2, v1}, Lcom/android/settings/ToggleImageView;->setEnabled(Z)V

    .line 246
    :cond_2
    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 250
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_4

    .line 251
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 254
    :cond_4
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    if-eqz v1, :cond_5

    .line 255
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 258
    :cond_5
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    if-eqz v1, :cond_6

    .line 259
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    invoke-virtual {v1, p1}, Lcom/android/settings/ToggleImageView;->updateToggleState(Z)V

    .line 262
    :cond_6
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    .line 264
    if-eqz p1, :cond_7

    .line 265
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v2, "com.android.settings"

    const-string v3, "AIRP"

    const/16 v4, 0x3e8

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 267
    :cond_7
    return-void
.end method


# virtual methods
.method public changeAirplaneMode(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 635
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const/16 v1, 0xb1

    invoke-static {v0, v1, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 636
    invoke-direct {p0, p1}, Lcom/android/settings/AirplaneModeSwitchEnabler;->setAirplaneModeOn(Z)V

    .line 638
    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    .line 449
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-ne v1, p2, :cond_1

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 456
    move v0, p2

    .line 457
    .local v0, "value":Z
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 458
    invoke-virtual {p0, v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->changeAirplaneMode(Z)V

    goto :goto_0

    .line 461
    :cond_2
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 509
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->changeAirplaneMode(Z)V

    goto :goto_0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 7
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 518
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-ne v1, p2, :cond_1

    .line 596
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 523
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v2, "SamsungApps test mode ON"

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 524
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v5}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    .line 529
    :cond_2
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v3, "isAirplaneModeAllowed"

    sget-object v4, Lcom/android/settings/AirplaneModeSwitchEnabler;->selectionArgs:[Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    .line 532
    iget v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    if-eq v1, v6, :cond_3

    .line 534
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_0

    .line 535
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v5}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 536
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v5}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    .line 542
    :cond_3
    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 546
    move v0, p2

    .line 547
    .local v0, "value":Z
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 548
    invoke-virtual {p0, v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->changeAirplaneMode(Z)V

    goto :goto_0

    .line 551
    :cond_4
    if-nez v0, :cond_5

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 591
    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->changeAirplaneMode(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 204
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mIsOnDisplay:Z

    .line 205
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    if-eqz v1, :cond_0

    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_1

    .line 214
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 217
    :cond_1
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    if-eqz v1, :cond_2

    .line 218
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 221
    :cond_2
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    if-eqz v1, :cond_3

    .line 222
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    invoke-virtual {v1, v3}, Lcom/android/settings/ToggleImageView;->setOnToggleListener(Lcom/android/settings/ToggleImageView$OnToggleListener;)V

    .line 225
    :cond_3
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 226
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 228
    :cond_4
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "AirplaneModeSwitchEnabler"

    const-string v2, "Receiver not registered"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 160
    iput-boolean v4, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mIsOnDisplay:Z

    .line 162
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v2, "isAirplaneModeAllowed"

    sget-object v3, Lcom/android/settings/AirplaneModeSwitchEnabler;->selectionArgs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    .line 168
    iget v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    if-eq v0, v4, :cond_5

    .line 170
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v5}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 171
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v5}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 177
    :goto_0
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 182
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 183
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    invoke-virtual {v0, v4}, Lcom/android/settings/ToggleImageView;->setEnabled(Z)V

    .line 188
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/ToggleImageView;->updateToggleState(Z)V

    .line 189
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mOnToggleListener:Lcom/android/settings/ToggleImageView$OnToggleListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/ToggleImageView;->setOnToggleListener(Lcom/android/settings/ToggleImageView$OnToggleListener;)V

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    if-eqz v0, :cond_3

    .line 193
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 196
    :cond_3
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 197
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 201
    :cond_4
    return-void

    .line 173
    :cond_5
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 174
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0
.end method

.method public setupSwitchBar()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 153
    return-void
.end method
