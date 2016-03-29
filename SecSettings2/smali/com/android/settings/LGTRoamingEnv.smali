.class public Lcom/android/settings/LGTRoamingEnv;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LGTRoamingEnv.java"


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private curSimVer:Ljava/lang/String;

.field private mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mButtonCountryUpdate:Landroid/preference/Preference;

.field private mButtonReset:Landroid/preference/Preference;

.field private mDisabledMobileDataClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mIsRoamingNetworkInit:Z

.field private mIsWaitRadioPowerOff:Z

.field private mLteRoamingSettings:Landroid/preference/SwitchPreference;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRoamNetworkInitListener:Landroid/content/DialogInterface$OnClickListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUseLTERoamingObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->curSimVer:Ljava/lang/String;

    .line 95
    iput-boolean v1, p0, Lcom/android/settings/LGTRoamingEnv;->mIsRoamingNetworkInit:Z

    .line 96
    iput-boolean v1, p0, Lcom/android/settings/LGTRoamingEnv;->mIsWaitRadioPowerOff:Z

    .line 98
    new-instance v0, Lcom/android/settings/LGTRoamingEnv$1;

    invoke-direct {v0, p0}, Lcom/android/settings/LGTRoamingEnv$1;-><init>(Lcom/android/settings/LGTRoamingEnv;)V

    iput-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 147
    new-instance v0, Lcom/android/settings/LGTRoamingEnv$2;

    invoke-direct {v0, p0}, Lcom/android/settings/LGTRoamingEnv$2;-><init>(Lcom/android/settings/LGTRoamingEnv;)V

    iput-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 166
    new-instance v0, Lcom/android/settings/LGTRoamingEnv$3;

    invoke-direct {v0, p0}, Lcom/android/settings/LGTRoamingEnv$3;-><init>(Lcom/android/settings/LGTRoamingEnv;)V

    iput-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->mHandler:Landroid/os/Handler;

    .line 210
    new-instance v0, Lcom/android/settings/LGTRoamingEnv$4;

    invoke-direct {v0, p0}, Lcom/android/settings/LGTRoamingEnv$4;-><init>(Lcom/android/settings/LGTRoamingEnv;)V

    iput-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 230
    new-instance v0, Lcom/android/settings/LGTRoamingEnv$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/LGTRoamingEnv$5;-><init>(Lcom/android/settings/LGTRoamingEnv;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->mUseLTERoamingObserver:Landroid/database/ContentObserver;

    .line 242
    new-instance v0, Lcom/android/settings/LGTRoamingEnv$6;

    invoke-direct {v0, p0}, Lcom/android/settings/LGTRoamingEnv$6;-><init>(Lcom/android/settings/LGTRoamingEnv;)V

    iput-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->mRoamNetworkInitListener:Landroid/content/DialogInterface$OnClickListener;

    .line 263
    new-instance v0, Lcom/android/settings/LGTRoamingEnv$7;

    invoke-direct {v0, p0}, Lcom/android/settings/LGTRoamingEnv$7;-><init>(Lcom/android/settings/LGTRoamingEnv;)V

    iput-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->mDisabledMobileDataClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/LGTRoamingEnv;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LGTRoamingEnv;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/LGTRoamingEnv;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LGTRoamingEnv;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/LGTRoamingEnv;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/LGTRoamingEnv;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/settings/LGTRoamingEnv;->toggleLteRoaming(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/LGTRoamingEnv;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/LGTRoamingEnv;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/settings/LGTRoamingEnv;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/LGTRoamingEnv;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LGTRoamingEnv;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings/LGTRoamingEnv;->getSIMVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/LGTRoamingEnv;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LGTRoamingEnv;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/settings/LGTRoamingEnv;->mIsWaitRadioPowerOff:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/LGTRoamingEnv;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/LGTRoamingEnv;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/settings/LGTRoamingEnv;->mIsWaitRadioPowerOff:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/LGTRoamingEnv;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LGTRoamingEnv;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/settings/LGTRoamingEnv;->mIsRoamingNetworkInit:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/LGTRoamingEnv;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/LGTRoamingEnv;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/settings/LGTRoamingEnv;->mIsRoamingNetworkInit:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/LGTRoamingEnv;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/LGTRoamingEnv;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings/LGTRoamingEnv;->setAuto()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/LGTRoamingEnv;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LGTRoamingEnv;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->curSimVer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/LGTRoamingEnv;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LGTRoamingEnv;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->mButtonCountryUpdate:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/LGTRoamingEnv;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LGTRoamingEnv;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->mLteRoamingSettings:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method private getLteRoamingState()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 364
    sget-object v2, Lcom/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 365
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "lte_roaming_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getRejectValue()I
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 487
    const-string v4, "ril.skt.network_regist"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 488
    .local v1, "ril":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "Idle"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_1

    .line 489
    :cond_0
    const-string v4, "LGTRoamingEnv"

    const-string v5, "ril is empty or error"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const/4 v2, 0x0

    .line 496
    :goto_0
    return v2

    .line 492
    :cond_1
    const-string v4, "LGTRoamingEnv"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RTSValues="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const-string v4, ";"

    const/4 v5, 0x4

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 494
    .local v3, "rtsValues":[Ljava/lang/String;
    aget-object v4, v3, v7

    const-string v5, "Idle"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, "idleValue":[Ljava/lang/String;
    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 496
    .local v2, "rtsIdleValue":I
    goto :goto_0
.end method

.method private getSIMVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 479
    const-string v2, "gsm.sim.version"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 480
    .local v1, "simVer":Ljava/lang/String;
    const-string v0, ""

    .line 481
    .local v0, "CountryInfoVer":Ljava/lang/String;
    const-string v2, "LGTRoamingEnv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SimVer = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    return-object v1
.end method

.method private resetSettings()V
    .locals 3

    .prologue
    .line 396
    const-string v0, "LGTRoamingEnv"

    const-string v1, "resetSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e1524

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e155a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    iget-object v2, p0, Lcom/android/settings/LGTRoamingEnv;->mRoamNetworkInitListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 404
    return-void
.end method

.method private setAuto()V
    .locals 5

    .prologue
    .line 500
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 501
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.LGTNetworkAutoRebootProgressDialog"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    const-string v3, "DialogType"

    const-string v4, "RESET"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 505
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/settings/LGTRoamingEnv;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 511
    :goto_0
    return-void

    .line 506
    :catch_0
    move-exception v0

    .line 507
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 508
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v1

    .line 509
    .local v1, "ex":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method private toggleLteRoaming(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 370
    const-string v1, "LGTRoamingEnv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toggleLteRoaming: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v1, p0, Lcom/android/settings/LGTRoamingEnv;->mLteRoamingSettings:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 372
    new-instance v0, Landroid/content/Intent;

    const-string v1, "kr.co.uplus.SET_LTE_ROAMING_IMSI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 373
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "lte_roaming"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 374
    invoke-virtual {p0}, Lcom/android/settings/LGTRoamingEnv;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 375
    return-void
.end method

.method private updateCountryInfo()V
    .locals 12

    .prologue
    const v3, 0x1040013

    const/4 v4, 0x0

    const/4 v11, 0x0

    .line 411
    sget-object v0, Lcom/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    .line 412
    .local v8, "cm":Landroid/net/ConnectivityManager;
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v10

    .line 415
    .local v10, "phone":Lcom/android/internal/telephony/ITelephony;
    :try_start_0
    invoke-interface {v10}, Lcom/android/internal/telephony/ITelephony;->getPhoneServiceState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    invoke-direct {p0}, Lcom/android/settings/LGTRoamingEnv;->getRejectValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 417
    sget-object v0, Lcom/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    const v1, 0x7f0e1530

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 476
    :goto_0
    return-void

    .line 421
    :cond_0
    sget-object v0, Lcom/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    const v1, 0x7f0e1531

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 427
    :catch_0
    move-exception v9

    .line 428
    .local v9, "e":Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    .line 431
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_1
    sget-object v0, Lcom/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportKorRoamingConcept(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 432
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e150a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 437
    iget-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->mButtonCountryUpdate:Landroid/preference/Preference;

    invoke-virtual {v0, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 438
    :cond_2
    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 439
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e155c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e155b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/LGTRoamingEnv;->mDisabledMobileDataClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    iget-object v2, p0, Lcom/android/settings/LGTRoamingEnv;->mDisabledMobileDataClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 446
    :cond_3
    sget-object v0, Lcom/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "kr.co.uplus.UPDATE_COUNTRY_INFO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.sec.MDM_ROAMING"

    iget-object v3, p0, Lcom/android/settings/LGTRoamingEnv;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, -0x1

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 455
    new-instance v0, Landroid/app/ProgressDialog;

    sget-object v1, Lcom/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 456
    iget-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 457
    iget-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v11}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 458
    iget-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->mProgressDialog:Landroid/app/ProgressDialog;

    sget-object v1, Lcom/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    const v2, 0x7f0e1503

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 459
    iget-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/settings/LGTRoamingEnv$9;

    invoke-direct {v1, p0}, Lcom/android/settings/LGTRoamingEnv$9;-><init>(Lcom/android/settings/LGTRoamingEnv;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 466
    iget-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/settings/LGTRoamingEnv$10;

    invoke-direct {v1, p0}, Lcom/android/settings/LGTRoamingEnv$10;-><init>(Lcom/android/settings/LGTRoamingEnv;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 471
    iget-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 472
    const-string v0, "gsm.sim.version"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->curSimVer:Ljava/lang/String;

    .line 473
    iget-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 474
    const-string v0, "LGTRoamingEnv"

    const-string v1, "send ADD_NATION_POPUP_TIME_EXPIRED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 380
    const/16 v0, 0x1f8

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 288
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 289
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/LGTRoamingEnv;->finish()V

    .line 292
    :cond_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/LGTRoamingEnv;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 293
    invoke-virtual {p0}, Lcom/android/settings/LGTRoamingEnv;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    .line 294
    const v0, 0x7f080066

    invoke-virtual {p0, v0}, Lcom/android/settings/LGTRoamingEnv;->addPreferencesFromResource(I)V

    .line 296
    const-string v0, "button_country_update"

    invoke-virtual {p0, v0}, Lcom/android/settings/LGTRoamingEnv;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->mButtonCountryUpdate:Landroid/preference/Preference;

    .line 297
    const-string v0, "button_reset_setting"

    invoke-virtual {p0, v0}, Lcom/android/settings/LGTRoamingEnv;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->mButtonReset:Landroid/preference/Preference;

    .line 299
    const-string v0, "button_lte_roaming"

    invoke-virtual {p0, v0}, Lcom/android/settings/LGTRoamingEnv;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->mLteRoamingSettings:Landroid/preference/SwitchPreference;

    .line 300
    iget-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->mLteRoamingSettings:Landroid/preference/SwitchPreference;

    new-instance v1, Lcom/android/settings/LGTRoamingEnv$8;

    invoke-direct {v1, p0}, Lcom/android/settings/LGTRoamingEnv$8;-><init>(Lcom/android/settings/LGTRoamingEnv;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 309
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 346
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 348
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/LGTRoamingEnv;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 349
    sget-object v1, Lcom/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/LGTRoamingEnv;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 351
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LGTRoamingEnv;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/LGTRoamingEnv;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 352
    const-string v1, "LGTRoamingEnv"

    const-string v2, "onPause: unregisterReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    sget-object v1, Lcom/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/LGTRoamingEnv;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :cond_1
    :goto_0
    return-void

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 385
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "key":Ljava/lang/String;
    sget-boolean v1, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "LGTRoamingEnv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preference: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_0
    iget-object v1, p0, Lcom/android/settings/LGTRoamingEnv;->mButtonCountryUpdate:Landroid/preference/Preference;

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 388
    invoke-direct {p0}, Lcom/android/settings/LGTRoamingEnv;->updateCountryInfo()V

    .line 392
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 389
    :cond_2
    iget-object v1, p0, Lcom/android/settings/LGTRoamingEnv;->mButtonReset:Landroid/preference/Preference;

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 390
    invoke-direct {p0}, Lcom/android/settings/LGTRoamingEnv;->resetSettings()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 313
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 315
    sget-object v1, Lcom/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/LGTRoamingEnv;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 317
    iget-object v1, p0, Lcom/android/settings/LGTRoamingEnv;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings/LGTRoamingEnv;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x41

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 320
    sget-object v1, Lcom/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 321
    iget-object v1, p0, Lcom/android/settings/LGTRoamingEnv;->mButtonCountryUpdate:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 329
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/LGTRoamingEnv;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lte_roaming_mode_on"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/LGTRoamingEnv;->mUseLTERoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 331
    sget-object v1, Lcom/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportKorRoamingConcept(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isExceptionalUSIM()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 332
    :cond_0
    iget-object v1, p0, Lcom/android/settings/LGTRoamingEnv;->mLteRoamingSettings:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 333
    iget-object v1, p0, Lcom/android/settings/LGTRoamingEnv;->mLteRoamingSettings:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 337
    :goto_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 338
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.lgt.bip.SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 339
    const-string v1, "com.sec.android.lgt.bip.UNSUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 340
    const-string v1, "com.sec.android.lgt.bip.FAIL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 341
    sget-object v1, Lcom/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/LGTRoamingEnv;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 342
    return-void

    .line 323
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1
    sget-object v1, Lcom/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportKorRoamingConcept(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 324
    iget-object v1, p0, Lcom/android/settings/LGTRoamingEnv;->mButtonCountryUpdate:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 326
    :cond_2
    iget-object v1, p0, Lcom/android/settings/LGTRoamingEnv;->mButtonCountryUpdate:Landroid/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 335
    :cond_3
    iget-object v1, p0, Lcom/android/settings/LGTRoamingEnv;->mLteRoamingSettings:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/LGTRoamingEnv;->getLteRoamingState()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1
.end method
