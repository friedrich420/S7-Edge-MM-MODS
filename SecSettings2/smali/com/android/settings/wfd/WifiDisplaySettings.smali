.class public Lcom/android/settings/wfd/WifiDisplaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wfd/WifiDisplaySettings$24;,
        Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;,
        Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;,
        Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;,
        Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;,
        Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;
    }
.end annotation


# static fields
.field public static mIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private changeString:Ljava/lang/String;

.field private edm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private endConnect:Landroid/view/MenuItem;

.field private extraCauseOfStart:I

.field private isChanged:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mAvFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

.field private mChange_device_info:Landroid/widget/LinearLayout;

.field private mConnectTypeForLogging:Ljava/lang/String;

.field private mConnectingDevice:Ljava/lang/String;

.field private mConnectingDialogCalled:Z

.field private mConnectionRequested:Z

.field private mContext:Landroid/content/Context;

.field private mDLNADeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

.field private mDLNAList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/allshare/Device;",
            ">;"
        }
    .end annotation
.end field

.field private mDLNAServiceConnectListener:Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;

.field private mDLNAServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

.field private mDeviceAddress:Ljava/lang/String;

.field protected mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mEmptyView:Landroid/widget/TextView;

.field private final mExtendedDisplayListener:Landroid/hardware/display/ExtendedDisplayListener;

.field private mGlobalEditDeviceName:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mHasOxygenPaused:Z

.field private final mImageFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

.field private mInPickerDialog:Z

.field private mIsGalleryRunning:Z

.field private mIsKnoxMode:Z

.field private mIsMusicRunning:Z

.field private mIsPendingSetup:Z

.field private mIsVideoRunning:Z

.field private mMenu:Landroid/view/ContextMenu;

.field private mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field private mNo_device_found_layout:Landroid/widget/LinearLayout;

.field private mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

.field private mPendingChanges:I

.field private mPendingDevice:Ljava/lang/String;

.field private mPreviousConnectionType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

.field private mReadyToConnect:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRenameDialog:Landroid/app/AlertDialog;

.field private final mRestartScan:Ljava/lang/Runnable;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mRouter:Landroid/media/MediaRouter;

.field private final mRouterCallback:Landroid/media/MediaRouter$Callback;

.field private mSSVideoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/allshare/Device;",
            ">;"
        }
    .end annotation
.end field

.field private final mScanTimeout:Ljava/lang/Runnable;

.field private final mScreenSharingFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

.field private mSetPrevSettingsDetach:Z

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mStartWithConnectedState:Z

.field private mStarted:Z

.field protected mTurningWifiDisplayOn:Z

.field private final mUpdateRunnable:Ljava/lang/Runnable;

.field private mWaitingDevice:Ljava/lang/String;

.field private mWfdCertification:Lcom/android/settings/wfd/Wfd_Certification;

.field protected mWifiDisplayOnSetting:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private preChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIconCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNAList:Ljava/util/List;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSSVideoList:Ljava/util/List;

    .line 221
    const-string v0, "QIC_PAN"

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    .line 226
    sget-object v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPreviousConnectionType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    .line 229
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$1;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mExtendedDisplayListener:Landroid/hardware/display/ExtendedDisplayListener;

    .line 551
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$2;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 982
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$3;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanTimeout:Ljava/lang/Runnable;

    .line 993
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$4;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestartScan:Ljava/lang/Runnable;

    .line 1302
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$5;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNAServiceConnectListener:Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;

    .line 1330
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$6;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    .line 1342
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$7;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mImageFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    .line 1354
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$8;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScreenSharingFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    .line 1383
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$9;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$9;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 1529
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$12;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$12;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1597
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$13;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$13;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 1757
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$14;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$14;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    .line 240
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wfd/WifiDisplaySettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWaitingDevice:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/wfd/WifiDisplaySettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWaitingDevice:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPreviousConnectionType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScreenSharingFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/wfd/WifiDisplaySettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # I

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->scheduleUpdate(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/wfd/WifiDisplaySettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingDevice:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsPendingSetup:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/settings/wfd/WifiDisplaySettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/samsung/android/allshare/ScreenSharingDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Lcom/samsung/android/allshare/ScreenSharingDevice;

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->sendScreenSharingTriggerMsg(Lcom/samsung/android/allshare/ScreenSharingDevice;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/wfd/WifiDisplaySettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 136
    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/settings/wfd/WifiDisplaySettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectionRequested:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectionRequested:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReadyToConnect:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSetPrevSettingsDetach:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->prepareConnection()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->showDisconnectDialog()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/settings/wfd/WifiDisplaySettings;ILjava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/wfd/WifiDisplaySettings;->requestPopup(ILjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->disconnectDevice()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/samsung/android/allshare/Device;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Lcom/samsung/android/allshare/Device;

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectScreenSharing(Lcom/samsung/android/allshare/Device;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->toggleRoute(Landroid/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->showOptionsDialog(Landroid/hardware/display/WifiDisplay;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/settings/wfd/WifiDisplaySettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->changeString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/settings/wfd/WifiDisplaySettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->changeString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->isChanged:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Landroid/widget/EditText;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/wfd/WifiDisplaySettings;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestartScan:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/samsung/android/allshare/media/MediaServiceProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNAServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/samsung/android/allshare/media/MediaServiceProvider;)Lcom/samsung/android/allshare/media/MediaServiceProvider;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Lcom/samsung/android/allshare/media/MediaServiceProvider;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNAServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/samsung/android/allshare/media/MediaDeviceFinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNADeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/samsung/android/allshare/media/MediaDeviceFinder;)Lcom/samsung/android/allshare/media/MediaDeviceFinder;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNADeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mImageFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    return-object v0
.end method

.method private applyState(Z)V
    .locals 33
    .param p1, "invalidateOptions"    # Z

    .prologue
    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v29

    .line 681
    .local v29, "wifiDisplayStatus":Landroid/hardware/display/WifiDisplayStatus;
    invoke-virtual/range {v29 .. v29}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v12

    .line 682
    .local v12, "featureState":I
    invoke-virtual/range {v29 .. v29}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v28

    .line 683
    .local v28, "scanState":I
    invoke-virtual/range {v29 .. v29}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v3

    .line 685
    .local v3, "activeDisplayState":I
    const-string v30, "WifiDisplaySettings"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "applyState = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v12, v0, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    move/from16 v30, v0

    if-nez v30, :cond_3

    .line 688
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    .line 700
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    move/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->switchChanged(Z)V

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v30

    if-eqz v30, :cond_1

    .line 703
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectionRequested:Z

    .line 706
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    move/from16 v30, v0

    if-eqz v30, :cond_b

    .line 707
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsPendingSetup:Z

    move/from16 v30, v0

    if-nez v30, :cond_8

    .line 708
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    move/from16 v30, v0

    if-nez v30, :cond_6

    const/16 v30, 0x2

    move/from16 v0, v30

    if-ne v3, v0, :cond_6

    .line 709
    const-string v30, "WifiDisplaySettings"

    const-string v31, "WifiDisplay is connected.. Settings finish()"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v30

    check-cast v30, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings/wfd/WfdPickerDialog;->finish()V

    .line 980
    :cond_2
    :goto_1
    return-void

    .line 689
    :cond_3
    const/16 v30, 0x3

    move/from16 v0, v30

    if-ne v12, v0, :cond_4

    .line 690
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    goto :goto_0

    .line 691
    :cond_4
    const/16 v30, 0x2

    move/from16 v0, v30

    if-ne v12, v0, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    move/from16 v30, v0

    if-nez v30, :cond_0

    .line 692
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReadyToConnect:Z

    move/from16 v30, v0

    if-eqz v30, :cond_5

    .line 693
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    .line 694
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    goto/16 :goto_0

    .line 696
    :cond_5
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    .line 697
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    goto/16 :goto_0

    .line 712
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    move/from16 v30, v0

    if-nez v30, :cond_8

    const/16 v30, 0x2

    move/from16 v0, v30

    if-eq v12, v0, :cond_7

    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v12, v0, :cond_8

    .line 713
    :cond_7
    const-string v30, "WifiDisplaySettings"

    const-string v31, "WifiDisplay is disconnected.. Settings finish()"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v30

    check-cast v30, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings/wfd/WfdPickerDialog;->finish()V

    goto :goto_1

    .line 719
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    move/from16 v30, v0

    if-nez v30, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/hardware/display/DisplayManager;->isDLNADeviceConnected()Z

    move-result v30

    if-eqz v30, :cond_9

    .line 720
    const-string v30, "WifiDisplaySettings"

    const-string v31, "DLNA is connected.. Settings finish()"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v30

    check-cast v30, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings/wfd/WfdPickerDialog;->finish()V

    goto/16 :goto_1

    .line 725
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/net/wifi/WifiManager;->isWifiIBSSEnabled()Z

    move-result v30

    if-eqz v30, :cond_b

    const/16 v30, 0x2

    move/from16 v0, v30

    if-eq v12, v0, :cond_a

    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v12, v0, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHasOxygenPaused:Z

    move/from16 v30, v0

    if-eqz v30, :cond_b

    .line 727
    const-string v30, "WifiDisplaySettings"

    const-string v31, "applyState oxygen is ON "

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v30

    check-cast v30, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings/wfd/WfdPickerDialog;->finish()V

    goto/16 :goto_1

    .line 734
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    .line 735
    .local v21, "preferenceScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual/range {v21 .. v21}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 737
    const/16 v30, 0x3

    move/from16 v0, v30

    if-ne v12, v0, :cond_3c

    .line 738
    invoke-virtual/range {v29 .. v29}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v2

    .line 740
    .local v2, "activeDisplay":Landroid/hardware/display/WifiDisplay;
    invoke-virtual/range {v29 .. v29}, Landroid/hardware/display/WifiDisplayStatus;->getDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v9

    .line 741
    .local v9, "displays":[Landroid/hardware/display/WifiDisplay;
    const-string v30, "WifiDisplaySettings"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "applyState displays.length = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    array-length v0, v9

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    new-instance v8, Ljava/util/ArrayList;

    array-length v0, v9

    move/from16 v30, v0

    move/from16 v0, v30

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 743
    .local v8, "displayList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/WifiDisplay;>;"
    move-object v4, v9

    .local v4, "arr$":[Landroid/hardware/display/WifiDisplay;
    array-length v0, v4

    move/from16 v19, v0

    .local v19, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_2
    move/from16 v0, v19

    if-ge v14, v0, :cond_d

    aget-object v7, v4, v14

    .line 744
    .local v7, "d":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v7}, Landroid/hardware/display/WifiDisplay;->isAvailable()Z

    move-result v30

    if-eqz v30, :cond_c

    .line 745
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 743
    :cond_c
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 748
    .end local v7    # "d":Landroid/hardware/display/WifiDisplay;
    :cond_d
    sget-object v30, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    move-object/from16 v0, v30

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/hardware/display/WifiDisplay;

    .line 749
    .local v5, "availableDisplays":[Landroid/hardware/display/WifiDisplay;
    const-string v30, "WifiDisplaySettings"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "applyState availableDisplays.length = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    array-length v0, v5

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNAList:Ljava/util/List;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v11

    .line 755
    .local v11, "dlnaCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v26

    .line 756
    .local v26, "routeCount":I
    const/16 v22, 0x0

    .line 757
    .local v22, "remoteDisplayRouteCount":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    move/from16 v0, v26

    if-ge v13, v0, :cond_f

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v25

    .line 760
    .local v25, "route":Landroid/media/MediaRouter$RouteInfo;
    const/16 v30, 0x4

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v30

    if-eqz v30, :cond_e

    .line 761
    add-int/lit8 v22, v22, 0x1

    .line 757
    :cond_e
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 766
    .end local v25    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/hardware/display/DisplayManager;->getLastConnectedDisplay(Z)Landroid/hardware/display/WifiDisplay;

    move-result-object v18

    .line 767
    .local v18, "lastConnectedDisplay":Landroid/hardware/display/WifiDisplay;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/hardware/display/DisplayManager;->getLastConnectedDLNADevice()Landroid/hardware/display/DLNADevice;

    move-result-object v17

    .line 769
    .local v17, "lastConnectedDLNADevice":Landroid/hardware/display/DLNADevice;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWfdCertification:Lcom/android/settings/wfd/Wfd_Certification;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings/wfd/Wfd_Certification;->getCertificationModeOn()Z

    move-result v30

    if-eqz v30, :cond_10

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWfdCertification:Lcom/android/settings/wfd/Wfd_Certification;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/wfd/Wfd_Certification;->buildCertificationMenu(Landroid/preference/PreferenceScreen;)V

    .line 773
    :cond_10
    if-eqz v2, :cond_1d

    const/16 v30, 0x2

    move/from16 v0, v30

    if-ne v3, v0, :cond_1d

    .line 774
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    .line 775
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->extraCauseOfStart:I

    move/from16 v30, v0

    const/16 v31, 0x5

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_11

    .line 776
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->finish()V

    goto/16 :goto_1

    .line 779
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_12

    .line 780
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    .line 783
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    move-object/from16 v30, v0

    if-nez v30, :cond_14

    .line 784
    new-instance v30, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-direct/range {v30 .. v31}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 789
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/hardware/display/WifiDisplayStatus;->getConnectedState()I

    move-result v30

    const/16 v31, 0xa

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_15

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v23

    .line 791
    .local v23, "remoteP2pMacAddr":Ljava/lang/String;
    if-eqz v23, :cond_16

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNAList:Ljava/util/List;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_13
    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_16

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/allshare/Device;

    .line 793
    .local v10, "dlna":Lcom/samsung/android/allshare/Device;
    invoke-virtual {v10}, Lcom/samsung/android/allshare/Device;->getScreenSharingP2pMacAddr()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_13

    .line 794
    invoke-virtual {v10}, Lcom/samsung/android/allshare/Device;->getScreenSharingInfo()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v10, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->createDLNAPreference(Lcom/samsung/android/allshare/Device;Ljava/lang/String;)Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;

    move-result-object v30

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 786
    .end local v10    # "dlna":Lcom/samsung/android/allshare/Device;
    .end local v23    # "remoteP2pMacAddr":Ljava/lang/String;
    .local v14, "i$":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_4

    .line 799
    :cond_15
    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v2, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->createWifiDisplayPreference(Landroid/hardware/display/WifiDisplay;Z)Landroid/preference/Preference;

    move-result-object v30

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 802
    .end local v14    # "i$":I
    :cond_16
    array-length v0, v5

    move/from16 v30, v0

    if-nez v30, :cond_1b

    if-nez v22, :cond_1b

    if-nez v11, :cond_1b

    const/16 v30, 0x1

    move/from16 v0, v28

    move/from16 v1, v30

    if-eq v0, v1, :cond_1b

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNo_device_found_layout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 807
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    move/from16 v30, v0

    if-eqz v30, :cond_17

    .line 808
    const/16 v30, 0x1

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_1c

    .line 809
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v30

    check-cast v30, Lcom/android/settings/wfd/WfdPickerDialog;

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Lcom/android/settings/wfd/WfdPickerDialog;->showProgressBar(Z)V

    .line 824
    :cond_17
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    move/from16 v30, v0

    if-nez v30, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    move/from16 v30, v0

    if-eqz v30, :cond_1a

    .line 825
    :cond_18
    array-length v0, v5

    move/from16 v30, v0

    if-nez v30, :cond_1f

    if-nez v22, :cond_1f

    if-nez v11, :cond_1f

    const/16 v30, 0x1

    move/from16 v0, v28

    move/from16 v1, v30

    if-eq v0, v1, :cond_1f

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNo_device_found_layout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 952
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    move/from16 v30, v0

    if-eqz v30, :cond_1a

    .line 953
    const/16 v30, 0x1

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_3b

    .line 954
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v30

    check-cast v30, Lcom/android/settings/wfd/WfdPickerDialog;

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Lcom/android/settings/wfd/WfdPickerDialog;->showProgressBar(Z)V

    .line 976
    .end local v2    # "activeDisplay":Landroid/hardware/display/WifiDisplay;
    .end local v4    # "arr$":[Landroid/hardware/display/WifiDisplay;
    .end local v5    # "availableDisplays":[Landroid/hardware/display/WifiDisplay;
    .end local v8    # "displayList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/WifiDisplay;>;"
    .end local v9    # "displays":[Landroid/hardware/display/WifiDisplay;
    .end local v11    # "dlnaCount":I
    .end local v13    # "i":I
    .end local v17    # "lastConnectedDLNADevice":Landroid/hardware/display/DLNADevice;
    .end local v18    # "lastConnectedDisplay":Landroid/hardware/display/WifiDisplay;
    .end local v19    # "len$":I
    .end local v22    # "remoteDisplayRouteCount":I
    .end local v26    # "routeCount":I
    :cond_1a
    :goto_8
    if-eqz p1, :cond_2

    .line 977
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_1

    .line 805
    .restart local v2    # "activeDisplay":Landroid/hardware/display/WifiDisplay;
    .restart local v4    # "arr$":[Landroid/hardware/display/WifiDisplay;
    .restart local v5    # "availableDisplays":[Landroid/hardware/display/WifiDisplay;
    .restart local v8    # "displayList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/WifiDisplay;>;"
    .restart local v9    # "displays":[Landroid/hardware/display/WifiDisplay;
    .restart local v11    # "dlnaCount":I
    .restart local v13    # "i":I
    .restart local v17    # "lastConnectedDLNADevice":Landroid/hardware/display/DLNADevice;
    .restart local v18    # "lastConnectedDisplay":Landroid/hardware/display/WifiDisplay;
    .restart local v19    # "len$":I
    .restart local v22    # "remoteDisplayRouteCount":I
    .restart local v26    # "routeCount":I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNo_device_found_layout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    const/16 v31, 0x8

    invoke-virtual/range {v30 .. v31}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_6

    .line 811
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v30

    check-cast v30, Lcom/android/settings/wfd/WfdPickerDialog;

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Lcom/android/settings/wfd/WfdPickerDialog;->showProgressBar(Z)V

    goto :goto_7

    .line 814
    .restart local v14    # "i$":I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/hardware/display/DisplayManager;->isDLNADeviceConnected()Z

    move-result v30

    if-eqz v30, :cond_17

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNAList:Ljava/util/List;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_1e
    :goto_9
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_17

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/allshare/Device;

    .line 816
    .restart local v10    # "dlna":Lcom/samsung/android/allshare/Device;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/hardware/display/DisplayManager;->getDLNADeviceUid()Ljava/lang/String;

    move-result-object v24

    .line 817
    .local v24, "retDeviceUid":Ljava/lang/String;
    if-eqz v24, :cond_1e

    .line 818
    invoke-virtual {v10}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1e

    .line 819
    invoke-virtual {v10}, Lcom/samsung/android/allshare/Device;->getScreenSharingInfo()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v10, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->createDLNAPreference(Lcom/samsung/android/allshare/Device;Ljava/lang/String;)Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;

    move-result-object v30

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_9

    .line 828
    .end local v10    # "dlna":Lcom/samsung/android/allshare/Device;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v24    # "retDeviceUid":Ljava/lang/String;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNo_device_found_layout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    const/16 v31, 0x8

    invoke-virtual/range {v30 .. v31}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 829
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    move/from16 v30, v0

    if-eqz v30, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v30

    check-cast v30, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings/wfd/WfdPickerDialog;->IsChangeDevice()Z

    move-result v30

    if-eqz v30, :cond_25

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mChange_device_info:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 834
    :goto_a
    if-eqz v18, :cond_20

    .line 835
    const-string v30, "WifiDisplaySettings"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "applyState lastConnectedDisplay.getDeviceName() = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", lastConnectedDisplay.getDeviceAddress() = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :cond_20
    const-string v30, "WifiDisplaySettings"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "applyState mDLNAList = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNAList:Ljava/util/List;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_21
    :goto_b
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_2c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/allshare/Device;

    .line 839
    .restart local v10    # "dlna":Lcom/samsung/android/allshare/Device;
    instance-of v0, v10, Lcom/samsung/android/allshare/ScreenSharingDevice;

    move/from16 v16, v0

    .line 840
    .local v16, "isSupportScreenSharing":Z
    if-eqz v2, :cond_22

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v30

    invoke-virtual {v10}, Lcom/samsung/android/allshare/Device;->getScreenSharingP2pMacAddr()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_24

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/hardware/display/DisplayManager;->isDLNADeviceConnected()Z

    move-result v30

    if-eqz v30, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/hardware/display/DisplayManager;->getDLNADeviceUid()Ljava/lang/String;

    move-result-object v30

    invoke-virtual {v10}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_24

    .line 842
    :cond_23
    invoke-virtual {v10}, Lcom/samsung/android/allshare/Device;->getScreenSharingInfo()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v10, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->createDLNAPreference(Lcom/samsung/android/allshare/Device;Ljava/lang/String;)Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;

    move-result-object v30

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 845
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReadyToConnect:Z

    move/from16 v30, v0

    if-eqz v30, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWaitingDevice:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual {v10}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_26

    .line 846
    const-string v30, "WifiDisplaySettings"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "change device to "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWaitingDevice:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    .line 848
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mWaitingDevice:Ljava/lang/String;

    .line 849
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mReadyToConnect:Z

    .line 851
    const-string v30, "CHA_DEV"

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    .line 853
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectScreenSharing(Lcom/samsung/android/allshare/Device;)V

    goto/16 :goto_b

    .line 832
    .end local v10    # "dlna":Lcom/samsung/android/allshare/Device;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v16    # "isSupportScreenSharing":Z
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mChange_device_info:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    const/16 v31, 0x8

    invoke-virtual/range {v30 .. v31}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_a

    .line 854
    .restart local v10    # "dlna":Lcom/samsung/android/allshare/Device;
    .restart local v14    # "i$":Ljava/util/Iterator;
    .restart local v16    # "isSupportScreenSharing":Z
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWaitingDevice:Ljava/lang/String;

    move-object/from16 v30, v0

    if-nez v30, :cond_21

    if-eqz v16, :cond_27

    if-eqz v18, :cond_27

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v30

    invoke-virtual {v10}, Lcom/samsung/android/allshare/Device;->getScreenSharingP2pMacAddr()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_27

    if-eqz v3, :cond_28

    :cond_27
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    move/from16 v30, v0

    if-nez v30, :cond_21

    if-eqz v17, :cond_21

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/display/DLNADevice;->getUid()Ljava/lang/String;

    move-result-object v30

    invoke-virtual {v10}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_21

    :cond_28
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    move/from16 v30, v0

    if-nez v30, :cond_21

    .line 860
    const-string v31, "WifiDisplaySettings"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "last connect to "

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    if-eqz v16, :cond_2a

    const-string v30, "sharing"

    :goto_c
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v32, " device"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, "QIC_PAN"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_2b

    .line 864
    const-string v30, "AUTO_QIC_PAN"

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    .line 868
    :cond_29
    :goto_d
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectScreenSharing(Lcom/samsung/android/allshare/Device;)V

    goto/16 :goto_b

    .line 860
    :cond_2a
    const-string v30, "dlna"

    goto :goto_c

    .line 865
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, "SHA_PAN"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_29

    .line 866
    const-string v30, "AUTO_SHA_PAN"

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    goto :goto_d

    .line 872
    .end local v10    # "dlna":Lcom/samsung/android/allshare/Device;
    .end local v16    # "isSupportScreenSharing":Z
    :cond_2c
    move-object v4, v5

    array-length v0, v4

    move/from16 v19, v0

    const/4 v14, 0x0

    .local v14, "i$":I
    move v15, v14

    .end local v14    # "i$":I
    .local v15, "i$":I
    :goto_e
    move/from16 v0, v19

    if-ge v15, v0, :cond_39

    aget-object v7, v4, v15

    .line 873
    .restart local v7    # "d":Landroid/hardware/display/WifiDisplay;
    const/4 v6, 0x0

    .line 874
    .local v6, "both":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNAList:Ljava/util/List;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .end local v15    # "i$":I
    .local v14, "i$":Ljava/util/Iterator;
    :cond_2d
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_2e

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/allshare/Device;

    .line 875
    .restart local v10    # "dlna":Lcom/samsung/android/allshare/Device;
    const-string v30, "WifiDisplaySettings"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "WifiDisplay Mac Address = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v7}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " DLNA Mac Address = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v10}, Lcom/samsung/android/allshare/Device;->getScreenSharingP2pMacAddr()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    invoke-virtual {v7}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v30

    invoke-virtual {v10}, Lcom/samsung/android/allshare/Device;->getScreenSharingP2pMacAddr()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2d

    .line 877
    const/4 v6, 0x1

    .line 881
    .end local v10    # "dlna":Lcom/samsung/android/allshare/Device;
    :cond_2e
    if-eqz v6, :cond_30

    .line 872
    :cond_2f
    :goto_f
    add-int/lit8 v14, v15, 0x1

    .local v14, "i$":I
    move v15, v14

    .end local v14    # "i$":I
    .restart local v15    # "i$":I
    goto :goto_e

    .line 884
    .end local v15    # "i$":I
    .local v14, "i$":Ljava/util/Iterator;
    :cond_30
    const-string v30, "WifiDisplaySettings"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "applyState add wfd device = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v7}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v7}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    invoke-virtual {v7, v2}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v30

    if-nez v30, :cond_31

    .line 886
    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v7, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->createWifiDisplayPreference(Landroid/hardware/display/WifiDisplay;Z)Landroid/preference/Preference;

    move-result-object v30

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 888
    :cond_31
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReadyToConnect:Z

    move/from16 v30, v0

    if-eqz v30, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWaitingDevice:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual {v7}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_32

    .line 889
    const-string v30, "WifiDisplaySettings"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "change device to "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    .line 891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWaitingDevice:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    .line 892
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mWaitingDevice:Ljava/lang/String;

    .line 893
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mReadyToConnect:Z

    .line 895
    const-string v30, "CHA_DEV"

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    .line 897
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectScreenSharing(Landroid/hardware/display/WifiDisplay;)V

    goto/16 :goto_f

    .line 899
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDeviceAddress:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_33

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    move/from16 v30, v0

    if-nez v30, :cond_33

    if-nez v3, :cond_33

    .line 901
    const-string v30, "WifiDisplaySettings"

    const-string v31, "connect for smart-school"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDeviceAddress:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectWifiDisplay(Ljava/lang/String;)V

    .line 905
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mDeviceAddress:Ljava/lang/String;

    goto/16 :goto_f

    .line 906
    :cond_33
    if-eqz v18, :cond_36

    const/16 v30, 0x1

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_36

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v30

    invoke-virtual {v7}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_36

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    move/from16 v30, v0

    if-nez v30, :cond_36

    if-nez v3, :cond_36

    .line 910
    const-string v30, "WifiDisplaySettings"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "connectLastConnection deviceInfo="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v7}, Landroid/hardware/display/WifiDisplay;->getDeviceInfo()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    invoke-virtual {v7}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, "QIC_PAN"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_35

    .line 914
    const-string v30, "AUTO_QIC_PAN"

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    .line 918
    :cond_34
    :goto_10
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectScreenSharing(Landroid/hardware/display/WifiDisplay;)V

    goto/16 :goto_f

    .line 915
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, "SHA_PAN"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_34

    .line 916
    const-string v30, "AUTO_SHA_PAN"

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    goto :goto_10

    .line 919
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWfdCertification:Lcom/android/settings/wfd/Wfd_Certification;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings/wfd/Wfd_Certification;->getCertificationModeOn()Z

    move-result v30

    if-nez v30, :cond_2f

    if-nez v28, :cond_2f

    if-nez v3, :cond_2f

    array-length v0, v5

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_2f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    move/from16 v30, v0

    if-nez v30, :cond_2f

    .line 921
    const-string v30, "WifiDisplaySettings"

    const-string v31, "Only one device found"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    .line 923
    invoke-virtual {v7}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, "QIC_PAN"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_38

    .line 926
    const-string v30, "AUTO_QIC_PAN"

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    .line 930
    :cond_37
    :goto_11
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectScreenSharing(Landroid/hardware/display/WifiDisplay;)V

    goto/16 :goto_f

    .line 927
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, "SHA_PAN"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_37

    .line 928
    const-string v30, "AUTO_SHA_PAN"

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    goto :goto_11

    .line 938
    .end local v6    # "both":Z
    .end local v7    # "d":Landroid/hardware/display/WifiDisplay;
    .end local v14    # "i$":Ljava/util/Iterator;
    .restart local v15    # "i$":I
    :cond_39
    const/4 v13, 0x0

    :goto_12
    move/from16 v0, v26

    if-ge v13, v0, :cond_19

    .line 939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v25

    .line 941
    .restart local v25    # "route":Landroid/media/MediaRouter$RouteInfo;
    const/16 v30, 0x4

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v30

    if-eqz v30, :cond_3a

    .line 943
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->createRoutePreference(Landroid/media/MediaRouter$RouteInfo;)Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;

    move-result-object v27

    .line 944
    .local v27, "routePreference":Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;
    if-eqz v27, :cond_3a

    .line 945
    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 938
    .end local v27    # "routePreference":Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;
    :cond_3a
    add-int/lit8 v13, v13, 0x1

    goto :goto_12

    .line 956
    .end local v15    # "i$":I
    .end local v25    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_3b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v30

    check-cast v30, Lcom/android/settings/wfd/WfdPickerDialog;

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Lcom/android/settings/wfd/WfdPickerDialog;->showProgressBar(Z)V

    goto/16 :goto_8

    .line 960
    .end local v2    # "activeDisplay":Landroid/hardware/display/WifiDisplay;
    .end local v4    # "arr$":[Landroid/hardware/display/WifiDisplay;
    .end local v5    # "availableDisplays":[Landroid/hardware/display/WifiDisplay;
    .end local v8    # "displayList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/WifiDisplay;>;"
    .end local v9    # "displays":[Landroid/hardware/display/WifiDisplay;
    .end local v11    # "dlnaCount":I
    .end local v13    # "i":I
    .end local v17    # "lastConnectedDLNADevice":Landroid/hardware/display/DLNADevice;
    .end local v18    # "lastConnectedDisplay":Landroid/hardware/display/WifiDisplay;
    .end local v19    # "len$":I
    .end local v22    # "remoteDisplayRouteCount":I
    .end local v26    # "routeCount":I
    :cond_3c
    const/16 v30, 0x2

    move/from16 v0, v30

    if-eq v12, v0, :cond_3d

    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v12, v0, :cond_1a

    .line 962
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v30

    const-string v31, "device_policy"

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/admin/DevicePolicyManager;

    .line 964
    .local v20, "mDPM":Landroid/app/admin/DevicePolicyManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    move-object/from16 v30, v0

    if-nez v30, :cond_3e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    move/from16 v30, v0

    if-eqz v30, :cond_40

    :cond_3e
    if-eqz v20, :cond_3f

    const/16 v30, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v30

    if-eqz v30, :cond_40

    :cond_3f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    move/from16 v30, v0

    if-nez v30, :cond_1a

    .line 966
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNo_device_found_layout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    const/16 v31, 0x8

    invoke-virtual/range {v30 .. v31}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRenameDialog:Landroid/app/AlertDialog;

    move-object/from16 v30, v0

    if-eqz v30, :cond_41

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRenameDialog:Landroid/app/AlertDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/AlertDialog;->cancel()V

    .line 970
    :cond_41
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/Activity;->closeContextMenu()V

    .line 971
    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->setGuidedActionBarClickable(Z)V

    goto/16 :goto_8
.end method

.method private connectAllShareFW()V
    .locals 4

    .prologue
    .line 1278
    const-string v1, "WifiDisplaySettings"

    const-string v2, "connectAllShareFW"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    :try_start_0
    const-string v1, "WifiDisplaySettings"

    const-string v2, "ServiceConnector.createServiceProvider"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNAServiceConnectListener:Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;

    const-string v3, "com.samsung.android.allshare.media"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/allshare/ServiceConnector;->createServiceProvider(Landroid/content/Context;Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;Ljava/lang/String;)Lcom/samsung/android/allshare/ERROR;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1289
    :goto_0
    return-void

    .line 1282
    :catch_0
    move-exception v0

    .line 1283
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectAllShareFW - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1284
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 1285
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectAllShareFW - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1286
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1287
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectAllShareFW - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private connectDLNA(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "resumeFlag"    # Z

    .prologue
    .line 1149
    const-string v2, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectDLNA device = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.screensharing.DLNA_CONNECTION_REQUEST"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1152
    .local v0, "connectDLNAIntent":Landroid/content/Intent;
    const-string v2, "uid"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1153
    const-string v2, "resume_request"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1154
    const/4 v1, 0x0

    .line 1155
    .local v1, "playerType":I
    iget-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsVideoRunning:Z

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    .line 1156
    iget-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsMusicRunning:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    .line 1158
    :cond_0
    :goto_0
    const-string v2, "player_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1159
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1160
    const-string v2, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send Intent DLNA_CONNECTION_REQUEST : playerType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", resume = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    return-void

    .line 1156
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private connectScreenSharing(Landroid/hardware/display/WifiDisplay;)V
    .locals 7
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1028
    const-string v4, "WifiDisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connectScreenSharing : WifiDisplay Info "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , devInfo = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceInfo()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    iput-boolean v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    .line 1031
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanTimeout:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1032
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestartScan:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1033
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceInfo()I

    move-result v4

    if-eq v4, v3, :cond_0

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceInfo()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    :cond_0
    move v0, v3

    .line 1034
    .local v0, "isSupportScreenSharing":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsVideoRunning:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/wfd/WfdSettingsUtils;->isVideoRunningOnTop(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_1
    move v1, v3

    .line 1036
    .local v1, "isVideoRunning":Z
    :goto_1
    iget-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsKnoxMode:Z

    if-nez v4, :cond_3

    .line 1037
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    move v2, v3

    :cond_2
    iput-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsPendingSetup:Z

    .line 1040
    :cond_3
    if-eqz v0, :cond_7

    .line 1041
    iget-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsPendingSetup:Z

    if-eqz v2, :cond_4

    .line 1042
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingDevice:Ljava/lang/String;

    .line 1044
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/16 v4, 0xb

    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsPendingSetup:Z

    invoke-virtual {v2, v4, v5, v6}, Landroid/hardware/display/DisplayManager;->connectWifiDisplayWithMode(ILjava/lang/String;Z)V

    .line 1049
    :goto_2
    iput-boolean v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectionRequested:Z

    .line 1052
    if-eqz v0, :cond_8

    .line 1053
    const-string v2, "CNTP"

    const-string v3, "SCR_SHA"

    invoke-direct {p0, v2, v3}, Lcom/android/settings/wfd/WifiDisplaySettings;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    :goto_3
    const-string v2, "CONN"

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/wfd/WifiDisplaySettings;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    return-void

    .end local v0    # "isSupportScreenSharing":Z
    .end local v1    # "isVideoRunning":Z
    :cond_5
    move v0, v2

    .line 1033
    goto :goto_0

    .restart local v0    # "isSupportScreenSharing":Z
    :cond_6
    move v1, v2

    .line 1034
    goto :goto_1

    .line 1046
    .restart local v1    # "isVideoRunning":Z
    :cond_7
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/hardware/display/DisplayManager;->connectWifiDisplay(Ljava/lang/String;)V

    goto :goto_2

    .line 1055
    :cond_8
    const-string v2, "CNTP"

    const-string v3, "SCR_MIR"

    invoke-direct {p0, v2, v3}, Lcom/android/settings/wfd/WifiDisplaySettings;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private connectScreenSharing(Lcom/samsung/android/allshare/Device;)V
    .locals 14
    .param p1, "device"    # Lcom/samsung/android/allshare/Device;

    .prologue
    .line 1060
    const-string v0, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectScreenSharing : DlnaDevice Info "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/allshare/Device;->getModelName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    instance-of v11, p1, Lcom/samsung/android/allshare/ScreenSharingDevice;

    .line 1063
    .local v11, "isSupportScreenSharing":Z
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsVideoRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/wfd/WfdSettingsUtils;->isVideoRunningOnTop(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_0
    const/4 v12, 0x1

    .line 1065
    .local v12, "isVideoRunning":Z
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsKnoxMode:Z

    if-nez v0, :cond_9

    if-nez v12, :cond_1

    if-nez v11, :cond_9

    .line 1066
    :cond_1
    const/4 v8, 0x0

    .line 1067
    .local v8, "dlnaDevice":Lcom/samsung/android/allshare/Device;
    if-eqz v11, :cond_8

    .line 1068
    const-string v0, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectScreenSharing SSDevice id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSSVideoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/allshare/Device;

    .line 1070
    .local v9, "dmr":Lcom/samsung/android/allshare/Device;
    invoke-virtual {v9}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1071
    move-object v8, v9

    .line 1072
    const-string v0, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectScreenSharing found SSVideoDevice id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    .end local v9    # "dmr":Lcom/samsung/android/allshare/Device;
    :cond_3
    if-nez v8, :cond_4

    .line 1077
    const-string v0, "WifiDisplaySettings"

    const-string v2, "connectScreenSharing can\'t find SSVideoDevice. Nonsense!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    if-eqz v8, :cond_5

    .line 1083
    const v0, 0x2208a

    invoke-virtual {v8}, Lcom/samsung/android/allshare/Device;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v8}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/settings/wfd/WifiDisplaySettings;->requestPopup(ILjava/lang/String;ZLjava/lang/String;)V

    .line 1084
    invoke-virtual {v8}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v11}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectDLNA(Ljava/lang/String;Z)V

    .line 1090
    .end local v8    # "dlnaDevice":Lcom/samsung/android/allshare/Device;
    :cond_5
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    .line 1091
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1092
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestartScan:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1094
    if-eqz v11, :cond_6

    .line 1095
    invoke-static {}, Lcom/android/settings/wfd/WfdSettingsUtils;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v1

    .line 1096
    .local v1, "localAddress":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string v2, "7236"

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/allshare/Device;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/allshare/Device;->getScreenSharingP2pMacAddr()Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsKnoxMode:Z

    if-eqz v7, :cond_a

    const/4 v7, 0x0

    :goto_3
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/display/DisplayManager;->enableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v13, p1

    .line 1097
    check-cast v13, Lcom/samsung/android/allshare/ScreenSharingDevice;

    .line 1098
    .local v13, "ssDevice":Lcom/samsung/android/allshare/ScreenSharingDevice;
    invoke-direct {p0, v13}, Lcom/android/settings/wfd/WifiDisplaySettings;->sendScreenSharingTriggerMsg(Lcom/samsung/android/allshare/ScreenSharingDevice;)V

    .line 1101
    .end local v1    # "localAddress":Ljava/lang/String;
    .end local v13    # "ssDevice":Lcom/samsung/android/allshare/ScreenSharingDevice;
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectionRequested:Z

    .line 1104
    if-eqz v11, :cond_b

    .line 1105
    const-string v0, "CNTP"

    const-string v2, "SCR_SHA"

    invoke-direct {p0, v0, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    :goto_4
    const-string v0, "CONN"

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    return-void

    .line 1063
    .end local v12    # "isVideoRunning":Z
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1079
    .restart local v8    # "dlnaDevice":Lcom/samsung/android/allshare/Device;
    .restart local v12    # "isVideoRunning":Z
    :cond_8
    move-object v8, p1

    goto :goto_1

    .line 1086
    .end local v8    # "dlnaDevice":Lcom/samsung/android/allshare/Device;
    :cond_9
    if-eqz v11, :cond_5

    .line 1087
    const v0, 0x2208a

    invoke-virtual {p1}, Lcom/samsung/android/allshare/Device;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/settings/wfd/WifiDisplaySettings;->requestPopup(ILjava/lang/String;ZLjava/lang/String;)V

    goto :goto_2

    .restart local v1    # "localAddress":Ljava/lang/String;
    :cond_a
    move v7, v12

    .line 1096
    goto :goto_3

    .line 1107
    .end local v1    # "localAddress":Ljava/lang/String;
    :cond_b
    const-string v0, "CNTP"

    const-string v2, "DLNA"

    invoke-direct {p0, v0, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private connectWifiDisplay(Ljava/lang/String;)V
    .locals 2
    .param p1, "connectingDevice"    # Ljava/lang/String;

    .prologue
    .line 1020
    const-string v0, "WifiDisplaySettings"

    const-string v1, "connectWifiDisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1023
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->connectWifiDisplay(Ljava/lang/String;)V

    .line 1024
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectionRequested:Z

    .line 1025
    return-void
.end method

.method private connectWifiDisplayWithPin(Ljava/lang/String;)V
    .locals 2
    .param p1, "connectingDevice"    # Ljava/lang/String;

    .prologue
    .line 1120
    const-string v0, "WifiDisplaySettings"

    const-string v1, "connectWifiDisplayWithPin"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1123
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->connectWifiDisplayWithPin(Ljava/lang/String;)V

    .line 1124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectionRequested:Z

    .line 1125
    return-void
.end method

.method private createDLNAPreference(Lcom/samsung/android/allshare/Device;Ljava/lang/String;)Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;
    .locals 2
    .param p1, "device"    # Lcom/samsung/android/allshare/Device;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1174
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Lcom/samsung/android/allshare/Device;Ljava/lang/String;)V

    return-object v0
.end method

.method private createDongleRenameDialog()Landroid/app/AlertDialog;
    .locals 18

    .prologue
    .line 1916
    const/16 v2, 0x17

    .line 1917
    .local v2, "MAX_NAME_LENGTH":I
    const/16 v3, 0x17

    .line 1919
    .local v3, "MIN_NAME_LENGTH":I
    const/4 v15, 0x1

    new-array v7, v15, [Landroid/text/InputFilter;

    .line 1920
    .local v7, "filters":[Landroid/text/InputFilter;
    const/4 v15, 0x0

    new-instance v16, Lcom/android/settings/wfd/WifiDisplaySettings$15;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$15;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    aput-object v16, v7, v15

    .line 1941
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const-string v16, "layout_inflater"

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 1942
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const v15, 0x7f040232

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 1943
    .local v10, "layout":Landroid/view/View;
    const v15, 0x7f0d0535

    invoke-virtual {v10, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    .line 1944
    .local v12, "mEditDeviceName":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    .line 1945
    const v15, 0x7f0d0536

    invoke-virtual {v10, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1946
    .local v5, "availableSpecialChars":Landroid/widget/TextView;
    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1947
    const v15, 0x7f0d0537

    invoke-virtual {v10, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1948
    .local v14, "specialChars":Landroid/widget/TextView;
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1949
    const-string v15, "~`!@$%^&*()-_=+[];\\:\'\",<.>/?"

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1951
    const/4 v15, 0x6

    invoke-virtual {v12, v15}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1952
    const/16 v15, 0x4000

    invoke-virtual {v12, v15}, Landroid/widget/EditText;->setInputType(I)V

    .line 1953
    invoke-virtual {v12, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1955
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v15}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v15

    invoke-virtual {v15}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v4

    .line 1957
    .local v4, "activeDisplay":Landroid/hardware/display/WifiDisplay;
    if-eqz v4, :cond_0

    .line 1958
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->isChanged:Z

    if-nez v15, :cond_1

    .line 1959
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1965
    :cond_0
    :goto_0
    new-instance v11, Lcom/android/settings/wfd/WifiDisplaySettings$16;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v12}, Lcom/android/settings/wfd/WifiDisplaySettings$16;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/EditText;)V

    .line 1977
    .local v11, "mDismissListener":Landroid/content/DialogInterface$OnDismissListener;
    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-interface {v15}, Landroid/text/Editable;->length()I

    move-result v15

    invoke-virtual {v12, v15}, Landroid/widget/EditText;->setSelection(I)V

    .line 1978
    invoke-virtual {v12}, Landroid/widget/EditText;->selectAll()V

    .line 1979
    const-string v15, "input_method"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/wfd/WifiDisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodManager;

    .line 1981
    .local v8, "imm":Landroid/view/inputmethod/InputMethodManager;
    new-instance v15, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v16, 0x7f0e10d8

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v16

    const v17, 0x7f0e0826

    invoke-virtual/range {v16 .. v17}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v16

    new-instance v17, Lcom/android/settings/wfd/WifiDisplaySettings$18;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12, v4, v8}, Lcom/android/settings/wfd/WifiDisplaySettings$18;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/EditText;Landroid/hardware/display/WifiDisplay;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v16

    const v17, 0x7f0e0827

    invoke-virtual/range {v16 .. v17}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v16

    new-instance v17, Lcom/android/settings/wfd/WifiDisplaySettings$17;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v12, v8}, Lcom/android/settings/wfd/WifiDisplaySettings$17;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;Landroid/widget/EditText;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 2007
    .local v6, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/16 v16, 0x5

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 2008
    new-instance v15, Lcom/android/settings/wfd/WifiDisplaySettings$19;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$19;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v6, v15}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 2014
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 2015
    new-instance v15, Lcom/android/settings/wfd/WifiDisplaySettings$20;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$20;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v6, v15}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2021
    const/4 v15, -0x1

    invoke-virtual {v6, v15}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v13

    .line 2022
    .local v13, "mOkButton":Landroid/widget/Button;
    new-instance v15, Lcom/android/settings/wfd/WifiDisplaySettings$21;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v13, v12}, Lcom/android/settings/wfd/WifiDisplaySettings$21;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/Button;Landroid/widget/EditText;)V

    invoke-virtual {v12, v15}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2057
    return-object v6

    .line 1961
    .end local v6    # "dialog":Landroid/app/AlertDialog;
    .end local v8    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v11    # "mDismissListener":Landroid/content/DialogInterface$OnDismissListener;
    .end local v13    # "mOkButton":Landroid/widget/Button;
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->changeString:Ljava/lang/String;

    invoke-virtual {v12, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private createRoutePreference(Landroid/media/MediaRouter$RouteInfo;)Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;
    .locals 3
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 1129
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->findWifiDisplay(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    .line 1130
    .local v0, "display":Landroid/hardware/display/WifiDisplay;
    if-nez v0, :cond_0

    .line 1131
    new-instance v1, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;)V

    .line 1133
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createWifiDisplayPreference(Landroid/hardware/display/WifiDisplay;Z)Landroid/preference/Preference;
    .locals 7
    .param p1, "d"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "paired"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1394
    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v4, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/hardware/display/WifiDisplay;)V

    .line 1395
    .local v2, "p":Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v3

    .line 1396
    .local v3, "wifiDisplayStatus":Landroid/hardware/display/WifiDisplayStatus;
    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    .line 1397
    .local v0, "activeDisplay":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    .line 1398
    .local v1, "activeDisplayState":I
    invoke-virtual {p1, v0}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1399
    packed-switch v1, :pswitch_data_0

    .line 1419
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 1420
    const v4, 0x7f04025c

    invoke-virtual {v2, v4}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setWidgetLayoutResource(I)V

    .line 1422
    :cond_1
    return-object v2

    .line 1401
    :pswitch_0
    const-string v4, "WifiDisplaySettings"

    const-string v5, "WifiDisplayStatus.DISPLAY_STATE_CONNECTED"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setEnabled(Z)V

    goto :goto_0

    .line 1405
    :pswitch_1
    const-string v4, "WifiDisplaySettings"

    const-string v5, "WifiDisplayStatus.DISPLAY_STATE_CONNECTING"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    invoke-virtual {v2, v6}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setEnabled(Z)V

    goto :goto_0

    .line 1411
    :cond_2
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1412
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1413
    const v4, 0x7f0e0310

    invoke-virtual {v2, v4}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setSummary(I)V

    .line 1414
    invoke-virtual {v2, v6}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setEnabled(Z)V

    goto :goto_0

    .line 1399
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private disconnectAllShareFW()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1292
    const-string v0, "WifiDisplaySettings"

    const-string v1, "disconnectAllShareFW"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNADeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    if-eqz v0, :cond_0

    .line 1295
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNADeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_AVPLAYER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->setDeviceFinderEventListener(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;)V

    .line 1296
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNADeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_IMAGEVIEWER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->setDeviceFinderEventListener(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;)V

    .line 1297
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNADeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_SCREENSHARING:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->setDeviceFinderEventListener(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;)V

    .line 1299
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNAServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

    invoke-static {v0}, Lcom/samsung/android/allshare/ServiceConnector;->deleteServiceProvider(Lcom/samsung/android/allshare/ServiceProvider;)V

    .line 1300
    return-void
.end method

.method private disconnectDLNA(Ljava/lang/String;)V
    .locals 5
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 1164
    const-string v2, "WifiDisplaySettings"

    const-string v3, "disconnectDLNA device"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.screensharing.DLNA_DISCONNECTION_REQUEST"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1166
    .local v0, "disconnectDLNAIntent":Landroid/content/Intent;
    const-string v2, "uid"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1167
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWaitingDevice:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 1168
    .local v1, "keepAliveApplication":Z
    :goto_0
    const-string v2, "keep_alive"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1169
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1170
    const-string v2, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send Intent DLNA_DISCONNECTION_REQUEST : uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    return-void

    .line 1167
    .end local v1    # "keepAliveApplication":Z
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private disconnectDevice()V
    .locals 2

    .prologue
    .line 1508
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1509
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getConnectedState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 1510
    const-string v0, "WifiDisplaySettings"

    const-string v1, "disconnect AP Mirroring device for changing device"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    sget-object v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->AP:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPreviousConnectionType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    .line 1512
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->disableWifiDisplay()V

    .line 1518
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->isDLNADeviceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1519
    const-string v0, "WifiDisplaySettings"

    const-string v1, "disconnect DLNA device (paused or M4 pending case) for changing device"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDLNADeviceUid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->disconnectDLNA(Ljava/lang/String;)V

    .line 1527
    :cond_0
    :goto_1
    return-void

    .line 1514
    :cond_1
    const-string v0, "WifiDisplaySettings"

    const-string v1, "disconnect Wifidisplay for changing device"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    sget-object v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->P2P:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPreviousConnectionType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    .line 1516
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->disconnectForMirroringSwitching()V

    goto :goto_0

    .line 1522
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->isDLNADeviceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1523
    const-string v0, "WifiDisplaySettings"

    const-string v1, "disconnect DLNA device for changing device"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    sget-object v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->DLNA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPreviousConnectionType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    .line 1525
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDLNADeviceUid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->disconnectDLNA(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private findWifiDisplay(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;
    .locals 6
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 1137
    if-eqz p1, :cond_1

    .line 1138
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v5}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/display/WifiDisplayStatus;->getDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v2

    .line 1139
    .local v2, "displays":[Landroid/hardware/display/WifiDisplay;
    move-object v0, v2

    .local v0, "arr$":[Landroid/hardware/display/WifiDisplay;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 1140
    .local v1, "display":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1145
    .end local v0    # "arr$":[Landroid/hardware/display/WifiDisplay;
    .end local v1    # "display":Landroid/hardware/display/WifiDisplay;
    .end local v2    # "displays":[Landroid/hardware/display/WifiDisplay;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :goto_1
    return-object v1

    .line 1139
    .restart local v0    # "arr$":[Landroid/hardware/display/WifiDisplay;
    .restart local v1    # "display":Landroid/hardware/display/WifiDisplay;
    .restart local v2    # "displays":[Landroid/hardware/display/WifiDisplay;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1145
    .end local v0    # "arr$":[Landroid/hardware/display/WifiDisplay;
    .end local v1    # "display":Landroid/hardware/display/WifiDisplay;
    .end local v2    # "displays":[Landroid/hardware/display/WifiDisplay;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private insertLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 2153
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.screensharing.LOGGING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2154
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v1, "feature"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2155
    const-string v1, "extra"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2157
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2158
    return-void
.end method

.method private prepareConnection()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1497
    const-string v0, "WifiDisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can connect to waitingDevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWaitingDevice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    sget-object v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPreviousConnectionType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    .line 1499
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    sget-object v1, Landroid/hardware/display/DisplayManager$WfdAppState;->SETUP:Landroid/hardware/display/DisplayManager$WfdAppState;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->setActivityState(Landroid/hardware/display/DisplayManager$WfdAppState;)V

    .line 1500
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v3}, Landroid/hardware/display/DisplayManager;->getLastConnectedDisplay(Z)Landroid/hardware/display/WifiDisplay;

    .line 1501
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->startScanWifiDisplays()V

    .line 1502
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->updateDLNAList()V

    .line 1503
    iput-boolean v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReadyToConnect:Z

    .line 1504
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    .line 1505
    return-void
.end method

.method private requestPopup(ILjava/lang/String;ZLjava/lang/String;)V
    .locals 5
    .param p1, "cause"    # I
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "isStartingDLNA"    # Z
    .param p4, "uid_DLNA"    # Ljava/lang/String;

    .prologue
    .line 2125
    const-string v2, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestPopup cause = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.wfd.LAUNCH_WFD_POPUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2128
    .local v1, "intent":Landroid/content/Intent;
    const v2, 0x10808000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2129
    packed-switch p1, :pswitch_data_0

    .line 2143
    :cond_0
    :goto_0
    const-string v2, "cause"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2144
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2149
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 2132
    .restart local v1    # "intent":Landroid/content/Intent;
    :pswitch_0
    const-string v2, "WifiDisplaySettings"

    const-string v3, "requestPopup << POPUP_CAUSE_CONNECTING"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2133
    const-string v2, "DeviceName"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2134
    if-eqz p3, :cond_0

    .line 2135
    const-string v2, "isStartingDLNA"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2136
    const-string v2, "uid_DLNA"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2146
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 2147
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "intent call exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2129
    :pswitch_data_0
    .packed-switch 0x2208a
        :pswitch_0
    .end packed-switch
.end method

.method private scheduleUpdate(I)V
    .locals 2
    .param p1, "changes"    # I

    .prologue
    .line 603
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStarted:Z

    if-eqz v0, :cond_1

    .line 604
    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    if-nez v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 607
    :cond_0
    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    .line 609
    :cond_1
    return-void
.end method

.method private sendScreenSharingTriggerMsg(Lcom/samsung/android/allshare/ScreenSharingDevice;)V
    .locals 6
    .param p1, "ssDevice"    # Lcom/samsung/android/allshare/ScreenSharingDevice;

    .prologue
    .line 1112
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/wfd/WfdSettingsUtils;->getWlanMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1113
    .local v2, "wlanMacAddress":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/wfd/WfdSettingsUtils;->getP2pMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1114
    .local v1, "p2pMacAddress":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/wfd/WfdSettingsUtils;->getBluetoothMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1115
    .local v0, "btMacAddress":Ljava/lang/String;
    const-string v3, "WifiDisplaySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendScreenSharingTriggerMsg :  wlanMacAddress="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " p2pMacAddress="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " btMacAddress="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    const/16 v3, 0x1c44

    invoke-virtual {p1, v2, v1, v0, v3}, Lcom/samsung/android/allshare/ScreenSharingDevice;->connectScreenSharingM2TV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1117
    return-void
.end method

.method private setGuidedActionBarClickable(Z)V
    .locals 4
    .param p1, "clickable"    # Z

    .prologue
    .line 2076
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2077
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 2079
    .local v0, "ab":Landroid/app/ActionBar;
    :goto_0
    if-eqz v0, :cond_1

    .line 2080
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 2082
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 2083
    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eq v3, p1, :cond_0

    .line 2084
    invoke-virtual {v2, p1}, Landroid/view/View;->setClickable(Z)V

    .line 2085
    invoke-virtual {v2, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 2088
    :cond_0
    if-eqz p1, :cond_1

    .line 2089
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 2093
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    return-void

    .line 2077
    .end local v0    # "ab":Landroid/app/ActionBar;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setMenuIcon()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 495
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v0, 0x1

    .line 496
    .local v0, "isLandscape":Z
    :goto_0
    const-string v3, "WifiDisplaySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMenuIcon():: isLandscape="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    if-nez v3, :cond_2

    .line 499
    const-string v2, "WifiDisplaySettings"

    const-string v3, "onConfigurationChanged:: menu item is not created yet"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_0
    :goto_1
    return-void

    .end local v0    # "isLandscape":Z
    :cond_1
    move v0, v2

    .line 495
    goto :goto_0

    .line 502
    .restart local v0    # "isLandscape":Z
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 503
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v1

    .line 505
    .local v1, "retcon":Z
    if-eqz v1, :cond_0

    .line 506
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 507
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method private showDisconnectDialog()V
    .locals 3

    .prologue
    .line 597
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 599
    return-void
.end method

.method private showInputMethod()V
    .locals 4

    .prologue
    .line 2096
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2097
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 2098
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/wfd/WifiDisplaySettings$22;

    invoke-direct {v1, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$22;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2122
    :goto_0
    return-void

    .line 2109
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/wfd/WifiDisplaySettings$23;

    invoke-direct {v1, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$23;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private showOptionsDialog(Landroid/hardware/display/WifiDisplay;)V
    .locals 8
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 1426
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04025b

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1427
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f0d01c5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 1428
    .local v3, "nameEditText":Landroid/widget/EditText;
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1430
    new-instance v1, Lcom/android/settings/wfd/WifiDisplaySettings$10;

    invoke-direct {v1, p0, v3, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$10;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/EditText;Landroid/hardware/display/WifiDisplay;)V

    .line 1441
    .local v1, "done":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$11;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$11;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V

    .line 1448
    .local v2, "forget":Landroid/content/DialogInterface$OnClickListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0e0313

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0e0315

    invoke-virtual {v5, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0e0314

    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1455
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1456
    return-void
.end method

.method private switchChanged(Z)V
    .locals 5
    .param p1, "isChecked"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1472
    iget-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->preChecked:Z

    if-ne p1, v2, :cond_0

    .line 1494
    :goto_0
    return-void

    .line 1475
    :cond_0
    if-eqz p1, :cond_1

    .line 1477
    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    .line 1478
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1479
    const-string v0, "WifiDisplaySettings"

    const-string v1, "onCheckedChanged() : already WfdConnected!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1483
    :cond_1
    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    .line 1484
    const-string v2, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isChecked : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_on"

    if-eqz p1, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1489
    if-eqz p1, :cond_3

    .line 1490
    iput-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    .line 1493
    :cond_3
    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->preChecked:Z

    goto :goto_0
.end method

.method private toggleRoute(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 3
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 1372
    const-string v0, "WifiDisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toggleRoute route = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1374
    const-string v0, "WifiDisplaySettings"

    const-string v1, "toggleRoute showDialogFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/MediaRouteDialogPresenter;->showDialogFragment(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)Landroid/app/DialogFragment;

    .line 1381
    :goto_0
    return-void

    .line 1378
    :cond_0
    const-string v0, "WifiDisplaySettings"

    const-string v1, "toggleRoute route.select"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->select()V

    goto :goto_0
.end method

.method private unscheduleUpdate()V
    .locals 2

    .prologue
    .line 612
    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    if-eqz v0, :cond_0

    .line 613
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    .line 614
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 616
    :cond_0
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 248
    const v0, 0x7f0e0d81

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 244
    const/16 v0, 0x66

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 1468
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1469
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 322
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 324
    const-string v0, "WifiDisplaySettings"

    const-string v1, "onActivityCreated()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    iput-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    .line 328
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/settings/wfd/WifiDisplaySettings;->switchChanged(Z)V

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 332
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->registerForContextMenu(Landroid/view/View;)V

    .line 334
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_certification_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 338
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_wps_config"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 343
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->scheduleUpdate(I)V

    .line 346
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-nez v0, :cond_1

    .line 348
    const-string v0, "WifiDisplaySettings"

    const-string v1, "Connected but mWifiDisplayOnSetting false, so change status"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_on"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 353
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 368
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 513
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->setMenuIcon()V

    .line 514
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 562
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 563
    const-string v0, "WifiDisplaySettings"

    const-string v1, "MENU_ID_PIN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectWifiDisplayWithPin(Ljava/lang/String;)V

    .line 566
    iput-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    .line 573
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 569
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 570
    const-string v0, "WifiDisplaySettings"

    const-string v1, "user press to rename!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->createDongleRenameDialog()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRenameDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 253
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v10, "media_router"

    invoke-virtual {v7, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/MediaRouter;

    iput-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v10, "display"

    invoke-virtual {v7, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/display/DisplayManager;

    iput-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v10, "wifi"

    invoke-virtual {v7, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    iput-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 260
    new-instance v7, Lcom/android/settings/wfd/Wfd_Certification;

    iget-object v10, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-direct {v7, v10, v11, p0}, Lcom/android/settings/wfd/Wfd_Certification;-><init>(Landroid/content/Context;Landroid/hardware/display/DisplayManager;Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWfdCertification:Lcom/android/settings/wfd/Wfd_Certification;

    .line 262
    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdBrokerRunning(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 263
    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.DETACH_WFD_BROKER"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 266
    :cond_0
    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v7}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v6

    .line 267
    .local v6, "wifiDisplayStatus":Landroid/hardware/display/WifiDisplayStatus;
    invoke-virtual {v6}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v7

    const/4 v10, 0x2

    if-ne v7, v10, :cond_6

    move v7, v8

    :goto_0
    iput-boolean v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    .line 268
    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v7}, Landroid/hardware/display/DisplayManager;->isDLNADeviceConnected()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 269
    iput-boolean v8, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    .line 270
    :cond_1
    const v7, 0x7f0800e2

    invoke-virtual {p0, v7}, Lcom/android/settings/wfd/WifiDisplaySettings;->addPreferencesFromResource(I)V

    .line 271
    invoke-virtual {p0, v8}, Lcom/android/settings/wfd/WifiDisplaySettings;->setHasOptionsMenu(Z)V

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    instance-of v7, v7, Lcom/android/settings/wfd/WfdPickerDialog;

    iput-boolean v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    .line 274
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iput-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 277
    .local v2, "intent":Landroid/content/Intent;
    const-string v7, "com.sec.android.allshare.intent.action.CAST_START"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 278
    const-string v7, "deviceAddress"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDeviceAddress:Ljava/lang/String;

    .line 282
    :goto_1
    iget-boolean v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    if-eqz v7, :cond_2

    .line 283
    const-string v7, "WifiDisplaySettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onCreate() : mInPickerDialog="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_2
    const-string v7, "more_actions_package_name"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 287
    .local v4, "packageFrom":Ljava/lang/String;
    const-string v7, "more_actions_knox_state"

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsKnoxMode:Z

    .line 288
    const-string v7, "more_actions_screen_sharing_mode"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_8

    move v5, v8

    .line 290
    .local v5, "showDlnaList":Z
    :goto_2
    if-eqz v4, :cond_4

    .line 291
    const-string v7, "WifiDisplaySettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCreate() : packageFrom "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    if-eqz v5, :cond_3

    .line 293
    const-string v7, "com.samsung.android.video"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsVideoRunning:Z

    .line 294
    const-string v7, "com.sec.android.gallery3d"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsGalleryRunning:Z

    .line 295
    const-string v7, "com.sec.android.app.music"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsMusicRunning:Z

    .line 297
    :cond_3
    const-string v7, "SHA_PAN"

    iput-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    .line 300
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectAllShareFW()V

    .line 302
    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    const-string v9, "multiwindow_facade"

    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 304
    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v7, :cond_5

    .line 305
    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getArrangeState()I

    move-result v1

    .line 306
    .local v1, "currentState":I
    const-string v7, "WifiDisplaySettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCreate currentState = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    if-eqz v1, :cond_5

    .line 309
    if-ne v1, v8, :cond_5

    .line 310
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 311
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    .line 312
    .local v3, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/16 v7, 0xf

    invoke-virtual {v3, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 313
    invoke-virtual {v0, v3}, Landroid/app/Activity;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 318
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "currentState":I
    .end local v3    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_5
    return-void

    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "packageFrom":Ljava/lang/String;
    .end local v5    # "showDlnaList":Z
    :cond_6
    move v7, v9

    .line 267
    goto/16 :goto_0

    .line 280
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_7
    const-string v7, "cause"

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->extraCauseOfStart:I

    goto/16 :goto_1

    .restart local v4    # "packageFrom":Ljava/lang/String;
    :cond_8
    move v5, v9

    .line 288
    goto/16 :goto_2
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 519
    instance-of v4, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v4, :cond_0

    .line 520
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3    # "menuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    iget v5, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/Preference;

    .line 522
    .local v3, "preference":Landroid/preference/Preference;
    const v4, 0x7f0e10d2

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 523
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMenu:Landroid/view/ContextMenu;

    .line 525
    instance-of v4, v3, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    if-eqz v4, :cond_0

    move-object v4, v3

    .line 526
    check-cast v4, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    invoke-virtual {v4}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->getDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    .line 527
    .local v1, "display":Landroid/hardware/display/WifiDisplay;
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    .line 528
    .local v0, "activeDisplay":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v1, v0}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnecting(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 529
    check-cast v3, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    .end local v3    # "preference":Landroid/preference/Preference;
    invoke-virtual {v3}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->getDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    .line 530
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/hardware/display/DisplayManager;->isConnWithPinSupported(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 531
    const-string v4, "WifiDisplaySettings"

    const-string v5, "user press to connect with pin!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const v4, 0x7f0e10d7

    invoke-interface {p1, v6, v7, v6, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 536
    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 549
    .end local v0    # "activeDisplay":Landroid/hardware/display/WifiDisplay;
    .end local v1    # "display":Landroid/hardware/display/WifiDisplay;
    :cond_0
    :goto_0
    return-void

    .line 539
    .restart local v0    # "activeDisplay":Landroid/hardware/display/WifiDisplay;
    .restart local v1    # "display":Landroid/hardware/display/WifiDisplay;
    .restart local v3    # "preference":Landroid/preference/Preference;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/wfd/WfdSettingsUtils;->isDongleRenameAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 540
    check-cast v2, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    .line 541
    .local v2, "pref":Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    if-eqz v2, :cond_0

    # getter for: Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v2}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->access$300(Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;)Landroid/hardware/display/WifiDisplay;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 542
    const/4 v4, 0x2

    const v5, 0x7f0e10d8

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 544
    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x8

    .line 357
    const-string v1, "WifiDisplaySettings"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const v1, 0x7f040235

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 359
    .local v0, "sMainView":Landroid/view/View;
    const v1, 0x7f0d053c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNo_device_found_layout:Landroid/widget/LinearLayout;

    .line 360
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNo_device_found_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 361
    const v1, 0x7f0d053b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mChange_device_info:Landroid/widget/LinearLayout;

    .line 362
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mChange_device_info:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 363
    return-object v0
.end method

.method public onDetach()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 414
    const-string v2, "WifiDisplaySettings"

    const-string v3, "onDetach"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    .line 416
    iput-boolean v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStarted:Z

    .line 418
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 420
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    invoke-virtual {v2, v3}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 421
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->unscheduleUpdate()V

    .line 424
    sget-object v2, Lcom/android/settings/wfd/WifiDisplaySettings;->mIconCache:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 425
    sget-object v2, Lcom/android/settings/wfd/WifiDisplaySettings;->mIconCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 428
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSetPrevSettingsDetach:Z

    if-eqz v2, :cond_1

    .line 430
    iput-boolean v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSetPrevSettingsDetach:Z

    .line 466
    :goto_0
    return-void

    .line 434
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestartScan:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 435
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->stopScanWifiDisplays()V

    .line 437
    const/4 v0, 0x0

    .line 438
    .local v0, "currentState":I
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v2, :cond_2

    .line 439
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getArrangeState()I

    move-result v0

    .line 442
    :cond_2
    const/4 v1, 0x0

    .line 444
    .local v1, "multiWindowState":Z
    if-eqz v0, :cond_3

    .line 445
    if-ne v0, v6, :cond_3

    .line 446
    const/4 v1, 0x1

    .line 450
    :cond_3
    iget-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-ne v2, v6, :cond_4

    if-nez v1, :cond_4

    .line 451
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    sget-object v3, Landroid/hardware/display/DisplayManager$WfdAppState;->TEARDOWN:Landroid/hardware/display/DisplayManager$WfdAppState;

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManager;->setActivityState(Landroid/hardware/display/DisplayManager$WfdAppState;)V

    .line 454
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-eqz v2, :cond_5

    .line 455
    if-nez v1, :cond_5

    .line 456
    const-string v2, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDetach multiWindowState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-direct {p0, v5}, Lcom/android/settings/wfd/WifiDisplaySettings;->switchChanged(Z)V

    .line 461
    :cond_5
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdBrokerRunning(Landroid/content/Context;)Z

    move-result v2

    if-ne v2, v6, :cond_6

    .line 462
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DETACH_WFD_BROKER"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 465
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->disconnectAllShareFW()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 470
    const-string v1, "WifiDisplaySettings"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :try_start_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 474
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 476
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMenu:Landroid/view/ContextMenu;

    if-eqz v1, :cond_0

    .line 477
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMenu:Landroid/view/ContextMenu;

    invoke-interface {v1}, Landroid/view/ContextMenu;->close()V

    .line 480
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiIBSSEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 481
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHasOxygenPaused:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    if-eq v1, v4, :cond_2

    .line 489
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    sget-object v2, Landroid/hardware/display/DisplayManager$WfdAppState;->PAUSE:Landroid/hardware/display/DisplayManager$WfdAppState;

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->setActivityState(Landroid/hardware/display/DisplayManager$WfdAppState;)V

    .line 491
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mExtendedDisplayListener:Landroid/hardware/display/ExtendedDisplayListener;

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/ExtendedDisplayListener;)V

    .line 492
    return-void

    .line 484
    :catch_0
    move-exception v0

    .line 485
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause IllegalArgumentException e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 579
    instance-of v3, p2, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    if-eqz v3, :cond_1

    move-object v2, p2

    .line 580
    check-cast v2, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    .line 581
    .local v2, "p":Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    invoke-virtual {v2}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->getDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    .line 582
    .local v1, "display":Landroid/hardware/display/WifiDisplay;
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    .line 583
    .local v0, "activeDisplay":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v1, v0}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 584
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManager;->isDLNADeviceConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 585
    :cond_0
    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWaitingDevice:Ljava/lang/String;

    .line 586
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->disconnectDevice()V

    .line 593
    .end local v0    # "activeDisplay":Landroid/hardware/display/WifiDisplay;
    .end local v1    # "display":Landroid/hardware/display/WifiDisplay;
    .end local v2    # "p":Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    .line 588
    .restart local v0    # "activeDisplay":Landroid/hardware/display/WifiDisplay;
    .restart local v1    # "display":Landroid/hardware/display/WifiDisplay;
    .restart local v2    # "p":Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    :cond_2
    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    .line 589
    invoke-direct {p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectScreenSharing(Landroid/hardware/display/WifiDisplay;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 372
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 373
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStarted:Z

    .line 375
    const-string v2, "WifiDisplaySettings"

    const-string v3, "onResume"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    sget-object v3, Landroid/hardware/display/DisplayManager$WfdAppState;->RESUME:Landroid/hardware/display/DisplayManager$WfdAppState;

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManager;->setActivityState(Landroid/hardware/display/DisplayManager$WfdAppState;)V

    .line 379
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 380
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 381
    const-string v2, "android.intent.action.DETACH_WIFIDISPLAY_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 382
    const-string v2, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 383
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 385
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mExtendedDisplayListener:Landroid/hardware/display/ExtendedDisplayListener;

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/ExtendedDisplayListener;Landroid/os/Handler;)V

    .line 387
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->scheduleUpdate(I)V

    .line 389
    const-string v2, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mGlobalEditDeviceName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 391
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->showInputMethod()V

    .line 395
    :cond_0
    const/4 v0, 0x1

    .line 396
    .local v0, "enabledMDM":Z
    if-eqz v0, :cond_1

    .line 397
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 398
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v2, :cond_1

    .line 399
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 402
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v2, v5}, Landroid/app/enterprise/RestrictionPolicy;->isWiFiEnabled(Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 403
    invoke-direct {p0, v5}, Lcom/android/settings/wfd/WifiDisplaySettings;->switchChanged(Z)V

    .line 404
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->finish()V

    .line 410
    :goto_0
    return-void

    .line 409
    :cond_2
    iput-boolean v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsPendingSetup:Z

    goto :goto_0
.end method

.method public startScanWifiDisplays()V
    .locals 4

    .prologue
    .line 1006
    const-string v0, "WifiDisplaySettings"

    const-string v1, "startScanWifiDisplays"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanTimeout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x251c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1009
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->scanWifiDisplays()V

    .line 1010
    return-void
.end method

.method public stopScanWifiDisplays()V
    .locals 2

    .prologue
    .line 1013
    const-string v0, "WifiDisplaySettings"

    const-string v1, "stopScanWifiDisplays"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1016
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->stopScanWifiDisplays()V

    .line 1017
    return-void
.end method

.method protected update(I)V
    .locals 8
    .param p1, "changes"    # I

    .prologue
    const/4 v5, 0x0

    .line 620
    const-string v6, "WifiDisplaySettings"

    const-string v7, "update"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v6}, Landroid/hardware/display/DisplayManager;->checkExceptionalCase()I

    move-result v2

    .line 622
    .local v2, "retExceptionValue":I
    packed-switch v2, :pswitch_data_0

    .line 636
    :pswitch_0
    const/4 v1, 0x0

    .line 639
    .local v1, "invalidateOptions":Z
    and-int/lit8 v6, p1, 0x1

    if-eqz v6, :cond_1

    .line 640
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_display_on"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    :cond_0
    iput-boolean v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    .line 643
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWfdCertification:Lcom/android/settings/wfd/Wfd_Certification;

    invoke-virtual {v5}, Lcom/android/settings/wfd/Wfd_Certification;->updateCertificationMode()V

    .line 645
    const/4 v1, 0x1

    .line 649
    :cond_1
    iget-boolean v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWaitingDevice:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 650
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->finish()V

    .line 677
    .end local v1    # "invalidateOptions":Z
    :goto_0
    return-void

    .line 624
    :pswitch_1
    const-string v6, "WifiDisplaySettings"

    const-string v7, "group play is running!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0e10da

    invoke-virtual {p0, v7}, Lcom/android/settings/wfd/WifiDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 626
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->finish()V

    goto :goto_0

    .line 629
    :pswitch_2
    const-string v6, "WifiDisplaySettings"

    const-string v7, "live broadcast is running!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0e10db

    invoke-virtual {p0, v7}, Lcom/android/settings/wfd/WifiDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 631
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->finish()V

    goto :goto_0

    .line 656
    .restart local v1    # "invalidateOptions":Z
    :cond_2
    and-int/lit8 v5, p1, 0x4

    if-eqz v5, :cond_4

    .line 657
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v5}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v4

    .line 658
    .local v4, "wifiDisplayStatus":Landroid/hardware/display/WifiDisplayStatus;
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v0

    .line 659
    .local v0, "activeDisplayState":I
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v3

    .line 662
    .local v3, "scanState":I
    iget-boolean v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    if-nez v5, :cond_4

    const/4 v5, 0x2

    if-eq v0, v5, :cond_4

    :cond_3
    const/4 v5, 0x3

    if-eq v0, v5, :cond_4

    if-nez v3, :cond_4

    iget-boolean v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-eqz v5, :cond_4

    .line 666
    const-string v5, "WifiDisplaySettings"

    const-string v6, "update scanWifiDisplays"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->startScanWifiDisplays()V

    .line 671
    .end local v0    # "activeDisplayState":I
    .end local v3    # "scanState":I
    .end local v4    # "wifiDisplayStatus":Landroid/hardware/display/WifiDisplayStatus;
    :cond_4
    and-int/lit8 v5, p1, 0x8

    if-eqz v5, :cond_5

    .line 672
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->updateDLNAList()V

    .line 675
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->applyState(Z)V

    goto :goto_0

    .line 622
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public updateDLNAList()V
    .locals 22

    .prologue
    .line 1178
    const-string v19, "WifiDisplaySettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "updateDLNAList mIsVideoRunning:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsVideoRunning:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", mIsMusicRunning:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsMusicRunning:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", mIsGalleryRunning:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsGalleryRunning:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNAList:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    .line 1181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSSVideoList:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    .line 1183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNAServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

    move-object/from16 v19, v0

    if-eqz v19, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNADeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    move-object/from16 v19, v0

    if-eqz v19, :cond_13

    .line 1184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNADeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    move-object/from16 v19, v0

    sget-object v20, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_SCREENSHARING:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->getDevices(Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;

    move-result-object v16

    .line 1185
    .local v16, "ssList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNADeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    move-object/from16 v19, v0

    sget-object v20, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_AVPLAYER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->getDevices(Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1186
    .local v6, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    const-string v19, "AVPLAYER_VIDEO"

    move-object/from16 v0, v19

    invoke-static {v6, v0}, Lcom/samsung/android/allshare/extension/DeviceChecker;->getDeviceCheckedList(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    .line 1187
    .local v18, "videoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    const-string v19, "AVPLAYER_AUDIO"

    move-object/from16 v0, v19

    invoke-static {v6, v0}, Lcom/samsung/android/allshare/extension/DeviceChecker;->getDeviceCheckedList(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1188
    .local v4, "audioList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNADeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    move-object/from16 v19, v0

    sget-object v20, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_IMAGEVIEWER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->getDevices(Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;

    move-result-object v11

    .line 1190
    .local v11, "imageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNAList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1192
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsKnoxMode:Z

    move/from16 v19, v0

    if-nez v19, :cond_12

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v3

    .line 1194
    .local v3, "activeDisplayState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/display/DisplayManager;->isDLNADeviceConnected()Z

    move-result v12

    .line 1195
    .local v12, "isDLNADeviceConnected":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsVideoRunning:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsGalleryRunning:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsMusicRunning:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    if-eqz v12, :cond_0

    const/16 v19, 0x2

    move/from16 v0, v19

    if-eq v3, v0, :cond_0

    .line 1197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/display/DisplayManager;->getDLNAType()I

    move-result v7

    .line 1198
    .local v7, "dlnaType":I
    if-nez v7, :cond_5

    .line 1199
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsVideoRunning:Z

    .line 1207
    .end local v7    # "dlnaType":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsVideoRunning:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/wfd/WfdSettingsUtils;->isVideoRunningOnTop(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_7

    :cond_1
    const/4 v14, 0x1

    .line 1208
    .local v14, "isVideoRunning":Z
    :goto_1
    if-eqz v14, :cond_8

    .line 1209
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsVideoRunning:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 1210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNAList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1211
    :cond_2
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/allshare/Device;

    .line 1212
    .local v8, "dmr":Lcom/samsung/android/allshare/Device;
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/allshare/Device;

    .line 1213
    .local v15, "ss":Lcom/samsung/android/allshare/Device;
    invoke-virtual {v8}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v15}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSSVideoList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1215
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsVideoRunning:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 1216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNAList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1200
    .end local v8    # "dmr":Lcom/samsung/android/allshare/Device;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v14    # "isVideoRunning":Z
    .end local v15    # "ss":Lcom/samsung/android/allshare/Device;
    .restart local v7    # "dlnaType":I
    :cond_5
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v7, v0, :cond_6

    .line 1201
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsGalleryRunning:Z

    goto/16 :goto_0

    .line 1202
    :cond_6
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v7, v0, :cond_0

    .line 1203
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsMusicRunning:Z

    goto/16 :goto_0

    .line 1207
    .end local v7    # "dlnaType":I
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 1221
    .restart local v14    # "isVideoRunning":Z
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsMusicRunning:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    .line 1222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNAList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1223
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_9
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/allshare/Device;

    .line 1224
    .restart local v8    # "dmr":Lcom/samsung/android/allshare/Device;
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/allshare/Device;

    .line 1225
    .restart local v15    # "ss":Lcom/samsung/android/allshare/Device;
    invoke-virtual {v8}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v15}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNAList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1231
    .end local v8    # "dmr":Lcom/samsung/android/allshare/Device;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v15    # "ss":Lcom/samsung/android/allshare/Device;
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsGalleryRunning:Z

    move/from16 v19, v0

    if-eqz v19, :cond_e

    .line 1232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNAList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1233
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_c
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/allshare/Device;

    .line 1234
    .restart local v8    # "dmr":Lcom/samsung/android/allshare/Device;
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/allshare/Device;

    .line 1235
    .restart local v15    # "ss":Lcom/samsung/android/allshare/Device;
    invoke-virtual {v8}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v15}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 1236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNAList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1243
    .end local v8    # "dmr":Lcom/samsung/android/allshare/Device;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v15    # "ss":Lcom/samsung/android/allshare/Device;
    :cond_e
    const-string v19, "WifiDisplaySettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " device total count : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNAList:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " ssList("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ") videoList ("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ") audioList ("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ") imageList ("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNAList:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_f
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_13

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/allshare/Device;

    .line 1246
    .local v5, "device":Lcom/samsung/android/allshare/Device;
    instance-of v13, v5, Lcom/samsung/android/allshare/ScreenSharingDevice;

    .line 1247
    .local v13, "isSupportScreenSharing":Z
    const-string v19, "WifiDisplaySettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\t device id: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v5}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    const-string v19, "WifiDisplaySettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\t device name : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v5}, Lcom/samsung/android/allshare/Device;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    const-string v19, "WifiDisplaySettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\t device ip : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v5}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    const-string v19, "WifiDisplaySettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\t device screensharing mac : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v5}, Lcom/samsung/android/allshare/Device;->getScreenSharingP2pMacAddr()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    const-string v19, "WifiDisplaySettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\t device isSupportScreenSharing : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsPendingSetup:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingDevice:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingDevice:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual {v5}, Lcom/samsung/android/allshare/Device;->getScreenSharingP2pMacAddr()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 1254
    const/16 v17, 0x0

    .line 1255
    .local v17, "videoDevice":Lcom/samsung/android/allshare/Device;
    const-string v19, "WifiDisplaySettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "updateDLNAList SSDevice id: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v5}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSSVideoList:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_10
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_11

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/allshare/Device;

    .line 1257
    .restart local v8    # "dmr":Lcom/samsung/android/allshare/Device;
    invoke-virtual {v8}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v5}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 1258
    move-object/from16 v17, v8

    .line 1259
    const-string v19, "WifiDisplaySettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "updateDLNAList found SSVideoDevice id: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    .end local v8    # "dmr":Lcom/samsung/android/allshare/Device;
    :cond_11
    if-eqz v17, :cond_f

    .line 1265
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectDLNA(Ljava/lang/String;Z)V

    .line 1266
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingDevice:Ljava/lang/String;

    .line 1267
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsPendingSetup:Z

    goto/16 :goto_5

    .line 1272
    .end local v3    # "activeDisplayState":I
    .end local v5    # "device":Lcom/samsung/android/allshare/Device;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "isDLNADeviceConnected":Z
    .end local v13    # "isSupportScreenSharing":Z
    .end local v14    # "isVideoRunning":Z
    .end local v17    # "videoDevice":Lcom/samsung/android/allshare/Device;
    :cond_12
    const-string v19, "WifiDisplaySettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " device total count : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNAList:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " ssList("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "), knox mode is running."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    .end local v4    # "audioList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    .end local v6    # "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    .end local v11    # "imageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    .end local v16    # "ssList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    .end local v18    # "videoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    :cond_13
    return-void
.end method
