.class public Lcom/android/server/smartclip/SpenGestureManagerService;
.super Lcom/samsung/android/smartclip/ISpenGestureService$Stub;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/smartclip/SpenGestureManagerService$SettingsObserverForAirCMD;,
        Lcom/android/server/smartclip/SpenGestureManagerService$SettingsObserverForSPen;,
        Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;
    }
.end annotation


# static fields
.field private static ACTIVITY_NAME_FLASH_ANNOTATION:Ljava/lang/String; = null

.field private static ACTIVITY_NAME_RAKEIN_CONTENT:Ljava/lang/String; = null

.field private static ACTIVITY_NAME_RESHAPE_TUTORIAL:Ljava/lang/String; = null

.field private static final EVENT_STATE_PEN_BUTTON_PRESSED:I

.field private static GLOBAL_AIR_COMMAND_SELECTED_FOR_ACTIONMEMO:Ljava/lang/String; = null

.field private static GLOBAL_AIR_COMMAND_SELECTED_FOR_RAKEINSERVICE:Ljava/lang/String; = null

.field private static INTENT_ACTION_AIRCOMMAND_STATE_CHANGE:Ljava/lang/String; = null

.field private static final MAX_META_FILE_COUNT:I = 0x3

.field private static final MAX_SMARTCLIP_REMOTE_REQUEST_DELAY:I = 0xbb8

.field private static final MAX_SYNC_CHECK_AIRBUTTON_DELAY:I = 0x3e8

.field private static final MSG_CREATE_VIEW:I = 0x1

.field private static PERMISSION_EXTRACT_SMARTCLIP_DATA:Ljava/lang/String;

.field private static PERMISSION_INJECT_INPUT_EVENT:Ljava/lang/String;

.field public static TAG:Ljava/lang/String;

.field private static mAirCommandItemLoggingEnabled:Z

.field private static mContext:Landroid/content/Context;

.field private static mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# instance fields
.field private mAirCMDButtonPressTouchDownTime:J

.field private mAirCMDFloatingEnabled:Z

.field private mAirCMDIsPenButtonPressed:Z

.field private mAirCMDIsTouchDowned:Z

.field private mAirCMDLastStartTime:J

.field private mAirCMDPenButtonPressedTime:J

.field private mBatteryOnlineStatus:I

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mClearCoverOpened:Z

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mDataExtractionSync:Ljava/lang/Object;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

.field private final mHandler:Landroid/os/Handler;

.field private mIsEnableLockScreenQuickNote:Z

.field private mIsPenInserted:Z

.field private mIsVisibleSPenGestureView:Z

.field private mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

.field private mLastMetaFileId:I

.field mPenDoubleTap:Ljava/lang/Runnable;

.field private mPenMemoActionIntent:Landroid/content/Intent;

.field private mSPenGestureInputChannel:Landroid/view/InputChannel;

.field private mSPenGestureInputEventReceiver:Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;

.field private mShouldTransferEventToAirButton:Z

.field private mShouldTransferTouchDownEventToAirButton:Z

.field private mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

.field private mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

.field private mSpenUsingStartTime:J

.field private mSpenUspLevel:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyManager2:Landroid/telephony/TelephonyManager;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 142
    const-string v0, "SpenGestureManagerService"

    sput-object v0, TAG:Ljava/lang/String;

    .line 144
    const-string v0, "com.samsung.android.permission.EXTRACT_SMARTCLIP_DATA"

    sput-object v0, PERMISSION_EXTRACT_SMARTCLIP_DATA:Ljava/lang/String;

    .line 145
    const-string v0, "android.permission.INJECT_EVENTS"

    sput-object v0, PERMISSION_INJECT_INPUT_EVENT:Ljava/lang/String;

    .line 147
    const-string v0, "com.sec.android.app.SmartClipService.rakein.RakeInContentActivity"

    sput-object v0, ACTIVITY_NAME_RAKEIN_CONTENT:Ljava/lang/String;

    .line 148
    const-string v0, "com.sec.spen.flashannotate.FlashAnnotateActivity"

    sput-object v0, ACTIVITY_NAME_FLASH_ANNOTATION:Ljava/lang/String;

    .line 149
    const-string v0, "com.sec.android.app.SmartClipService.help.EasyClipTutorialActivity"

    sput-object v0, ACTIVITY_NAME_RESHAPE_TUTORIAL:Ljava/lang/String;

    .line 150
    const-string v0, "com.android.server.smartclip.GAC_SELECTED"

    sput-object v0, GLOBAL_AIR_COMMAND_SELECTED_FOR_ACTIONMEMO:Ljava/lang/String;

    .line 151
    const-string v0, "com.android.server.smartclip.GAC_RAKEINSERVICE"

    sput-object v0, GLOBAL_AIR_COMMAND_SELECTED_FOR_RAKEINSERVICE:Ljava/lang/String;

    .line 152
    const-string v0, "com.samsung.android.aircommand.intent.action.STATE_CHANGE"

    sput-object v0, INTENT_ACTION_AIRCOMMAND_STATE_CHANGE:Ljava/lang/String;

    .line 161
    sput-object v1, mContext:Landroid/content/Context;

    .line 162
    sput-object v1, mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 192
    const/4 v0, 0x0

    sput-boolean v0, mAirCommandItemLoggingEnabled:Z

    .line 210
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_36

    const/4 v0, 0x2

    :goto_33
    sput v0, EVENT_STATE_PEN_BUTTON_PRESSED:I

    return-void

    :cond_36
    const/16 v0, 0x20

    goto :goto_33
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 334
    invoke-direct {p0}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub;-><init>()V

    .line 164
    iput-object v2, p0, mWindowManager:Landroid/view/WindowManager;

    .line 165
    iput-object v2, p0, mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    .line 166
    iput-boolean v1, p0, mIsVisibleSPenGestureView:Z

    .line 168
    iput-boolean v1, p0, mIsEnableLockScreenQuickNote:Z

    .line 170
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mDataExtractionSync:Ljava/lang/Object;

    .line 172
    iput-object v2, p0, mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    .line 173
    iput-boolean v1, p0, mShouldTransferEventToAirButton:Z

    .line 174
    iput-boolean v1, p0, mShouldTransferTouchDownEventToAirButton:Z

    .line 175
    iput-boolean v1, p0, mAirCMDIsPenButtonPressed:Z

    .line 176
    iput-boolean v1, p0, mAirCMDIsTouchDowned:Z

    .line 177
    iput-wide v4, p0, mAirCMDButtonPressTouchDownTime:J

    .line 178
    iput-wide v4, p0, mAirCMDPenButtonPressedTime:J

    .line 179
    iput-wide v4, p0, mAirCMDLastStartTime:J

    .line 180
    iput v3, p0, mBatteryOnlineStatus:I

    .line 181
    iput-boolean v1, p0, mAirCMDFloatingEnabled:Z

    .line 182
    iput-boolean v3, p0, mIsPenInserted:Z

    .line 185
    iput-object v2, p0, mSPenGestureInputChannel:Landroid/view/InputChannel;

    .line 186
    iput-object v2, p0, mSPenGestureInputEventReceiver:Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;

    .line 188
    iput-boolean v3, p0, mClearCoverOpened:Z

    .line 190
    const/4 v0, -0x1

    iput v0, p0, mSpenUspLevel:I

    .line 194
    iput v1, p0, mLastMetaFileId:I

    .line 206
    iput-object v2, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 208
    iput-wide v4, p0, mSpenUsingStartTime:J

    .line 213
    new-instance v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    invoke-direct {v0}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;-><init>()V

    iput-object v0, p0, mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    .line 215
    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$1;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 313
    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$2;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 454
    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$4;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, mPenDoubleTap:Ljava/lang/Runnable;

    .line 737
    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$5;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 335
    sput-object p1, mContext:Landroid/content/Context;

    .line 337
    sget-object v0, mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    iput-object v0, p0, mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    .line 339
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "SpenGestureManagerService(Context) "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "Wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 342
    invoke-direct {p0}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub;-><init>()V

    .line 164
    iput-object v4, p0, mWindowManager:Landroid/view/WindowManager;

    .line 165
    iput-object v4, p0, mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    .line 166
    iput-boolean v1, p0, mIsVisibleSPenGestureView:Z

    .line 168
    iput-boolean v1, p0, mIsEnableLockScreenQuickNote:Z

    .line 170
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mDataExtractionSync:Ljava/lang/Object;

    .line 172
    iput-object v4, p0, mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    .line 173
    iput-boolean v1, p0, mShouldTransferEventToAirButton:Z

    .line 174
    iput-boolean v1, p0, mShouldTransferTouchDownEventToAirButton:Z

    .line 175
    iput-boolean v1, p0, mAirCMDIsPenButtonPressed:Z

    .line 176
    iput-boolean v1, p0, mAirCMDIsTouchDowned:Z

    .line 177
    iput-wide v8, p0, mAirCMDButtonPressTouchDownTime:J

    .line 178
    iput-wide v8, p0, mAirCMDPenButtonPressedTime:J

    .line 179
    iput-wide v8, p0, mAirCMDLastStartTime:J

    .line 180
    iput v5, p0, mBatteryOnlineStatus:I

    .line 181
    iput-boolean v1, p0, mAirCMDFloatingEnabled:Z

    .line 182
    iput-boolean v5, p0, mIsPenInserted:Z

    .line 185
    iput-object v4, p0, mSPenGestureInputChannel:Landroid/view/InputChannel;

    .line 186
    iput-object v4, p0, mSPenGestureInputEventReceiver:Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;

    .line 188
    iput-boolean v5, p0, mClearCoverOpened:Z

    .line 190
    const/4 v0, -0x1

    iput v0, p0, mSpenUspLevel:I

    .line 194
    iput v1, p0, mLastMetaFileId:I

    .line 206
    iput-object v4, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 208
    iput-wide v8, p0, mSpenUsingStartTime:J

    .line 213
    new-instance v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    invoke-direct {v0}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;-><init>()V

    iput-object v0, p0, mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    .line 215
    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$1;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 313
    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$2;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 454
    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$4;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, mPenDoubleTap:Ljava/lang/Runnable;

    .line 737
    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$5;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 343
    sput-object p1, mContext:Landroid/content/Context;

    .line 345
    sget-object v0, mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    iput-object v0, p0, mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    .line 347
    sput-object p2, mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 348
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "SpenGestureManagerService(Context context, WindowManagerService Wm)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-direct {p0}, initSpenGesture()V

    .line 352
    sget-object v0, mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    const-string v1, "SPenGestureService"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v0

    iput-object v0, p0, mSPenGestureInputChannel:Landroid/view/InputChannel;

    .line 357
    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;

    iget-object v1, p0, mSPenGestureInputChannel:Landroid/view/InputChannel;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, mSPenGestureInputEventReceiver:Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;

    .line 359
    iget v0, p0, mSpenUspLevel:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_96

    .line 361
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 364
    :cond_96
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, mAirCommandItemLoggingEnabled:Z

    .line 366
    invoke-direct {p0}, checkSettingCondition()V

    .line 368
    new-instance v7, Lcom/android/server/smartclip/SpenGestureManagerService$SettingsObserverForSPen;

    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-direct {v7, p0, v0}, Lcom/android/server/smartclip/SpenGestureManagerService$SettingsObserverForSPen;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/os/Handler;)V

    .line 369
    .local v7, "settingObserverForSPen":Lcom/android/server/smartclip/SpenGestureManagerService$SettingsObserverForSPen;
    invoke-virtual {v7}, Lcom/android/server/smartclip/SpenGestureManagerService$SettingsObserverForSPen;->observe()V

    .line 372
    new-instance v6, Lcom/android/server/smartclip/SpenGestureManagerService$SettingsObserverForAirCMD;

    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-direct {v6, p0, v0}, Lcom/android/server/smartclip/SpenGestureManagerService$SettingsObserverForAirCMD;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/os/Handler;)V

    .line 373
    .local v6, "settingObserverForAirCMD":Lcom/android/server/smartclip/SpenGestureManagerService$SettingsObserverForAirCMD;
    invoke-virtual {v6}, Lcom/android/server/smartclip/SpenGestureManagerService$SettingsObserverForAirCMD;->observe()V

    .line 375
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 376
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "com.samsung.pen.INSERT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 377
    const-string v0, "com.samsung.cover.OPEN"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 378
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 379
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 380
    sget-object v0, mContext:Landroid/content/Context;

    iget-object v1, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 382
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/smartclip/SpenGestureManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 141
    iget v0, p0, mBatteryOnlineStatus:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/smartclip/SpenGestureManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 141
    iput p1, p0, mBatteryOnlineStatus:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/smartclip/SpenGestureManagerService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 141
    iget-wide v0, p0, mSpenUsingStartTime:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/samsung/android/airbutton/AirButtonImpl;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 141
    iget-object v0, p0, mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/smartclip/SpenGestureManagerService;Lcom/samsung/android/airbutton/AirButtonImpl;)Lcom/samsung/android/airbutton/AirButtonImpl;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Lcom/samsung/android/airbutton/AirButtonImpl;

    .prologue
    .line 141
    iput-object p1, p0, mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/server/smartclip/SpenGestureManagerService;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 141
    iput-wide p1, p0, mSpenUsingStartTime:J

    return-wide p1
.end method

.method static synthetic access$1100()Landroid/content/Context;
    .registers 1

    .prologue
    .line 141
    sget-object v0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/view/WindowManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 141
    iget-object v0, p0, mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/WindowManager;)Landroid/view/WindowManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Landroid/view/WindowManager;

    .prologue
    .line 141
    iput-object p1, p0, mWindowManager:Landroid/view/WindowManager;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 141
    iget-object v0, p0, mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/smartclip/SpenGestureManagerService;Lcom/android/server/smartclip/SmartClipView;)Lcom/android/server/smartclip/SmartClipView;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 141
    iput-object p1, p0, mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 141
    invoke-direct {p0, p1}, sendAirCommandStateChangeIntent(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 141
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 141
    iget-boolean v0, p0, mIsEnableLockScreenQuickNote:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, mIsEnableLockScreenQuickNote:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 141
    invoke-direct {p0}, isScreenPinningEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 141
    invoke-direct {p0}, isHapticFeedbackEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 141
    iget-object v0, p0, mPenMemoActionIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 141
    iput-object p1, p0, mPenMemoActionIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/smartclip/SpenGestureManagerService;J)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 141
    invoke-direct {p0, p1, p2}, calculateSpenUsingDuration(J)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/telephony/TelephonyManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 141
    iget-object v0, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/telephony/TelephonyManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 141
    iget-object v0, p0, mTelephonyManager2:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 141
    invoke-direct {p0}, launchActionMemo()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 141
    iget-boolean v0, p0, mIsVisibleSPenGestureView:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, mIsVisibleSPenGestureView:Z

    return p1
.end method

.method static synthetic access$2400()I
    .registers 1

    .prologue
    .line 141
    sget v0, EVENT_STATE_PEN_BUTTON_PRESSED:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/MotionEvent;IZ)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 141
    invoke-direct {p0, p1, p2, p3}, processMotionEventForAirCMD(Landroid/view/MotionEvent;IZ)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 141
    iget-boolean v0, p0, mShouldTransferEventToAirButton:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/view/GestureDetector;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 141
    iget-object v0, p0, mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/smartclip/SpenGestureManagerService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 141
    invoke-direct {p0}, getTopMostActivityClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900()Ljava/lang/String;
    .registers 1

    .prologue
    .line 141
    sget-object v0, GLOBAL_AIR_COMMAND_SELECTED_FOR_ACTIONMEMO:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/smartclip/SpenGestureManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-direct {p0, p1}, sendLogSpenInsertInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 141
    sget-object v0, GLOBAL_AIR_COMMAND_SELECTED_FOR_RAKEINSERVICE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100()Z
    .registers 1

    .prologue
    .line 141
    sget-boolean v0, mAirCommandItemLoggingEnabled:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/smartclip/SpenGestureManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-direct {p0, p1}, sendLogAirCommandItemSelected(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 141
    invoke-direct {p0}, isPossibleSmartClip()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400()Ljava/lang/String;
    .registers 1

    .prologue
    .line 141
    sget-object v0, ACTIVITY_NAME_RAKEIN_CONTENT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/smartclip/SpenGestureManagerService;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-direct {p0, p1}, isPackageActivated(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 141
    invoke-direct {p0}, isPossibleCapture()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700()Ljava/lang/String;
    .registers 1

    .prologue
    .line 141
    sget-object v0, ACTIVITY_NAME_FLASH_ANNOTATION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3800()Ljava/lang/String;
    .registers 1

    .prologue
    .line 141
    sget-object v0, ACTIVITY_NAME_RESHAPE_TUTORIAL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 141
    iget-boolean v0, p0, mAirCMDFloatingEnabled:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, mAirCMDFloatingEnabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/content/ComponentName;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 141
    invoke-direct {p0}, getTopMostPackage()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/smartclip/SpenGestureManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 141
    iget v0, p0, mSpenUspLevel:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 141
    iget-boolean v0, p0, mIsPenInserted:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, mIsPenInserted:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 141
    iget-boolean v0, p0, mClearCoverOpened:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, mClearCoverOpened:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 141
    invoke-direct {p0, p1}, startAirCommandService(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/app/enterprise/kioskmode/KioskMode;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 141
    iget-object v0, p0, mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    return-object v0
.end method

.method private allocateMetaTagFilePath()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1504
    const-string v1, "/data/clipboard/smartclip"

    .line 1505
    .local v1, "baseDirPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1506
    .local v0, "baseDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_18

    .line 1507
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1508
    invoke-virtual {v0, v6, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1509
    invoke-virtual {v0, v6, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 1512
    :cond_18
    iget v3, p0, mLastMetaFileId:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, mLastMetaFileId:I

    .line 1513
    iget v3, p0, mLastMetaFileId:I

    rem-int/lit8 v3, v3, 0x3

    iput v3, p0, mLastMetaFileId:I

    .line 1514
    const-string v3, "%s/SC%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    iget v5, p0, mLastMetaFileId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1515
    .local v2, "filePathName":Ljava/lang/String;
    return-object v2
.end method

.method private calculateSpenUsingDuration(J)V
    .registers 10
    .param p1, "elapsedTime"    # J

    .prologue
    const-wide/16 v4, 0x3e8

    .line 1733
    const/4 v0, 0x0

    .line 1734
    .local v0, "duration":Ljava/lang/String;
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1736
    .local v1, "usingMin":F
    cmp-long v2, p1, v4

    if-ltz v2, :cond_f

    .line 1737
    div-long v2, p1, v4

    const-wide/16 v4, 0x3c

    div-long/2addr v2, v4

    long-to-float v1, v2

    .line 1740
    :cond_f
    const/high16 v2, 0x42700000    # 60.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1b

    .line 1741
    const-string v0, "MoreThan1Hour"

    .line 1754
    :goto_17
    invoke-direct {p0, v0}, sendLogSpenInsertInfo(Ljava/lang/String;)V

    .line 1755
    return-void

    .line 1742
    :cond_1b
    const/high16 v2, 0x41f00000    # 30.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_24

    .line 1743
    const-string v0, "30to60Minutes"

    goto :goto_17

    .line 1744
    :cond_24
    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2d

    .line 1745
    const-string v0, "10to30Minutes"

    goto :goto_17

    .line 1746
    :cond_2d
    const/high16 v2, 0x40a00000    # 5.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_36

    .line 1747
    const-string v0, "5to10Minutes"

    goto :goto_17

    .line 1748
    :cond_36
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3f

    .line 1749
    const-string v0, "1to5Minutes"

    goto :goto_17

    .line 1751
    :cond_3f
    const-string v0, "1MinuteOrLess"

    goto :goto_17
.end method

.method private checkInputEventInjectionPermission()V
    .registers 2

    .prologue
    .line 518
    sget-object v0, PERMISSION_INJECT_INPUT_EVENT:Ljava/lang/String;

    invoke-direct {p0, v0}, checkPermission(Ljava/lang/String;)V

    .line 519
    return-void
.end method

.method private checkPermission(Ljava/lang/String;)V
    .registers 6
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 522
    sget-object v1, mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2a

    const/4 v0, 0x1

    .line 524
    .local v0, "havePermission":Z
    :goto_9
    if-nez v0, :cond_2c

    .line 525
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requires "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " permission"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 522
    .end local v0    # "havePermission":Z
    :cond_2a
    const/4 v0, 0x0

    goto :goto_9

    .line 529
    .restart local v0    # "havePermission":Z
    :cond_2c
    return-void
.end method

.method private checkSettingCondition()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 732
    sget-object v3, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 733
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v3, "lock_screen_quick_note"

    const/4 v4, -0x2

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_2f

    :goto_12
    iput-boolean v1, p0, mIsEnableLockScreenQuickNote:Z

    .line 734
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSettingCondition, LOCK_SCREEN_QUICK_NOTE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mIsEnableLockScreenQuickNote:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    return-void

    :cond_2f
    move v1, v2

    .line 733
    goto :goto_12
.end method

.method private checkSmartClipMetaExtractionPermission()V
    .registers 2

    .prologue
    .line 514
    sget-object v0, PERMISSION_EXTRACT_SMARTCLIP_DATA:Ljava/lang/String;

    invoke-direct {p0, v0}, checkPermission(Ljava/lang/String;)V

    .line 515
    return-void
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p1, "srcPathName"    # Ljava/lang/String;
    .param p2, "destPathName"    # Ljava/lang/String;

    .prologue
    .line 1547
    const/4 v2, 0x0

    .line 1548
    .local v2, "in":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 1549
    .local v4, "out":Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    .line 1552
    .local v7, "ret":Z
    :try_start_3
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_70
    .catchall {:try_start_3 .. :try_end_8} :catchall_59

    .line 1553
    .end local v2    # "in":Ljava/io/FileInputStream;
    .local v3, "in":Ljava/io/FileInputStream;
    :try_start_8
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_72
    .catchall {:try_start_8 .. :try_end_d} :catchall_67

    .line 1555
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v5, "out":Ljava/io/FileOutputStream;
    const/16 v8, 0x1400

    :try_start_f
    new-array v0, v8, [B

    .line 1557
    .local v0, "buffer":[B
    :goto_11
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .local v6, "read":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_44

    .line 1558
    const/4 v8, 0x0

    invoke-virtual {v5, v0, v8, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1c} :catch_1d
    .catchall {:try_start_f .. :try_end_1c} :catchall_6a

    goto :goto_11

    .line 1562
    .end local v0    # "buffer":[B
    .end local v6    # "read":I
    :catch_1d
    move-exception v1

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 1563
    .end local v3    # "in":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :goto_20
    :try_start_20
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "copyFile : Exception = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_20 .. :try_end_38} :catchall_59

    .line 1564
    const/4 v7, 0x0

    .line 1567
    if-eqz v2, :cond_3e

    .line 1568
    :try_start_3b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 1570
    :cond_3e
    if-eqz v4, :cond_43

    .line 1571
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_43} :catch_6e

    .line 1576
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_43
    :goto_43
    return v7

    .line 1560
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "read":I
    :cond_44
    :try_start_44
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_1d
    .catchall {:try_start_44 .. :try_end_47} :catchall_6a

    .line 1561
    const/4 v7, 0x1

    .line 1567
    if-eqz v3, :cond_4d

    .line 1568
    :try_start_4a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 1570
    :cond_4d
    if-eqz v5, :cond_52

    .line 1571
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_52} :catch_55

    :cond_52
    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 1574
    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_43

    .line 1573
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_55
    move-exception v8

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 1575
    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_43

    .line 1566
    .end local v0    # "buffer":[B
    .end local v6    # "read":I
    :catchall_59
    move-exception v8

    .line 1567
    :goto_5a
    if-eqz v2, :cond_5f

    .line 1568
    :try_start_5c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 1570
    :cond_5f
    if-eqz v4, :cond_64

    .line 1571
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_64} :catch_65

    .line 1574
    :cond_64
    :goto_64
    throw v8

    .line 1573
    :catch_65
    move-exception v9

    goto :goto_64

    .line 1566
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :catchall_67
    move-exception v8

    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_5a

    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catchall_6a
    move-exception v8

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_5a

    .line 1573
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_6e
    move-exception v8

    goto :goto_43

    .line 1562
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_70
    move-exception v1

    goto :goto_20

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :catch_72
    move-exception v1

    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_20
.end method

.method private getFullScreenRect()Landroid/graphics/Rect;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 723
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 724
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    sget-object v3, mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 725
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 727
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 728
    .local v2, "screenRect":Landroid/graphics/Rect;
    return-object v2
.end method

.method private getTopMostActivityClassName()Ljava/lang/String;
    .registers 9

    .prologue
    .line 1690
    sget-object v6, mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1691
    .local v0, "am":Landroid/app/ActivityManager;
    const/16 v6, 0x64

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 1692
    .local v4, "runningTaskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 1694
    .local v3, "runningTaskCount":I
    if-lez v3, :cond_26

    .line 1695
    const/4 v2, 0x0

    .local v2, "i":I
    if-ge v2, v3, :cond_26

    .line 1696
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1697
    .local v5, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 1701
    .end local v2    # "i":I
    .end local v5    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_25
    return-object v1

    :cond_26
    const-string v1, ""

    goto :goto_25
.end method

.method private getTopMostPackage()Landroid/content/ComponentName;
    .registers 5

    .prologue
    .line 1705
    sget-object v2, mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1706
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 1707
    .local v1, "runningTaskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1f

    .line 1708
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "getTopMostPackage : Failed to get running task info"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    const/4 v2, 0x0

    .line 1712
    :goto_1e
    return-object v2

    :cond_1f
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    goto :goto_1e
.end method

.method private initCoverState()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 439
    iget-object v2, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v2, :cond_38

    .line 440
    iget-object v2, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .line 441
    .local v0, "state":Lcom/samsung/android/cover/CoverState;
    if-eqz v0, :cond_2f

    .line 442
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initCoverState() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    .line 451
    .end local v0    # "state":Lcom/samsung/android/cover/CoverState;
    :goto_2e
    return v1

    .line 445
    .restart local v0    # "state":Lcom/samsung/android/cover/CoverState;
    :cond_2f
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "initCoverState() : state is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 449
    .end local v0    # "state":Lcom/samsung/android/cover/CoverState;
    :cond_38
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "initCoverState() : mCoverManager is null!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method

.method private initSpenGesture()V
    .registers 5

    .prologue
    .line 386
    sget-object v1, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 387
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_10

    .line 388
    const-string v1, "com.sec.feature.spen_usp"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, mSpenUspLevel:I

    .line 391
    :cond_10
    sget-object v1, mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 396
    new-instance v1, Lcom/samsung/android/cover/CoverManager;

    sget-object v2, mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 397
    invoke-direct {p0}, initCoverState()Z

    move-result v1

    iput-boolean v1, p0, mClearCoverOpened:Z

    .line 398
    iget-object v1, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v1, :cond_46

    .line 399
    iget-object v1, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v2, p0, mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 404
    :goto_37
    new-instance v1, Landroid/view/GestureDetector;

    sget-object v2, mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/smartclip/SpenGestureManagerService$3;

    invoke-direct {v3, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$3;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, mGestureDetector:Landroid/view/GestureDetector;

    .line 436
    return-void

    .line 401
    :cond_46
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v2, "initSpenGesture() : mCoverManager is null!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37
.end method

.method private isHapticFeedbackEnabled()Z
    .registers 4

    .prologue
    .line 1768
    sget-object v1, mContext:Landroid/content/Context;

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 1769
    .local v0, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v0}, Landroid/os/Vibrator;->isEnableIntensity()Z

    move-result v1

    return v1
.end method

.method private isPackageActivated(Ljava/lang/String;)Z
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1612
    const/4 v2, 0x0

    .line 1614
    .local v2, "isActivated":Z
    sget-object v7, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1615
    .local v5, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .line 1616
    .local v6, "userId":I
    if-eqz v5, :cond_4f

    .line 1617
    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v0

    .line 1618
    .local v0, "appInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1619
    .local v1, "appInfoSize":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_17
    if-ge v3, v1, :cond_28

    .line 1620
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 1621
    .local v4, "pi":Landroid/content/pm/PackageInfo;
    iget-object v7, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 1622
    const/4 v2, 0x1

    .line 1629
    .end local v0    # "appInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v1    # "appInfoSize":I
    .end local v3    # "j":I
    .end local v4    # "pi":Landroid/content/pm/PackageInfo;
    :cond_28
    :goto_28
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isPackageActivated : activated="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " user="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    return v2

    .line 1619
    .restart local v0    # "appInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v1    # "appInfoSize":I
    .restart local v3    # "j":I
    .restart local v4    # "pi":Landroid/content/pm/PackageInfo;
    :cond_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 1627
    .end local v0    # "appInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v1    # "appInfoSize":I
    .end local v3    # "j":I
    .end local v4    # "pi":Landroid/content/pm/PackageInfo;
    :cond_4f
    sget-object v7, TAG:Ljava/lang/String;

    const-string/jumbo v8, "isPackageActivated : Could not get package manager!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method private isPossibleCapture()Z
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 1168
    const-string v0, "RestrictionPolicy3"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1169
    .local v1, "uri":Landroid/net/Uri;
    sget-object v0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isScreenCaptureEnabled"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1171
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_41

    .line 1173
    :try_start_18
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1174
    const-string/jumbo v0, "isScreenCaptureEnabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1177
    sget-object v0, TAG:Ljava/lang/String;

    const-string v2, "MDM: Screen Capture Disabled"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_39
    .catchall {:try_start_18 .. :try_end_39} :catchall_43

    .line 1179
    const/4 v0, 0x0

    .line 1182
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1185
    :goto_3d
    return v0

    .line 1182
    :cond_3e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1185
    :cond_41
    const/4 v0, 0x1

    goto :goto_3d

    .line 1182
    :catchall_43
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isPossibleSmartClip()Z
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1189
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy3"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1190
    .local v1, "uri":Landroid/net/Uri;
    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v0, "true"

    aput-object v0, v4, v7

    .line 1191
    .local v4, "selectionArgsTrue":[Ljava/lang/String;
    sget-object v0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isSmartClipModeAllowed"

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1193
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_49

    .line 1195
    :try_start_20
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1196
    const-string/jumbo v0, "isSmartClipModeAllowed"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1199
    sget-object v0, TAG:Ljava/lang/String;

    const-string v2, "MDM: SmartClip Disabled"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_41
    .catchall {:try_start_20 .. :try_end_41} :catchall_4b

    .line 1204
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    .line 1207
    :goto_45
    return v0

    .line 1204
    :cond_46
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_49
    move v0, v8

    .line 1207
    goto :goto_45

    .line 1204
    :catchall_4b
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isScreenPinningEnabled()Z
    .registers 5

    .prologue
    .line 1758
    sget-object v2, mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1759
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v1

    .line 1760
    .local v1, "isWindowPinned":Z
    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    .line 1761
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "isScreenPinningEnabled : Screen pinning mode enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    :cond_19
    return v1
.end method

.method private isVzwSetupRunning()Z
    .registers 2

    .prologue
    .line 1164
    const/4 v0, 0x0

    return v0
.end method

.method private launchActionMemo()V
    .registers 7

    .prologue
    .line 1479
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxContainerVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v2

    .line 1480
    .local v2, "version":Landroid/os/PersonaManager$KnoxContainerVersion;
    const-string/jumbo v3, "true"

    const-string/jumbo v4, "dev.knoxapp.running"

    const-string/jumbo v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    sget-object v3, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-virtual {v2, v3}, Landroid/os/PersonaManager$KnoxContainerVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-ltz v3, :cond_27

    :cond_1f
    sget-object v3, mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1501
    :cond_27
    :goto_27
    return-void

    .line 1484
    :cond_28
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1485
    .local v1, "snoteIntent":Landroid/content/Intent;
    const-string v3, "com.samsung.android.snote"

    const-string v4, "com.samsung.android.snote.control.ui.quickmemo.service.QuickMemo_Service"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1488
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "launchActionMemo : Trying to launch Snote aciton memo.."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    sget-object v3, mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_27

    .line 1490
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "launchActionMemo : Snote action memo launch failed. Trying to launch diotek PenMemo..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1493
    .local v0, "diotekIntent":Landroid/content/Intent;
    const-string v3, "com.diotek.mini_penmemo"

    const-string v4, "com.diotek.mini_penmemo.Mini_PenMemo_Service"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1496
    sget-object v3, mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_27

    .line 1497
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "launchActionMemo : Diotek PenMemo launch failed. Sending legacy quick memo broadcasting"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    sget-object v3, mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.QUICKMEMO_LAUNCH"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_27
.end method

.method private moveFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "srcPathName"    # Ljava/lang/String;
    .param p2, "destPathName"    # Ljava/lang/String;

    .prologue
    .line 1581
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1582
    .local v0, "destFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1583
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1586
    :cond_e
    invoke-direct {p0, p1, p2}, copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1587
    .local v1, "ret":Z
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1588
    .local v2, "srcFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 1589
    const/4 v1, 0x0

    .line 1591
    :cond_1e
    return v1
.end method

.method private moveMetaFilesToLocalStorage(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Z
    .registers 14
    .param p1, "repository"    # Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 1519
    if-nez p1, :cond_d

    .line 1520
    sget-object v8, TAG:Ljava/lang/String;

    const-string/jumbo v9, "moveMetaFilesToLocalStorage : Empty repository!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    :goto_c
    return v7

    .line 1524
    :cond_d
    invoke-virtual {p1}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getAllMetaTagList()Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    move-result-object v5

    .line 1525
    .local v5, "tags":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    invoke-virtual {v5}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_74

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .line 1526
    .local v0, "curTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v6

    .line 1527
    .local v6, "type":Ljava/lang/String;
    const-string/jumbo v9, "file_path_html"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-ne v9, v8, :cond_15

    .line 1528
    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 1529
    .local v4, "srcFilePath":Ljava/lang/String;
    invoke-direct {p0}, allocateMetaTagFilePath()Ljava/lang/String;

    move-result-object v2

    .line 1531
    .local v2, "destFilePath":Ljava/lang/String;
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "moveMetaFilesToLocalStorage : Moving "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " -> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    invoke-direct {p0, v4, v2}, moveFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_68

    .line 1534
    sget-object v9, TAG:Ljava/lang/String;

    const-string/jumbo v10, "moveMetaFilesToLocalStorage : File move failed"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 1536
    :cond_68
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1537
    .local v1, "destFile":Ljava/io/File;
    invoke-virtual {v1, v8, v7}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1538
    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->setValue(Ljava/lang/String;)V

    goto :goto_15

    .end local v0    # "curTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    .end local v1    # "destFile":Ljava/io/File;
    .end local v2    # "destFilePath":Ljava/lang/String;
    .end local v4    # "srcFilePath":Ljava/lang/String;
    .end local v6    # "type":Ljava/lang/String;
    :cond_74
    move v7, v8

    .line 1543
    goto :goto_c
.end method

.method private processMotionEventForAirCMD(Landroid/view/MotionEvent;IZ)V
    .registers 28
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "action"    # I
    .param p3, "isButtonPressed"    # Z

    .prologue
    .line 878
    move-object/from16 v0, p0

    iget v0, v0, mSpenUspLevel:I

    move/from16 v20, v0

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_24

    const/4 v15, 0x1

    .line 881
    .local v15, "supportAirCMDService":Z
    :goto_f
    if-eqz v15, :cond_154

    .line 883
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_26

    .line 1048
    :cond_23
    :goto_23
    :pswitch_23
    return-void

    .line 878
    .end local v15    # "supportAirCMDService":Z
    :cond_24
    const/4 v15, 0x0

    goto :goto_f

    .line 887
    .restart local v15    # "supportAirCMDService":Z
    :cond_26
    sparse-switch p2, :sswitch_data_2f6

    goto :goto_23

    .line 891
    :sswitch_2a
    if-eqz p3, :cond_37

    .line 892
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, mAirCMDButtonPressTouchDownTime:J

    goto :goto_23

    .line 894
    :cond_37
    const-wide/16 v20, -0x1

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, mAirCMDButtonPressTouchDownTime:J

    goto :goto_23

    .line 899
    :sswitch_40
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mAirCMDIsPenButtonPressed:Z

    .line 901
    move-object/from16 v0, p0

    iget-wide v0, v0, mAirCMDButtonPressTouchDownTime:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-lez v20, :cond_8f

    move-object/from16 v0, p0

    iget-wide v0, v0, mAirCMDButtonPressTouchDownTime:J

    move-wide/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v22

    cmp-long v20, v20, v22

    if-nez v20, :cond_8f

    const/16 v20, 0x1

    :goto_64
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mAirCMDIsTouchDowned:Z

    .line 906
    :sswitch_6a
    move-object/from16 v0, p0

    iget-boolean v0, v0, mAirCMDIsTouchDowned:Z

    move/from16 v20, v0

    if-nez v20, :cond_23

    .line 910
    if-eqz p3, :cond_92

    move-object/from16 v0, p0

    iget-boolean v0, v0, mAirCMDIsPenButtonPressed:Z

    move/from16 v20, v0

    if-nez v20, :cond_92

    .line 912
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mAirCMDIsPenButtonPressed:Z

    .line 913
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, mAirCMDPenButtonPressedTime:J

    goto :goto_23

    .line 901
    :cond_8f
    const/16 v20, 0x0

    goto :goto_64

    .line 914
    :cond_92
    if-nez p3, :cond_23

    move-object/from16 v0, p0

    iget-boolean v0, v0, mAirCMDIsPenButtonPressed:Z

    move/from16 v20, v0

    if-eqz v20, :cond_23

    .line 916
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mAirCMDIsPenButtonPressed:Z

    .line 919
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-wide v0, v0, mAirCMDPenButtonPressedTime:J

    move-wide/from16 v22, v0

    sub-long v12, v20, v22

    .line 920
    .local v12, "pressedTime":J
    const-wide/16 v20, 0x0

    cmp-long v20, v12, v20

    if-lez v20, :cond_23

    const-wide/16 v20, 0x320

    cmp-long v20, v12, v20

    if-gtz v20, :cond_23

    .line 925
    const-string/jumbo v5, "right"

    .line 926
    .local v5, "direction":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v18, v0

    .line 927
    .local v18, "x":I
    sget-object v20, mContext:Landroid/content/Context;

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_e3

    .line 928
    const-string/jumbo v5, "left"

    .line 932
    :cond_e3
    move-object/from16 v0, p0

    iget-boolean v0, v0, mClearCoverOpened:Z

    move/from16 v20, v0

    if-nez v20, :cond_f4

    .line 933
    sget-object v20, TAG:Ljava/lang/String;

    const-string v21, "Can not start AirCommand. #2"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23

    .line 938
    :cond_f4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 939
    .local v10, "now":J
    move-object/from16 v0, p0

    iget-wide v0, v0, mAirCMDLastStartTime:J

    move-wide/from16 v20, v0

    sub-long v16, v10, v20

    .line 940
    .local v16, "startInterval":J
    const-wide/16 v20, 0x0

    cmp-long v20, v16, v20

    if-lez v20, :cond_12a

    const-wide/16 v20, 0x190

    cmp-long v20, v16, v20

    if-gez v20, :cond_12a

    .line 941
    sget-object v20, TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Can not start AirCommand. #3."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23

    .line 944
    :cond_12a
    move-object/from16 v0, p0

    iput-wide v10, v0, mAirCMDLastStartTime:J

    .line 947
    sget-object v20, TAG:Ljava/lang/String;

    const-string v21, "Start AirCommand. #2"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 950
    .local v6, "extras":Landroid/os/Bundle;
    const-string v20, "cause"

    const-string v21, "button_pressed"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    const-string/jumbo v20, "direction"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, startAirCommandService(Landroid/os/Bundle;)V

    goto/16 :goto_23

    .line 964
    .end local v5    # "direction":Ljava/lang/String;
    .end local v6    # "extras":Landroid/os/Bundle;
    .end local v10    # "now":J
    .end local v12    # "pressedTime":J
    .end local v16    # "startInterval":J
    .end local v18    # "x":I
    :cond_154
    const/4 v8, 0x0

    .line 965
    .local v8, "needsToProcessEvent":Z
    if-eqz p3, :cond_1d3

    move-object/from16 v0, p0

    iget-boolean v0, v0, mClearCoverOpened:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1d3

    .line 966
    const/4 v8, 0x1

    .line 967
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mShouldTransferEventToAirButton:Z

    .line 1003
    :cond_16e
    :goto_16e
    move-object/from16 v0, p0

    iget-boolean v0, v0, mShouldTransferTouchDownEventToAirButton:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1a7

    if-nez p2, :cond_1a7

    .line 1004
    sget-object v20, TAG:Ljava/lang/String;

    const-string/jumbo v21, "onInputEvent : Send touch down event to AirCommand"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v20, v0

    if-nez v20, :cond_192

    .line 1006
    invoke-virtual/range {p0 .. p0}, createGlobalAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    .line 1008
    :cond_192
    move-object/from16 v0, p0

    iget-object v0, v0, mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/airbutton/AirButtonImpl;->onTouchDownForGA(I)V

    .line 1009
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mShouldTransferTouchDownEventToAirButton:Z

    .line 1012
    :cond_1a7
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v8, v0, :cond_23

    .line 1013
    packed-switch p2, :pswitch_data_308

    :pswitch_1b0
    goto/16 :goto_23

    .line 1015
    :pswitch_1b2
    move-object/from16 v0, p0

    iget-object v0, v0, mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v20, v0

    if-nez v20, :cond_1c4

    .line 1016
    invoke-virtual/range {p0 .. p0}, createGlobalAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    .line 1018
    :cond_1c4
    move-object/from16 v0, p0

    iget-object v0, v0, mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/airbutton/AirButtonImpl;->onTouchDownForGA(I)V

    goto/16 :goto_23

    .line 970
    :cond_1d3
    move-object/from16 v0, p0

    iget-boolean v0, v0, mShouldTransferEventToAirButton:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_16e

    .line 971
    sget-object v20, TAG:Ljava/lang/String;

    const-string/jumbo v21, "onInputEvent : Side button has released"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    const/4 v9, 0x0

    .line 974
    .local v9, "result":I
    move-object/from16 v0, p0

    iget-object v0, v0, mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v20, v0

    if-nez v20, :cond_1fc

    .line 975
    invoke-virtual/range {p0 .. p0}, createGlobalAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    .line 978
    :cond_1fc
    move-object/from16 v0, p0

    iget-object v0, v0, mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v20, v0

    if-eqz v20, :cond_239

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/airbutton/AirButtonImpl;->isShowing()Z

    move-result v20

    if-nez v20, :cond_239

    .line 980
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v18, v0

    .line 981
    .restart local v18    # "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    .line 983
    .local v19, "y":I
    sget-object v20, mContext:Landroid/content/Context;

    const-string/jumbo v21, "spengestureservice"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/smartclip/SpenGestureManager;

    .line 985
    .local v14, "spenGestureManager":Lcom/samsung/android/smartclip/SpenGestureManager;
    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v14, v0, v1, v2}, Lcom/samsung/android/smartclip/SpenGestureManager;->getAirButtonHitTest(III)I

    move-result v9

    .line 989
    .end local v14    # "spenGestureManager":Lcom/samsung/android/smartclip/SpenGestureManager;
    .end local v18    # "x":I
    .end local v19    # "y":I
    :cond_239
    invoke-virtual/range {p0 .. p0}, keyguardOn()Z

    move-result v7

    .line 990
    .local v7, "isKeyguardActivated":Z
    invoke-virtual/range {p0 .. p0}, isShowGlobalAirButton()Z

    move-result v4

    .line 991
    .local v4, "canShowAirCommand":Z
    sget-object v20, TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "onInputEvent : keyguard="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", isShowGlobalAirButton="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", hitResult="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v9, v0, :cond_29d

    if-nez v7, :cond_29d

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v4, v0, :cond_29d

    .line 995
    move-object/from16 v0, p0

    iget-object v0, v0, mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/airbutton/AirButtonImpl;->onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 999
    :goto_293
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mShouldTransferEventToAirButton:Z

    goto/16 :goto_16e

    .line 997
    :cond_29d
    move-object/from16 v0, p0

    iget-object v0, v0, mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/airbutton/AirButtonImpl;->initSideButtonState()V

    goto :goto_293

    .line 1027
    .end local v4    # "canShowAirCommand":Z
    .end local v7    # "isKeyguardActivated":Z
    .end local v9    # "result":I
    :pswitch_2a7
    move-object/from16 v0, p0

    iget-object v0, v0, mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v20, v0

    if-nez v20, :cond_2b9

    .line 1028
    invoke-virtual/range {p0 .. p0}, createGlobalAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    .line 1030
    :cond_2b9
    move-object/from16 v0, p0

    iget-object v0, v0, mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/airbutton/AirButtonImpl;->onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto/16 :goto_23

    .line 1034
    :pswitch_2cc
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mShouldTransferTouchDownEventToAirButton:Z

    .line 1035
    move-object/from16 v0, p0

    iget-object v0, v0, mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v20, v0

    if-nez v20, :cond_2e6

    .line 1036
    invoke-virtual/range {p0 .. p0}, createGlobalAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    .line 1038
    :cond_2e6
    move-object/from16 v0, p0

    iget-object v0, v0, mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/airbutton/AirButtonImpl;->onTouchUpForGA(I)V

    goto/16 :goto_23

    .line 887
    nop

    :sswitch_data_2f6
    .sparse-switch
        0x0 -> :sswitch_2a
        0x5 -> :sswitch_2a
        0x7 -> :sswitch_6a
        0x9 -> :sswitch_40
    .end sparse-switch

    .line 1013
    :pswitch_data_308
    .packed-switch 0x0
        :pswitch_1b2
        :pswitch_2cc
        :pswitch_23
        :pswitch_23
        :pswitch_1b0
        :pswitch_23
        :pswitch_23
        :pswitch_2a7
        :pswitch_1b0
        :pswitch_2a7
        :pswitch_2a7
    .end packed-switch
.end method

.method private sendAirCommandStateChangeIntent(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1065
    new-instance v0, Landroid/content/Intent;

    sget-object v1, INTENT_ACTION_AIRCOMMAND_STATE_CHANGE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1066
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.samsung.android.service.aircommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1067
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1068
    sget-object v1, mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1069
    return-void
.end method

.method private sendLogAirCommandItemSelected(Ljava/lang/String;)V
    .registers 6
    .param p1, "selectedItem"    # Ljava/lang/String;

    .prologue
    .line 1596
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1597
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    const-string v3, "com.samsung.android.airbutton"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    const-string/jumbo v2, "feature"

    const-string v3, "AC02"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    const-string/jumbo v2, "extra"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1603
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1604
    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1606
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1608
    sget-object v2, mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1609
    return-void
.end method

.method private sendLogSpenInsertInfo(Ljava/lang/String;)V
    .registers 6
    .param p1, "extra"    # Ljava/lang/String;

    .prologue
    .line 1717
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1718
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    const-string v3, "com.android.server.smartclip"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    const-string/jumbo v2, "feature"

    const-string v3, "SPEN"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    const-string/jumbo v2, "extra"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1722
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1724
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1725
    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1727
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1729
    sget-object v2, mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1730
    return-void
.end method

.method private startAirCommandService(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1053
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1054
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "com.samsung.android.service.aircommand"

    const-string v3, "com.samsung.android.service.aircommand.AirCommandService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1056
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1057
    sget-object v2, mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_16
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_16} :catch_17

    .line 1061
    .end local v1    # "i":Landroid/content/Intent;
    :goto_16
    return-void

    .line 1058
    :catch_17
    move-exception v0

    .line 1059
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to start AirCommand. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method


# virtual methods
.method public createGlobalAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;
    .registers 4

    .prologue
    .line 1211
    new-instance v0, Lcom/samsung/android/airbutton/AirButtonImpl;

    sget-object v1, mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/airbutton/AirButtonImpl;-><init>(Landroid/content/Context;Z)V

    .line 1213
    .local v0, "airButtonWidget":Lcom/samsung/android/airbutton/AirButtonImpl;
    new-instance v1, Lcom/android/server/smartclip/SpenGestureManagerService$6;

    invoke-direct {v1, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$6;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->setOnItemSelectedListener(Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;)V

    .line 1473
    return-object v0
.end method

.method public getAirButtonHitTest(III)I
    .registers 16
    .param p1, "id"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 686
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getAirButtonHitTest() : id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :try_start_19
    iget-object v9, p0, mDataExtractionSync:Ljava/lang/Object;

    monitor-enter v9
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_8c

    .line 690
    :try_start_1c
    const-string/jumbo v8, "window"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v7

    .line 691
    .local v7, "windowManager":Landroid/view/IWindowManager;
    iget-object v8, p0, mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->allocateNewRequestId(Z)I

    move-result v2

    .line 693
    .local v2, "reqId":I
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 694
    .local v3, "requestData":Landroid/os/Bundle;
    const-string/jumbo v8, "id"

    invoke-virtual {v3, v8, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 695
    const-string/jumbo v8, "x"

    invoke-virtual {v3, v8, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 696
    const-string/jumbo v8, "y"

    invoke-virtual {v3, v8, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 698
    new-instance v4, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;

    const/4 v8, 0x2

    invoke-direct {v4, v2, v8, v3}, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;-><init>(IILandroid/os/Parcelable;)V

    .line 703
    .local v4, "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    const/4 v8, 0x0

    invoke-interface {v7, p2, p3, v4, v8}, Landroid/view/IWindowManager;->dispatchSmartClipRemoteRequest(IILcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;Landroid/os/IBinder;)V

    .line 705
    iget-object v8, p0, mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/16 v10, 0x3e8

    invoke-virtual {v8, v2, v10}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->waitResult(II)Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;

    move-result-object v5

    .line 706
    .local v5, "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    const/4 v1, -0x1

    .line 707
    .local v1, "hitTestResult":I
    if-eqz v5, :cond_80

    .line 708
    iget-object v6, v5, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    check-cast v6, Landroid/os/Bundle;

    .line 709
    .local v6, "resultBundle":Landroid/os/Bundle;
    const-string/jumbo v8, "result"

    invoke-virtual {v6, v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 710
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getAirButtonHitTest : Result = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    .end local v6    # "resultBundle":Landroid/os/Bundle;
    :goto_7e
    monitor-exit v9

    .line 718
    .end local v1    # "hitTestResult":I
    .end local v2    # "reqId":I
    .end local v3    # "requestData":Landroid/os/Bundle;
    .end local v4    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .end local v5    # "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    .end local v7    # "windowManager":Landroid/view/IWindowManager;
    :goto_7f
    return v1

    .line 712
    .restart local v1    # "hitTestResult":I
    .restart local v2    # "reqId":I
    .restart local v3    # "requestData":Landroid/os/Bundle;
    .restart local v4    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .restart local v5    # "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    .restart local v7    # "windowManager":Landroid/view/IWindowManager;
    :cond_80
    sget-object v8, TAG:Ljava/lang/String;

    const-string/jumbo v10, "getAirButtonHitTest : Result is null!!"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 715
    .end local v1    # "hitTestResult":I
    .end local v2    # "reqId":I
    .end local v3    # "requestData":Landroid/os/Bundle;
    .end local v4    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .end local v5    # "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    .end local v7    # "windowManager":Landroid/view/IWindowManager;
    :catchall_89
    move-exception v8

    monitor-exit v9
    :try_end_8b
    .catchall {:try_start_1c .. :try_end_8b} :catchall_89

    :try_start_8b
    throw v8
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8c} :catch_8c

    .line 716
    :catch_8c
    move-exception v0

    .line 717
    .local v0, "e":Ljava/lang/Exception;
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception e : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    const/4 v1, -0x1

    goto :goto_7f
.end method

.method public getScrollableAreaInfo(Landroid/graphics/Rect;Landroid/os/IBinder;)Landroid/os/Bundle;
    .registers 12
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "skipWindowToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v6, 0x0

    .line 584
    sget-object v5, TAG:Ljava/lang/String;

    const-string/jumbo v7, "getScrollableRect()"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-direct {p0}, checkSmartClipMetaExtractionPermission()V

    .line 588
    :try_start_c
    const-string/jumbo v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .line 590
    .local v4, "windowManager":Landroid/view/IWindowManager;
    iget-object v5, p0, mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->allocateNewRequestId(Z)I

    move-result v1

    .line 592
    .local v1, "reqId":I
    new-instance v2, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;

    const/4 v5, 0x4

    const/4 v7, 0x0

    invoke-direct {v2, v1, v5, v7}, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;-><init>(IILandroid/os/Parcelable;)V

    .line 597
    .local v2, "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    iget v5, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    iget v7, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    invoke-interface {v4, v5, v7, v2, p2}, Landroid/view/IWindowManager;->dispatchSmartClipRemoteRequest(IILcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;Landroid/os/IBinder;)V

    .line 602
    iget-object v5, p0, mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/16 v7, 0xbb8

    invoke-virtual {v5, v1, v7}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->waitResult(II)Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;

    move-result-object v3

    .line 603
    .local v3, "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    if-eqz v3, :cond_64

    .line 604
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getScrollableRect : Result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v5, v3, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    check-cast v5, Landroid/os/Bundle;

    .line 612
    .end local v1    # "reqId":I
    .end local v2    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .end local v3    # "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    .end local v4    # "windowManager":Landroid/view/IWindowManager;
    :goto_63
    return-object v5

    .line 607
    .restart local v1    # "reqId":I
    .restart local v2    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .restart local v3    # "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    .restart local v4    # "windowManager":Landroid/view/IWindowManager;
    :cond_64
    sget-object v5, TAG:Ljava/lang/String;

    const-string/jumbo v7, "getScrollableRect : Result is null!!"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_6c} :catch_6e

    move-object v5, v6

    .line 608
    goto :goto_63

    .line 610
    .end local v1    # "reqId":I
    .end local v2    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .end local v3    # "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    .end local v4    # "windowManager":Landroid/view/IWindowManager;
    :catch_6e
    move-exception v0

    .line 611
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception e : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 612
    goto :goto_63
.end method

.method public getScrollableViewInfo(Landroid/graphics/Rect;ILandroid/os/IBinder;)Landroid/os/Bundle;
    .registers 14
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "viewHash"    # I
    .param p3, "skipWindowToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v7, 0x0

    .line 618
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v8, "getScrollableViewInfo()"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    invoke-direct {p0}, checkSmartClipMetaExtractionPermission()V

    .line 622
    :try_start_c
    const-string/jumbo v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    .line 624
    .local v5, "windowManager":Landroid/view/IWindowManager;
    iget-object v6, p0, mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->allocateNewRequestId(Z)I

    move-result v2

    .line 625
    .local v2, "reqId":I
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 626
    .local v1, "reqData":Landroid/os/Bundle;
    const-string/jumbo v6, "hashCode"

    invoke-virtual {v1, v6, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 628
    new-instance v3, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;

    const/4 v6, 0x5

    invoke-direct {v3, v2, v6, v1}, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;-><init>(IILandroid/os/Parcelable;)V

    .line 633
    .local v3, "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    iget v8, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    invoke-interface {v5, v6, v8, v3, p3}, Landroid/view/IWindowManager;->dispatchSmartClipRemoteRequest(IILcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;Landroid/os/IBinder;)V

    .line 638
    iget-object v6, p0, mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/16 v8, 0xbb8

    invoke-virtual {v6, v2, v8}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->waitResult(II)Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;

    move-result-object v4

    .line 639
    .local v4, "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    if-eqz v4, :cond_6e

    .line 640
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getScrollableViewInfo : Result="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v6, v4, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    check-cast v6, Landroid/os/Bundle;

    .line 648
    .end local v1    # "reqData":Landroid/os/Bundle;
    .end local v2    # "reqId":I
    .end local v3    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .end local v4    # "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    .end local v5    # "windowManager":Landroid/view/IWindowManager;
    :goto_6d
    return-object v6

    .line 643
    .restart local v1    # "reqData":Landroid/os/Bundle;
    .restart local v2    # "reqId":I
    .restart local v3    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .restart local v4    # "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    .restart local v5    # "windowManager":Landroid/view/IWindowManager;
    :cond_6e
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v8, "getScrollableViewInfo : Result is null!!"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_76} :catch_78

    move-object v6, v7

    .line 644
    goto :goto_6d

    .line 646
    .end local v1    # "reqData":Landroid/os/Bundle;
    .end local v2    # "reqId":I
    .end local v3    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .end local v4    # "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    .end local v5    # "windowManager":Landroid/view/IWindowManager;
    :catch_78
    move-exception v0

    .line 647
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception e : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    .line 648
    goto :goto_6d
.end method

.method public getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;I)Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .registers 16
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "skipWindowToken"    # Landroid/os/IBinder;
    .param p3, "extractionMode"    # I

    .prologue
    .line 534
    sget-object v8, TAG:Ljava/lang/String;

    const-string/jumbo v9, "getSmartClipDataByScreenRect"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-direct {p0}, checkSmartClipMetaExtractionPermission()V

    .line 538
    :try_start_b
    iget-object v9, p0, mDataExtractionSync:Ljava/lang/Object;

    monitor-enter v9
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_84

    .line 539
    if-nez p1, :cond_14

    .line 540
    :try_start_10
    invoke-direct {p0}, getFullScreenRect()Landroid/graphics/Rect;

    move-result-object p1

    .line 543
    :cond_14
    const-string/jumbo v8, "window"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v7

    .line 544
    .local v7, "windowManager":Landroid/view/IWindowManager;
    iget-object v8, p0, mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->allocateNewRequestId(Z)I

    move-result v3

    .line 546
    .local v3, "reqId":I
    new-instance v4, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    invoke-direct {v4, v3, p1, p3}, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;-><init>(ILandroid/graphics/Rect;I)V

    .line 547
    .local v4, "requestData":Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;
    new-instance v5, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;

    const/4 v8, 0x1

    invoke-direct {v5, v3, v8, v4}, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;-><init>(IILandroid/os/Parcelable;)V

    .line 552
    .local v5, "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    invoke-interface {v7, v8, v10, v5, p2}, Landroid/view/IWindowManager;->dispatchSmartClipRemoteRequest(IILcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;Landroid/os/IBinder;)V

    .line 557
    iget-object v8, p0, mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/16 v10, 0xbb8

    invoke-virtual {v8, v3, v10}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->waitResult(II)Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;

    move-result-object v6

    .line 558
    .local v6, "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    if-eqz v6, :cond_76

    .line 559
    iget-object v2, v6, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    check-cast v2, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;

    .line 560
    .local v2, "metaDataResponse":Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;
    const/4 v1, 0x0

    .line 561
    .local v1, "extractedRepository":Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    if-eqz v2, :cond_5b

    .line 562
    iget-object v1, v2, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 563
    invoke-direct {p0, v1}, moveMetaFilesToLocalStorage(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Z

    .line 565
    iget-object v8, p0, mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    if-eqz v8, :cond_5b

    .line 566
    iget-object v8, p0, mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    invoke-virtual {v8, v2}, Lcom/android/server/smartclip/SmartClipView;->onDataExtractionResponseArrived(Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;)V

    .line 569
    :cond_5b
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getSmartClipDataByScreenRect : wait is unlocked. Repository = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    monitor-exit v9

    .line 578
    .end local v1    # "extractedRepository":Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .end local v2    # "metaDataResponse":Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;
    .end local v3    # "reqId":I
    .end local v4    # "requestData":Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;
    .end local v5    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .end local v6    # "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    .end local v7    # "windowManager":Landroid/view/IWindowManager;
    :goto_75
    return-object v1

    .line 572
    .restart local v3    # "reqId":I
    .restart local v4    # "requestData":Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;
    .restart local v5    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .restart local v6    # "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    .restart local v7    # "windowManager":Landroid/view/IWindowManager;
    :cond_76
    sget-object v8, TAG:Ljava/lang/String;

    const-string/jumbo v10, "getSmartClipDataByScreenRect : result is null!!"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    const/4 v1, 0x0

    monitor-exit v9

    goto :goto_75

    .line 575
    .end local v3    # "reqId":I
    .end local v4    # "requestData":Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;
    .end local v5    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .end local v6    # "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    .end local v7    # "windowManager":Landroid/view/IWindowManager;
    :catchall_81
    move-exception v8

    monitor-exit v9
    :try_end_83
    .catchall {:try_start_10 .. :try_end_83} :catchall_81

    :try_start_83
    throw v8
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_84} :catch_84

    .line 576
    :catch_84
    move-exception v0

    .line 577
    .local v0, "e":Ljava/lang/Exception;
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getSmartClipDataByScreenRect : Exception e : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const/4 v1, 0x0

    goto :goto_75
.end method

.method public injectInputEvent(II[Landroid/view/InputEvent;ZLandroid/os/IBinder;)V
    .registers 16
    .param p1, "targetX"    # I
    .param p2, "targetY"    # I
    .param p3, "inputEvents"    # [Landroid/view/InputEvent;
    .param p4, "waitUntilConsume"    # Z
    .param p5, "skipWindowToken"    # Landroid/os/IBinder;

    .prologue
    .line 653
    invoke-direct {p0}, checkInputEventInjectionPermission()V

    .line 656
    :try_start_3
    iget-object v7, p0, mDataExtractionSync:Ljava/lang/Object;

    monitor-enter v7
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_67

    .line 657
    :try_start_6
    const-string/jumbo v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    .line 658
    .local v5, "windowManager":Landroid/view/IWindowManager;
    iget-object v6, p0, mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    invoke-virtual {v6, p4}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->allocateNewRequestId(Z)I

    move-result v2

    .line 660
    .local v2, "reqId":I
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 661
    .local v1, "reqData":Landroid/os/Bundle;
    const-string/jumbo v6, "events"

    invoke-virtual {v1, v6, p3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 662
    const-string/jumbo v6, "waitUntilConsume"

    invoke-virtual {v1, v6, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 664
    new-instance v3, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;

    const/4 v6, 0x3

    invoke-direct {v3, v2, v6, v1}, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;-><init>(IILandroid/os/Parcelable;)V

    .line 669
    .local v3, "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    invoke-interface {v5, p1, p2, v3, p5}, Landroid/view/IWindowManager;->dispatchSmartClipRemoteRequest(IILcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;Landroid/os/IBinder;)V

    .line 671
    const/4 v6, 0x1

    if-ne p4, v6, :cond_59

    .line 672
    iget-object v6, p0, mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/16 v8, 0xbb8

    invoke-virtual {v6, v2, v8}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->waitResult(II)Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;

    move-result-object v4

    .line 673
    .local v4, "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    if-eqz v4, :cond_5b

    .line 674
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "injectInputEvent : Result="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    .end local v4    # "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    :cond_59
    :goto_59
    monitor-exit v7

    .line 683
    .end local v1    # "reqData":Landroid/os/Bundle;
    .end local v2    # "reqId":I
    .end local v3    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .end local v5    # "windowManager":Landroid/view/IWindowManager;
    :goto_5a
    return-void

    .line 676
    .restart local v1    # "reqData":Landroid/os/Bundle;
    .restart local v2    # "reqId":I
    .restart local v3    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .restart local v4    # "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    .restart local v5    # "windowManager":Landroid/view/IWindowManager;
    :cond_5b
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v8, "injectInputEvent : Result is null!!"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    .line 679
    .end local v1    # "reqData":Landroid/os/Bundle;
    .end local v2    # "reqId":I
    .end local v3    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .end local v4    # "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    .end local v5    # "windowManager":Landroid/view/IWindowManager;
    :catchall_64
    move-exception v6

    monitor-exit v7
    :try_end_66
    .catchall {:try_start_6 .. :try_end_66} :catchall_64

    :try_start_66
    throw v6
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_67} :catch_67

    .line 680
    :catch_67
    move-exception v0

    .line 681
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "injectInputEvent : Exception thrown! e = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a
.end method

.method public isShowGlobalAirButton()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1143
    sget-object v4, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "device_provisioned"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1144
    .local v1, "setupWizard":I
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v0

    .line 1146
    .local v0, "isFactoryMode":Z
    if-ne v0, v2, :cond_1d

    .line 1147
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "isShowGlobalAirButton : Factory mode enabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    :cond_1d
    if-nez v0, :cond_28

    if-eqz v1, :cond_28

    invoke-direct {p0}, isVzwSetupRunning()Z

    move-result v4

    if-nez v4, :cond_28

    .line 1152
    :goto_27
    return v2

    :cond_28
    move v2, v3

    goto :goto_27
.end method

.method public keyguardOn()Z
    .registers 4

    .prologue
    .line 1072
    sget-object v1, mContext:Landroid/content/Context;

    const-string/jumbo v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 1073
    .local v0, "kgm":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_1c

    .line 1074
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1075
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "SpenGestureManagerService :isKeyguardLocked : true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    const/4 v1, 0x1

    .line 1079
    :goto_1b
    return v1

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method public keyguardSecureOn()Z
    .registers 4

    .prologue
    .line 1083
    sget-object v1, mContext:Landroid/content/Context;

    const-string/jumbo v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 1084
    .local v0, "kgm":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_22

    .line 1085
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1086
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "SpenGestureManagerService :isKeyguardSecure : true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    const/4 v1, 0x1

    .line 1090
    :goto_21
    return v1

    :cond_22
    const/4 v1, 0x0

    goto :goto_21
.end method

.method public sendSmartClipRemoteRequestResult(Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;)V
    .registers 5
    .param p1, "result"    # Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;

    .prologue
    .line 505
    if-eqz p1, :cond_2f

    .line 506
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSmartClipRemoteRequestResult : requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;->mRequestId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requestType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;->mRequestType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v0, p0, mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    invoke-virtual {v0, p1}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->notifyResult(Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;)V

    .line 511
    :goto_2e
    return-void

    .line 509
    :cond_2f
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendSmartClipRemoteRequestResult : result is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method

.method public setFocusWindow(I)V
    .registers 3
    .param p1, "focusSurfaceLayer"    # I

    .prologue
    .line 498
    iget-object v0, p0, mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    if-eqz v0, :cond_9

    .line 499
    iget-object v0, p0, mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    invoke-virtual {v0, p1}, Lcom/android/server/smartclip/SmartClipView;->setFocusWindow(I)V

    .line 501
    :cond_9
    return-void
.end method
