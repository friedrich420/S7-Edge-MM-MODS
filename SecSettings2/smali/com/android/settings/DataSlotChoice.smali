.class public Lcom/android/settings/DataSlotChoice;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DataSlotChoice.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DataSlotChoice$RadioAdapter;,
        Lcom/android/settings/DataSlotChoice$SwitchHandler;,
        Lcom/android/settings/DataSlotChoice$DataSlotChangeObserver;,
        Lcom/android/settings/DataSlotChoice$DataEnabledObserver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mModeItem:[Ljava/lang/String;

.field private static toastAlert:Landroid/widget/Toast;


# instance fields
.field private adapter:Lcom/android/settings/DataSlotChoice$RadioAdapter;

.field private flag:[Z

.field private isAirPlaneMode:Z

.field private isReadySlot:Z

.field private isReadySwitch:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDataEnabledObserver:Lcom/android/settings/DataSlotChoice$DataEnabledObserver;

.field private mDataSlotObserver:Lcom/android/settings/DataSlotChoice$DataSlotChangeObserver;

.field private mHandler:Lcom/android/settings/DataSlotChoice$SwitchHandler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mListView:Landroid/widget/ListView;

.field private mStateMachineEvent:Z

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private slotSwitching:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 735
    new-instance v0, Lcom/android/settings/DataSlotChoice$10;

    invoke-direct {v0}, Lcom/android/settings/DataSlotChoice$10;-><init>()V

    sput-object v0, Lcom/android/settings/DataSlotChoice;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 68
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 85
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DataSlotChoice;->mIntentFilter:Landroid/content/IntentFilter;

    .line 87
    iput-boolean v1, p0, Lcom/android/settings/DataSlotChoice;->isReadySwitch:Z

    .line 88
    iput-boolean v1, p0, Lcom/android/settings/DataSlotChoice;->isReadySlot:Z

    .line 577
    new-instance v0, Lcom/android/settings/DataSlotChoice$9;

    invoke-direct {v0, p0}, Lcom/android/settings/DataSlotChoice$9;-><init>(Lcom/android/settings/DataSlotChoice;)V

    iput-object v0, p0, Lcom/android/settings/DataSlotChoice;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 693
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DataSlotChoice;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataSlotChoice;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings/DataSlotChoice;->updateUi()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/DataSlotChoice;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataSlotChoice;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/settings/DataSlotChoice;->isAirPlaneMode:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/DataSlotChoice;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataSlotChoice;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/settings/DataSlotChoice;->setSwitchChecked(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/DataSlotChoice;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataSlotChoice;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/settings/DataSlotChoice;->isAirPlaneMode:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/DataSlotChoice;)Lcom/android/settings/widget/SwitchBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataSlotChoice;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/DataSlotChoice;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/settings/DataSlotChoice;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataSlotChoice;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/settings/DataSlotChoice;->isReadySlot:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/DataSlotChoice;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataSlotChoice;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/DataSlotChoice;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataSlotChoice;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings/DataSlotChoice;->getAvailData()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/DataSlotChoice;)Lcom/android/settings/DataSlotChoice$SwitchHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataSlotChoice;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/DataSlotChoice;->mHandler:Lcom/android/settings/DataSlotChoice$SwitchHandler;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-static {p0}, Lcom/android/settings/DataSlotChoice;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/settings/DataSlotChoice;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataSlotChoice;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/settings/DataSlotChoice;->isReadySwitch:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/DataSlotChoice;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataSlotChoice;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/DataSlotChoice;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/DataSlotChoice;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataSlotChoice;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/DataSlotChoice;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private getAvailData()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 545
    const/4 v0, 0x1

    .line 546
    .local v0, "availData":Z
    iget-object v5, p0, Lcom/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 548
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v3

    .line 550
    .local v3, "getDataEnabled":Z
    const-string v5, "gsm.sim.currentcardstatus"

    const-string v6, "9"

    invoke-static {v5, v7, v6}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 552
    .local v1, "cardStatus1":Ljava/lang/String;
    const-string v5, "gsm.sim.currentcardstatus"

    const-string v6, "9"

    invoke-static {v5, v8, v6}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 555
    .local v2, "cardStatus2":Ljava/lang/String;
    const-string v5, "CDMA"

    invoke-static {v5}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 556
    iget-object v5, p0, Lcom/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    invoke-static {v5, v7}, Lcom/samsung/android/telephony/MultiSimManager;->isEnabledSim(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "3"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    invoke-static {v5, v8}, Lcom/samsung/android/telephony/MultiSimManager;->isEnabledSim(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "3"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    iget-boolean v5, p0, Lcom/android/settings/DataSlotChoice;->isAirPlaneMode:Z

    if-eqz v5, :cond_4

    .line 559
    :cond_2
    const/4 v0, 0x0

    .line 564
    :cond_3
    :goto_0
    const-string v5, "DataSlotChoice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " getAvailData , availData :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    return v0

    .line 560
    :cond_4
    if-nez v3, :cond_3

    .line 561
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCurrentCardstate(I)I
    .locals 7
    .param p1, "slot"    # I

    .prologue
    .line 145
    const/4 v2, 0x0

    .line 146
    .local v2, "currentstate1":I
    const/4 v3, 0x0

    .line 147
    .local v3, "currentstate2":I
    const-string v4, "gsm.sim.currentcardstatus"

    const/4 v5, 0x0

    const-string v6, "9"

    invoke-static {v4, v5, v6}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "cardStatus1":Ljava/lang/String;
    const-string v4, "gsm.sim.currentcardstatus"

    const/4 v5, 0x1

    const-string v6, "9"

    invoke-static {v4, v5, v6}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "cardStatus2":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 152
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 153
    if-nez p1, :cond_0

    .line 156
    .end local v2    # "currentstate1":I
    :goto_0
    return v2

    .restart local v2    # "currentstate1":I
    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private isCallStatus()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 683
    iget-object v1, p0, Lcom/android/settings/DataSlotChoice;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    .line 684
    const-string v1, "DataSlotChoice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KKK isCallStatus mTelephonyManager.getCallState() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/DataSlotChoice;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget-object v1, p0, Lcom/android/settings/DataSlotChoice;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/DataSlotChoice;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 690
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 679
    const-string v0, "DataSlotChoice"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    return-void
.end method

.method private onRoamingDisplayMobileDataOnAlert()V
    .locals 3

    .prologue
    .line 453
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 454
    .local v0, "dataRoamPopup":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0e0c83

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 455
    const v1, 0x7f0e1484

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 456
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 457
    const v1, 0x7f0e1483

    new-instance v2, Lcom/android/settings/DataSlotChoice$1;

    invoke-direct {v2, p0}, Lcom/android/settings/DataSlotChoice$1;-><init>(Lcom/android/settings/DataSlotChoice;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 464
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DataSlotChoice;->mAlertDialog:Landroid/app/AlertDialog;

    .line 465
    iget-object v1, p0, Lcom/android/settings/DataSlotChoice;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/settings/DataSlotChoice$2;

    invoke-direct {v2, p0}, Lcom/android/settings/DataSlotChoice$2;-><init>(Lcom/android/settings/DataSlotChoice;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 474
    iget-object v1, p0, Lcom/android/settings/DataSlotChoice;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 475
    return-void
.end method

.method private setSwitchChecked(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/settings/DataSlotChoice;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 570
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/DataSlotChoice;->mStateMachineEvent:Z

    .line 571
    const-string v0, "DataSlotChoice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setSwitchChecked , checked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v0, p0, Lcom/android/settings/DataSlotChoice;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 573
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/DataSlotChoice;->mStateMachineEvent:Z

    .line 575
    :cond_0
    return-void
.end method

.method private updateUi()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 325
    iget-object v8, p0, Lcom/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/settings/DataSlotChoice;->isAirPlaneMode:Z

    .line 326
    invoke-virtual {p0}, Lcom/android/settings/DataSlotChoice;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "switching.slot"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/settings/DataSlotChoice;->slotSwitching:I

    .line 328
    invoke-direct {p0}, Lcom/android/settings/DataSlotChoice;->getAvailData()Z

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/settings/DataSlotChoice;->setSwitchChecked(Z)V

    .line 329
    const-string v8, "ril.datacross.slotid"

    invoke-static {v8, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 331
    .local v0, "dataCross":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v5

    .line 332
    .local v5, "subId":I
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    .line 333
    .local v4, "simSlot":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateUi, simSlot = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isReadySwitch = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/settings/DataSlotChoice;->isReadySwitch:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " dataCross = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; subId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/DataSlotChoice;->log(Ljava/lang/String;)V

    .line 335
    iget-object v8, p0, Lcom/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    const-string v9, "enterprise_policy"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 337
    .local v3, "mEDM":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v3, :cond_2

    .line 338
    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/enterprise/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/enterprise/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v8

    if-eqz v8, :cond_1

    move v2, v6

    .line 343
    .local v2, "isEnableData":Z
    :goto_0
    const-string v8, "DataSlotChoice"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " updateUi , isEnableData:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    if-nez v2, :cond_2

    .line 345
    iget-object v8, p0, Lcom/android/settings/DataSlotChoice;->mHandler:Lcom/android/settings/DataSlotChoice$SwitchHandler;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/android/settings/DataSlotChoice$SwitchHandler;->sendEmptyMessage(I)Z

    .line 346
    invoke-virtual {p0, v7, v7}, Lcom/android/settings/DataSlotChoice;->setEnabledList(IZ)V

    .line 347
    invoke-virtual {p0, v6, v7}, Lcom/android/settings/DataSlotChoice;->setEnabledList(IZ)V

    .line 374
    .end local v2    # "isEnableData":Z
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v7

    .line 338
    goto :goto_0

    .line 352
    :cond_2
    iget-boolean v8, p0, Lcom/android/settings/DataSlotChoice;->isReadySlot:Z

    if-eqz v8, :cond_a

    iget-boolean v8, p0, Lcom/android/settings/DataSlotChoice;->isReadySwitch:Z

    if-eqz v8, :cond_a

    if-ne v0, v12, :cond_a

    .line 353
    iget-boolean v8, p0, Lcom/android/settings/DataSlotChoice;->isAirPlaneMode:Z

    if-nez v8, :cond_5

    move v1, v6

    .line 354
    .local v1, "isEnable":Z
    :goto_2
    invoke-virtual {p0, v7, v1}, Lcom/android/settings/DataSlotChoice;->setEnabledList(IZ)V

    .line 355
    invoke-virtual {p0, v6, v1}, Lcom/android/settings/DataSlotChoice;->setEnabledList(IZ)V

    .line 356
    iget-object v8, p0, Lcom/android/settings/DataSlotChoice;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8, v4, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 357
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateUi, Card status : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, v7}, Lcom/android/settings/DataSlotChoice;->getCurrentCardstate(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " status2 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, v6}, Lcom/android/settings/DataSlotChoice;->getCurrentCardstate(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/DataSlotChoice;->log(Ljava/lang/String;)V

    .line 358
    iget-object v8, p0, Lcom/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    invoke-static {v8, v7}, Lcom/samsung/android/telephony/MultiSimManager;->isEnabledSim(Landroid/content/Context;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-direct {p0, v7}, Lcom/android/settings/DataSlotChoice;->getCurrentCardstate(I)I

    move-result v8

    if-eq v8, v11, :cond_6

    :cond_3
    iget-object v8, p0, Lcom/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    invoke-static {v8, v6}, Lcom/samsung/android/telephony/MultiSimManager;->isEnabledSim(Landroid/content/Context;I)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-direct {p0, v6}, Lcom/android/settings/DataSlotChoice;->getCurrentCardstate(I)I

    move-result v8

    if-eq v8, v11, :cond_6

    .line 361
    :cond_4
    invoke-virtual {p0, v7, v7}, Lcom/android/settings/DataSlotChoice;->setEnabledList(IZ)V

    .line 362
    invoke-virtual {p0, v6, v7}, Lcom/android/settings/DataSlotChoice;->setEnabledList(IZ)V

    goto :goto_1

    .end local v1    # "isEnable":Z
    :cond_5
    move v1, v7

    .line 353
    goto :goto_2

    .line 363
    .restart local v1    # "isEnable":Z
    :cond_6
    iget-object v8, p0, Lcom/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    invoke-static {v8, v7}, Lcom/samsung/android/telephony/MultiSimManager;->isEnabledSim(Landroid/content/Context;I)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-direct {p0, v7}, Lcom/android/settings/DataSlotChoice;->getCurrentCardstate(I)I

    move-result v8

    if-eq v8, v11, :cond_8

    .line 365
    :cond_7
    invoke-virtual {p0, v7, v7}, Lcom/android/settings/DataSlotChoice;->setEnabledList(IZ)V

    goto :goto_1

    .line 366
    :cond_8
    iget-object v8, p0, Lcom/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    invoke-static {v8, v6}, Lcom/samsung/android/telephony/MultiSimManager;->isEnabledSim(Landroid/content/Context;I)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-direct {p0, v6}, Lcom/android/settings/DataSlotChoice;->getCurrentCardstate(I)I

    move-result v8

    if-eq v8, v11, :cond_0

    .line 368
    :cond_9
    invoke-virtual {p0, v6, v7}, Lcom/android/settings/DataSlotChoice;->setEnabledList(IZ)V

    goto/16 :goto_1

    .line 371
    .end local v1    # "isEnable":Z
    :cond_a
    invoke-virtual {p0, v7, v7}, Lcom/android/settings/DataSlotChoice;->setEnabledList(IZ)V

    .line 372
    invoke-virtual {p0, v6, v7}, Lcom/android/settings/DataSlotChoice;->setEnabledList(IZ)V

    goto/16 :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 321
    const/16 v0, 0x1f5

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 162
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 163
    const-string v1, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/DataSlotChoice;->finish()V

    .line 166
    :cond_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settings/DataSlotChoice;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings/DataSlotChoice;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/DataSlotChoice;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    .line 168
    new-instance v1, Lcom/android/settings/DataSlotChoice$DataSlotChangeObserver;

    invoke-direct {v1, p0}, Lcom/android/settings/DataSlotChoice$DataSlotChangeObserver;-><init>(Lcom/android/settings/DataSlotChoice;)V

    iput-object v1, p0, Lcom/android/settings/DataSlotChoice;->mDataSlotObserver:Lcom/android/settings/DataSlotChoice$DataSlotChangeObserver;

    .line 169
    new-instance v1, Lcom/android/settings/DataSlotChoice$DataEnabledObserver;

    invoke-direct {v1, p0}, Lcom/android/settings/DataSlotChoice$DataEnabledObserver;-><init>(Lcom/android/settings/DataSlotChoice;)V

    iput-object v1, p0, Lcom/android/settings/DataSlotChoice;->mDataEnabledObserver:Lcom/android/settings/DataSlotChoice$DataEnabledObserver;

    .line 170
    new-instance v1, Lcom/android/settings/DataSlotChoice$SwitchHandler;

    invoke-direct {v1, p0}, Lcom/android/settings/DataSlotChoice$SwitchHandler;-><init>(Lcom/android/settings/DataSlotChoice;)V

    iput-object v1, p0, Lcom/android/settings/DataSlotChoice;->mHandler:Lcom/android/settings/DataSlotChoice$SwitchHandler;

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/DataSlotChoice;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/android/settings/DataSlotChoice;->toastAlert:Landroid/widget/Toast;

    .line 172
    iget-object v1, p0, Lcom/android/settings/DataSlotChoice;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/android/settings/DataSlotChoice;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/android/settings/DataSlotChoice;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/android/settings/DataSlotChoice;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "ACTION_CARD_STATUS_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/android/settings/DataSlotChoice;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/android/settings/DataSlotChoice;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_FAILED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/settings/DataSlotChoice;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/settings/DataSlotChoice;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/DataSlotChoice;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 183
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 184
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 186
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 191
    const v1, 0x7f040091

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 193
    .local v9, "view":Landroid/view/View;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/android/settings/DataSlotChoice;->mModeItem:[Ljava/lang/String;

    .line 194
    sget-object v1, Lcom/android/settings/DataSlotChoice;->mModeItem:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/DataSlotChoice;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e1480

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 195
    sget-object v1, Lcom/android/settings/DataSlotChoice;->mModeItem:[Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/settings/DataSlotChoice;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e1481

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 197
    const/4 v1, 0x2

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/settings/DataSlotChoice;->flag:[Z

    .line 198
    iget-object v1, p0, Lcom/android/settings/DataSlotChoice;->flag:[Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-boolean v4, v1, v3

    .line 199
    iget-object v1, p0, Lcom/android/settings/DataSlotChoice;->flag:[Z

    const/4 v3, 0x1

    const/4 v4, 0x1

    aput-boolean v4, v1, v3

    .line 201
    const v1, 0x7f0d017c

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings/DataSlotChoice;->mListView:Landroid/widget/ListView;

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/DataSlotChoice;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 204
    .local v8, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0c00a2

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v3, 0x7f0c00b0

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v1, v3

    const v3, 0x7f0c00aa

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int v2, v1, v3

    .line 209
    .local v2, "divider_inset_size":I
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/android/settings/DataSlotChoice;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 210
    .local v0, "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    iget-object v1, p0, Lcom/android/settings/DataSlotChoice;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 212
    new-instance v1, Lcom/android/settings/DataSlotChoice$RadioAdapter;

    invoke-virtual {p0}, Lcom/android/settings/DataSlotChoice;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f040124

    sget-object v5, Lcom/android/settings/DataSlotChoice;->mModeItem:[Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings/DataSlotChoice;->flag:[Z

    invoke-direct {v1, v3, v4, v5, v10}, Lcom/android/settings/DataSlotChoice$RadioAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;[Z)V

    iput-object v1, p0, Lcom/android/settings/DataSlotChoice;->adapter:Lcom/android/settings/DataSlotChoice$RadioAdapter;

    .line 214
    iget-object v1, p0, Lcom/android/settings/DataSlotChoice;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/DataSlotChoice;->adapter:Lcom/android/settings/DataSlotChoice$RadioAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 215
    iget-object v1, p0, Lcom/android/settings/DataSlotChoice;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 216
    iget-object v1, p0, Lcom/android/settings/DataSlotChoice;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 218
    iget-object v1, p0, Lcom/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v7

    .line 220
    .local v7, "phoneId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate, phoneId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", isReadySwitch = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/settings/DataSlotChoice;->isReadySwitch:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/DataSlotChoice;->log(Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/android/settings/DataSlotChoice;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v1, v7, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/DataSlotChoice;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/settings/SettingsActivity;

    .line 225
    .local v6, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v6}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DataSlotChoice;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 226
    iget-object v1, p0, Lcom/android/settings/DataSlotChoice;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 227
    return-object v9
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v8, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 233
    const-string v5, "DataSlotChoice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onItemClick : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isReadySlot :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/settings/DataSlotChoice;->isReadySlot:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-boolean v5, p0, Lcom/android/settings/DataSlotChoice;->isReadySlot:Z

    if-nez v5, :cond_2

    .line 235
    sget-object v5, Lcom/android/settings/DataSlotChoice;->toastAlert:Landroid/widget/Toast;

    const v6, 0x7f0e1482

    invoke-virtual {v5, v6}, Landroid/widget/Toast;->setText(I)V

    .line 236
    sget-object v5, Lcom/android/settings/DataSlotChoice;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 237
    iget-object v5, p0, Lcom/android/settings/DataSlotChoice;->mListView:Landroid/widget/ListView;

    if-nez p3, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {v5, v3, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 285
    :cond_1
    :goto_0
    return-void

    .line 240
    :cond_2
    if-nez p3, :cond_5

    .line 241
    iget-object v5, p0, Lcom/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v1

    .line 242
    .local v1, "phoneId":I
    const-string v5, "ril.datacross.slotid"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 244
    .local v0, "dataCross":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OnClickListener, Click SLOT 1 radio button .isReadySwitch ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/DataSlotChoice;->isReadySwitch:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", phoneId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/DataSlotChoice;->log(Ljava/lang/String;)V

    .line 245
    if-eqz v1, :cond_1

    .line 249
    if-ne v0, v8, :cond_3

    invoke-direct {p0}, Lcom/android/settings/DataSlotChoice;->isCallStatus()Z

    move-result v5

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/android/settings/DataSlotChoice;->isReadySwitch:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/android/settings/DataSlotChoice;->isReadySlot:Z

    if-nez v5, :cond_4

    .line 251
    :cond_3
    iget-object v3, p0, Lcom/android/settings/DataSlotChoice;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v4, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0

    .line 254
    :cond_4
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 255
    .local v2, "subId":[I
    iget-object v5, p0, Lcom/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v5

    aget v6, v2, v3

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 256
    iget-object v5, p0, Lcom/android/settings/DataSlotChoice;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v3, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 257
    iput-boolean v4, p0, Lcom/android/settings/DataSlotChoice;->isReadySwitch:Z

    .line 258
    iget-object v4, p0, Lcom/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "default_data"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 260
    invoke-direct {p0}, Lcom/android/settings/DataSlotChoice;->updateUi()V

    .line 284
    :goto_1
    iput-boolean v3, p0, Lcom/android/settings/DataSlotChoice;->isReadySlot:Z

    goto :goto_0

    .line 262
    .end local v0    # "dataCross":I
    .end local v1    # "phoneId":I
    .end local v2    # "subId":[I
    :cond_5
    iget-object v5, p0, Lcom/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v1

    .line 263
    .restart local v1    # "phoneId":I
    const-string v5, "ril.datacross.slotid"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 265
    .restart local v0    # "dataCross":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OnClickListener, Click SLOT 2 radio button .isReadySwitch ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/DataSlotChoice;->isReadySwitch:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", phoneId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/DataSlotChoice;->log(Ljava/lang/String;)V

    .line 267
    if-eq v1, v4, :cond_1

    .line 271
    if-ne v0, v8, :cond_6

    invoke-direct {p0}, Lcom/android/settings/DataSlotChoice;->isCallStatus()Z

    move-result v5

    if-nez v5, :cond_6

    iget-boolean v5, p0, Lcom/android/settings/DataSlotChoice;->isReadySwitch:Z

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/android/settings/DataSlotChoice;->isReadySlot:Z

    if-nez v5, :cond_7

    .line 273
    :cond_6
    iget-object v5, p0, Lcom/android/settings/DataSlotChoice;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v3, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto/16 :goto_0

    .line 276
    :cond_7
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 277
    .restart local v2    # "subId":[I
    iget-object v5, p0, Lcom/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v5

    aget v6, v2, v3

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 278
    iget-object v5, p0, Lcom/android/settings/DataSlotChoice;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v4, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 279
    iput-boolean v4, p0, Lcom/android/settings/DataSlotChoice;->isReadySwitch:Z

    .line 280
    iget-object v5, p0, Lcom/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "default_data"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 282
    invoke-direct {p0}, Lcom/android/settings/DataSlotChoice;->updateUi()V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 288
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 289
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/DataSlotChoice;->finish()V

    .line 291
    const/4 v1, 0x1

    .line 293
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 312
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 313
    invoke-virtual {p0}, Lcom/android/settings/DataSlotChoice;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataSlotChoice;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 314
    invoke-virtual {p0}, Lcom/android/settings/DataSlotChoice;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataSlotChoice;->mDataSlotObserver:Lcom/android/settings/DataSlotChoice$DataSlotChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 315
    invoke-virtual {p0}, Lcom/android/settings/DataSlotChoice;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataSlotChoice;->mDataEnabledObserver:Lcom/android/settings/DataSlotChoice$DataEnabledObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 316
    iget-object v0, p0, Lcom/android/settings/DataSlotChoice;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 317
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 298
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 299
    invoke-virtual {p0}, Lcom/android/settings/DataSlotChoice;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataSlotChoice;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/DataSlotChoice;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 300
    iget-object v0, p0, Lcom/android/settings/DataSlotChoice;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 301
    invoke-virtual {p0}, Lcom/android/settings/DataSlotChoice;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_data"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DataSlotChoice;->mDataSlotObserver:Lcom/android/settings/DataSlotChoice$DataSlotChangeObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/DataSlotChoice;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DataSlotChoice;->mDataEnabledObserver:Lcom/android/settings/DataSlotChoice$DataEnabledObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 307
    invoke-direct {p0}, Lcom/android/settings/DataSlotChoice;->updateUi()V

    .line 308
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 13
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v12, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 385
    const-string v9, "DataSlotChoice"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " onSwitchChanged: isChecked = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-boolean v9, p0, Lcom/android/settings/DataSlotChoice;->mStateMachineEvent:Z

    if-eqz v9, :cond_1

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    iget-object v9, p0, Lcom/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/settings/DataSlotChoice;->isAirPlaneMode:Z

    .line 392
    iget-boolean v9, p0, Lcom/android/settings/DataSlotChoice;->isAirPlaneMode:Z

    if-eqz v9, :cond_2

    .line 393
    sget-object v7, Lcom/android/settings/DataSlotChoice;->toastAlert:Landroid/widget/Toast;

    const v8, 0x7f0e1485

    invoke-virtual {v7, v8}, Landroid/widget/Toast;->setText(I)V

    .line 394
    sget-object v7, Lcom/android/settings/DataSlotChoice;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 395
    iget-object v7, p0, Lcom/android/settings/DataSlotChoice;->mHandler:Lcom/android/settings/DataSlotChoice$SwitchHandler;

    invoke-virtual {v7, v12}, Lcom/android/settings/DataSlotChoice$SwitchHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 398
    :cond_2
    const/4 v5, 0x1

    .line 400
    .local v5, "readySlotChange":Z
    const-string v9, "gsm.sim.currentcardstatus"

    const-string v10, "9"

    invoke-static {v9, v7, v10}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, "cardStatus1":Ljava/lang/String;
    const-string v9, "gsm.sim.currentcardstatus"

    const-string v10, "9"

    invoke-static {v9, v8, v10}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 405
    .local v1, "cardStatus2":Ljava/lang/String;
    const-string v9, "CDMA"

    invoke-static {v9}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 406
    iget-object v9, p0, Lcom/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    invoke-static {v9, v7}, Lcom/samsung/android/telephony/MultiSimManager;->isEnabledSim(Landroid/content/Context;I)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "3"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    :cond_3
    iget-object v9, p0, Lcom/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    invoke-static {v9, v8}, Lcom/samsung/android/telephony/MultiSimManager;->isEnabledSim(Landroid/content/Context;I)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "3"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 408
    :cond_4
    const/4 v5, 0x0

    .line 411
    :cond_5
    if-nez v5, :cond_6

    .line 412
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DataSlotChoice;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 414
    .local v2, "insertSimPopup":Landroid/app/AlertDialog$Builder;
    const v7, 0x7f0e13d6

    invoke-virtual {p0, v7}, Lcom/android/settings/DataSlotChoice;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->replaceSIMString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0e13d7

    invoke-virtual {p0, v8}, Lcom/android/settings/DataSlotChoice;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->replaceSIMString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x104000a

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 417
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DataSlotChoice;->mAlertDialog:Landroid/app/AlertDialog;

    .line 418
    iget-object v7, p0, Lcom/android/settings/DataSlotChoice;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 419
    iget-object v7, p0, Lcom/android/settings/DataSlotChoice;->mHandler:Lcom/android/settings/DataSlotChoice$SwitchHandler;

    invoke-virtual {v7, v12}, Lcom/android/settings/DataSlotChoice$SwitchHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 422
    .end local v2    # "insertSimPopup":Landroid/app/AlertDialog$Builder;
    :cond_6
    iget-object v9, p0, Lcom/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    const-string v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 424
    .local v6, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {v7}, Lcom/samsung/android/telephony/MultiSimManager;->isNetworkRoaming(I)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-static {v8}, Lcom/samsung/android/telephony/MultiSimManager;->isNetworkRoaming(I)Z

    move-result v9

    if-eqz v9, :cond_8

    :cond_7
    move v3, v8

    .line 426
    .local v3, "isRoaming":Z
    :goto_1
    iget-object v9, p0, Lcom/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "EverPoppedUp"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 427
    .local v4, "mCheckedRoamingOn":I
    const-string v9, "DataSlotChoice"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onCheckedChanged, isRoaming = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isChecked = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mCheckedRoamingOn = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    if-eqz v3, :cond_a

    .line 431
    if-eqz p2, :cond_9

    .line 432
    invoke-virtual {v6, v8}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 433
    if-nez v4, :cond_0

    .line 434
    const-string v7, "DataSlotChoice"

    const-string v9, "onCheckedChanged, show warning only once when roaming."

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v7, p0, Lcom/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "EverPoppedUp"

    invoke-static {v7, v9, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 436
    invoke-direct {p0}, Lcom/android/settings/DataSlotChoice;->onRoamingDisplayMobileDataOnAlert()V

    goto/16 :goto_0

    .end local v3    # "isRoaming":Z
    .end local v4    # "mCheckedRoamingOn":I
    :cond_8
    move v3, v7

    .line 424
    goto :goto_1

    .line 439
    .restart local v3    # "isRoaming":Z
    .restart local v4    # "mCheckedRoamingOn":I
    :cond_9
    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto/16 :goto_0

    .line 442
    :cond_a
    if-eqz p2, :cond_b

    .line 443
    invoke-virtual {v6, v8}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto/16 :goto_0

    .line 446
    :cond_b
    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto/16 :goto_0
.end method

.method public setEnabledList(IZ)V
    .locals 2
    .param p1, "slot"    # I
    .param p2, "isEnabled"    # Z

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/settings/DataSlotChoice;->flag:[Z

    aput-boolean p2, v0, p1

    .line 378
    iget-object v0, p0, Lcom/android/settings/DataSlotChoice;->adapter:Lcom/android/settings/DataSlotChoice$RadioAdapter;

    iget-object v1, p0, Lcom/android/settings/DataSlotChoice;->flag:[Z

    invoke-virtual {v0, v1}, Lcom/android/settings/DataSlotChoice$RadioAdapter;->setFlag([Z)V

    .line 379
    iget-object v0, p0, Lcom/android/settings/DataSlotChoice;->adapter:Lcom/android/settings/DataSlotChoice$RadioAdapter;

    invoke-virtual {v0}, Lcom/android/settings/DataSlotChoice$RadioAdapter;->notifyDataSetInvalidated()V

    .line 380
    return-void
.end method
