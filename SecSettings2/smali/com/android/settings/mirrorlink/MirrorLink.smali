.class public Lcom/android/settings/mirrorlink/MirrorLink;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MirrorLink.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;,
        Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private activity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mListDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;",
            ">;"
        }
    .end annotation
.end field

.field private mMassStorageActive:Z

.field mMenuMore:Landroid/view/MenuItem;

.field private mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

.field private mMirrorLinkAppPreference:Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

.field private mMirrorlinkListener:Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;

.field private mPkgMngr:Landroid/content/pm/PackageManager;

.field private mProvisionApp:[Ljava/lang/String;

.field private mServiceCon:Landroid/content/ServiceConnection;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherChoice:I

.field private mTetheringEnabled:Z

.field private mUsbConnected:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Landroid/preference/SwitchPreference;

.field private mUsbTetherEnabling:Z

.field private mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 761
    new-instance v0, Lcom/android/settings/mirrorlink/MirrorLink$3;

    invoke-direct {v0}, Lcom/android/settings/mirrorlink/MirrorLink$3;-><init>()V

    sput-object v0, Lcom/android/settings/mirrorlink/MirrorLink;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    .line 98
    iput-boolean v1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mTetheringEnabled:Z

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mTetherChoice:I

    .line 116
    iput-boolean v1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTetherEnabling:Z

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mListDevices:Ljava/util/List;

    .line 293
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/mirrorlink/MirrorLink;)Lcom/mirrorlink/android/service/IMirrorlinkManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/mirrorlink/MirrorLink;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/mirrorlink/MirrorLink;Lcom/mirrorlink/android/service/IMirrorlinkManager;)Lcom/mirrorlink/android/service/IMirrorlinkManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/mirrorlink/MirrorLink;
    .param p1, "x1"    # Lcom/mirrorlink/android/service/IMirrorlinkManager;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/mirrorlink/MirrorLink;)Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/mirrorlink/MirrorLink;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorlinkListener:Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/mirrorlink/MirrorLink;Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;)Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/mirrorlink/MirrorLink;
    .param p1, "x1"    # Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorlinkListener:Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings/mirrorlink/MirrorLink;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/mirrorlink/MirrorLink;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mListDevices:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/mirrorlink/MirrorLink;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/mirrorlink/MirrorLink;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->updateMirrorLinkApplications()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/mirrorlink/MirrorLink;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/mirrorlink/MirrorLink;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/String;
    .param p3, "x3"    # [Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/mirrorlink/MirrorLink;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/settings/mirrorlink/MirrorLink;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/mirrorlink/MirrorLink;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/mirrorlink/MirrorLink;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/mirrorlink/MirrorLink;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->updateState()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/mirrorlink/MirrorLink;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/mirrorlink/MirrorLink;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbConnected:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings/mirrorlink/MirrorLink;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/mirrorlink/MirrorLink;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbConnected:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/mirrorlink/MirrorLink;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/mirrorlink/MirrorLink;

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/settings/mirrorlink/MirrorLink;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/mirrorlink/MirrorLink;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mTetheringEnabled:Z

    return p1
.end method

.method private doUnbindFromService()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 325
    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorlinkListener:Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;

    if-eqz v1, :cond_0

    .line 326
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "MirrorLink: doUnbindFromService"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mServiceCon:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 329
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    iget-object v2, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorlinkListener:Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;

    invoke-interface {v1, v2}, Lcom/mirrorlink/android/service/IMirrorlinkManager;->unRegisterListener(Lcom/mirrorlink/android/service/IMirrorlinkListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :goto_0
    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    .line 334
    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorlinkListener:Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;

    .line 336
    :cond_0
    return-void

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isUsbSideSyncModeEnabled(Landroid/hardware/usb/UsbManager;)Z
    .locals 3
    .param p0, "usbmanager"    # Landroid/hardware/usb/UsbManager;

    .prologue
    .line 644
    const/4 v1, 0x0

    .line 645
    .local v1, "usbSyncMode":Z
    invoke-virtual {p0}, Landroid/hardware/usb/UsbManager;->getCurrentFunctions()Ljava/lang/String;

    move-result-object v0

    .line 646
    .local v0, "config":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 647
    const-string v2, "conn_gadget"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 648
    const/4 v1, 0x0

    .line 653
    :cond_0
    :goto_0
    return v1

    .line 650
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setNcmTethering(Z)V
    .locals 10
    .param p1, "enabled"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 714
    const-string v7, "usb"

    invoke-virtual {p0, v7}, Lcom/android/settings/mirrorlink/MirrorLink;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/UsbManager;

    .line 717
    .local v4, "um":Landroid/hardware/usb/UsbManager;
    invoke-virtual {v4}, Landroid/hardware/usb/UsbManager;->isUsb30Available()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 718
    if-eqz p1, :cond_0

    .line 719
    invoke-virtual {v4}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 720
    invoke-virtual {v4, v6}, Landroid/hardware/usb/UsbManager;->setUsb30Mode(Z)V

    .line 724
    :cond_0
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Lcom/android/settings/mirrorlink/MirrorLink;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 726
    .local v0, "cm":Landroid/net/ConnectivityManager;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v7, "/sys/class/android_usb/android0/terminal_version"

    invoke-direct {v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 727
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/PrintWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-direct {v7, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 728
    .local v3, "outStream":Ljava/io/PrintWriter;
    if-eqz p1, :cond_2

    .line 729
    const-string v7, "1"

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 734
    :goto_0
    if-eqz v3, :cond_1

    .line 735
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "outStream":Ljava/io/PrintWriter;
    :cond_1
    :goto_1
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setNcmTethering(Z)I

    move-result v7

    if-eqz v7, :cond_3

    .line 741
    iget-object v5, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    const v6, 0x7f0e0755

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 745
    :goto_2
    return-void

    .line 731
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "outStream":Ljava/io/PrintWriter;
    :cond_2
    :try_start_1
    const-string v7, "0"

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 736
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "outStream":Ljava/io/PrintWriter;
    :catch_0
    move-exception v1

    .line 737
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "MirrorLink FileNotFoundException"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 744
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "usb_tethering_enabled"

    iget-object v9, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v9}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v9

    if-ne v9, v5, :cond_4

    :goto_3
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_4
    move v5, v6

    goto :goto_3
.end method

.method private startTethering()V
    .locals 1

    .prologue
    .line 703
    iget v0, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mTetherChoice:I

    packed-switch v0, :pswitch_data_0

    .line 711
    :goto_0
    return-void

    .line 705
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/mirrorlink/MirrorLink;->setNcmTethering(Z)V

    goto :goto_0

    .line 703
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private updateMirrorLinkApplications()V
    .locals 19

    .prologue
    .line 430
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 433
    .local v10, "mirrorLinkAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    const/4 v9, 0x0

    .line 434
    .local v9, "mPm":Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/mirrorlink/MirrorLink;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 435
    .local v6, "context":Landroid/content/Context;
    if-eqz v6, :cond_1

    .line 436
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 437
    if-nez v9, :cond_2

    .line 438
    const-string v14, "MirrorLink"

    const-string v15, "updateMirrorLinkApplications() getPackageManager returns null"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    const-string v14, "MirrorLink"

    const-string v15, "updateMirrorLinkApplications() getActivity() returns null"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 446
    :cond_2
    const/4 v4, 0x0

    .line 448
    .local v4, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    if-eqz v14, :cond_3

    .line 449
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    invoke-interface {v14}, Lcom/mirrorlink/android/service/IMirrorlinkManager;->getAllAppList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 455
    :cond_3
    :goto_1
    if-nez v4, :cond_4

    .line 456
    const-string v14, "MirrorLink"

    const-string v15, "AppList is null"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    if-eqz v14, :cond_0

    .line 458
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/mirrorlink/MirrorLink;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 451
    :catch_0
    move-exception v7

    .line 452
    .local v7, "e":Landroid/os/RemoteException;
    const-string v14, "MirrorLink"

    const-string v15, "Exception while receiving all Application List through AIDl"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 461
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    if-nez v14, :cond_7

    .line 462
    new-instance v14, Landroid/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/mirrorlink/MirrorLink;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    .line 463
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    const-string v15, "mirror_link_applications"

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 464
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    const v15, 0x7f0e13b6

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const v18, 0x7f0e13b3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/mirrorlink/MirrorLink;->getString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/settings/mirrorlink/MirrorLink;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 465
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/mirrorlink/MirrorLink;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 471
    :goto_2
    const/4 v5, 0x0

    .line 472
    .local v5, "appListInfo":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mListDevices:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 473
    const-string v14, "MirrorLink"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No of apps: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_5

    .line 476
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/mirrorlink/MirrorLink;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v14

    invoke-virtual {v14, v6}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v13

    .line 477
    .local v13, "pre":Landroid/preference/PreferenceScreen;
    const v14, 0x7f04013e

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->setLayoutResource(I)V

    .line 478
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->setSelectable(Z)V

    .line 479
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 480
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v14, v13}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 483
    .end local v13    # "pre":Landroid/preference/PreferenceScreen;
    :cond_5
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    if-ge v8, v14, :cond_0

    .line 484
    const-string v14, "MirrorLink"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "In For Loop: With tthe Index [i] as :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 486
    .local v12, "packName":Ljava/lang/String;
    const-string v14, "MirrorLink"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "In For Loop : Package name for the index ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] is :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    if-eqz v14, :cond_6

    .line 489
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    invoke-interface {v14, v12}, Lcom/mirrorlink/android/service/IMirrorlinkManager;->getApplicationElements(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 490
    const-string v14, "MirrorLink"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "In For Loop: Bundle Received for the package Name"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    if-eqz v5, :cond_0

    .line 495
    new-instance v11, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    const-string v14, "pkgName"

    invoke-virtual {v5, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;-><init>(Ljava/lang/String;)V

    .line 496
    .local v11, "mlapp":Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;
    const-string v14, "EntitiesName"

    invoke-virtual {v5, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v11, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mEntityName:Ljava/lang/String;

    .line 497
    const-string v14, "AppStatus"

    invoke-virtual {v5, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v11, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mStatus:Ljava/lang/String;

    .line 498
    const-string v14, "VALID_DATE"

    invoke-virtual {v5, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v11, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mValidDate:Ljava/lang/String;

    .line 499
    const-string v14, "RESTRICTED"

    invoke-virtual {v5, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v11, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mRestricted:Ljava/lang/String;

    .line 500
    const-string v14, "NONRESTRICTED"

    invoke-virtual {v5, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v11, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mNonRestricted:Ljava/lang/String;

    .line 502
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mListDevices:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    new-instance v14, Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

    invoke-direct {v14, v6}, Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppPreference:Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

    .line 507
    const/4 v14, 0x1

    invoke-virtual {v9, v12, v14}, Landroid/content/pm/PackageManager;->getApplicationIconForIconTray(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 508
    .local v3, "appIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppPreference:Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

    invoke-virtual {v14, v8}, Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->setIndex(I)V

    .line 509
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppPreference:Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

    invoke-virtual {v14, v3}, Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 510
    const/4 v14, 0x0

    invoke-virtual {v9, v12, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 511
    .local v2, "ainfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppPreference:Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

    invoke-virtual {v9, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 512
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppPreference:Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->setKey(Ljava/lang/String;)V

    .line 513
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppPreference:Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

    iget-object v15, v11, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mStatus:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->setValidCheck(Ljava/lang/String;)V

    .line 515
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppPreference:Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

    new-instance v15, Lcom/android/settings/mirrorlink/MirrorLink$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/settings/mirrorlink/MirrorLink$2;-><init>(Lcom/android/settings/mirrorlink/MirrorLink;)V

    invoke-virtual {v14, v15}, Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 548
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    if-eqz v14, :cond_6

    .line 549
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppPreference:Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 483
    .end local v2    # "ainfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "appIcon":Landroid/graphics/drawable/Drawable;
    .end local v11    # "mlapp":Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;
    :cond_6
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 467
    .end local v5    # "appListInfo":Landroid/os/Bundle;
    .end local v8    # "i":I
    .end local v12    # "packName":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v14}, Landroid/preference/PreferenceCategory;->removeAll()V

    goto/16 :goto_2

    .line 552
    .restart local v5    # "appListInfo":Landroid/os/Bundle;
    .restart local v8    # "i":I
    .restart local v12    # "packName":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 553
    .restart local v7    # "e":Landroid/os/RemoteException;
    const-string v14, "MirrorLink"

    const-string v15, "Exception while receiving the information of the Given PackagName through AIDl"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    .line 555
    .end local v7    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v7

    .line 556
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v14, "MirrorLink"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "loadAppIcon : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private updateState()V
    .locals 5

    .prologue
    .line 562
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/settings/mirrorlink/MirrorLink;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 564
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 565
    .local v0, "available":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 566
    .local v3, "tethered":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 567
    .local v2, "errored":[Ljava/lang/String;
    invoke-direct {p0, v0, v3, v2}, Lcom/android/settings/mirrorlink/MirrorLink;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 568
    return-void
.end method

.method private updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    .line 571
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/mirrorlink/MirrorLink;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 572
    return-void
.end method

.method private updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 21
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    .line 576
    const-string v17, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/mirrorlink/MirrorLink;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 577
    .local v5, "cm":Landroid/net/ConnectivityManager;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbConnected:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mMassStorageActive:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    const/4 v14, 0x1

    .line 578
    .local v14, "usbAvailable":Z
    :goto_0
    const/16 v16, 0x0

    .line 579
    .local v16, "usbTethered":Z
    move-object/from16 v3, p2

    .local v3, "arr$":[Ljava/lang/String;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    move v7, v6

    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .local v7, "i$":I
    :goto_1
    if-ge v7, v8, :cond_6

    aget-object v11, v3, v7

    .line 580
    .local v11, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbRegexs:[Ljava/lang/String;

    .local v4, "arr$":[Ljava/lang/String;
    array-length v9, v4

    .local v9, "len$":I
    const/4 v6, 0x0

    .end local v7    # "i$":I
    .restart local v6    # "i$":I
    :goto_2
    if-ge v6, v9, :cond_5

    aget-object v10, v4, v6

    .line 581
    .local v10, "regex":Ljava/lang/String;
    invoke-virtual {v11, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    const-string v17, "ncm"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 582
    const/16 v16, 0x1

    .line 580
    :cond_0
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 577
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v9    # "len$":I
    .end local v10    # "regex":Ljava/lang/String;
    .end local v11    # "s":Ljava/lang/String;
    .end local v14    # "usbAvailable":Z
    .end local v16    # "usbTethered":Z
    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    .line 583
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v6    # "i$":I
    .restart local v9    # "len$":I
    .restart local v10    # "regex":Ljava/lang/String;
    .restart local v11    # "s":Ljava/lang/String;
    .restart local v14    # "usbAvailable":Z
    .restart local v16    # "usbTethered":Z
    :cond_2
    invoke-virtual {v11, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    const-string v17, "usb"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_4

    :cond_3
    invoke-virtual {v11, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    const-string v17, "rndis"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 584
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 586
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/mirrorlink/MirrorLink;->mTetheringEnabled:Z

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0e13c6

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_3

    .line 579
    .end local v10    # "regex":Ljava/lang/String;
    :cond_5
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    .end local v6    # "i$":I
    .restart local v7    # "i$":I
    goto :goto_1

    .line 591
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v9    # "len$":I
    .end local v11    # "s":Ljava/lang/String;
    :cond_6
    const/4 v15, 0x0

    .line 592
    .local v15, "usbErrored":Z
    move-object/from16 v3, p3

    .restart local v3    # "arr$":[Ljava/lang/String;
    array-length v8, v3

    .restart local v8    # "len$":I
    const/4 v6, 0x0

    .end local v7    # "i$":I
    .restart local v6    # "i$":I
    move v7, v6

    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .restart local v7    # "i$":I
    :goto_4
    if-ge v7, v8, :cond_9

    aget-object v11, v3, v7

    .line 593
    .restart local v11    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbRegexs:[Ljava/lang/String;

    .restart local v4    # "arr$":[Ljava/lang/String;
    array-length v9, v4

    .restart local v9    # "len$":I
    const/4 v6, 0x0

    .end local v7    # "i$":I
    .restart local v6    # "i$":I
    :goto_5
    if-ge v6, v9, :cond_8

    aget-object v10, v4, v6

    .line 594
    .restart local v10    # "regex":Ljava/lang/String;
    invoke-virtual {v11, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    const/4 v15, 0x1

    .line 593
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 592
    .end local v10    # "regex":Ljava/lang/String;
    :cond_8
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    .end local v6    # "i$":I
    .restart local v7    # "i$":I
    goto :goto_4

    .line 600
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v9    # "len$":I
    .end local v11    # "s":Ljava/lang/String;
    :cond_9
    const-string v17, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/mirrorlink/MirrorLink;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    .line 601
    .local v13, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v16, :cond_e

    .line 602
    const-string v17, "TMB"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_a

    const-string v17, "TMK"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 603
    :cond_a
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v17

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 604
    const v17, 0x7f0e13c0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/mirrorlink/MirrorLink;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const v20, 0x7f0e13b3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/mirrorlink/MirrorLink;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 605
    .local v2, "activeSubtext":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 641
    .end local v2    # "activeSubtext":Ljava/lang/String;
    :cond_b
    :goto_6
    return-void

    .line 610
    :cond_c
    const-string v17, "usb"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/mirrorlink/MirrorLink;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/hardware/usb/UsbManager;

    invoke-static/range {v17 .. v17}, Lcom/android/settings/mirrorlink/MirrorLink;->isUsbSideSyncModeEnabled(Landroid/hardware/usb/UsbManager;)Z

    move-result v12

    .line 612
    .local v12, "sidesyncDB":Z
    if-eqz v12, :cond_d

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0e0758

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_6

    .line 617
    :cond_d
    const v17, 0x7f0e13c0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/mirrorlink/MirrorLink;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const v20, 0x7f0e13b3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/mirrorlink/MirrorLink;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 618
    .restart local v2    # "activeSubtext":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_6

    .line 623
    .end local v2    # "activeSubtext":Ljava/lang/String;
    .end local v12    # "sidesyncDB":Z
    :cond_e
    if-eqz v14, :cond_f

    .line 625
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mTetheringEnabled:Z

    move/from16 v17, v0

    if-nez v17, :cond_b

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0e0758

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_6

    .line 631
    :cond_f
    if-eqz v15, :cond_10

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0e0755

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 638
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_6

    .line 633
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mMassStorageActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_11

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0e0752

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_7

    .line 636
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0e0753

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_7
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 204
    const/16 v0, 0x2a

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 684
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/mirrorlink/MirrorLink;->setHasOptionsMenu(Z)V

    .line 685
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 686
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 689
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 690
    if-nez p1, :cond_0

    .line 691
    if-ne p2, v2, :cond_1

    .line 692
    invoke-direct {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->startTethering()V

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 696
    :cond_1
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 697
    iput v2, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mTetherChoice:I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 209
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 210
    const v3, 0x7f080073

    invoke-virtual {p0, v3}, Lcom/android/settings/mirrorlink/MirrorLink;->addPreferencesFromResource(I)V

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->activity:Landroid/app/Activity;

    .line 213
    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mContext:Landroid/content/Context;

    .line 214
    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mPkgMngr:Landroid/content/pm/PackageManager;

    .line 216
    const-string v3, "ncm_usb_tether_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings/mirrorlink/MirrorLink;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    .line 217
    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 219
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/android/settings/mirrorlink/MirrorLink;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 221
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbRegexs:[Ljava/lang/String;

    .line 223
    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbRegexs:[Ljava/lang/String;

    array-length v3, v3

    if-eqz v3, :cond_2

    move v2, v4

    .line 225
    .local v2, "usbAvailable":Z
    :goto_0
    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 229
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x1070015

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mProvisionApp:[Ljava/lang/String;

    .line 231
    new-instance v3, Lcom/android/settings/mirrorlink/MirrorLink$1;

    invoke-direct {v3, p0}, Lcom/android/settings/mirrorlink/MirrorLink$1;-><init>(Lcom/android/settings/mirrorlink/MirrorLink;)V

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mServiceCon:Landroid/content/ServiceConnection;

    .line 266
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.android.MIRRORLINK_SERVICE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    .local v0, "bindToML":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v6, "com.samsung.android.app.mirrorlink"

    const-string v7, "com.samsung.android.mirrorlink.service.TmsService"

    invoke-direct {v3, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 268
    invoke-virtual {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-nez v3, :cond_3

    .line 269
    const-string v3, "MirrorLink"

    const-string v4, "Unable to resolve MIRRORLINK_MANAGER_SERVICE service."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :goto_1
    return-void

    .end local v0    # "bindToML":Landroid/content/Intent;
    .end local v2    # "usbAvailable":Z
    :cond_2
    move v2, v5

    .line 223
    goto :goto_0

    .line 272
    .restart local v0    # "bindToML":Landroid/content/Intent;
    .restart local v2    # "usbAvailable":Z
    :cond_3
    const-string v3, "dosearch"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 273
    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mServiceCon:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v0, v5, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 278
    const v0, 0x7f0e13c4

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mMenuMore:Landroid/view/MenuItem;

    .line 279
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 280
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 424
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "MirrorLink Settings: onDestroy"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 425
    invoke-direct {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->doUnbindFromService()V

    .line 426
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 427
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    .line 284
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 290
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 286
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SubSettings;

    .line 287
    .local v0, "subSettings":Lcom/android/settings/SubSettings;
    const-class v1, Lcom/android/settings/mirrorlink/MirrorLinkDeviceUID;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0e13c4

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SubSettings;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 288
    const/4 v1, 0x1

    goto :goto_0

    .line 284
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 365
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 366
    invoke-direct {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->doUnbindFromService()V

    .line 367
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 749
    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    if-ne p1, v3, :cond_1

    .line 750
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 751
    .local v0, "isNcmOn":Z
    if-eqz v0, :cond_0

    .line 752
    iput v1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mTetherChoice:I

    .line 754
    :cond_0
    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 755
    invoke-direct {p0, v0}, Lcom/android/settings/mirrorlink/MirrorLink;->setNcmTethering(Z)V

    .line 756
    invoke-virtual {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "usb_tethering_enabled"

    iget-object v5, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-ne v5, v1, :cond_2

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 758
    .end local v0    # "isNcmOn":Z
    :cond_1
    return v2

    .restart local v0    # "isNcmOn":Z
    :cond_2
    move v1, v2

    .line 756
    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 373
    iput-boolean v2, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mOpenDetailMenu:Z

    .line 374
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 375
    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    if-nez v3, :cond_1

    .line 376
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "MirrorLink : Binding to Tms"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 377
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.android.MIRRORLINK_SERVICE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 378
    .local v0, "bindToML":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.android.app.mirrorlink"

    const-string v5, "com.samsung.android.mirrorlink.service.TmsService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 379
    invoke-virtual {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-nez v3, :cond_0

    .line 380
    const-string v1, "MirrorLink"

    const-string v2, "Unable to resolve MIRRORLINK_MANAGER_SERVICE service."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    .end local v0    # "bindToML":Landroid/content/Intent;
    :goto_0
    return-void

    .line 383
    .restart local v0    # "bindToML":Landroid/content/Intent;
    :cond_0
    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mServiceCon:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v0, v4, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 387
    .end local v0    # "bindToML":Landroid/content/Intent;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->updateState()V

    .line 407
    invoke-virtual {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "usb_tethering_enabled"

    iget-object v5, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-ne v5, v1, :cond_2

    :goto_1
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 340
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 342
    invoke-virtual {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 344
    .local v0, "activity":Landroid/app/Activity;
    const-string v3, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mMassStorageActive:Z

    .line 345
    new-instance v3, Lcom/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;-><init>(Lcom/android/settings/mirrorlink/MirrorLink;Lcom/android/settings/mirrorlink/MirrorLink$1;)V

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 346
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 347
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 349
    .local v2, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 350
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 353
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 354
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 355
    const-string v3, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 356
    const-string v3, "file"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 357
    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 359
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v0, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 361
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->updateState()V

    .line 362
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 414
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 415
    invoke-virtual {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 416
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 418
    invoke-virtual {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "usb_tethering_enabled"

    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 420
    return-void

    .line 418
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
