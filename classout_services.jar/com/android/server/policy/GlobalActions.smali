.class Lcom/android/server/policy/GlobalActions;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;,
        Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;,
        Lcom/android/server/policy/GlobalActions$SilentModeAction;,
        Lcom/android/server/policy/GlobalActions$ToggleAction;,
        Lcom/android/server/policy/GlobalActions$SinglePressAction;,
        Lcom/android/server/policy/GlobalActions$LongPressAction;,
        Lcom/android/server/policy/GlobalActions$Action;,
        Lcom/android/server/policy/GlobalActions$MyAdapter;,
        Lcom/android/server/policy/GlobalActions$RebootAction;,
        Lcom/android/server/policy/GlobalActions$PowerAction;
    }
.end annotation


# static fields
.field private static final ACTION_CLEAR_COVER_STATE_CHANGE:Ljava/lang/String; = "com.samsung.cover.STATE_CHANGE"

.field public static final ACTION_NETWORK_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.NETWORK_MODE_CHANGED"

.field public static final ACTION_SHOW_GLOBAL_ACTIONS:Ljava/lang/String; = "android.intent.action.SHOW_GLOBAL_ACTIONS"

.field private static final ACTION_STATUS_EXPAND:Ljava/lang/String; = "com.android.systemui.statusbar.EXPANDED"

.field private static final DIALOG_DISMISS_DELAY:I = 0x12c

.field private static final GLOBAL_ACTION_KEY_AIRPLANE:Ljava/lang/String; = "airplane"

.field private static final GLOBAL_ACTION_KEY_ASSIST:Ljava/lang/String; = "assist"

.field private static final GLOBAL_ACTION_KEY_BUGREPORT:Ljava/lang/String; = "bugreport"

.field private static final GLOBAL_ACTION_KEY_DATAMODE:Ljava/lang/String; = "datamode"

.field private static final GLOBAL_ACTION_KEY_EMERGENCYMODE:Ljava/lang/String; = "emergencymode"

.field private static final GLOBAL_ACTION_KEY_LOCKDOWN:Ljava/lang/String; = "lockdown"

.field private static final GLOBAL_ACTION_KEY_POWER:Ljava/lang/String; = "power"

.field private static final GLOBAL_ACTION_KEY_REBOOT:Ljava/lang/String; = "reboot"

.field private static final GLOBAL_ACTION_KEY_RESTART:Ljava/lang/String; = "restart"

.field private static final GLOBAL_ACTION_KEY_SETTINGS:Ljava/lang/String; = "settings"

.field private static final GLOBAL_ACTION_KEY_SILENT:Ljava/lang/String; = "silent"

.field private static final GLOBAL_ACTION_KEY_SUBSCREEN:Ljava/lang/String; = "subscreen"

.field private static final GLOBAL_ACTION_KEY_USERS:Ljava/lang/String; = "users"

.field private static final GLOBAL_ACTION_KEY_VOICEASSIST:Ljava/lang/String; = "voiceassist"

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_HIDE_CONFIRM_LANDSCAPE:I = 0x9

.field private static final MESSAGE_HIDE_CONFIRM_PORTRAIT:I = 0x8

.field private static final MESSAGE_HIDE_QUICKPANEL:I = 0x4

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final MESSAGE_REFRESH_AIRPLANEMODE:I = 0x3

.field private static final MESSAGE_REFRESH_RINGER:I = 0x5

.field private static final MESSAGE_SHOW:I = 0x2

.field private static final MESSAGE_SHOW_CONFIRM_LANDSCAPE:I = 0x7

.field private static final MESSAGE_SHOW_CONFIRM_PORTRAIT:I = 0x6

.field static final SAFE_DEBUG:Z

.field private static final SHOW_SILENT_TOGGLE:Z = true

.field private static final SIM_CDMA:I = 0x0

.field private static final SIM_GSM:I = 0x1

.field private static final SURVEY_LOG:Z

.field static SelectedItem:Landroid/view/View; = null

.field private static final TAG:Ljava/lang/String; = "GlobalActions"

.field private static final TW_GLOBALACTIONS_MSG_DELAY:I = 0x96

.field static mAccessibiltyShortcutEnabled:Z

.field private static mClearCoverWidth:I

.field private static mCountyCode:Ljava/lang/String;

.field private static mCoverViewListView:Landroid/widget/ListView;

.field private static mHasVibrator:Z

.field private static mIsAirplaneConfirmDialogExist:Z

.field private static mIsBugReportEnable:Z

.field private static mIsCancelEnable:Z

.field private static mIsClearCover:Z

.field private static mIsConfirmDlg:Z

.field private static mIsConfirmLandDlg:Z

.field private static mIsCoverOpen:Z

.field private static mIsFirstCreated:Z

.field private static mIsMiniCoverOpened:Z

.field private static mIsMiniDialogMode:Z

.field private static mIsSafemodeSupport:Z

.field private static mNewFeatureForM:Z

.field private static mNewFeatureForMListView:Landroid/widget/ListView;

.field private static mPasscodeEditText:Landroid/widget/EditText;

.field private static mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private static mProKioskMenuPosition:I

.field private static mProKioskOptionShown:Z

.field private static final mProductName:Ljava/lang/String;

.field private static mSCoverRequestStatus:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSViewCoverAppLevel:I

.field private static mSViewCoverHeight:I

.field private static mSViewCoverWidth:I

.field private static final mSalesCode:Ljava/lang/String;

.field private static final mScafe:Ljava/lang/String;

.field private static final mScafeShot:Ljava/lang/String;

.field public static mSilentModeView:Landroid/view/View;

.field private static mStatusHeight:I

.field private static sIsConfirming:Z

.field private static sIsConfirmingGuard:Ljava/lang/Object;

.field private static sIsSecondConfirming:Z


# instance fields
.field final DO_NOT_MOVE:I

.field final INTERVAL_SCOVER_TRANSITION:I

.field private cm:Landroid/net/ConnectivityManager;

.field current_x:F

.field current_x_land:F

.field current_y:F

.field current_y_land:F

.field displayheight:I

.field displaywidth:I

.field private isDataToggleSupport:Z

.field isShopDemo:Z

.field private isVZWOperatorAirplaneModeONReasonUSB3:Z

.field private mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

.field mAirplaneModeCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

.field mAirplaneModeClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field private mAirplaneMsg:Landroid/widget/TextView;

.field private mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

.field mAirplaneStringId:I

.field private final mAudioManager:Landroid/media/AudioManager;

.field mBottomViewDoubleItemWidth:I

.field mBottomViewSingleCancelItemWidth:I

.field mBottomViewSingleItemHeight:I

.field mBottomViewSingleItemWidth:I

.field private mBottomlayout:Landroid/widget/LinearLayout;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBugReport:Landroid/widget/Button;

.field private mCancelButton:Landroid/widget/Button;

.field private mConfirmDialog:Landroid/app/AlertDialog;

.field private mConfirmDialogReceiver:Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;

.field private mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;

.field mConfirmPowerOffIconResId:I

.field mConfirmRestartIconResId:I

.field private final mContext:Landroid/content/Context;

.field private mCoverColor:I

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field mDataModeClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field mDataNetworkIconResId:I

.field private mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

.field mDataNetworkStringId:I

.field private mDescriptionlayout:Landroid/widget/LinearLayout;

.field private mDeviceProvisioned:Z

.field private mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

.field private mDisplayConfirm:Z

.field private mDontShowCheckbox:Landroid/widget/CheckBox;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field mEmergencyIconResId:I

.field private mEmergencyState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

.field mEmergencyStringId:I

.field private mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

.field private mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

.field private mHandler:Landroid/os/Handler;

.field private mHasTelephony:Z

.field private mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

.field private mIsScreenOFF:Z

.field private mIsSecureKeyguard:Z

.field private mIsSetAirplaneOnMessageCHINA:Z

.field private mIsSetAirplaneOnMessageVZW:Z

.field mIsSupportedBlur:Z

.field private mIsWaitingForEcmExit:Z

.field mItemConfirmMessageWidth:I

.field mItemDivider:I

.field mItemDividerLand:I

.field mItemHeight:I

.field mItemHeightWithStatus:I

.field mItemLandscapeDivider:I

.field mItemMaxWidth:I

.field mItemMaxWidthLand:I

.field mItemPortraitDivider:I

.field mItemPortraitDividerOverFour:I

.field mItemPortraitDividerSViewCover:I

.field mItemWidth:I

.field mItemWidthLand:I

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/GlobalActions$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mKeyguardShowing:Z

.field private mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

.field private mLDUWarning:Ljava/lang/String;

.field private mLandscapeLinearLayout:Landroid/widget/LinearLayout;

.field private mLayout:Landroid/widget/LinearLayout;

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mMSimServiceState:[I

.field mMessageViewPaddingBottom:I

.field mMessageViewPaddingTop:I

.field private mPhoneCount:I

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

.field mPowerOffIconResId:I

.field private mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

.field private mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field private mRestart:Lcom/android/server/policy/GlobalActions$SinglePressAction;

.field mRestartIconResId:I

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mScrollview:Landroid/widget/ScrollView;

.field private mSecondAnimatedText:Landroid/widget/TextView;

.field private mShowOnAirplaneConfirm:Z

.field private final mShowSilentToggle:Z

.field private mSilentModeAction:Lcom/android/server/policy/GlobalActions$SilentModeAction;

.field mStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mSubScreenOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field private mSubScreenState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

.field private mTempStringArray:[Ljava/lang/String;

.field private mUnableAirplanemode:Ljava/lang/String;

.field private mUnableEmergencyforFMM:Ljava/lang/String;

.field private mUnablePowerOff:Ljava/lang/String;

.field private mUnablePowerOffForFMM:Ljava/lang/String;

.field private mUnableRestartForFMM:Ljava/lang/String;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mViewCoverParentLayout:Landroid/widget/ImageView;

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field private powermanager:Landroid/os/PowerManager;

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 210
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_a5

    move v0, v1

    :goto_a
    sput-boolean v0, SAFE_DEBUG:Z

    .line 254
    sput-boolean v1, mIsConfirmDlg:Z

    .line 255
    sput-boolean v1, mIsConfirmLandDlg:Z

    .line 256
    sput-boolean v1, mIsBugReportEnable:Z

    .line 257
    sput-boolean v1, mIsCancelEnable:Z

    .line 258
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Framework_SupportRebootWithSafemode"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, mIsSafemodeSupport:Z

    .line 283
    sput v1, mProKioskMenuPosition:I

    .line 285
    sput-boolean v1, mProKioskOptionShown:Z

    .line 286
    sput-object v4, mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 287
    sput-object v4, mPasscodeEditText:Landroid/widget/EditText;

    .line 293
    sput-boolean v1, sIsConfirming:Z

    .line 294
    sput-boolean v1, sIsSecondConfirming:Z

    .line 295
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, sIsConfirmingGuard:Ljava/lang/Object;

    .line 301
    sput-object v4, mCoverViewListView:Landroid/widget/ListView;

    .line 304
    sput-object v4, mNewFeatureForMListView:Landroid/widget/ListView;

    .line 320
    sput-boolean v2, mIsCoverOpen:Z

    .line 321
    sput-boolean v1, mIsClearCover:Z

    .line 323
    sput v1, mSViewCoverAppLevel:I

    .line 325
    sput-boolean v1, mIsMiniDialogMode:Z

    .line 326
    sput-boolean v1, mIsMiniCoverOpened:Z

    .line 329
    sput-object v4, mSilentModeView:Landroid/view/View;

    .line 330
    sput v1, mSViewCoverWidth:I

    .line 331
    sput v1, mSViewCoverHeight:I

    .line 332
    sput v1, mClearCoverWidth:I

    .line 333
    sput v1, mStatusHeight:I

    .line 335
    const-string/jumbo v0, "ro.build.scafe"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, mScafe:Ljava/lang/String;

    .line 336
    const-string/jumbo v0, "ro.build.scafe.shot"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, mScafeShot:Ljava/lang/String;

    .line 337
    const-string/jumbo v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, mProductName:Ljava/lang/String;

    .line 338
    const-string/jumbo v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, mSalesCode:Ljava/lang/String;

    .line 339
    const-string/jumbo v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, mCountyCode:Ljava/lang/String;

    .line 351
    sput-boolean v2, mIsFirstCreated:Z

    .line 364
    sput-boolean v1, mIsAirplaneConfirmDialogExist:Z

    .line 367
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, SURVEY_LOG:Z

    .line 381
    const-string v0, "americano"

    sget-object v3, mScafe:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    move v2, v1

    :cond_97
    sput-boolean v2, mNewFeatureForM:Z

    .line 417
    sput-boolean v1, mAccessibiltyShortcutEnabled:Z

    .line 418
    sput-object v4, SelectedItem:Landroid/view/View;

    .line 4931
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, mSCoverRequestStatus:Ljava/util/HashSet;

    return-void

    :cond_a5
    move v0, v2

    .line 210
    goto/16 :goto_a
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-boolean v3, p0, mKeyguardShowing:Z

    .line 252
    iput-boolean v3, p0, mDeviceProvisioned:Z

    .line 260
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v1, p0, mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 262
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v1, p0, mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 263
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v1, p0, mSubScreenState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 267
    iput-boolean v3, p0, mIsWaitingForEcmExit:Z

    .line 274
    iput-boolean v2, p0, mDisplayConfirm:Z

    .line 281
    iput-object v5, p0, mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    .line 282
    iput-object v5, p0, mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    .line 284
    iput-object v5, p0, mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    .line 297
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v1, p0, mEmergencyState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 302
    iput-object v5, p0, mLayout:Landroid/widget/LinearLayout;

    .line 305
    iput-object v5, p0, mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    .line 306
    iput-object v5, p0, mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    .line 307
    iput-object v5, p0, mLinearLayout:Landroid/widget/LinearLayout;

    .line 308
    iput-object v5, p0, mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    .line 309
    iput-object v5, p0, mBottomlayout:Landroid/widget/LinearLayout;

    .line 310
    iput-object v5, p0, mDescriptionlayout:Landroid/widget/LinearLayout;

    .line 311
    iput-object v5, p0, mSecondAnimatedText:Landroid/widget/TextView;

    .line 312
    iput-object v5, p0, mScrollview:Landroid/widget/ScrollView;

    .line 313
    iput-object v5, p0, mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 314
    iput-object v5, p0, mCancelButton:Landroid/widget/Button;

    .line 315
    iput-object v5, p0, mBugReport:Landroid/widget/Button;

    .line 317
    iput-object v5, p0, mViewCoverParentLayout:Landroid/widget/ImageView;

    .line 318
    iput v3, p0, mCoverColor:I

    .line 322
    iput-object v5, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 341
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v4, "CscFeature_Framework_SupportDataModeSwitchGlobalAction"

    invoke-virtual {v1, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, isDataToggleSupport:Z

    .line 342
    iput-boolean v3, p0, isVZWOperatorAirplaneModeONReasonUSB3:Z

    .line 343
    iput-object v5, p0, mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 350
    iput-object v5, p0, mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 358
    iput-boolean v2, p0, mShowOnAirplaneConfirm:Z

    .line 359
    iput-boolean v3, p0, mIsSetAirplaneOnMessageVZW:Z

    .line 360
    iput-boolean v3, p0, mIsSetAirplaneOnMessageCHINA:Z

    .line 361
    iput-object v5, p0, mDontShowCheckbox:Landroid/widget/CheckBox;

    .line 362
    iput-object v5, p0, mAirplaneMsg:Landroid/widget/TextView;

    .line 363
    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v4, "temp"

    aput-object v4, v1, v3

    iput-object v1, p0, mTempStringArray:[Ljava/lang/String;

    .line 370
    iput-object v5, p0, mKeyguardManager:Landroid/app/KeyguardManager;

    .line 371
    iput-boolean v3, p0, mIsSecureKeyguard:Z

    .line 372
    iput-object v5, p0, mUnablePowerOff:Ljava/lang/String;

    .line 373
    iput-object v5, p0, mUnableAirplanemode:Ljava/lang/String;

    .line 374
    iput-object v5, p0, mLDUWarning:Ljava/lang/String;

    .line 375
    iput-boolean v3, p0, isShopDemo:Z

    .line 377
    iput v3, p0, mPhoneCount:I

    .line 382
    iput v3, p0, displayheight:I

    .line 383
    iput v3, p0, displaywidth:I

    .line 384
    iput v3, p0, mBottomViewSingleItemWidth:I

    .line 385
    iput v3, p0, mBottomViewSingleCancelItemWidth:I

    .line 386
    iput v3, p0, mBottomViewDoubleItemWidth:I

    .line 387
    iput v3, p0, mBottomViewSingleItemHeight:I

    .line 388
    iput v6, p0, current_x:F

    .line 389
    iput v6, p0, current_y:F

    .line 390
    iput v6, p0, current_x_land:F

    .line 391
    iput v6, p0, current_y_land:F

    .line 392
    iput v3, p0, mItemWidth:I

    .line 393
    iput v3, p0, mItemWidthLand:I

    .line 394
    iput v3, p0, mItemHeight:I

    .line 395
    iput v3, p0, mItemHeightWithStatus:I

    .line 396
    iput v3, p0, mItemMaxWidth:I

    .line 397
    iput v3, p0, mItemMaxWidthLand:I

    .line 398
    iput v3, p0, mMessageViewPaddingTop:I

    .line 399
    iput v3, p0, mMessageViewPaddingBottom:I

    .line 400
    iput v3, p0, mItemPortraitDivider:I

    .line 401
    iput v3, p0, mItemPortraitDividerOverFour:I

    .line 402
    iput v3, p0, mItemLandscapeDivider:I

    .line 403
    iput v3, p0, mItemPortraitDividerSViewCover:I

    .line 404
    iput v3, p0, mItemDivider:I

    .line 405
    iput v3, p0, mItemDividerLand:I

    .line 406
    iput v3, p0, mItemConfirmMessageWidth:I

    .line 407
    iput v3, p0, mPowerOffIconResId:I

    .line 408
    iput v3, p0, mConfirmPowerOffIconResId:I

    .line 409
    iput v3, p0, mEmergencyIconResId:I

    .line 410
    iput v3, p0, mRestartIconResId:I

    .line 411
    iput v3, p0, mConfirmRestartIconResId:I

    .line 412
    iput v3, p0, mDataNetworkIconResId:I

    .line 413
    iput v3, p0, mEmergencyStringId:I

    .line 414
    iput v3, p0, mAirplaneStringId:I

    .line 415
    iput v3, p0, mDataNetworkStringId:I

    .line 416
    iput-boolean v3, p0, mIsSupportedBlur:Z

    .line 419
    const/16 v1, -0x3e8

    iput v1, p0, DO_NOT_MOVE:I

    .line 420
    iput-object v5, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 421
    iput-object v5, p0, mUnablePowerOffForFMM:Ljava/lang/String;

    .line 422
    iput-object v5, p0, mUnableRestartForFMM:Ljava/lang/String;

    .line 423
    iput-object v5, p0, mUnableEmergencyforFMM:Ljava/lang/String;

    .line 424
    iput-boolean v3, p0, mIsScreenOFF:Z

    .line 831
    new-instance v1, Lcom/android/server/policy/GlobalActions$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$1;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, mStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 3170
    new-instance v1, Lcom/android/server/policy/GlobalActions$31;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$31;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, mAirplaneModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 3176
    new-instance v1, Lcom/android/server/policy/GlobalActions$32;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$32;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, mAirplaneModeCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 3193
    new-instance v1, Lcom/android/server/policy/GlobalActions$33;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$33;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, mDataModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 4146
    new-instance v1, Lcom/android/server/policy/GlobalActions$34;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$34;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 4193
    new-instance v1, Lcom/android/server/policy/GlobalActions$35;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$35;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    .line 4213
    new-instance v1, Lcom/android/server/policy/GlobalActions$36;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$36;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 4253
    new-instance v1, Lcom/android/server/policy/GlobalActions$37;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$37;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    .line 4267
    new-instance v1, Lcom/android/server/policy/GlobalActions$38;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v4}, Lcom/android/server/policy/GlobalActions$38;-><init>(Lcom/android/server/policy/GlobalActions;Landroid/os/Handler;)V

    iput-object v1, p0, mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 4295
    new-instance v1, Lcom/android/server/policy/GlobalActions$39;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$39;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, mHandler:Landroid/os/Handler;

    .line 4942
    const/16 v1, 0xc8

    iput v1, p0, INTERVAL_SCOVER_TRANSITION:I

    .line 431
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v4, 0x103012b

    invoke-direct {v1, p1, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, mContext:Landroid/content/Context;

    .line 433
    iput-object p2, p0, mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 434
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, mAudioManager:Landroid/media/AudioManager;

    .line 435
    const-string/jumbo v1, "dreams"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v1

    iput-object v1, p0, mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 440
    invoke-static {}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getInstance()Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-result-object v1

    iput-object v1, p0, mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    .line 441
    invoke-static {}, Landroid/app/enterprise/knoxcustom/SystemManager;->getInstance()Landroid/app/enterprise/knoxcustom/SystemManager;

    move-result-object v1

    iput-object v1, p0, mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    .line 448
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, cm:Landroid/net/ConnectivityManager;

    .line 450
    iget-object v1, p0, cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    iput-boolean v1, p0, mHasTelephony:Z

    .line 452
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, powermanager:Landroid/os/PowerManager;

    .line 454
    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, telephonyManager:Landroid/telephony/TelephonyManager;

    .line 456
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, registerPhoneStateListener(Landroid/content/Context;)V

    .line 460
    iget-object v1, p0, telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x20

    invoke-virtual {v1, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 461
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "airplane_mode_on"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 464
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v4, "vibrator"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 465
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-eqz v0, :cond_313

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_313

    move v1, v2

    :goto_1a7
    sput-boolean v1, mHasVibrator:Z

    .line 467
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x1120084

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_316

    move v1, v2

    :goto_1b9
    iput-boolean v1, p0, mShowSilentToggle:Z

    .line 470
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "shopdemo"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_319

    move v1, v2

    :goto_1cb
    iput-boolean v1, p0, isShopDemo:Z

    .line 472
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, displaywidth:I

    .line 474
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10501b4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, mItemWidth:I

    .line 476
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10501b5

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, mItemWidthLand:I

    .line 478
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10501b2

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, mItemHeight:I

    .line 480
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10501b3

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, mItemHeightWithStatus:I

    .line 482
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10501b8

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, mItemMaxWidth:I

    .line 484
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10501b9

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, mItemMaxWidthLand:I

    .line 486
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10501c3

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, mMessageViewPaddingTop:I

    .line 488
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10501c4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, mMessageViewPaddingBottom:I

    .line 490
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10501be

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, mItemPortraitDivider:I

    .line 492
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10501bf

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, mItemPortraitDividerOverFour:I

    .line 494
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10501c0

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, mItemLandscapeDivider:I

    .line 496
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10501c1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, mItemPortraitDividerSViewCover:I

    .line 499
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10501ba

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, mBottomViewSingleItemWidth:I

    .line 501
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10501bb

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, mBottomViewSingleCancelItemWidth:I

    .line 503
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10501bc

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, mBottomViewDoubleItemWidth:I

    .line 505
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10501bd

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, mBottomViewSingleItemHeight:I

    .line 508
    const v1, 0x108095d

    iput v1, p0, mPowerOffIconResId:I

    .line 509
    const v1, 0x108095e

    iput v1, p0, mConfirmPowerOffIconResId:I

    .line 510
    const v1, 0x108095c

    iput v1, p0, mEmergencyIconResId:I

    .line 513
    const v1, 0x108095b

    iput v1, p0, mDataNetworkIconResId:I

    .line 515
    const v1, 0x104099b

    iput v1, p0, mEmergencyStringId:I

    .line 516
    const v1, 0x1040126

    iput v1, p0, mAirplaneStringId:I

    .line 517
    const v1, 0x10409af

    iput v1, p0, mDataNetworkStringId:I

    .line 519
    iput-boolean v2, p0, mIsSupportedBlur:Z

    .line 520
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 524
    const-string v1, "TMB"

    sget-object v2, mSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30f

    .line 525
    iput-boolean v3, p0, mDisplayConfirm:Z

    .line 530
    :cond_30f
    invoke-direct {p0, p1}, initCoverManager(Landroid/content/Context;)V

    .line 532
    return-void

    :cond_313
    move v1, v3

    .line 465
    goto/16 :goto_1a7

    :cond_316
    move v1, v3

    .line 467
    goto/16 :goto_1b9

    :cond_319
    move v1, v3

    .line 470
    goto/16 :goto_1cb
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 206
    sget-boolean v0, sIsSecondConfirming:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 206
    sput-boolean p0, sIsSecondConfirming:Z

    return p0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 206
    sget-object v0, sIsConfirmingGuard:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/policy/GlobalActions;)Landroid/net/ConnectivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    iget-object v0, p0, cm:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/policy/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    iget-boolean v0, p0, isDataToggleSupport:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/policy/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    invoke-direct {p0}, isTSafeLock()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/policy/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    iget-boolean v0, p0, mIsSecureKeyguard:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    iget-object v0, p0, mUnableAirplanemode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    iget-object v0, p0, mLDUWarning:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600()Ljava/lang/String;
    .registers 1

    .prologue
    .line 206
    sget-object v0, mSalesCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/policy/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    invoke-direct {p0}, isMSim()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/policy/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    iget-boolean v0, p0, isVZWOperatorAirplaneModeONReasonUSB3:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/policy/GlobalActions;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 206
    iput-boolean p1, p0, isVZWOperatorAirplaneModeONReasonUSB3:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/policy/GlobalActions;)Landroid/hardware/usb/UsbManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    iget-object v0, p0, mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/server/policy/GlobalActions;Landroid/hardware/usb/UsbManager;)Landroid/hardware/usb/UsbManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Landroid/hardware/usb/UsbManager;

    .prologue
    .line 206
    iput-object p1, p0, mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object p1
.end method

.method static synthetic access$200()Z
    .registers 1

    .prologue
    .line 206
    sget-boolean v0, sIsConfirming:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/policy/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    invoke-direct {p0}, isVoiceCapable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 206
    sput-boolean p0, sIsConfirming:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/android/server/policy/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    invoke-direct {p0}, isCHINA()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2202(Lcom/android/server/policy/GlobalActions;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 206
    iput-boolean p1, p0, mIsSetAirplaneOnMessageCHINA:Z

    return p1
.end method

.method static synthetic access$2302(Lcom/android/server/policy/GlobalActions;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 206
    iput-boolean p1, p0, mIsSetAirplaneOnMessageVZW:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/policy/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    invoke-direct {p0}, isUSA()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    iget-object v0, p0, mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction$State;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .prologue
    .line 206
    iput-object p1, p0, mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object p1
.end method

.method static synthetic access$2600()Ljava/lang/String;
    .registers 1

    .prologue
    .line 206
    sget-object v0, mScafe:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/policy/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    iget-boolean v0, p0, mHasTelephony:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/policy/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    iget-boolean v0, p0, mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/server/policy/GlobalActions;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 206
    iput-boolean p1, p0, mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/policy/GlobalActions;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 206
    invoke-direct {p0, p1}, changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method static synthetic access$300()Z
    .registers 1

    .prologue
    .line 206
    sget-boolean v0, mIsMiniCoverOpened:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction$State;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .prologue
    .line 206
    iput-object p1, p0, mSubScreenState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object p1
.end method

.method static synthetic access$302(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 206
    sput-boolean p0, mIsMiniCoverOpened:Z

    return p0
.end method

.method static synthetic access$3100(Lcom/android/server/policy/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    invoke-direct {p0}, isFMMlocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    iget-object v0, p0, mUnableEmergencyforFMM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300()Landroid/widget/EditText;
    .registers 1

    .prologue
    .line 206
    sget-object v0, mPasscodeEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/policy/GlobalActions;)Landroid/app/enterprise/knoxcustom/ProKioskManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    iget-object v0, p0, mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/policy/GlobalActions;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    iget-object v0, p0, mTempStringArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/policy/GlobalActions;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # [Ljava/lang/String;

    .prologue
    .line 206
    invoke-direct {p0, p1, p2, p3}, isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700()Landroid/app/AlertDialog$Builder;
    .registers 1

    .prologue
    .line 206
    sget-object v0, mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    iget-object v0, p0, mUnableRestartForFMM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/policy/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    iget-boolean v0, p0, mDisplayConfirm:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/android/server/policy/GlobalActions;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 206
    iput-boolean p1, p0, mDisplayConfirm:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/policy/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    iget-object v0, p0, mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    return-object v0
.end method

.method static synthetic access$4300()Z
    .registers 1

    .prologue
    .line 206
    sget-boolean v0, mIsConfirmDlg:Z

    return v0
.end method

.method static synthetic access$4302(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 206
    sput-boolean p0, mIsConfirmDlg:Z

    return p0
.end method

.method static synthetic access$4400()Z
    .registers 1

    .prologue
    .line 206
    sget-boolean v0, mIsConfirmLandDlg:Z

    return v0
.end method

.method static synthetic access$4402(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 206
    sput-boolean p0, mIsConfirmLandDlg:Z

    return p0
.end method

.method static synthetic access$4500(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    iget-object v0, p0, mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    .prologue
    .line 206
    iput-object p1, p0, mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    return-object p1
.end method

.method static synthetic access$4600()Z
    .registers 1

    .prologue
    .line 206
    sget-boolean v0, mIsMiniDialogMode:Z

    return v0
.end method

.method static synthetic access$4602(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 206
    sput-boolean p0, mIsMiniDialogMode:Z

    return p0
.end method

.method static synthetic access$4700(Lcom/android/server/policy/GlobalActions;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-direct {p0, p1}, virtualDismissInSCover(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4800()Landroid/widget/ListView;
    .registers 1

    .prologue
    .line 206
    sget-object v0, mCoverViewListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    iget-object v0, p0, mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5000()Z
    .registers 1

    .prologue
    .line 206
    sget-boolean v0, mProKioskOptionShown:Z

    return v0
.end method

.method static synthetic access$5002(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 206
    sput-boolean p0, mProKioskOptionShown:Z

    return p0
.end method

.method static synthetic access$5100(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    iget-object v0, p0, mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$Action;IZ)Landroid/view/View;
    .registers 5
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Lcom/android/server/policy/GlobalActions$Action;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 206
    invoke-direct {p0, p1, p2, p3}, makeActionsItem(Lcom/android/server/policy/GlobalActions$Action;IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    iget-object v0, p0, mLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    iget-object v0, p0, mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$5500()I
    .registers 1

    .prologue
    .line 206
    sget v0, mProKioskMenuPosition:I

    return v0
.end method

.method static synthetic access$5600(Lcom/android/server/policy/GlobalActions;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    iget-object v0, p0, mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/server/policy/GlobalActions;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 206
    invoke-direct {p0, p1}, onClickForHidePortraitConfirmDialog(Z)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    iget-object v0, p0, mUnablePowerOff:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    iget-object v0, p0, mUnablePowerOffForFMM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/policy/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    invoke-direct {p0}, isSimReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6000(Lcom/android/server/policy/GlobalActions;Landroid/view/View;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 206
    invoke-direct {p0, p1}, isSingleActionItem(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6100(Lcom/android/server/policy/GlobalActions;Landroid/view/View;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 206
    invoke-direct {p0, p1, p2}, onClickForPortraitConfirmDialog(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/policy/GlobalActions;Landroid/view/View;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 206
    invoke-direct {p0, p1, p2}, onClickForLandscapeConfirmDialog(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$6300()Z
    .registers 1

    .prologue
    .line 206
    sget-boolean v0, mIsCoverOpen:Z

    return v0
.end method

.method static synthetic access$6400()Z
    .registers 1

    .prologue
    .line 206
    sget-boolean v0, mIsClearCover:Z

    return v0
.end method

.method static synthetic access$6500(Lcom/android/server/policy/GlobalActions;)Landroid/app/GlobalActionsFrameLayoutSViewCover;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    iget-object v0, p0, mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/server/policy/GlobalActions;)Landroid/app/GlobalActionsFrameLayout;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    iget-object v0, p0, mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    iget-object v0, p0, mDescriptionlayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$6800()Z
    .registers 1

    .prologue
    .line 206
    sget-boolean v0, mIsSafemodeSupport:Z

    return v0
.end method

.method static synthetic access$6900(Lcom/android/server/policy/GlobalActions;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 206
    invoke-direct {p0, p1}, onClickForHideLandscapeConfirmDialog(Z)V

    return-void
.end method

.method static synthetic access$700()Z
    .registers 1

    .prologue
    .line 206
    sget-boolean v0, mNewFeatureForM:Z

    return v0
.end method

.method static synthetic access$7002(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 206
    sput-boolean p0, mIsAirplaneConfirmDialogExist:Z

    return p0
.end method

.method static synthetic access$7100(Lcom/android/server/policy/GlobalActions;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    invoke-direct {p0}, clearSCoverRequestStatus()V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/server/policy/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    iget-boolean v0, p0, mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$7300(Lcom/android/server/policy/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    iget-boolean v0, p0, mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$7400()Z
    .registers 1

    .prologue
    .line 206
    sget-boolean v0, mHasVibrator:Z

    return v0
.end method

.method static synthetic access$7500(Lcom/android/server/policy/GlobalActions;)Landroid/app/KeyguardManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    iget-object v0, p0, mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/android/server/policy/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    iget-boolean v0, p0, mIsScreenOFF:Z

    return v0
.end method

.method static synthetic access$7602(Lcom/android/server/policy/GlobalActions;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 206
    iput-boolean p1, p0, mIsScreenOFF:Z

    return p1
.end method

.method static synthetic access$7700(Lcom/android/server/policy/GlobalActions;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    invoke-direct {p0}, unregisterPhoneStateListener()V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/server/policy/GlobalActions;Landroid/content/Context;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 206
    invoke-direct {p0, p1}, registerPhoneStateListener(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    iget-object v0, p0, mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/policy/GlobalActions;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    invoke-direct {p0}, onToggleDatamode()V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    iget-object v0, p0, mEmergencyState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/android/server/policy/GlobalActions;ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .prologue
    .line 206
    invoke-direct {p0, p1, p2}, updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    iget-object v0, p0, mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    iget-object v0, p0, mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/android/server/policy/GlobalActions;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    invoke-direct {p0}, onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    iget-object v0, p0, mConfirmDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$8502(Lcom/android/server/policy/GlobalActions;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 206
    iput-object p1, p0, mConfirmDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$8600(Lcom/android/server/policy/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    invoke-direct {p0}, isGlobalActionConfirming()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8700(Lcom/android/server/policy/GlobalActions;)Landroid/app/GlobalActionsSViewCoverDialog;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    iget-object v0, p0, mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/android/server/policy/GlobalActions;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    invoke-direct {p0}, handleShow()V

    return-void
.end method

.method static synthetic access$8900(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    iget-object v0, p0, mBottomlayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction;III)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Lcom/android/server/policy/GlobalActions$ToggleAction;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 206
    invoke-direct {p0, p1, p2, p3, p4}, confirmDialog(Lcom/android/server/policy/GlobalActions$ToggleAction;III)V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$SilentModeAction;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    iget-object v0, p0, mSilentModeAction:Lcom/android/server/policy/GlobalActions$SilentModeAction;

    return-object v0
.end method

.method static synthetic access$9100(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    iget-object v0, p0, mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic access$9200(Lcom/android/server/policy/GlobalActions;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    invoke-direct {p0}, initLandscapeAddView()V

    return-void
.end method

.method static synthetic access$9300(Lcom/android/server/policy/GlobalActions;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    invoke-direct {p0}, initPortraitAddView()V

    return-void
.end method

.method static synthetic access$9400()Ljava/lang/String;
    .registers 1

    .prologue
    .line 206
    sget-object v0, mCountyCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/android/server/policy/GlobalActions;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # I

    .prologue
    .line 206
    invoke-direct {p0, p1}, getPhoneId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$9700(Lcom/android/server/policy/GlobalActions;)[I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    iget-object v0, p0, mMSimServiceState:[I

    return-object v0
.end method

.method static synthetic access$9800(Lcom/android/server/policy/GlobalActions;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 206
    iget v0, p0, mPhoneCount:I

    return v0
.end method

.method static synthetic access$9900(Lcom/android/server/policy/GlobalActions;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # I

    .prologue
    .line 206
    invoke-direct {p0, p1}, isSimCardInserted(I)Z

    move-result v0

    return v0
.end method

.method private addCustomDialogItems(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Landroid/content/Intent;ILjava/util/ArrayList;)Z
    .registers 14
    .param p1, "iconDraw"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p2, "messageChars"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/BitmapDrawable;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/GlobalActions$Action;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2611
    .local p5, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/policy/GlobalActions$Action;>;"
    iget-object v6, p0, mItems:Ljava/util/ArrayList;

    monitor-enter v6

    .line 2612
    :try_start_3
    iget-object v7, p0, mItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/policy/GlobalActions$24;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/GlobalActions$24;-><init>(Lcom/android/server/policy/GlobalActions;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ILandroid/content/Intent;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v6

    return v0

    .line 2654
    :catchall_15
    move-exception v0

    monitor-exit v6
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method private addDialogItemsIfEnabled(ILcom/android/server/policy/GlobalActions$Action;Ljava/util/ArrayList;Z)Z
    .registers 7
    .param p1, "valueToCheck"    # I
    .param p2, "actionToAdd"    # Lcom/android/server/policy/GlobalActions$Action;
    .param p4, "ifEnabledMoveIncrementPosition"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/policy/GlobalActions$Action;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/GlobalActions$Action;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 2598
    .local p3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/policy/GlobalActions$Action;>;"
    if-eqz p2, :cond_1d

    if-eqz p3, :cond_1d

    .line 2599
    const-string v0, "content://com.sec.knox.provider2/KnoxCustomManagerService2"

    const-string/jumbo v1, "getSealedPowerDialogItems"

    invoke-direct {p0, v0, v1}, isIntEDM(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_1d

    .line 2600
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2601
    if-eqz p4, :cond_1b

    .line 2602
    sget v0, mProKioskMenuPosition:I

    add-int/lit8 v0, v0, 0x1

    sput v0, mProKioskMenuPosition:I

    .line 2604
    :cond_1b
    const/4 v0, 0x1

    .line 2607
    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private addUsersToMenu(Ljava/util/ArrayList;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/GlobalActions$Action;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/policy/GlobalActions$Action;>;"
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 2990
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserManager;

    .line 2991
    .local v9, "um":Landroid/os/UserManager;
    invoke-virtual {v9}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 2992
    invoke-virtual {v9}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v10

    .line 2993
    .local v10, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-direct {p0}, getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 2994
    .local v6, "currentUser":Landroid/content/pm/UserInfo;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_1f
    :goto_1f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 2995
    .local v5, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 2996
    if-nez v6, :cond_6c

    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_6a

    move v8, v11

    .line 2998
    .local v8, "isCurrentUser":Z
    :goto_38
    iget-object v1, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v1, :cond_76

    iget-object v1, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 3000
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    :goto_42
    new-instance v0, Lcom/android/server/policy/GlobalActions$30;

    const v2, 0x1080451

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_78

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    :goto_52
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v8, :cond_7b

    const-string v1, " \u2714"

    :goto_5a
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/GlobalActions$30;-><init>(Lcom/android/server/policy/GlobalActions;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/pm/UserInfo;)V

    .line 3026
    .local v0, "switchToUser":Lcom/android/server/policy/GlobalActions$SinglePressAction;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .end local v0    # "switchToUser":Lcom/android/server/policy/GlobalActions$SinglePressAction;
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v8    # "isCurrentUser":Z
    :cond_6a
    move v8, v12

    .line 2996
    goto :goto_38

    :cond_6c
    iget v1, v6, Landroid/content/pm/UserInfo;->id:I

    iget v2, v5, Landroid/content/pm/UserInfo;->id:I

    if-ne v1, v2, :cond_74

    move v8, v11

    goto :goto_38

    :cond_74
    move v8, v12

    goto :goto_38

    .line 2998
    .restart local v8    # "isCurrentUser":Z
    :cond_76
    const/4 v3, 0x0

    goto :goto_42

    .line 3000
    .restart local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_78
    const-string v1, "Primary"

    goto :goto_52

    :cond_7b
    const-string v1, ""

    goto :goto_5a

    .line 3030
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v6    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "isCurrentUser":Z
    .end local v10    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_7e
    return-void
.end method

.method private awakenIfNecessary()V
    .registers 2

    .prologue
    .line 625
    iget-object v0, p0, mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v0, :cond_11

    .line 627
    :try_start_4
    iget-object v0, p0, mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 628
    iget-object v0, p0, mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    .line 634
    :cond_11
    :goto_11
    return-void

    .line 630
    :catch_12
    move-exception v0

    goto :goto_11
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .registers 8
    .param p1, "on"    # Z

    .prologue
    .line 4558
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_42

    const/4 v1, 0x1

    :goto_b
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4564
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    if-eqz p1, :cond_44

    .line 4565
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4566
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.internal.ims.FLIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4567
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4568
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/GlobalActions$40;

    invoke-direct {v2, p0}, Lcom/android/server/policy/GlobalActions$40;-><init>(Lcom/android/server/policy/GlobalActions;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4583
    :goto_37
    iget-boolean v1, p0, mHasTelephony:Z

    if-nez v1, :cond_41

    .line 4584
    if-eqz p1, :cond_5e

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_3f
    iput-object v1, p0, mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 4586
    :cond_41
    return-void

    .line 4558
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_42
    const/4 v1, 0x0

    goto :goto_b

    .line 4577
    :cond_44
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4578
    .restart local v0    # "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4579
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4580
    iget-object v1, p0, mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_37

    .line 4584
    :cond_5e
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_3f
.end method

.method private checkAirplaneModeOnOff()V
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4541
    const-string v2, "GlobalActions"

    const-string v3, "===== Start checkAirplaneModeOnOff ====="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4543
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_45

    .line 4547
    .local v0, "airplaneModeOn":Z
    :goto_17
    const-string v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAirplaneModeOnOff : airplaneModeOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4548
    if-eqz v0, :cond_47

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_33
    iput-object v1, p0, mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 4550
    const-string v1, "GlobalActions"

    const-string v2, "checkAirplaneModeOnOff : sendEmptyMessageDelayed MESSAGE_REFRESH_AIRPLANEMODE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4551
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const-wide/16 v4, 0x96

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4552
    return-void

    .end local v0    # "airplaneModeOn":Z
    :cond_45
    move v0, v1

    .line 4543
    goto :goto_17

    .line 4548
    .restart local v0    # "airplaneModeOn":Z
    :cond_47
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_33
.end method

.method private clearCustomDialogItems()Z
    .registers 5

    .prologue
    .line 2658
    iget-object v3, p0, mItems:Ljava/util/ArrayList;

    monitor-enter v3

    .line 2659
    :try_start_3
    iget-object v2, p0, mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2660
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/policy/GlobalActions$Action;>;"
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 2661
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/GlobalActions$Action;

    .line 2662
    .local v1, "obj":Lcom/android/server/policy/GlobalActions$Action;
    instance-of v2, v1, Lcom/android/server/policy/GlobalActions$SinglePressAction;

    if-eqz v2, :cond_9

    .line 2663
    check-cast v1, Lcom/android/server/policy/GlobalActions$SinglePressAction;

    .end local v1    # "obj":Lcom/android/server/policy/GlobalActions$Action;
    iget-boolean v2, v1, Lcom/android/server/policy/GlobalActions$SinglePressAction;->isKnoxCustom:Z

    if-eqz v2, :cond_9

    .line 2664
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 2668
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/policy/GlobalActions$Action;>;"
    :catchall_23
    move-exception v2

    monitor-exit v3
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v2

    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/policy/GlobalActions$Action;>;"
    :cond_26
    :try_start_26
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_23

    .line 2669
    const/4 v2, 0x1

    return v2
.end method

.method private clearSCoverRequestStatus()V
    .registers 5

    .prologue
    const/4 v3, 0x4

    .line 4944
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 4945
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 4946
    :cond_e
    sget-object v2, mSCoverRequestStatus:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4947
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 4948
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4949
    .local v1, "sender":Ljava/lang/String;
    invoke-direct {p0, v1}, restoreQuickpanelBackground(Ljava/lang/String;)V

    goto :goto_14

    .line 4951
    .end local v1    # "sender":Ljava/lang/String;
    :cond_24
    sget-object v2, mSCoverRequestStatus:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 4952
    return-void
.end method

.method private confirmDialog(Lcom/android/server/policy/GlobalActions$ToggleAction;III)V
    .registers 25
    .param p1, "action"    # Lcom/android/server/policy/GlobalActions$ToggleAction;
    .param p2, "resTitle"    # I
    .param p3, "resON"    # I
    .param p4, "resOFF"    # I

    .prologue
    .line 3217
    const/4 v4, 0x0

    .line 3218
    .local v4, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/4 v14, 0x0

    .line 3220
    .local v14, "positiveButtonClickListener":Landroid/content/DialogInterface$OnClickListener;
    const/4 v13, 0x0

    .line 3221
    .local v13, "mConfirmDialogSViewCover":Landroid/app/GlobalActionsSViewCoverDialog;
    const/4 v6, 0x0

    .line 3222
    .local v6, "dialog":Landroid/app/AlertDialog;
    const/4 v15, 0x0

    .line 3223
    .local v15, "positiveButtonStringId":I
    const/4 v2, 0x0

    .line 3224
    .local v2, "abuilder":Landroid/app/AlertDialog$Builder;
    const/4 v12, 0x0

    .line 3225
    .local v12, "isStateOff":Z
    const/4 v8, 0x0

    .line 3226
    .local v8, "isActionAirplaneModeOn":Z
    const/4 v11, 0x0

    .line 3227
    .local v11, "isSetAirplaneOnMessageVZW":Z
    const/4 v10, 0x0

    .line 3228
    .local v10, "isSetAirplaneOnMessageCHINA":Z
    const/4 v9, 0x0

    .line 3229
    .local v9, "isRunnigWithoutConfirmMessage":Z
    const/16 v16, 0x1

    sput-boolean v16, mIsAirplaneConfirmDialogExist:Z

    .line 3230
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v16, v0

    sget-object v17, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_116

    .line 3231
    const v15, 0x104081a

    .line 3232
    const/4 v12, 0x1

    .line 3237
    :goto_21
    move-object/from16 v0, p0

    iget-object v0, v0, mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_11b

    .line 3238
    const/4 v8, 0x1

    .line 3239
    move-object/from16 v0, p0

    iget-object v14, v0, mAirplaneModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 3246
    :goto_32
    sget-boolean v16, mIsCoverOpen:Z

    if-nez v16, :cond_13e

    sget-boolean v16, mIsClearCover:Z

    if-nez v16, :cond_13e

    .line 3247
    new-instance v16, Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setTitle(I)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v16, v0

    sget-object v18, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_136

    move/from16 v16, p3

    :goto_5d
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setMessage(I)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, isVZWOperatorAirplaneModeONReasonUSB3:Z

    move/from16 v16, v0

    if-eqz v16, :cond_13a

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v16, v0

    sget-object v18, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_13a

    const v16, 0x1040992

    :goto_7e
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v16

    const v17, 0x1040009

    move-object/from16 v0, p0

    iget-object v0, v0, mAirplaneModeCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->create()Landroid/app/GlobalActionsSViewCoverDialog;

    move-result-object v13

    .line 3301
    :goto_97
    new-instance v16, Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;

    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, mConfirmDialogReceiver:Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;

    .line 3303
    sget-boolean v16, mIsCoverOpen:Z

    if-nez v16, :cond_25a

    sget-boolean v16, mIsClearCover:Z

    if-nez v16, :cond_25a

    .line 3304
    if-eqz v13, :cond_10b

    .line 3305
    invoke-virtual {v13}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    const/16 v17, 0x833

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->setType(I)V

    .line 3307
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x1120014

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    if-nez v16, :cond_d7

    .line 3309
    invoke-virtual {v13}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->addFlags(I)V

    .line 3312
    :cond_d7
    invoke-virtual {v13}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 3314
    .local v3, "attributes":Landroid/view/WindowManager$LayoutParams;
    const/16 v16, 0x1

    move/from16 v0, v16

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 3315
    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 3316
    invoke-virtual {v13}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3317
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/app/GlobalActionsSViewCoverDialog;->setCanceledOnTouchOutside(Z)V

    .line 3318
    invoke-virtual {v13}, Landroid/app/GlobalActionsSViewCoverDialog;->show()V

    .line 3319
    const-string v16, "GlobalActions$ConfirmDialog"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, hideQuickpanelBackground(Ljava/lang/String;)V

    .line 3320
    move-object/from16 v0, p0

    iput-object v13, v0, mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;

    .line 3362
    .end local v3    # "attributes":Landroid/view/WindowManager$LayoutParams;
    :cond_10b
    :goto_10b
    if-nez v9, :cond_115

    .line 3363
    sget-object v17, sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v17

    .line 3364
    const/16 v16, 0x1

    :try_start_112
    sput-boolean v16, sIsConfirming:Z

    .line 3365
    monitor-exit v17
    :try_end_115
    .catchall {:try_start_112 .. :try_end_115} :catchall_359

    .line 3367
    :cond_115
    return-void

    .line 3234
    :cond_116
    const v15, 0x1040819

    goto/16 :goto_21

    .line 3240
    :cond_11b
    move-object/from16 v0, p0

    iget-object v0, v0, mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_12d

    .line 3241
    move-object/from16 v0, p0

    iget-object v14, v0, mDataModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    goto/16 :goto_32

    .line 3243
    :cond_12d
    const-string v16, "GlobalActions"

    const-string v17, "Cannot find ClickListener."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    :cond_136
    move/from16 v16, p4

    .line 3247
    goto/16 :goto_5d

    :cond_13a
    move/from16 v16, v15

    goto/16 :goto_7e

    .line 3256
    :cond_13e
    sget-boolean v16, mIsCoverOpen:Z

    if-nez v16, :cond_1fd

    sget-boolean v16, mIsClearCover:Z

    if-eqz v16, :cond_1fd

    .line 3257
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .end local v2    # "abuilder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x10304e4

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v2, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 3261
    .restart local v2    # "abuilder":Landroid/app/AlertDialog$Builder;
    :goto_158
    move/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3262
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsSetAirplaneOnMessageVZW:Z

    move/from16 v16, v0

    if-nez v16, :cond_16d

    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsSetAirplaneOnMessageCHINA:Z

    move/from16 v16, v0

    if-eqz v16, :cond_21d

    :cond_16d
    if-eqz v8, :cond_21d

    if-eqz v12, :cond_21d

    .line 3263
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string/jumbo v17, "layout_inflater"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 3265
    .local v7, "inflater":Landroid/view/LayoutInflater;
    const v16, 0x1090121

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 3266
    .local v5, "content":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsSetAirplaneOnMessageVZW:Z

    move/from16 v16, v0

    if-eqz v16, :cond_20c

    .line 3267
    const/4 v11, 0x1

    .line 3268
    const-string v16, "GlobalActions"

    const-string v17, "confirmDialog : set airplane mode on message for VZW"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3273
    :cond_19d
    :goto_19d
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 3274
    const v16, 0x10204bc

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/CheckBox;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, mDontShowCheckbox:Landroid/widget/CheckBox;

    .line 3275
    const v16, 0x102000b

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, mAirplaneMsg:Landroid/widget/TextView;

    .line 3276
    move-object/from16 v0, p0

    iget-object v0, v0, mAirplaneMsg:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3282
    .end local v5    # "content":Landroid/view/View;
    .end local v7    # "inflater":Landroid/view/LayoutInflater;
    :goto_1cf
    move-object/from16 v0, p0

    iget-boolean v0, v0, isVZWOperatorAirplaneModeONReasonUSB3:Z

    move/from16 v16, v0

    if-eqz v16, :cond_236

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v16, v0

    sget-object v17, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_236

    .line 3283
    const v15, 0x1040992

    .line 3297
    :goto_1e8
    invoke-virtual {v2, v15, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3298
    const v16, 0x1040009

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3299
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    goto/16 :goto_97

    .line 3259
    :cond_1fd
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .end local v2    # "abuilder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v2    # "abuilder":Landroid/app/AlertDialog$Builder;
    goto/16 :goto_158

    .line 3269
    .restart local v5    # "content":Landroid/view/View;
    .restart local v7    # "inflater":Landroid/view/LayoutInflater;
    :cond_20c
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsSetAirplaneOnMessageCHINA:Z

    move/from16 v16, v0

    if-eqz v16, :cond_19d

    .line 3270
    const/4 v10, 0x1

    .line 3271
    const-string v16, "GlobalActions"

    const-string v17, "confirmDialog : set airplane mode on message for CHINA"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19d

    .line 3279
    .end local v5    # "content":Landroid/view/View;
    .end local v7    # "inflater":Landroid/view/LayoutInflater;
    :cond_21d
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v16, v0

    sget-object v17, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_233

    move/from16 v16, p3

    :goto_22d
    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1cf

    :cond_233
    move/from16 v16, p4

    goto :goto_22d

    .line 3285
    :cond_236
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v16, v0

    sget-object v17, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_256

    .line 3286
    const-string v16, "VZW"

    sget-object v17, mSalesCode:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_252

    .line 3287
    const v15, 0x104000a

    goto :goto_1e8

    .line 3289
    :cond_252
    const v15, 0x104081a

    goto :goto_1e8

    .line 3292
    :cond_256
    const v15, 0x1040819

    goto :goto_1e8

    .line 3323
    :cond_25a
    move-object/from16 v0, p0

    iget-object v0, v0, mConfirmDialogReceiver:Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v6, v0, Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;->dialog:Landroid/app/AlertDialog;

    .line 3324
    move-object/from16 v0, p0

    iget-object v0, v0, mConfirmDialogReceiver:Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3325
    sget-boolean v16, mIsCoverOpen:Z

    if-nez v16, :cond_349

    sget-boolean v16, mIsClearCover:Z

    if-eqz v16, :cond_349

    .line 3326
    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    const/16 v17, 0x833

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->setType(I)V

    .line 3333
    :goto_280
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x1120014

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    if-nez v16, :cond_29c

    .line 3334
    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->addFlags(I)V

    .line 3336
    :cond_29c
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 3338
    invoke-virtual/range {p0 .. p0}, checkOnAirplaneConfirmShow()V

    .line 3339
    move-object/from16 v0, p0

    iget-boolean v0, v0, mShowOnAirplaneConfirm:Z

    move/from16 v16, v0

    if-nez v16, :cond_354

    if-nez v11, :cond_2b2

    if-eqz v10, :cond_354

    .line 3340
    :cond_2b2
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, airplaneModeClickAction(Z)V

    .line 3341
    const/4 v9, 0x1

    .line 3346
    :goto_2bc
    sget-boolean v16, SAFE_DEBUG:Z

    if-eqz v16, :cond_343

    .line 3347
    const-string v16, "GlobalActions"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "in confirmDialog action = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " resON = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "resOFF = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " config_sf_slowBlur = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x1120014

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " resTitle = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " mAirplaneModeOn = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " mDataModeToggle = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3359
    :cond_343
    move-object/from16 v0, p0

    iput-object v6, v0, mConfirmDialog:Landroid/app/AlertDialog;

    goto/16 :goto_10b

    .line 3330
    :cond_349
    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    const/16 v17, 0x7de

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->setType(I)V

    goto/16 :goto_280

    .line 3343
    :cond_354
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2bc

    .line 3365
    :catchall_359
    move-exception v16

    :try_start_35a
    monitor-exit v17
    :try_end_35b
    .catchall {:try_start_35a .. :try_end_35b} :catchall_359

    throw v16
.end method

.method private createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    .registers 35

    .prologue
    .line 898
    const/4 v4, 0x0

    sput-boolean v4, mProKioskOptionShown:Z

    .line 902
    new-instance v4, Lcom/android/server/policy/GlobalActions$SilentModeAction;

    move-object/from16 v0, p0

    iget-object v5, v0, mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v6, v0, mHandler:Landroid/os/Handler;

    invoke-direct {v4, v5, v6}, Lcom/android/server/policy/GlobalActions$SilentModeAction;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mSilentModeAction:Lcom/android/server/policy/GlobalActions$SilentModeAction;

    .line 904
    new-instance v4, Lcom/android/server/policy/GlobalActions$2;

    sget-boolean v5, mNewFeatureForM:Z

    if-eqz v5, :cond_1da

    const v6, 0x108095b

    :goto_1d
    sget-boolean v5, mNewFeatureForM:Z

    if-eqz v5, :cond_1df

    const v7, 0x108095b

    :goto_24
    const v8, 0x10409af

    const v9, 0x10409b0

    const v10, 0x10409b1

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/policy/GlobalActions$2;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    .line 1030
    new-instance v4, Lcom/android/server/policy/GlobalActions$3;

    const v6, 0x1080962

    const v7, 0x1080963

    const v8, 0x1040126

    const v9, 0x1040127

    const v10, 0x1040128

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/policy/GlobalActions$3;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    .line 1201
    invoke-direct/range {p0 .. p0}, onAirplaneModeChanged()V

    .line 1203
    new-instance v4, Lcom/android/server/policy/GlobalActions$4;

    const v6, 0x108096a

    const v7, 0x1080969

    const v8, 0x1040986

    const v9, 0x1040987

    const v10, 0x1040988

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/policy/GlobalActions$4;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, mSubScreenOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    .line 1259
    new-instance v4, Lcom/android/server/policy/GlobalActions$5;

    sget-boolean v5, mNewFeatureForM:Z

    if-eqz v5, :cond_1e4

    const v6, 0x108095c

    :goto_76
    sget-boolean v5, mNewFeatureForM:Z

    if-eqz v5, :cond_1e9

    const v7, 0x108095c

    :goto_7d
    const v8, 0x104099b

    const v9, 0x1040999

    const v10, 0x104099a

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/policy/GlobalActions$5;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

    .line 1360
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sput-object v4, mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 1361
    sget-object v4, mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v5, 0x1040a98

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1362
    sget-object v4, mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v5, 0x1040a99

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1364
    new-instance v4, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    sput-object v4, mPasscodeEditText:Landroid/widget/EditText;

    .line 1365
    sget-object v4, mPasscodeEditText:Landroid/widget/EditText;

    const/16 v5, 0x81

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 1366
    sget-object v4, mPasscodeEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1367
    sget-object v4, mPasscodeEditText:Landroid/widget/EditText;

    const/16 v5, 0x50

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/EditText;->setPaddingRelative(IIII)V

    .line 1368
    sget-object v4, mPasscodeEditText:Landroid/widget/EditText;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setGravity(I)V

    .line 1369
    sget-object v4, mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    sget-object v5, mPasscodeEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1370
    sget-object v4, mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v5, 0x104000a

    new-instance v6, Lcom/android/server/policy/GlobalActions$6;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/server/policy/GlobalActions$6;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1396
    sget-object v4, mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const/high16 v5, 0x1040000

    new-instance v6, Lcom/android/server/policy/GlobalActions$7;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/server/policy/GlobalActions$7;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1405
    new-instance v4, Lcom/android/server/policy/GlobalActions$8;

    const v6, 0x1080400

    const v7, 0x1080400

    const v8, 0x1040a95

    const v9, 0x1040a96

    const v10, 0x1040a96

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/policy/GlobalActions$8;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    .line 1502
    new-instance v5, Lcom/android/server/policy/GlobalActions$99;

    sget-boolean v4, mNewFeatureForM:Z

    if-eqz v4, :cond_1ee

    const v4, 0x108095f

    :goto_11c
    const v6, 0x10408d0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v4, v6}, Lcom/android/server/policy/GlobalActions$99;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    move-object/from16 v0, p0

    iput-object v5, v0, mRestart:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    .line 1550
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, mItems:Ljava/util/ArrayList;

    .line 1554
    const/4 v12, 0x1

    .line 1556
    .local v12, "add":Z
    const/4 v4, 0x0

    sput v4, mProKioskMenuPosition:I

    .line 1557
    const-string v4, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v5, "getSealedState"

    move-object/from16 v0, p0

    iget-object v6, v0, mTempStringArray:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b0

    .line 1560
    const/4 v4, 0x4

    new-instance v5, Lcom/android/server/policy/GlobalActions$PowerAction;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Lcom/android/server/policy/GlobalActions$PowerAction;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$1;)V

    move-object/from16 v0, p0

    iget-object v6, v0, mItems:Ljava/util/ArrayList;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v7}, addDialogItemsIfEnabled(ILcom/android/server/policy/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    .line 1563
    const/16 v4, 0x40

    move-object/from16 v0, p0

    iget-object v5, v0, mRestart:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    move-object/from16 v0, p0

    iget-object v6, v0, mItems:Ljava/util/ArrayList;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v7}, addDialogItemsIfEnabled(ILcom/android/server/policy/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    .line 1564
    const/16 v4, 0x80

    move-object/from16 v0, p0

    iget-object v5, v0, mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-object/from16 v0, p0

    iget-object v6, v0, mItems:Ljava/util/ArrayList;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v7}, addDialogItemsIfEnabled(ILcom/android/server/policy/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    .line 1565
    const/16 v4, 0x100

    invoke-direct/range {p0 .. p0}, getBugReportAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, mItems:Ljava/util/ArrayList;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v7}, addDialogItemsIfEnabled(ILcom/android/server/policy/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    .line 1568
    const-string v4, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v5, "getSealedPowerDialogOptionMode"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, isIntEDM(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1af

    .line 1569
    move-object/from16 v0, p0

    iget-object v4, v0, mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    if-eqz v4, :cond_1af

    .line 1570
    move-object/from16 v0, p0

    iget-object v4, v0, mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1575
    :cond_1af
    const/4 v12, 0x0

    .line 1578
    :cond_1b0
    if-eqz v12, :cond_398

    .line 1580
    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107003a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    .line 1583
    .local v20, "defaultActions":[Ljava/lang/String;
    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    .line 1585
    .local v13, "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_1c8
    move-object/from16 v0, v20

    array-length v4, v0

    move/from16 v0, v23

    if-ge v0, v4, :cond_377

    .line 1586
    aget-object v11, v20, v23

    .line 1587
    .local v11, "actionKey":Ljava/lang/String;
    invoke-virtual {v13, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f3

    .line 1585
    :cond_1d7
    :goto_1d7
    add-int/lit8 v23, v23, 0x1

    goto :goto_1c8

    .line 904
    .end local v11    # "actionKey":Ljava/lang/String;
    .end local v12    # "add":Z
    .end local v13    # "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "defaultActions":[Ljava/lang/String;
    .end local v23    # "i":I
    :cond_1da
    const v6, 0x1080965

    goto/16 :goto_1d

    :cond_1df
    const v7, 0x1080964

    goto/16 :goto_24

    .line 1259
    :cond_1e4
    const v6, 0x108096c

    goto/16 :goto_76

    :cond_1e9
    const v7, 0x108096d

    goto/16 :goto_7d

    .line 1502
    :cond_1ee
    const v4, 0x1080968

    goto/16 :goto_11c

    .line 1591
    .restart local v11    # "actionKey":Ljava/lang/String;
    .restart local v12    # "add":Z
    .restart local v13    # "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v20    # "defaultActions":[Ljava/lang/String;
    .restart local v23    # "i":I
    :cond_1f3
    sget-boolean v4, mIsCoverOpen:Z

    if-nez v4, :cond_212

    .line 1592
    const-string/jumbo v4, "emergencymode"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d7

    const-string/jumbo v4, "users"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d7

    const-string/jumbo v4, "settings"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d7

    .line 1599
    :cond_212
    invoke-static {}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->isEmergencyModeSupported()Z

    move-result v4

    if-nez v4, :cond_229

    .line 1600
    const-string/jumbo v4, "emergencymode"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_229

    .line 1601
    const-string v4, "GlobalActions"

    const-string v5, "Removed Emergency mode button because of Knox creation."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d7

    .line 1606
    :cond_229
    const-string/jumbo v4, "power"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_245

    .line 1607
    move-object/from16 v0, p0

    iget-object v4, v0, mItems:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/policy/GlobalActions$PowerAction;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Lcom/android/server/policy/GlobalActions$PowerAction;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$1;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1655
    :cond_241
    :goto_241
    invoke-virtual {v13, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1d7

    .line 1608
    :cond_245
    const-string v4, "airplane"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_259

    .line 1609
    move-object/from16 v0, p0

    iget-object v4, v0, mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_241

    .line 1610
    :cond_259
    const-string/jumbo v4, "subscreen"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_241

    .line 1614
    const-string/jumbo v4, "datamode"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_277

    .line 1615
    move-object/from16 v0, p0

    iget-object v4, v0, mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_241

    .line 1616
    :cond_277
    const-string v4, "bugreport"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b6

    .line 1617
    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "bugreport_in_power_menu"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2b2

    invoke-direct/range {p0 .. p0}, isCurrentUserOwner()Z

    move-result v4

    if-eqz v4, :cond_2b2

    .line 1619
    sget-boolean v4, mNewFeatureForM:Z

    if-eqz v4, :cond_2a6

    .line 1620
    sget-boolean v4, mIsCoverOpen:Z

    if-eqz v4, :cond_2a2

    .line 1621
    const/4 v4, 0x1

    sput-boolean v4, mIsBugReportEnable:Z

    goto :goto_241

    .line 1623
    :cond_2a2
    const/4 v4, 0x0

    sput-boolean v4, mIsBugReportEnable:Z

    goto :goto_241

    .line 1626
    :cond_2a6
    move-object/from16 v0, p0

    iget-object v4, v0, mItems:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, getBugReportAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_241

    .line 1629
    :cond_2b2
    const/4 v4, 0x0

    sput-boolean v4, mIsBugReportEnable:Z

    goto :goto_241

    .line 1631
    :cond_2b6
    const-string/jumbo v4, "restart"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2cc

    .line 1632
    move-object/from16 v0, p0

    iget-object v4, v0, mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, mRestart:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_241

    .line 1633
    :cond_2cc
    const-string/jumbo v4, "emergencymode"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e2

    .line 1634
    move-object/from16 v0, p0

    iget-object v4, v0, mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_241

    .line 1635
    :cond_2e2
    const-string/jumbo v4, "silent"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2fe

    .line 1636
    move-object/from16 v0, p0

    iget-boolean v4, v0, mShowSilentToggle:Z

    if-eqz v4, :cond_241

    .line 1637
    move-object/from16 v0, p0

    iget-object v4, v0, mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, mSilentModeAction:Lcom/android/server/policy/GlobalActions$SilentModeAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_241

    .line 1639
    :cond_2fe
    const-string/jumbo v4, "users"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31c

    .line 1640
    const-string/jumbo v4, "fw.power_user_switcher"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_241

    .line 1641
    move-object/from16 v0, p0

    iget-object v4, v0, mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, addUsersToMenu(Ljava/util/ArrayList;)V

    goto/16 :goto_241

    .line 1643
    :cond_31c
    const-string/jumbo v4, "settings"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_332

    .line 1644
    move-object/from16 v0, p0

    iget-object v4, v0, mItems:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, getSettingsAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_241

    .line 1647
    :cond_332
    const-string/jumbo v4, "voiceassist"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_348

    .line 1648
    move-object/from16 v0, p0

    iget-object v4, v0, mItems:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, getVoiceAssistAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_241

    .line 1649
    :cond_348
    const-string v4, "assist"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35d

    .line 1650
    move-object/from16 v0, p0

    iget-object v4, v0, mItems:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, getAssistAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_241

    .line 1652
    :cond_35d
    const-string v4, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid global action key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_241

    .line 1657
    .end local v11    # "actionKey":Ljava/lang/String;
    :cond_377
    new-instance v4, Lcom/android/server/policy/GlobalActions$SilentModeAction;

    move-object/from16 v0, p0

    iget-object v5, v0, mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v6, v0, mHandler:Landroid/os/Handler;

    invoke-direct {v4, v5, v6}, Lcom/android/server/policy/GlobalActions$SilentModeAction;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/policy/GlobalActions$SilentModeAction;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v4

    sput-object v4, mSilentModeView:Landroid/view/View;

    .line 1660
    .end local v13    # "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "defaultActions":[Ljava/lang/String;
    .end local v23    # "i":I
    :cond_398
    move-object/from16 v0, p0

    iget-object v4, v0, mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    if-eqz v4, :cond_3df

    move-object/from16 v0, p0

    iget-object v4, v0, mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    invoke-virtual {v4}, Landroid/app/enterprise/knoxcustom/SystemManager;->getPowerDialogCustomItemsState()Z

    move-result v4

    if-eqz v4, :cond_3df

    .line 1661
    invoke-direct/range {p0 .. p0}, clearCustomDialogItems()Z

    .line 1662
    move-object/from16 v0, p0

    iget-object v4, v0, mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    invoke-virtual {v4}, Landroid/app/enterprise/knoxcustom/SystemManager;->getPowerDialogCustomItems()Ljava/util/List;

    move-result-object v22

    .line 1663
    .local v22, "fromDB":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    if-eqz v22, :cond_3df

    .line 1664
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "i$":Ljava/util/Iterator;
    :goto_3b9
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3df

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;

    .line 1665
    .local v25, "item":Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;
    invoke-virtual/range {v25 .. v25}, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->getIcon()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    invoke-virtual/range {v25 .. v25}, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v25 .. v25}, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual/range {v25 .. v25}, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->getIntentAction()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, mItems:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, addCustomDialogItems(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Landroid/content/Intent;ILjava/util/ArrayList;)Z

    goto :goto_3b9

    .line 1675
    .end local v22    # "fromDB":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v25    # "item":Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;
    :cond_3df
    new-instance v4, Lcom/android/server/policy/GlobalActions$MyAdapter;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/server/policy/GlobalActions$MyAdapter;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$1;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    .line 1677
    new-instance v28, Lcom/android/internal/app/AlertController$AlertParams;

    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    .line 1679
    .local v28, "params":Lcom/android/internal/app/AlertController$AlertParams;
    sget-boolean v4, mIsCoverOpen:Z

    if-nez v4, :cond_3fe

    sget-boolean v4, mIsClearCover:Z

    if-eqz v4, :cond_671

    .line 1680
    :cond_3fe
    move-object/from16 v0, p0

    iget-object v4, v0, mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-object/from16 v0, v28

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 1681
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1682
    const/4 v4, 0x1

    move-object/from16 v0, v28

    iput-boolean v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 1709
    :goto_411
    new-instance v21, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-direct {v0, v4, v1, v5}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;-><init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;Landroid/os/Handler;)V

    .line 1710
    .local v21, "dialog":Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    const-string v4, "GlobalActions"

    const-string v5, "Create GlobalActionsDialog"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    sget-boolean v4, mNewFeatureForM:Z

    if-eqz v4, :cond_785

    .line 1713
    const/16 v30, 0x0

    .line 1714
    .local v30, "tvBugReportMessage":Landroid/widget/TextView;
    const/16 v31, 0x0

    .line 1715
    .local v31, "tvBugReportStatus":Landroid/widget/TextView;
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 1716
    sget-boolean v4, mIsCoverOpen:Z

    if-nez v4, :cond_445

    sget-boolean v4, mIsCoverOpen:Z

    if-nez v4, :cond_69a

    sget-boolean v4, mIsClearCover:Z

    if-eqz v4, :cond_69a

    .line 1717
    :cond_445
    new-instance v4, Landroid/app/GlobalActionsFrameLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v6}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, mHandler:Landroid/os/Handler;

    invoke-direct {v4, v5, v6, v7}, Landroid/app/GlobalActionsFrameLayout;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    .line 1718
    move-object/from16 v0, p0

    iget-object v4, v0, mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const v5, 0x10203a5

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, mBottomlayout:Landroid/widget/LinearLayout;

    .line 1719
    move-object/from16 v0, p0

    iget-object v4, v0, mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const v5, 0x1020062

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v4, v0, mCancelButton:Landroid/widget/Button;

    .line 1720
    move-object/from16 v0, p0

    iget-object v4, v0, mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const v5, 0x10203aa

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v4, v0, mBugReport:Landroid/widget/Button;

    .line 1721
    move-object/from16 v0, p0

    iget-object v4, v0, mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const v5, 0x10203ab

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v30

    .end local v30    # "tvBugReportMessage":Landroid/widget/TextView;
    check-cast v30, Landroid/widget/TextView;

    .line 1722
    .restart local v30    # "tvBugReportMessage":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v4, v0, mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const v5, 0x10203ac

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v31

    .end local v31    # "tvBugReportStatus":Landroid/widget/TextView;
    check-cast v31, Landroid/widget/TextView;

    .line 1723
    .restart local v31    # "tvBugReportStatus":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v4, v0, mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const v5, 0x10203a0

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, mLinearLayout:Landroid/widget/LinearLayout;

    .line 1724
    move-object/from16 v0, p0

    iget-object v4, v0, mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const v5, 0x10203a2

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    .line 1725
    move-object/from16 v0, p0

    iget-object v4, v0, mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const v5, 0x10203a3

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, mDescriptionlayout:Landroid/widget/LinearLayout;

    .line 1726
    move-object/from16 v0, p0

    iget-object v4, v0, mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const v5, 0x10203a4

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, mSecondAnimatedText:Landroid/widget/TextView;

    .line 1738
    :goto_4ef
    move-object/from16 v0, p0

    iget-object v4, v0, mDescriptionlayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1739
    move-object/from16 v0, p0

    iget-object v4, v0, mCancelButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/server/policy/GlobalActions$10;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/policy/GlobalActions$10;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1748
    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    const v5, 0x1040120

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1749
    .local v18, "bugReportString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    const v5, 0x1040122

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Landroid/os/Build;->ID:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 1751
    .local v17, "bugReportStatus":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1752
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1754
    move-object/from16 v0, p0

    iget-object v4, v0, mBugReport:Landroid/widget/Button;

    new-instance v5, Lcom/android/server/policy/GlobalActions$11;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/policy/GlobalActions$11;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1810
    sget-boolean v4, mIsBugReportEnable:Z

    if-nez v4, :cond_735

    sget-boolean v4, mIsCancelEnable:Z

    if-nez v4, :cond_735

    .line 1811
    move-object/from16 v0, p0

    iget-object v4, v0, mBottomlayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1816
    :goto_559
    invoke-direct/range {p0 .. p0}, createPortraitGlobalActionsDialog()V

    .line 1818
    sget-boolean v4, mIsCoverOpen:Z

    if-nez v4, :cond_568

    sget-boolean v4, mIsCoverOpen:Z

    if-nez v4, :cond_73a

    sget-boolean v4, mIsClearCover:Z

    if-eqz v4, :cond_73a

    .line 1819
    :cond_568
    invoke-direct/range {p0 .. p0}, createLandscapeGlobalActionsDialog()V

    .line 1820
    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_584

    .line 1821
    move-object/from16 v0, p0

    iget-object v4, v0, mScrollview:Landroid/widget/ScrollView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1823
    :cond_584
    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_59d

    .line 1824
    move-object/from16 v0, p0

    iget-object v4, v0, mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 1826
    :cond_59d
    move-object/from16 v0, p0

    iget-object v4, v0, mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const v5, 0x102039e

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 1827
    .local v14, "backgroundLayout":Landroid/widget/LinearLayout;
    new-instance v27, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object/from16 v0, v27

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1828
    .local v27, "lllp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1829
    move-object/from16 v0, p0

    iget-boolean v4, v0, mIsSupportedBlur:Z

    if-eqz v4, :cond_5dd

    .line 1830
    const v4, 0x1060144

    invoke-virtual {v14, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1831
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string v5, "alpha"

    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_8fa

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 1832
    .local v15, "backgroundalpha":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x12c

    invoke-virtual {v15, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 1834
    .end local v15    # "backgroundalpha":Landroid/animation/ObjectAnimator;
    :cond_5dd
    move-object/from16 v0, p0

    iget-object v4, v0, mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setContentView(Landroid/view/View;)V

    .line 1929
    .end local v14    # "backgroundLayout":Landroid/widget/LinearLayout;
    .end local v17    # "bugReportStatus":Ljava/lang/String;
    .end local v18    # "bugReportString":Ljava/lang/String;
    .end local v27    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v30    # "tvBugReportMessage":Landroid/widget/TextView;
    .end local v31    # "tvBugReportStatus":Landroid/widget/TextView;
    :goto_5e6
    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setCanceledOnTouchOutside(Z)V

    .line 1933
    sget-boolean v4, mIsCoverOpen:Z

    if-nez v4, :cond_5f4

    sget-boolean v4, mIsClearCover:Z

    if-eqz v4, :cond_670

    .line 1934
    :cond_5f4
    sget-boolean v4, mNewFeatureForM:Z

    if-nez v4, :cond_656

    .line 1935
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 1936
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 1937
    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10501c5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 1938
    .local v16, "bottomPadding":I
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v5

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v6

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v7

    move/from16 v0, v16

    invoke-virtual {v4, v5, v6, v7, v0}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 1939
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    new-instance v5, Lcom/android/server/policy/GlobalActions$15;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/policy/GlobalActions$15;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1950
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7de

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 1951
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1957
    .end local v16    # "bottomPadding":I
    :cond_656
    const-string v4, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v5, "getSealedPowerDialogOptionMode"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, isIntEDM(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_670

    .line 1958
    new-instance v4, Lcom/android/server/policy/GlobalActions$16;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/policy/GlobalActions$16;-><init>(Lcom/android/server/policy/GlobalActions;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1985
    :cond_670
    return-object v21

    .line 1684
    .end local v21    # "dialog":Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    :cond_671
    new-instance v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mLayout:Landroid/widget/LinearLayout;

    .line 1685
    new-instance v27, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object/from16 v0, v27

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1686
    .restart local v27    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v4, v0, mLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1687
    move-object/from16 v0, p0

    iget-object v4, v0, mLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto/16 :goto_411

    .line 1728
    .end local v27    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v21    # "dialog":Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    .restart local v30    # "tvBugReportMessage":Landroid/widget/TextView;
    .restart local v31    # "tvBugReportStatus":Landroid/widget/TextView;
    :cond_69a
    new-instance v4, Landroid/app/GlobalActionsFrameLayoutSViewCover;

    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v6}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, mHandler:Landroid/os/Handler;

    invoke-direct {v4, v5, v6, v7}, Landroid/app/GlobalActionsFrameLayoutSViewCover;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    .line 1729
    move-object/from16 v0, p0

    iget-object v4, v0, mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203a5

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, mBottomlayout:Landroid/widget/LinearLayout;

    .line 1730
    move-object/from16 v0, p0

    iget-object v4, v0, mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x1020062

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v4, v0, mCancelButton:Landroid/widget/Button;

    .line 1731
    move-object/from16 v0, p0

    iget-object v4, v0, mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203aa

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v4, v0, mBugReport:Landroid/widget/Button;

    .line 1732
    move-object/from16 v0, p0

    iget-object v4, v0, mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203ab

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v30

    .end local v30    # "tvBugReportMessage":Landroid/widget/TextView;
    check-cast v30, Landroid/widget/TextView;

    .line 1733
    .restart local v30    # "tvBugReportMessage":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v4, v0, mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203ac

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v31

    .end local v31    # "tvBugReportStatus":Landroid/widget/TextView;
    check-cast v31, Landroid/widget/TextView;

    .line 1734
    .restart local v31    # "tvBugReportStatus":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v4, v0, mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203a0

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, mLinearLayout:Landroid/widget/LinearLayout;

    .line 1735
    move-object/from16 v0, p0

    iget-object v4, v0, mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203a3

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, mDescriptionlayout:Landroid/widget/LinearLayout;

    .line 1736
    move-object/from16 v0, p0

    iget-object v4, v0, mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203a4

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, mSecondAnimatedText:Landroid/widget/TextView;

    goto/16 :goto_4ef

    .line 1813
    .restart local v17    # "bugReportStatus":Ljava/lang/String;
    .restart local v18    # "bugReportString":Ljava/lang/String;
    :cond_735
    invoke-virtual/range {p0 .. p0}, adjustBottomView()V

    goto/16 :goto_559

    .line 1836
    :cond_73a
    move-object/from16 v0, p0

    iget-object v4, v0, mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x102039e

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 1837
    .restart local v14    # "backgroundLayout":Landroid/widget/LinearLayout;
    new-instance v27, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object/from16 v0, v27

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1838
    .restart local v27    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1839
    move-object/from16 v0, p0

    iget-boolean v4, v0, mIsSupportedBlur:Z

    if-eqz v4, :cond_77a

    .line 1840
    const v4, 0x1060144

    invoke-virtual {v14, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1841
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string v5, "alpha"

    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_902

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 1842
    .restart local v15    # "backgroundalpha":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x12c

    invoke-virtual {v15, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 1844
    .end local v15    # "backgroundalpha":Landroid/animation/ObjectAnimator;
    :cond_77a
    move-object/from16 v0, p0

    iget-object v4, v0, mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setContentView(Landroid/view/View;)V

    goto/16 :goto_5e6

    .line 1846
    .end local v14    # "backgroundLayout":Landroid/widget/LinearLayout;
    .end local v17    # "bugReportStatus":Ljava/lang/String;
    .end local v18    # "bugReportString":Ljava/lang/String;
    .end local v27    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v30    # "tvBugReportMessage":Landroid/widget/TextView;
    .end local v31    # "tvBugReportStatus":Landroid/widget/TextView;
    :cond_785
    sget-boolean v4, mIsCoverOpen:Z

    if-nez v4, :cond_8ef

    sget-boolean v4, mIsClearCover:Z

    if-nez v4, :cond_8ef

    .line 1847
    const-string v4, "GlobalActions"

    const-string/jumbo v5, "mIsCoverOpen  is false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 1849
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x833

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 1850
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-virtual {v4, v5, v6}, Landroid/view/Window;->setLayout(II)V

    .line 1851
    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/LayoutInflater;

    .line 1852
    .local v26, "lf":Landroid/view/LayoutInflater;
    const/16 v32, 0x0

    .line 1853
    .local v32, "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v4, :cond_7ff

    move-object/from16 v0, p0

    iget-object v4, v0, mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_7ff

    .line 1854
    const v4, 0x1090071

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v32

    .line 1855
    new-instance v4, Lcom/android/server/policy/GlobalActions$12;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/policy/GlobalActions$12;-><init>(Lcom/android/server/policy/GlobalActions;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1918
    :goto_7e5
    invoke-direct/range {p0 .. p0}, isMiniCoverClosed()Z

    move-result v4

    if-eqz v4, :cond_8e6

    .line 1919
    new-instance v33, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    move-object/from16 v0, v33

    invoke-direct {v0, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1920
    .local v33, "vglp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v21

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5e6

    .line 1866
    .end local v33    # "vglp":Landroid/view/ViewGroup$LayoutParams;
    :cond_7ff
    const v4, 0x1090072

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v32

    .line 1867
    sget-boolean v4, mNewFeatureForM:Z

    if-nez v4, :cond_85b

    .line 1868
    const-string v4, "americano"

    sget-object v5, mScafe:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_822

    const-string/jumbo v4, "mocha"

    sget-object v5, mScafe:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8c5

    .line 1869
    :cond_822
    const v4, 0x1020382

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 1874
    .local v19, "crossBtn":Landroid/view/View;
    :goto_82b
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    if-eqz v4, :cond_840

    .line 1875
    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->setHoverPopupType(I)V

    .line 1876
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    const/16 v5, 0x5153

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 1880
    :cond_840
    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    const/high16 v5, 0x1040000

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1881
    new-instance v4, Lcom/android/server/policy/GlobalActions$13;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/policy/GlobalActions$13;-><init>(Lcom/android/server/policy/GlobalActions;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1896
    .end local v19    # "crossBtn":Landroid/view/View;
    :cond_85b
    const v4, 0x102035c

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v4, v0, mViewCoverParentLayout:Landroid/widget/ImageView;

    .line 1897
    const v4, 0x10203b5

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    sput-object v4, mCoverViewListView:Landroid/widget/ListView;

    .line 1898
    sget-object v4, mCoverViewListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v5, v0, mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1899
    sget-object v4, mCoverViewListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_88e

    .line 1900
    sget-object v4, mCoverViewListView:Landroid/widget/ListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 1902
    :cond_88e
    sget-object v4, mCoverViewListView:Landroid/widget/ListView;

    new-instance v5, Lcom/android/server/policy/GlobalActions$14;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/policy/GlobalActions$14;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1910
    const v4, 0x1020016

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 1911
    .local v29, "titleView":Landroid/widget/TextView;
    const-string v4, "VZW"

    sget-object v5, mSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8d0

    .line 1912
    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040103

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7e5

    .line 1871
    .end local v29    # "titleView":Landroid/widget/TextView;
    :cond_8c5
    const v4, 0x1020062

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .restart local v19    # "crossBtn":Landroid/view/View;
    goto/16 :goto_82b

    .line 1914
    .end local v19    # "crossBtn":Landroid/view/View;
    .restart local v29    # "titleView":Landroid/widget/TextView;
    :cond_8d0
    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104011b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7e5

    .line 1922
    .end local v29    # "titleView":Landroid/widget/TextView;
    :cond_8e6
    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setContentView(Landroid/view/View;)V

    goto/16 :goto_5e6

    .line 1926
    .end local v26    # "lf":Landroid/view/LayoutInflater;
    .end local v32    # "v":Landroid/view/View;
    :cond_8ef
    const v4, 0x104011b

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setTitle(I)V

    goto/16 :goto_5e6

    .line 1831
    nop

    :array_8fa
    .array-data 4
        0x0
        0x80
    .end array-data

    .line 1841
    :array_902
    .array-data 4
        0x0
        0x80
    .end array-data
.end method

.method private createLandscapeGlobalActionsDialog()V
    .registers 3

    .prologue
    .line 2233
    iget-object v0, p0, mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_3d

    .line 2234
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, mItemWidthLand:I

    .line 2241
    :goto_18
    iget-object v0, p0, mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const v1, 0x10203a1

    invoke-virtual {v0, v1}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 2243
    iget-object v0, p0, mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/server/policy/GlobalActions$21;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$21;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2287
    iget-object v0, p0, mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/android/server/policy/GlobalActions$22;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$22;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2295
    invoke-direct {p0}, initLandscapeAddView()V

    .line 2296
    return-void

    .line 2237
    :cond_3d
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, mItemWidthLand:I

    goto :goto_18
.end method

.method private createPortraitGlobalActionsDialog()V
    .registers 3

    .prologue
    const v1, 0x102039f

    .line 1989
    sget-boolean v0, mIsCoverOpen:Z

    if-nez v0, :cond_2d

    sget-boolean v0, mIsClearCover:Z

    if-nez v0, :cond_2d

    .line 1990
    iget-object v0, p0, mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    invoke-virtual {v0, v1}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, mScrollview:Landroid/widget/ScrollView;

    .line 1994
    :goto_15
    iget-object v0, p0, mLinearLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/server/policy/GlobalActions$17;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$17;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2037
    iget-object v0, p0, mScrollview:Landroid/widget/ScrollView;

    new-instance v1, Lcom/android/server/policy/GlobalActions$18;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$18;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2045
    invoke-direct {p0}, initPortraitAddView()V

    .line 2046
    return-void

    .line 1992
    :cond_2d
    iget-object v0, p0, mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    invoke-virtual {v0, v1}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, mScrollview:Landroid/widget/ScrollView;

    goto :goto_15
.end method

.method private doAnimation(Landroid/view/View;FFFIZ)V
    .registers 39
    .param p1, "v"    # Landroid/view/View;
    .param p2, "transX"    # F
    .param p3, "transY"    # F
    .param p4, "scaleXY"    # F
    .param p5, "duration"    # I
    .param p6, "isConfirm"    # Z

    .prologue
    .line 2307
    move-object/from16 v0, p0

    iget-object v0, v0, mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-object/from16 v24, v0

    if-nez v24, :cond_9

    .line 2438
    :goto_8
    return-void

    .line 2308
    :cond_9
    const v24, 0x1020006

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 2309
    .local v10, "imageView":Landroid/widget/ImageView;
    const v24, 0x102000b

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 2310
    .local v14, "messageView":Landroid/widget/TextView;
    const v24, 0x10203ad

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 2311
    .local v20, "statusView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, mDescriptionlayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    const v25, 0x10203a4

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 2312
    .local v7, "descriptionView":Landroid/widget/TextView;
    const v24, 0x10203af

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    .line 2314
    .local v9, "imageFrameLayout":Landroid/widget/FrameLayout;
    const/4 v8, 0x0

    .line 2315
    .local v8, "desriptionAlpha":Landroid/animation/ObjectAnimator;
    const/4 v6, 0x0

    .line 2317
    .local v6, "bottomAlpha":Landroid/animation/ObjectAnimator;
    if-eqz p6, :cond_31e

    .line 2318
    invoke-virtual {v10}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, mPowerOffIconResId:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2f0

    .line 2319
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x10409b7

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2324
    :cond_7c
    :goto_7c
    move-object/from16 v0, p0

    iget-object v0, v0, mDescriptionlayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    const-string v25, "alpha"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, mDescriptionlayout:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v28

    aput v28, v26, v27

    const/16 v27, 0x1

    const/high16 v28, 0x3f800000    # 1.0f

    aput v28, v26, v27

    invoke-static/range {v24 .. v26}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 2325
    move-object/from16 v0, p0

    iget-object v0, v0, mBottomlayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    const-string v25, "alpha"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, mBottomlayout:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v28

    aput v28, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    aput v28, v26, v27

    invoke-static/range {v24 .. v26}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 2326
    move-object/from16 v0, p0

    iget-object v0, v0, mBugReport:Landroid/widget/Button;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Button;->setFocusable(Z)V

    .line 2327
    move-object/from16 v0, p0

    iget-object v0, v0, mBugReport:Landroid/widget/Button;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Button;->setClickable(Z)V

    .line 2335
    :goto_e2
    const-wide/16 v24, 0x190

    move-wide/from16 v0, v24

    invoke-virtual {v8, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2337
    move-object/from16 v0, p0

    iget-object v0, v0, mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v23

    .line 2338
    .local v23, "wlp":Landroid/view/WindowManager$LayoutParams;
    const/4 v13, 0x0

    .line 2339
    .local v13, "ll":Landroid/widget/LinearLayout;
    sget-boolean v24, mIsCoverOpen:Z

    if-nez v24, :cond_386

    sget-boolean v24, mIsClearCover:Z

    if-nez v24, :cond_386

    .line 2340
    move-object/from16 v0, p0

    iget-object v0, v0, mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    move-object/from16 v24, v0

    const v25, 0x102039e

    invoke-virtual/range {v24 .. v25}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .end local v13    # "ll":Landroid/widget/LinearLayout;
    check-cast v13, Landroid/widget/LinearLayout;

    .line 2346
    .restart local v13    # "ll":Landroid/widget/LinearLayout;
    :goto_10f
    const/16 v21, 0x0

    .line 2347
    .local v21, "translateX":Landroid/animation/ObjectAnimator;
    const/16 v22, 0x0

    .line 2348
    .local v22, "translateY":Landroid/animation/ObjectAnimator;
    const/4 v15, 0x0

    .line 2350
    .local v15, "messageViewtranslateY":Landroid/animation/ObjectAnimator;
    if-eqz p6, :cond_397

    .line 2351
    const-string/jumbo v24, "translationX"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput p2, v25, v26

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    .line 2352
    const-string/jumbo v24, "translationY"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput p3, v25, v26

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v22

    .line 2353
    const-string/jumbo v24, "translationY"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-wide v28, 0x3fd999999999999aL    # 0.4

    invoke-virtual {v14}, Landroid/widget/TextView;->getHeight()I

    move-result v27

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    move-object/from16 v0, p0

    iget v0, v0, mMessageViewPaddingTop:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v30, v0

    add-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v14, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 2361
    :goto_181
    const-string/jumbo v24, "scaleX"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput p4, v25, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v9, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    .line 2362
    .local v16, "scaleX":Landroid/animation/ObjectAnimator;
    const-string/jumbo v24, "scaleY"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput p4, v25, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v9, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v18

    .line 2364
    .local v18, "scaleY":Landroid/animation/ObjectAnimator;
    const/16 v17, 0x0

    .line 2365
    .local v17, "scaleXMessageView":Landroid/animation/ObjectAnimator;
    const/16 v19, 0x0

    .line 2367
    .local v19, "scaleYMessageView":Landroid/animation/ObjectAnimator;
    const v24, 0x10203b0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 2368
    .local v11, "imageViewConfirm":Landroid/widget/ImageView;
    const/high16 v24, 0x3f800000    # 1.0f

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2369
    const/4 v12, 0x0

    .line 2370
    .local v12, "imageViewhide":Landroid/animation/ObjectAnimator;
    if-eqz p6, :cond_3e4

    .line 2371
    const-string v24, "alpha"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    fill-array-data v25, :array_47a

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v11, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 2372
    const-string/jumbo v24, "scaleX"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const v27, 0x3f99999a    # 1.2f

    aput v27, v25, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v14, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v17

    .line 2373
    const-string/jumbo v24, "scaleY"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const v27, 0x3f99999a    # 1.2f

    aput v27, v25, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v14, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v19

    .line 2379
    :goto_213
    const-wide/16 v24, 0xc8

    move-wide/from16 v0, v24

    invoke-virtual {v12, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2382
    const/4 v5, 0x0

    .line 2383
    .local v5, "backgroundalpha":Landroid/animation/ObjectAnimator;
    if-eqz p6, :cond_444

    .line 2384
    const v24, 0x1060144

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 2385
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsSupportedBlur:Z

    move/from16 v24, v0

    if-eqz v24, :cond_42d

    .line 2386
    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v24

    const-string v25, "alpha"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    fill-array-data v26, :array_482

    invoke-static/range {v24 .. v26}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 2398
    :goto_242
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2399
    .local v4, "Aniset":Landroid/animation/AnimatorSet;
    new-instance v24, Lcom/android/server/policy/GlobalActions$23;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9}, Lcom/android/server/policy/GlobalActions$23;-><init>(Lcom/android/server/policy/GlobalActions;Landroid/widget/FrameLayout;)V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2426
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2429
    move/from16 v0, p2

    float-to-int v0, v0

    move/from16 v24, v0

    const/16 v25, -0x3e8

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_2ae

    .line 2430
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v21, v24, v25

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2432
    :cond_2ae
    move/from16 v0, p3

    float-to-int v0, v0

    move/from16 v24, v0

    const/16 v25, -0x3e8

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_2cc

    .line 2433
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v22, v24, v25

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2435
    :cond_2cc
    move/from16 v0, p5

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2436
    new-instance v24, Landroid/view/animation/PathInterpolator;

    const v25, 0x3e2e147b    # 0.17f

    const v26, 0x3e2e147b    # 0.17f

    const v27, 0x3e4ccccd    # 0.2f

    const/high16 v28, 0x3f800000    # 1.0f

    invoke-direct/range {v24 .. v28}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2437
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_8

    .line 2320
    .end local v4    # "Aniset":Landroid/animation/AnimatorSet;
    .end local v5    # "backgroundalpha":Landroid/animation/ObjectAnimator;
    .end local v11    # "imageViewConfirm":Landroid/widget/ImageView;
    .end local v12    # "imageViewhide":Landroid/animation/ObjectAnimator;
    .end local v13    # "ll":Landroid/widget/LinearLayout;
    .end local v15    # "messageViewtranslateY":Landroid/animation/ObjectAnimator;
    .end local v16    # "scaleX":Landroid/animation/ObjectAnimator;
    .end local v17    # "scaleXMessageView":Landroid/animation/ObjectAnimator;
    .end local v18    # "scaleY":Landroid/animation/ObjectAnimator;
    .end local v19    # "scaleYMessageView":Landroid/animation/ObjectAnimator;
    .end local v21    # "translateX":Landroid/animation/ObjectAnimator;
    .end local v22    # "translateY":Landroid/animation/ObjectAnimator;
    .end local v23    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_2f0
    invoke-virtual {v10}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, mRestartIconResId:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7c

    .line 2321
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x10409b8

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7c

    .line 2329
    :cond_31e
    move-object/from16 v0, p0

    iget-object v0, v0, mDescriptionlayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    const-string v25, "alpha"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, mDescriptionlayout:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v28

    aput v28, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    aput v28, v26, v27

    invoke-static/range {v24 .. v26}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 2330
    move-object/from16 v0, p0

    iget-object v0, v0, mBottomlayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    const-string v25, "alpha"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, mBottomlayout:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v28

    aput v28, v26, v27

    const/16 v27, 0x1

    const/high16 v28, 0x3f800000    # 1.0f

    aput v28, v26, v27

    invoke-static/range {v24 .. v26}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 2331
    move-object/from16 v0, p0

    iget-object v0, v0, mBugReport:Landroid/widget/Button;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Button;->setFocusable(Z)V

    .line 2332
    move-object/from16 v0, p0

    iget-object v0, v0, mBugReport:Landroid/widget/Button;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Button;->setClickable(Z)V

    goto/16 :goto_e2

    .line 2342
    .restart local v13    # "ll":Landroid/widget/LinearLayout;
    .restart local v23    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_386
    move-object/from16 v0, p0

    iget-object v0, v0, mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    move-object/from16 v24, v0

    const v25, 0x102039e

    invoke-virtual/range {v24 .. v25}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .end local v13    # "ll":Landroid/widget/LinearLayout;
    check-cast v13, Landroid/widget/LinearLayout;

    .restart local v13    # "ll":Landroid/widget/LinearLayout;
    goto/16 :goto_10f

    .line 2355
    .restart local v15    # "messageViewtranslateY":Landroid/animation/ObjectAnimator;
    .restart local v21    # "translateX":Landroid/animation/ObjectAnimator;
    .restart local v22    # "translateY":Landroid/animation/ObjectAnimator;
    :cond_397
    const-string/jumbo v24, "x"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput p2, v25, v26

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    .line 2356
    const-string/jumbo v24, "y"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput p3, v25, v26

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v22

    .line 2357
    const-string/jumbo v24, "translationY"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    aput v27, v25, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v14, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    goto/16 :goto_181

    .line 2375
    .restart local v11    # "imageViewConfirm":Landroid/widget/ImageView;
    .restart local v12    # "imageViewhide":Landroid/animation/ObjectAnimator;
    .restart local v16    # "scaleX":Landroid/animation/ObjectAnimator;
    .restart local v17    # "scaleXMessageView":Landroid/animation/ObjectAnimator;
    .restart local v18    # "scaleY":Landroid/animation/ObjectAnimator;
    .restart local v19    # "scaleYMessageView":Landroid/animation/ObjectAnimator;
    :cond_3e4
    const-string v24, "alpha"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    fill-array-data v25, :array_48a

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v11, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 2376
    const-string/jumbo v24, "scaleX"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/high16 v27, 0x3f800000    # 1.0f

    aput v27, v25, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v14, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v17

    .line 2377
    const-string/jumbo v24, "scaleY"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/high16 v27, 0x3f800000    # 1.0f

    aput v27, v25, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v14, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v19

    goto/16 :goto_213

    .line 2388
    .restart local v5    # "backgroundalpha":Landroid/animation/ObjectAnimator;
    :cond_42d
    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v24

    const-string v25, "alpha"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    fill-array-data v26, :array_492

    invoke-static/range {v24 .. v26}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    goto/16 :goto_242

    .line 2391
    :cond_444
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsSupportedBlur:Z

    move/from16 v24, v0

    if-eqz v24, :cond_463

    .line 2392
    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v24

    const-string v25, "alpha"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    fill-array-data v26, :array_49a

    invoke-static/range {v24 .. v26}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    goto/16 :goto_242

    .line 2394
    :cond_463
    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v24

    const-string v25, "alpha"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    fill-array-data v26, :array_4a2

    invoke-static/range {v24 .. v26}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    goto/16 :goto_242

    .line 2371
    :array_47a
    .array-data 4
        0x0
        0xff
    .end array-data

    .line 2386
    :array_482
    .array-data 4
        0x80
        0xbf
    .end array-data

    .line 2375
    :array_48a
    .array-data 4
        0xff
        0x0
    .end array-data

    .line 2388
    :array_492
    .array-data 4
        0x0
        0x73
    .end array-data

    .line 2392
    :array_49a
    .array-data 4
        0xbf
        0x80
    .end array-data

    .line 2394
    :array_4a2
    .array-data 4
        0x73
        0x0
    .end array-data
.end method

.method private getAssistAction()Lcom/android/server/policy/GlobalActions$Action;
    .registers 4

    .prologue
    .line 2892
    new-instance v0, Lcom/android/server/policy/GlobalActions$27;

    const v1, 0x1080387

    const v2, 0x104012a

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$27;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getBugReportAction()Lcom/android/server/policy/GlobalActions$Action;
    .registers 4

    .prologue
    .line 2791
    new-instance v0, Lcom/android/server/policy/GlobalActions$25;

    const v1, 0x10803f5

    const v2, 0x1040120

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$25;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getCurrentNW()I
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 4998
    const-string v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getCurrentNW()] :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "CURRENT_NETWORK"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4999
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "CURRENT_NETWORK"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getCurrentUser()Landroid/content/pm/UserInfo;
    .registers 3

    .prologue
    .line 2978
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 2980
    :goto_8
    return-object v1

    .line 2979
    :catch_9
    move-exception v0

    .line 2980
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method private getLockdownAction()Lcom/android/server/policy/GlobalActions$Action;
    .registers 4

    .prologue
    .line 2946
    new-instance v0, Lcom/android/server/policy/GlobalActions$29;

    const v1, 0x108002f

    const v2, 0x104012c

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$29;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getPhoneId(I)I
    .registers 4
    .param p1, "subId"    # I

    .prologue
    .line 5160
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 5163
    .local v0, "phoneId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 5164
    const/4 v0, 0x0

    .line 5166
    .end local v0    # "phoneId":I
    :cond_b
    return v0
.end method

.method private getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
    .registers 4
    .param p1, "subId"    # I
    .param p2, "slotId"    # I

    .prologue
    .line 5173
    new-instance v0, Lcom/android/server/policy/GlobalActions$42;

    invoke-direct {v0, p0, p1}, Lcom/android/server/policy/GlobalActions$42;-><init>(Lcom/android/server/policy/GlobalActions;I)V

    .line 5222
    .local v0, "mListener":Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private getSCoverState()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 809
    iget-object v1, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v1, :cond_3b

    .line 810
    invoke-direct {p0}, getSviewCoverAppLevel()V

    .line 811
    iget-object v1, p0, mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v1, :cond_32

    .line 812
    const-string v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCoverManager.getCoverState() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    iget-object v0, p0, mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    .line 820
    :goto_31
    return v0

    .line 815
    :cond_32
    const-string v1, "GlobalActions"

    const-string/jumbo v2, "state is null "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 819
    :cond_3b
    const-string v1, "GlobalActions"

    const-string/jumbo v2, "mCoverManager is null "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method

.method private getSettingsAction()Lcom/android/server/policy/GlobalActions$Action;
    .registers 4

    .prologue
    .line 2860
    new-instance v0, Lcom/android/server/policy/GlobalActions$26;

    const v1, 0x10804bf

    const v2, 0x1040129

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$26;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getSviewCoverAppLevel()V
    .registers 5

    .prologue
    .line 824
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 825
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_2b

    .line 826
    const-string v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "this Cover app level is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, mSViewCoverAppLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    const-string v1, "com.sec.feature.cover.sviewcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v1

    sput v1, mSViewCoverAppLevel:I

    .line 829
    :cond_2b
    return-void
.end method

.method private getVoiceAssistAction()Lcom/android/server/policy/GlobalActions$Action;
    .registers 4

    .prologue
    .line 2919
    new-instance v0, Lcom/android/server/policy/GlobalActions$28;

    const v1, 0x10804d3

    const v2, 0x104012b

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$28;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private handleShow()V
    .registers 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 637
    invoke-direct {p0}, awakenIfNecessary()V

    .line 639
    invoke-direct {p0}, getSCoverState()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-direct {p0}, isMobileKeyboard()Z

    move-result v2

    if-eqz v2, :cond_38

    :cond_13
    move v2, v4

    :goto_14
    sput-boolean v2, mIsCoverOpen:Z

    .line 640
    invoke-direct {p0}, isClearCover()Z

    move-result v2

    sput-boolean v2, mIsClearCover:Z

    .line 641
    iget-object v2, p0, mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v2, :cond_60

    sget-boolean v2, mIsCoverOpen:Z

    if-nez v2, :cond_60

    .line 643
    iget-object v2, p0, mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getModel()I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_3a

    .line 644
    const-string v2, "GlobalActions"

    const-string v3, "Device is not supported in Global Actions in main view, show panel in cocktail bar"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    invoke-direct {p0}, notifyCocktailBarGlobalActions()V

    .line 779
    :goto_37
    return-void

    :cond_38
    move v2, v3

    .line 639
    goto :goto_14

    .line 652
    :cond_3a
    const-string v2, "americano"

    sget-object v5, mScafe:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    const-string/jumbo v2, "double"

    sget-object v5, mScafeShot:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_60

    .line 653
    :cond_4f
    sget-boolean v2, mIsClearCover:Z

    if-nez v2, :cond_60

    .line 654
    sget v2, mSViewCoverAppLevel:I

    if-ge v2, v8, :cond_60

    .line 656
    const-string v2, "GlobalActions"

    const-string/jumbo v3, "handleShow() : Device is in SView Cover mode hence GlobalAction dialog will not display "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 666
    :cond_60
    const-string v2, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v5, "getPowerMenuLockedState"

    iget-object v6, p0, mTempStringArray:[Ljava/lang/String;

    invoke-direct {p0, v2, v5, v6}, isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "false"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    iget-boolean v2, p0, mKeyguardShowing:Z

    if-eqz v2, :cond_80

    .line 668
    const-string v2, "GlobalActions"

    const-string v3, "Knox Customization: GlobalActions dialog will not display when keyguard is showing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 674
    :cond_80
    const-string v2, "GlobalActions"

    const-string/jumbo v5, "handleShow() : Call createDialog()"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    invoke-direct {p0}, createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v2

    iput-object v2, p0, mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    .line 676
    invoke-direct {p0}, prepareDialog()V

    .line 679
    iget-object v2, p0, mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v2

    if-ne v2, v4, :cond_ba

    iget-object v2, p0, mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v2

    instance-of v2, v2, Lcom/android/server/policy/GlobalActions$SinglePressAction;

    if-eqz v2, :cond_ba

    iget-object v2, p0, mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v2

    instance-of v2, v2, Lcom/android/server/policy/GlobalActions$LongPressAction;

    if-nez v2, :cond_ba

    .line 682
    iget-object v2, p0, mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/GlobalActions$SinglePressAction;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$SinglePressAction;->onPress()V

    goto/16 :goto_37

    .line 685
    :cond_ba
    iget-object v2, p0, mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v2, :cond_21b

    .line 686
    iget-object v2, p0, mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 691
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x104011b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 693
    iget-object v2, p0, mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 694
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x10501c7

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, mSViewCoverWidth:I

    .line 695
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x10501c8

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, mSViewCoverHeight:I

    .line 696
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x10501c6

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, mClearCoverWidth:I

    .line 697
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x1050017

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, mStatusHeight:I

    .line 699
    const-string v2, "GlobalActions"

    const-string/jumbo v5, "handleShow() : call mDialog.show()"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object v2, p0, mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->show()V

    .line 701
    iget-object v2, p0, mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/high16 v5, 0x10000

    invoke-virtual {v2, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 703
    sput-boolean v3, mIsMiniDialogMode:Z

    .line 704
    iget-object v2, p0, mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v2, :cond_15a

    iget-object v2, p0, mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    const/4 v5, 0x6

    if-ne v2, v5, :cond_15a

    iget-object v2, p0, mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v2

    if-nez v2, :cond_15a

    .line 706
    sput-boolean v4, mIsMiniDialogMode:Z

    .line 707
    const-string v2, "GlobalActions"

    const-string/jumbo v4, "handleShow(), mini dialog showed."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_15a
    const-string v2, "GlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleShow() : mIsCoverOpen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, mIsCoverOpen:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    sget-boolean v2, mIsCoverOpen:Z

    if-nez v2, :cond_1a1

    sget-boolean v2, mIsClearCover:Z

    if-nez v2, :cond_1a1

    .line 743
    iget-object v2, p0, mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/Window;->clearFlags(I)V

    .line 744
    iget-object v2, p0, mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    sget v4, mSViewCoverWidth:I

    sget v5, mSViewCoverHeight:I

    sget v6, mStatusHeight:I

    sub-int/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/view/Window;->setLayout(II)V

    .line 745
    iget-object v2, p0, mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x30

    invoke-virtual {v2, v4}, Landroid/view/Window;->setGravity(I)V

    .line 748
    :cond_1a1
    sget-boolean v2, mIsCoverOpen:Z

    if-nez v2, :cond_1b5

    sget-boolean v2, mIsClearCover:Z

    if-eqz v2, :cond_1b5

    .line 749
    iget-object v2, p0, mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    sget v4, mClearCoverWidth:I

    const/4 v5, -0x2

    invoke-virtual {v2, v4, v5}, Landroid/view/Window;->setLayout(II)V

    .line 752
    :cond_1b5
    sget-boolean v2, mNewFeatureForM:Z

    if-eqz v2, :cond_211

    .line 753
    iget-object v2, p0, mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 754
    .local v1, "wlp":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v7, v7}, Landroid/view/Window;->setLayout(II)V

    .line 755
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 756
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x20000

    or-int/2addr v2, v4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 757
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x1000000

    or-int/2addr v2, v4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 758
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 759
    iget-boolean v2, p0, mIsSupportedBlur:Z

    if-eqz v2, :cond_216

    .line 760
    const v2, 0x3ecccccd    # 0.4f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 761
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 765
    :goto_1f5
    sget-boolean v2, mIsCoverOpen:Z

    if-nez v2, :cond_1ff

    .line 766
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 768
    :cond_1ff
    iget-object v2, p0, mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 769
    iget-object v2, p0, mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 772
    .end local v1    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_211
    invoke-direct {p0}, hideQuickpanelBackground()V

    goto/16 :goto_37

    .line 763
    .restart local v1    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_216
    const/high16 v2, 0x3f400000    # 0.75f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    goto :goto_1f5

    .line 775
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_21b
    const-string v2, "GlobalActions"

    const-string v3, "Can not show dialog as it is not well formed properly"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_37
.end method

.method private hideQuickpanelBackground()V
    .registers 2

    .prologue
    .line 4933
    const-string v0, "GlobalActions"

    invoke-direct {p0, v0}, hideQuickpanelBackground(Ljava/lang/String;)V

    .line 4934
    return-void
.end method

.method private hideQuickpanelBackground(Ljava/lang/String;)V
    .registers 6
    .param p1, "sender"    # Ljava/lang/String;

    .prologue
    .line 4937
    sget-boolean v1, mIsCoverOpen:Z

    if-nez v1, :cond_8

    iget-object v1, p0, mContext:Landroid/content/Context;

    if-nez v1, :cond_9

    .line 4941
    :cond_8
    :goto_8
    return-void

    .line 4938
    :cond_9
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4939
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4940
    sget-object v1, mSCoverRequestStatus:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_8
.end method

.method private initCoverManager(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 855
    iget-object v0, p0, mContext:Landroid/content/Context;

    if-eqz v0, :cond_13

    .line 856
    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 857
    const-string v0, "GlobalActions"

    const-string/jumbo v1, "initCoverManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_13
    iget-object v0, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v0, :cond_2a

    iget-object v0, p0, mStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    if-eqz v0, :cond_2a

    .line 860
    iget-object v0, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v1, p0, mStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 861
    const-string v0, "GlobalActions"

    const-string/jumbo v1, "mCoverManager.registerListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :cond_2a
    return-void
.end method

.method private initLandscapeAddView()V
    .registers 5

    .prologue
    .line 2299
    iget v1, p0, mItemLandscapeDivider:I

    iput v1, p0, mItemDividerLand:I

    .line 2301
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 2302
    iget-object v1, p0, mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2, v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3}, makeActionsItem(Lcom/android/server/policy/GlobalActions$Action;IZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2301
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2304
    :cond_20
    return-void
.end method

.method private initPortraitAddView()V
    .registers 5

    .prologue
    .line 2217
    sget-boolean v1, mIsCoverOpen:Z

    if-nez v1, :cond_28

    sget-boolean v1, mIsClearCover:Z

    if-nez v1, :cond_28

    .line 2218
    iget v1, p0, mItemPortraitDividerSViewCover:I

    iput v1, p0, mItemDivider:I

    .line 2227
    :goto_c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    iget-object v1, p0, mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_3b

    .line 2228
    iget-object v1, p0, mLinearLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2, v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v0, v3}, makeActionsItem(Lcom/android/server/policy/GlobalActions$Action;IZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2227
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 2220
    .end local v0    # "i":I
    :cond_28
    iget-object v1, p0, mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_36

    .line 2221
    iget v1, p0, mItemPortraitDivider:I

    iput v1, p0, mItemDivider:I

    goto :goto_c

    .line 2223
    :cond_36
    iget v1, p0, mItemPortraitDividerOverFour:I

    iput v1, p0, mItemDivider:I

    goto :goto_c

    .line 2230
    .restart local v0    # "i":I
    :cond_3b
    return-void
.end method

.method private isCHINA()Z
    .registers 4

    .prologue
    .line 5090
    const-string/jumbo v1, "ro.csc.sales_code"

    const-string v2, "NONE"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 5093
    .local v0, "SALES_CODE":Ljava/lang/String;
    const-string v1, "CMCC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 5095
    :cond_21
    const/4 v1, 0x1

    .line 5097
    :goto_22
    return v1

    :cond_23
    const/4 v1, 0x0

    goto :goto_22
.end method

.method private isClearCover()Z
    .registers 3

    .prologue
    .line 5102
    iget-object v0, p0, mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_10

    iget-object v0, p0, mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_10

    .line 5103
    const/4 v0, 0x1

    .line 5105
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private isCurrentUserOwner()Z
    .registers 3

    .prologue
    .line 2985
    invoke-direct {p0}, getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2986
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_c
    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private isDataCapable(Landroid/content/Context;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 5131
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 5132
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method private isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "ProviderURI"    # Ljava/lang/String;
    .param p2, "queryValue"    # Ljava/lang/String;
    .param p3, "Arg"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 5028
    const-string v7, ""

    .line 5029
    .local v7, "result":Ljava/lang/String;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5030
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 5031
    .local v6, "cr":Landroid/database/Cursor;
    iget-object v0, p0, mContext:Landroid/content/Context;

    if-eqz v0, :cond_25

    .line 5032
    const/4 v0, 0x0

    aget-object v0, p3, v0

    const-string/jumbo v3, "temp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 5033
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5040
    :cond_25
    :goto_25
    if-eqz v6, :cond_35

    .line 5042
    :try_start_27
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5043
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_44

    move-result-object v7

    .line 5045
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5048
    :cond_35
    return-object v7

    .line 5035
    :cond_36
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_25

    .line 5045
    :catchall_44
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isFMMlocked()Z
    .registers 2

    .prologue
    .line 5266
    iget-object v0, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled()Z

    move-result v0

    return v0
.end method

.method private isGlobalActionConfirming()Z
    .registers 3

    .prologue
    .line 4590
    sget-object v1, sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 4591
    :try_start_3
    sget-boolean v0, sIsConfirming:Z

    monitor-exit v1

    return v0

    .line 4592
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private isIntEDM(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p1, "ProviderURI"    # Ljava/lang/String;
    .param p2, "queryValue"    # Ljava/lang/String;

    .prologue
    .line 5052
    iget-object v0, p0, mTempStringArray:[Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 5053
    const/4 v0, -0x1

    .line 5055
    :goto_f
    return v0

    :cond_10
    iget-object v0, p0, mTempStringArray:[Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_f
.end method

.method private isMSim()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 5262
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v1, v0, :cond_c

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private isMiniCoverClosed()Z
    .registers 3

    .prologue
    .line 5110
    iget-object v0, p0, mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_17

    iget-object v0, p0, mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_17

    iget-object v0, p0, mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    if-nez v0, :cond_17

    .line 5112
    const/4 v0, 0x1

    .line 5114
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private isMobileKeyboard()Z
    .registers 3

    .prologue
    .line 5119
    iget-object v0, p0, mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_1a

    iget-object v0, p0, mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_18

    iget-object v0, p0, mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1a

    .line 5120
    :cond_18
    const/4 v0, 0x1

    .line 5122
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private isSimCardInserted(I)Z
    .registers 10
    .param p1, "slotidx"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 5270
    const-string/jumbo v6, "ril.MSIMM"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5271
    .local v3, "simMode":Ljava/lang/String;
    const-string v6, "1"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 5272
    if-nez p1, :cond_14

    .line 5299
    :cond_13
    :goto_13
    return v5

    :cond_14
    move v5, v4

    .line 5275
    goto :goto_13

    .line 5279
    :cond_16
    const-string/jumbo v6, "ril.ICC_TYPE"

    const-string v7, "0,0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5280
    .local v1, "iccTemp":Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5281
    .local v0, "iccStatusSlot":[Ljava/lang/String;
    array-length v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_13

    .line 5287
    const/4 v2, 0x0

    .line 5288
    .local v2, "key":Ljava/lang/String;
    packed-switch p1, :pswitch_data_48

    .line 5296
    :goto_2d
    if-eqz v2, :cond_13

    const-string v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 5299
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_45

    :goto_3d
    move v5, v4

    goto :goto_13

    .line 5290
    :pswitch_3f
    aget-object v2, v0, v5

    .line 5291
    goto :goto_2d

    .line 5293
    :pswitch_42
    aget-object v2, v0, v4

    goto :goto_2d

    :cond_45
    move v4, v5

    .line 5299
    goto :goto_3d

    .line 5288
    nop

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_42
    .end packed-switch
.end method

.method private isSimReady()Z
    .registers 10

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 4597
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 4604
    .local v0, "SimState":I
    const-string/jumbo v7, "ro.config.donot_nosim"

    invoke-static {v7, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 4612
    .local v4, "lSimValue":Z
    if-eqz v0, :cond_15

    if-ne v0, v6, :cond_5c

    :cond_15
    move v3, v6

    .line 4616
    .local v3, "finalSimState":Z
    :goto_16
    if-nez v4, :cond_61

    if-eqz v3, :cond_61

    .line 4618
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-direct {v2, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4619
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const v7, 0x10409a6

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4620
    const v7, 0x10409a7

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 4621
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 4622
    const v7, 0x104000a

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4624
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 4628
    .local v1, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7de

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    .line 4631
    new-instance v7, Lcom/android/server/policy/GlobalActions$41;

    invoke-direct {v7, p0}, Lcom/android/server/policy/GlobalActions$41;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4640
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 4641
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 4643
    iput-object v1, p0, mConfirmDialog:Landroid/app/AlertDialog;

    .line 4644
    sget-object v6, sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v6

    .line 4645
    const/4 v7, 0x1

    :try_start_58
    sput-boolean v7, sIsConfirming:Z

    .line 4646
    monitor-exit v6

    .line 4649
    .end local v1    # "alert":Landroid/app/AlertDialog;
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_5b
    return v5

    .end local v3    # "finalSimState":Z
    :cond_5c
    move v3, v5

    .line 4612
    goto :goto_16

    .line 4646
    .restart local v1    # "alert":Landroid/app/AlertDialog;
    .restart local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v3    # "finalSimState":Z
    :catchall_5e
    move-exception v5

    monitor-exit v6
    :try_end_60
    .catchall {:try_start_58 .. :try_end_60} :catchall_5e

    throw v5

    .end local v1    # "alert":Landroid/app/AlertDialog;
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_61
    move v5, v6

    .line 4649
    goto :goto_5b
.end method

.method private isSingleActionItem(Landroid/view/View;)Z
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2587
    const v2, 0x1020006

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2588
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2590
    .local v1, "imageViewTag":I
    iget v2, p0, mPowerOffIconResId:I

    if-eq v1, v2, :cond_1b

    iget v2, p0, mRestartIconResId:I

    if-ne v1, v2, :cond_1d

    .line 2591
    :cond_1b
    const/4 v2, 0x1

    .line 2593
    :goto_1c
    return v2

    :cond_1d
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method private isTSafeLock()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5136
    iget-object v3, p0, mContext:Landroid/content/Context;

    if-nez v3, :cond_7

    .line 5140
    :cond_6
    :goto_6
    return v2

    .line 5137
    :cond_7
    invoke-virtual {p0}, hasTSafeLock()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 5139
    const-string/jumbo v0, "off_menu_setting"

    .line 5140
    .local v0, "OFF_MENU_SETTING":Ljava/lang/String;
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "off_menu_setting"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_21

    :goto_1f
    move v2, v1

    goto :goto_6

    :cond_21
    move v1, v2

    goto :goto_1f
.end method

.method private isUSA()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 5060
    const-string/jumbo v2, "ro.csc.sales_code"

    const-string v3, "NONE"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 5062
    .local v0, "SALES_CODE":Ljava/lang/String;
    const-string/jumbo v2, "usa"

    const-string/jumbo v3, "ro.csc.country_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 5071
    :cond_22
    :goto_22
    return v1

    .line 5064
    :cond_23
    const-string v2, "VZW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    const-string v2, "ATT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    const-string v2, "TMB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    const-string v2, "SPR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    const-string v2, "VMU"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    const-string v2, "MTR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    const-string v2, "USC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    const-string v2, "BST"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    const-string v2, "XAS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    const-string v2, "LRA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    const-string v2, "SPT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    const-string v2, "CSP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    const-string v2, "AIO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    const-string v2, "TFN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    const-string v2, "CRI"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 5071
    const/4 v1, 0x0

    goto :goto_22
.end method

.method private isVoiceCapable()Z
    .registers 4

    .prologue
    .line 5126
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 5127
    .local v0, "mgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    return v1
.end method

.method private makeActionsItem(Lcom/android/server/policy/GlobalActions$Action;IZ)Landroid/view/View;
    .registers 22
    .param p1, "item"    # Lcom/android/server/policy/GlobalActions$Action;
    .param p2, "i"    # I
    .param p3, "isPort"    # Z

    .prologue
    .line 2049
    move-object/from16 v6, p1

    .line 2050
    .local v6, "action":Lcom/android/server/policy/GlobalActions$Action;
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    invoke-static {v15}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v15

    invoke-interface {v6, v2, v3, v5, v15}, Lcom/android/server/policy/GlobalActions$Action;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v7

    .line 2052
    .local v7, "view":Landroid/view/View;
    const v2, 0x1020006

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 2053
    .local v9, "imageView":Landroid/widget/ImageView;
    const v2, 0x10203b0

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 2055
    .local v10, "imageViewConfirm":Landroid/widget/ImageView;
    if-eqz v9, :cond_4d

    invoke-virtual {v9}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 2056
    invoke-virtual {v9}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, mPowerOffIconResId:I

    if-ne v2, v3, :cond_f6

    .line 2057
    move-object/from16 v0, p0

    iget v2, v0, mConfirmPowerOffIconResId:I

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2058
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2059
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2066
    :cond_4d
    :goto_4d
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2068
    if-eqz p3, :cond_117

    .line 2069
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v2, v0, mItemMaxWidth:I

    const/4 v3, -0x2

    invoke-direct {v11, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2070
    .local v11, "lllp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v2

    add-int/lit8 v3, p2, 0x1

    sub-int/2addr v2, v3

    if-eqz v2, :cond_74

    .line 2071
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v15, v0, mItemDivider:I

    invoke-virtual {v11, v2, v3, v5, v15}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2080
    :cond_74
    :goto_74
    invoke-virtual {v7, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2081
    invoke-virtual {v7}, Landroid/view/View;->bringToFront()V

    .line 2082
    const v2, 0x10203af

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 2083
    .local v8, "imageFrameLayout":Landroid/widget/FrameLayout;
    move-object v4, v7

    .line 2084
    .local v4, "tempView":Landroid/view/View;
    if-eqz v8, :cond_f5

    .line 2085
    if-eqz p3, :cond_ac

    .line 2086
    const v2, 0x10203ad

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 2087
    .local v14, "statusView":Landroid/widget/TextView;
    sget-boolean v2, mIsCoverOpen:Z

    if-nez v2, :cond_ac

    sget-boolean v2, mIsClearCover:Z

    if-nez v2, :cond_ac

    .line 2088
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 2089
    .local v12, "lparams":Landroid/widget/LinearLayout$LayoutParams;
    iget v13, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 2090
    .local v13, "marginTopPixelSize":I
    if-eqz v14, :cond_ac

    move-object/from16 v0, p0

    iget-boolean v2, v0, isDataToggleSupport:Z

    if-nez v2, :cond_ac

    .line 2091
    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setHeight(I)V

    .line 2096
    .end local v12    # "lparams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v13    # "marginTopPixelSize":I
    .end local v14    # "statusView":Landroid/widget/TextView;
    :cond_ac
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 2097
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 2098
    new-instance v2, Lcom/android/server/policy/GlobalActions$19;

    move-object/from16 v3, p0

    move/from16 v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/policy/GlobalActions$19;-><init>(Lcom/android/server/policy/GlobalActions;Landroid/view/View;ZLcom/android/server/policy/GlobalActions$Action;Landroid/view/View;)V

    invoke-virtual {v8, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2194
    new-instance v2, Lcom/android/server/policy/GlobalActions$20;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/policy/GlobalActions$20;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v8, v2}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2211
    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v16, 0x258

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ebd70a4    # 0.37f

    const/4 v15, 0x0

    const v16, 0x3e99999a    # 0.3f

    const/high16 v17, 0x3f800000    # 1.0f

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v3, v5, v15, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2213
    :cond_f5
    return-object v7

    .line 2060
    .end local v4    # "tempView":Landroid/view/View;
    .end local v8    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .end local v11    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_f6
    invoke-virtual {v9}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, mRestartIconResId:I

    if-ne v2, v3, :cond_4d

    .line 2061
    move-object/from16 v0, p0

    iget v2, v0, mConfirmRestartIconResId:I

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2062
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2063
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_4d

    .line 2074
    :cond_117
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v2, v0, mItemWidthLand:I

    const/4 v3, -0x2

    invoke-direct {v11, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2075
    .restart local v11    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v2

    add-int/lit8 v3, p2, 0x1

    sub-int/2addr v2, v3

    if-eqz v2, :cond_74

    .line 2076
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v5, v0, mItemDividerLand:I

    const/4 v15, 0x0

    invoke-virtual {v11, v2, v3, v5, v15}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_74
.end method

.method private notifyCocktailBarGlobalActions()V
    .registers 5

    .prologue
    .line 870
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v1

    .line 871
    .local v1, "cocktailBarManager":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    if-eqz v1, :cond_1f

    .line 872
    const-string v2, "GlobalActions"

    const-string/jumbo v3, "notifyCocktailBarGlobalActions"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 875
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "show_global_actions"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 876
    invoke-virtual {v1, v0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sendExtraDataToCocktailBar(Landroid/os/Bundle;)V

    .line 878
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1f
    return-void
.end method

.method private onAirplaneModeChanged()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4527
    iget-boolean v2, p0, mHasTelephony:Z

    if-eqz v2, :cond_7

    .line 4538
    :cond_6
    :goto_6
    return-void

    .line 4529
    :cond_7
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_2e

    .line 4533
    .local v0, "airplaneModeOn":Z
    :goto_15
    if-eqz v0, :cond_30

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_19
    iput-object v1, p0, mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 4534
    iget-object v1, p0, mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget-object v2, p0, mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 4535
    sget-boolean v1, mNewFeatureForM:Z

    if-eqz v1, :cond_6

    .line 4536
    iget v1, p0, mAirplaneStringId:I

    iget-object v2, p0, mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-direct {p0, v1, v2}, updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    goto :goto_6

    .end local v0    # "airplaneModeOn":Z
    :cond_2e
    move v0, v1

    .line 4529
    goto :goto_15

    .line 4533
    .restart local v0    # "airplaneModeOn":Z
    :cond_30
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_19
.end method

.method private onClickForHideLandscapeConfirmDialog(Z)V
    .registers 14
    .param p1, "isOnClick"    # Z

    .prologue
    const/4 v11, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 2482
    iget v0, p0, mItemLandscapeDivider:I

    iput v0, p0, mItemDividerLand:I

    .line 2484
    iget-object v0, p0, mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const-string v2, "HideConfirmLandscape"

    invoke-virtual {v0, v2}, Landroid/app/GlobalActionsFrameLayout;->checkOrientation(Ljava/lang/String;)V

    .line 2486
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_10
    iget-object v0, p0, mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_8e

    .line 2487
    iget-object v0, p0, mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2488
    .local v1, "view":Landroid/view/View;
    sget-object v0, SelectedItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    .line 2489
    const v0, 0x10203af

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 2490
    .local v8, "imageFrameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v8, v11}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 2491
    invoke-virtual {v8, v11}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 2492
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2493
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2494
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2486
    .end local v8    # "imageFrameLayout":Landroid/widget/FrameLayout;
    :goto_4d
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    .line 2499
    :cond_50
    const v0, 0x10203ad

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 2500
    .local v10, "statusView":Landroid/widget/TextView;
    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    .line 2501
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2504
    :cond_68
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, mItemWidthLand:I

    const/4 v2, -0x2

    invoke-direct {v9, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2505
    .local v9, "lllp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v0

    add-int/lit8 v2, v7, 0x1

    sub-int/2addr v0, v2

    if-eqz v0, :cond_80

    .line 2506
    iget v0, p0, mItemDividerLand:I

    invoke-virtual {v9, v6, v6, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2508
    :cond_80
    invoke-virtual {v1, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2509
    iget v2, p0, current_x_land:F

    iget v3, p0, current_y_land:F

    const/16 v5, 0x12c

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, doAnimation(Landroid/view/View;FFFIZ)V

    goto :goto_4d

    .line 2513
    .end local v1    # "view":Landroid/view/View;
    .end local v9    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "statusView":Landroid/widget/TextView;
    :cond_8e
    sget-boolean v0, mAccessibiltyShortcutEnabled:Z

    if-nez v0, :cond_94

    .line 2514
    sput-boolean v6, mIsConfirmLandDlg:Z

    .line 2516
    :cond_94
    return-void
.end method

.method private onClickForHidePortraitConfirmDialog(Z)V
    .registers 14
    .param p1, "isOnClick"    # Z

    .prologue
    const/4 v11, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 2443
    sget-boolean v0, mIsCoverOpen:Z

    if-nez v0, :cond_10

    sget-boolean v0, mIsCoverOpen:Z

    if-nez v0, :cond_17

    sget-boolean v0, mIsClearCover:Z

    if-eqz v0, :cond_17

    .line 2444
    :cond_10
    iget-object v0, p0, mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const-string v2, "HideConfirmPortrait"

    invoke-virtual {v0, v2}, Landroid/app/GlobalActionsFrameLayout;->checkOrientation(Ljava/lang/String;)V

    .line 2447
    :cond_17
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_18
    iget-object v0, p0, mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_96

    .line 2448
    iget-object v0, p0, mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2449
    .local v1, "view":Landroid/view/View;
    sget-object v0, SelectedItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    .line 2450
    const v0, 0x10203af

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 2451
    .local v8, "imageFrameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v8, v11}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 2452
    invoke-virtual {v8, v11}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 2453
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2454
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2455
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2447
    .end local v8    # "imageFrameLayout":Landroid/widget/FrameLayout;
    :goto_55
    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    .line 2460
    :cond_58
    const v0, 0x10203ad

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 2461
    .local v10, "statusView":Landroid/widget/TextView;
    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    .line 2462
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2465
    :cond_70
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, mItemMaxWidth:I

    const/4 v2, -0x2

    invoke-direct {v9, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2466
    .local v9, "lllp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v0

    add-int/lit8 v2, v7, 0x1

    sub-int/2addr v0, v2

    if-eqz v0, :cond_88

    .line 2467
    iget v0, p0, mItemDivider:I

    invoke-virtual {v9, v6, v6, v6, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2469
    :cond_88
    invoke-virtual {v1, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2470
    const/high16 v2, -0x3b860000    # -1000.0f

    iget v3, p0, current_y:F

    const/16 v5, 0x12c

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, doAnimation(Landroid/view/View;FFFIZ)V

    goto :goto_55

    .line 2474
    .end local v1    # "view":Landroid/view/View;
    .end local v9    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "statusView":Landroid/widget/TextView;
    :cond_96
    sget-boolean v0, mAccessibiltyShortcutEnabled:Z

    if-nez v0, :cond_9c

    .line 2475
    sput-boolean v6, mIsConfirmDlg:Z

    .line 2477
    :cond_9c
    return-void
.end method

.method private onClickForLandscapeConfirmDialog(Landroid/view/View;Z)V
    .registers 16
    .param p1, "v"    # Landroid/view/View;
    .param p2, "isOnClick"    # Z

    .prologue
    const/4 v5, 0x0

    const v4, 0x3fa66666    # 1.3f

    const/4 v6, 0x1

    .line 2559
    sput-object p1, SelectedItem:Landroid/view/View;

    .line 2560
    sget-object v0, SelectedItem:Landroid/view/View;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 2561
    .local v11, "messageView":Landroid/widget/TextView;
    sget-object v0, SelectedItem:Landroid/view/View;

    const v1, 0x10203ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 2562
    .local v12, "statusView":Landroid/widget/TextView;
    iget v0, p0, mItemWidthLand:I

    invoke-virtual {p0, v0}, item_yposition(I)I

    move-result v0

    int-to-float v7, v0

    .line 2563
    .local v7, "center_x":F
    sget-object v0, SelectedItem:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v11}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v12}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, item_xposition(I)I

    move-result v0

    int-to-float v8, v0

    .line 2564
    .local v8, "center_y":F
    const/4 v0, 0x2

    new-array v10, v0, [I

    .line 2565
    .local v10, "location":[I
    invoke-virtual {p1, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2566
    aget v0, v10, v5

    int-to-float v0, v0

    iput v0, p0, current_x_land:F

    .line 2567
    aget v0, v10, v6

    int-to-float v0, v0

    iput v0, p0, current_y_land:F

    .line 2569
    const-string/jumbo v0, "ksh current x ="

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, current_x_land:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2571
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 2572
    .local v9, "imageView":Landroid/widget/ImageView;
    iget-object v0, p0, mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    sget-object v1, SelectedItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/GlobalActionsFrameLayout;->hideAllViewForLand(Landroid/view/View;)V

    .line 2573
    iget-object v0, p0, mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const-string v1, "ConfirmLandscape"

    invoke-virtual {v0, v1}, Landroid/app/GlobalActionsFrameLayout;->checkOrientation(Ljava/lang/String;)V

    .line 2575
    if-eqz p2, :cond_c7

    .line 2576
    iget v0, p0, current_x_land:F

    sub-float v2, v7, v0

    iget v0, p0, current_y_land:F

    sub-float v3, v8, v0

    const/16 v5, 0x12c

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, doAnimation(Landroid/view/View;FFFIZ)V

    .line 2581
    :goto_b8
    iget v0, p0, current_x_land:F

    iget-object v1, p0, mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, current_x_land:F

    .line 2583
    sput-boolean v6, mIsConfirmLandDlg:Z

    .line 2584
    return-void

    .line 2578
    :cond_c7
    iget v0, p0, current_x_land:F

    sub-float v2, v7, v0

    iget v0, p0, current_y_land:F

    sub-float v3, v8, v0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, doAnimation(Landroid/view/View;FFFIZ)V

    goto :goto_b8
.end method

.method private onClickForPortraitConfirmDialog(Landroid/view/View;Z)V
    .registers 17
    .param p1, "v"    # Landroid/view/View;
    .param p2, "isOnClick"    # Z

    .prologue
    .line 2519
    sput-object p1, SelectedItem:Landroid/view/View;

    .line 2520
    sget-object v0, SelectedItem:Landroid/view/View;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 2521
    .local v12, "messageView":Landroid/widget/TextView;
    sget-object v0, SelectedItem:Landroid/view/View;

    const v1, 0x10203ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 2522
    .local v13, "statusView":Landroid/widget/TextView;
    sget-object v0, SelectedItem:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v12}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v13}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, item_yposition(I)I

    move-result v0

    int-to-float v7, v0

    .line 2523
    .local v7, "center_y":F
    const/4 v0, 0x2

    new-array v10, v0, [I

    .line 2524
    .local v10, "location":[I
    sget-boolean v0, mIsClearCover:Z

    if-nez v0, :cond_d9

    .line 2525
    sget-object v0, SelectedItem:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2529
    :goto_39
    const/4 v0, 0x1

    aget v0, v10, v0

    int-to-float v0, v0

    iput v0, p0, current_y:F

    .line 2531
    const-string/jumbo v0, "ksh current y ="

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, current_y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mScrollview:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2533
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 2535
    .local v9, "imageView":Landroid/widget/ImageView;
    sget-boolean v0, mIsCoverOpen:Z

    if-nez v0, :cond_e0

    sget-boolean v0, mIsClearCover:Z

    if-nez v0, :cond_e0

    .line 2536
    iget-object v0, p0, mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    sget-object v1, SelectedItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->hideAllView(Landroid/view/View;)V

    .line 2542
    :goto_9e
    if-eqz p2, :cond_ef

    .line 2543
    const/high16 v2, -0x3b860000    # -1000.0f

    iget v0, p0, current_y:F

    sub-float v3, v7, v0

    const v4, 0x3fa66666    # 1.3f

    const/16 v5, 0x12c

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, doAnimation(Landroid/view/View;FFFIZ)V

    .line 2548
    :goto_b1
    iget v0, p0, current_y:F

    iget-object v1, p0, mScrollview:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, current_y:F

    .line 2550
    sget-boolean v0, mIsCoverOpen:Z

    if-nez v0, :cond_d5

    sget-boolean v0, mIsClearCover:Z

    if-nez v0, :cond_d5

    .line 2551
    iget-object v0, p0, mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 2552
    .local v8, "fllp":Landroid/widget/FrameLayout$LayoutParams;
    iget v11, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2553
    .local v11, "marginTopPixelSize":I
    iget v0, p0, current_y:F

    int-to-float v1, v11

    sub-float/2addr v0, v1

    iput v0, p0, current_y:F

    .line 2555
    .end local v8    # "fllp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v11    # "marginTopPixelSize":I
    :cond_d5
    const/4 v0, 0x1

    sput-boolean v0, mIsConfirmDlg:Z

    .line 2556
    return-void

    .line 2527
    .end local v9    # "imageView":Landroid/widget/ImageView;
    :cond_d9
    sget-object v0, SelectedItem:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->getLocationInWindow([I)V

    goto/16 :goto_39

    .line 2538
    .restart local v9    # "imageView":Landroid/widget/ImageView;
    :cond_e0
    iget-object v0, p0, mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    sget-object v1, SelectedItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/GlobalActionsFrameLayout;->hideAllView(Landroid/view/View;)V

    .line 2539
    iget-object v0, p0, mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const-string v1, "ConfirmPortrait"

    invoke-virtual {v0, v1}, Landroid/app/GlobalActionsFrameLayout;->checkOrientation(Ljava/lang/String;)V

    goto :goto_9e

    .line 2545
    :cond_ef
    const/high16 v2, -0x3b860000    # -1000.0f

    iget v0, p0, current_y:F

    sub-float v3, v7, v0

    const v4, 0x3fa66666    # 1.3f

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, doAnimation(Landroid/view/View;FFFIZ)V

    goto :goto_b1
.end method

.method private onToggleDatamode()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 3199
    sget-boolean v0, mNewFeatureForM:Z

    if-eqz v0, :cond_9

    .line 3200
    sput-boolean v4, mIsConfirmDlg:Z

    .line 3201
    sput-boolean v4, mIsConfirmLandDlg:Z

    .line 3203
    :cond_9
    iget-object v0, p0, mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$ToggleAction;->onPressAction()V

    .line 3204
    sget-boolean v0, mIsCoverOpen:Z

    if-nez v0, :cond_27

    .line 3205
    sget-boolean v0, sIsSecondConfirming:Z

    if-nez v0, :cond_2b

    .line 3206
    sget-object v1, sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 3207
    const/4 v0, 0x0

    :try_start_1a
    sput-boolean v0, sIsConfirming:Z

    .line 3208
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_28

    .line 3212
    :goto_1d
    invoke-direct {p0}, clearSCoverRequestStatus()V

    .line 3213
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3215
    :cond_27
    return-void

    .line 3208
    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0

    .line 3210
    :cond_2b
    sput-boolean v4, sIsSecondConfirming:Z

    goto :goto_1d
.end method

.method private prepareDialog()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 3057
    iget-object v2, p0, cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    .line 3061
    .local v0, "dataModeOn":Z
    if-eqz v0, :cond_126

    .line 3062
    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v2, p0, mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 3067
    :goto_d
    const-string/jumbo v2, "gsm.sim.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ABSENT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 3068
    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v2, p0, mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 3071
    :cond_20
    iget-object v2, p0, mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget-object v3, p0, mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 3072
    sget-boolean v2, mNewFeatureForM:Z

    if-eqz v2, :cond_32

    .line 3073
    iget v2, p0, mDataNetworkStringId:I

    iget-object v3, p0, mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-direct {p0, v2, v3}, updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 3090
    :cond_32
    iget-object v2, p0, mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget-object v3, p0, mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 3091
    sget-boolean v2, mNewFeatureForM:Z

    if-eqz v2, :cond_44

    .line 3092
    iget v2, p0, mAirplaneStringId:I

    iget-object v3, p0, mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-direct {p0, v2, v3}, updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 3097
    :cond_44
    iget-object v2, p0, mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    if-eqz v2, :cond_63

    .line 3098
    const-string v2, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v3, "getSealedState"

    iget-object v4, p0, mTempStringArray:[Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12c

    .line 3099
    iget-object v2, p0, mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    sget-object v3, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 3108
    :cond_63
    :goto_63
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_135

    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_6d
    iput-object v2, p0, mEmergencyState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 3109
    iget-object v2, p0, mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget-object v3, p0, mEmergencyState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 3112
    iget-object v2, p0, mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    .line 3113
    sget-boolean v2, mNewFeatureForM:Z

    if-eqz v2, :cond_86

    .line 3114
    iget v2, p0, mEmergencyStringId:I

    iget-object v3, p0, mEmergencyState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-direct {p0, v2, v3}, updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 3121
    :cond_86
    const-string v2, "GlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "prepareDialog : mIsCoverOpen"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, mIsCoverOpen:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3122
    iget-object v2, p0, mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v2, :cond_b4

    .line 3123
    sget-boolean v2, mIsCoverOpen:Z

    if-eqz v2, :cond_139

    .line 3127
    iget-object v2, p0, mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7de

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 3141
    :cond_b4
    :goto_b4
    sget-boolean v2, mNewFeatureForM:Z

    if-eqz v2, :cond_ca

    iget-object v2, p0, mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v2, :cond_ca

    .line 3142
    iget-object v2, p0, mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3146
    :cond_ca
    iget-boolean v2, p0, mShowSilentToggle:Z

    if-eqz v2, :cond_dc

    .line 3147
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3148
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3152
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_dc
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 3153
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3154
    const-string v2, "android.intent.action.SUBSCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3155
    const-string v2, "android.intent.action.SUBSCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3156
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3157
    const-string v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3159
    const-string v2, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3160
    const-string v2, "com.samsung.settings.action.talkback_toggled"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3161
    const-string v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3163
    const-string v2, "CTC"

    sget-object v3, mSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11e

    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isMultiSIMDevice()Z

    move-result v2

    if-eqz v2, :cond_11e

    .line 3164
    const-string v2, "ACTION_DUALMODE_SETTING"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3166
    :cond_11e
    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3167
    return-void

    .line 3064
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_126
    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v2, p0, mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto/16 :goto_d

    .line 3101
    :cond_12c
    iget-object v2, p0, mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    sget-object v3, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    goto/16 :goto_63

    .line 3108
    :cond_135
    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto/16 :goto_6d

    .line 3130
    :cond_139
    iget-object v2, p0, mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x833

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 3132
    iget-object v2, p0, mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v2, :cond_161

    iget-object v2, p0, mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_161

    .line 3133
    iget-object v2, p0, mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_b4

    .line 3134
    :cond_161
    sget-boolean v2, mIsClearCover:Z

    if-nez v2, :cond_b4

    .line 3135
    iget-object v2, p0, mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x1060142

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto/16 :goto_b4
.end method

.method private registerPhoneStateListener(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 5226
    const-string/jumbo v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, telephonyManager:Landroid/telephony/TelephonyManager;

    .line 5227
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    iput v3, p0, mPhoneCount:I

    .line 5228
    const-string v3, "GlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerPhoneStateListener: sim# "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, mPhoneCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5229
    iget v3, p0, mPhoneCount:I

    new-array v3, v3, [Landroid/telephony/PhoneStateListener;

    iput-object v3, p0, mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 5230
    iget v3, p0, mPhoneCount:I

    new-array v3, v3, [I

    iput-object v3, p0, mMSimServiceState:[I

    .line 5231
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3f
    iget v3, p0, mPhoneCount:I

    if-ge v0, v3, :cond_a9

    .line 5232
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 5234
    .local v2, "subIdtemp":[I
    const-string v3, "GlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerPhoneStateListener subId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5235
    if-eqz v2, :cond_80

    .line 5236
    aget v1, v2, v6

    .line 5237
    .local v1, "subId":I
    if-lez v1, :cond_83

    .line 5238
    iget-object v3, p0, mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1, v0}, getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v4

    aput-object v4, v3, v0

    .line 5239
    iget-object v3, p0, telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 5248
    :goto_7c
    iget-object v3, p0, mMSimServiceState:[I

    aput v6, v3, v0

    .line 5231
    .end local v1    # "subId":I
    :cond_80
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 5241
    .restart local v1    # "subId":I
    :cond_83
    invoke-direct {p0, v6}, isSimCardInserted(I)Z

    move-result v3

    if-nez v3, :cond_a3

    invoke-direct {p0, v7}, isSimCardInserted(I)Z

    move-result v3

    if-nez v3, :cond_a3

    if-nez v0, :cond_a3

    .line 5242
    iget-object v3, p0, mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1, v0}, getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v4

    aput-object v4, v3, v0

    .line 5243
    iget-object v3, p0, telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_7c

    .line 5245
    :cond_a3
    iget-object v3, p0, mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    goto :goto_7c

    .line 5251
    .end local v1    # "subId":I
    .end local v2    # "subIdtemp":[I
    :cond_a9
    return-void
.end method

.method private restoreQuickpanelBackground()V
    .registers 2

    .prologue
    .line 4955
    const-string v0, "GlobalActions"

    invoke-direct {p0, v0}, restoreQuickpanelBackground(Ljava/lang/String;)V

    .line 4956
    return-void
.end method

.method private restoreQuickpanelBackground(Ljava/lang/String;)V
    .registers 5
    .param p1, "sender"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 4959
    sget-boolean v1, mIsCoverOpen:Z

    if-nez v1, :cond_9

    iget-object v1, p0, mContext:Landroid/content/Context;

    if-nez v1, :cond_a

    .line 4966
    :cond_9
    :goto_9
    return-void

    .line 4960
    :cond_a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4961
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4962
    const-string/jumbo v1, "suppressCoverUI"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4963
    const-string/jumbo v1, "miniModeUI"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4964
    const-string/jumbo v1, "sender"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4965
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_9
.end method

.method private unregisterPhoneStateListener()V
    .registers 5

    .prologue
    .line 5254
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, mPhoneCount:I

    if-ge v0, v1, :cond_18

    .line 5255
    iget-object v1, p0, mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_15

    .line 5256
    iget-object v1, p0, telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 5254
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5259
    :cond_18
    return-void
.end method

.method private updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V
    .registers 16
    .param p1, "whichItem"    # I
    .param p2, "state"    # Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .prologue
    .line 5483
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 5484
    .local v9, "whichItemString":Ljava/lang/String;
    sget-object v10, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    if-eq p2, v10, :cond_12

    sget-object v10, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->TurningOn:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    if-ne p2, v10, :cond_c5

    :cond_12
    const/4 v6, 0x1

    .line 5486
    .local v6, "on":Z
    :goto_13
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_c8

    .line 5487
    iget-object v0, p0, mLinearLayout:Landroid/widget/LinearLayout;

    .line 5492
    .local v0, "actionsLayout":Landroid/view/ViewGroup;
    :goto_24
    if-eqz v0, :cond_114

    .line 5493
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 5494
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2b
    if-ge v2, v1, :cond_114

    .line 5495
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 5497
    .local v8, "view":Landroid/view/View;
    const v10, 0x1020006

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 5498
    .local v4, "imageView":Landroid/widget/ImageView;
    const v10, 0x102000b

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 5499
    .local v5, "messageView":Landroid/widget/TextView;
    const v10, 0x10203ad

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 5500
    .local v7, "statusView":Landroid/widget/TextView;
    const v10, 0x10203af

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 5503
    .local v3, "imageFrameLayout":Landroid/widget/FrameLayout;
    if-eqz v5, :cond_c1

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    if-eqz v10, :cond_c1

    .line 5505
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c1

    .line 5506
    if-eqz v7, :cond_c1

    .line 5507
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget v11, p0, mEmergencyStringId:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d1

    .line 5508
    if-eqz v6, :cond_cc

    iget-object v10, p0, mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget v10, v10, Lcom/android/server/policy/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    :goto_81
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    .line 5514
    :cond_84
    :goto_84
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5515
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10409b9

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5494
    :cond_c1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2b

    .line 5484
    .end local v0    # "actionsLayout":Landroid/view/ViewGroup;
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    .end local v3    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .end local v4    # "imageView":Landroid/widget/ImageView;
    .end local v5    # "messageView":Landroid/widget/TextView;
    .end local v6    # "on":Z
    .end local v7    # "statusView":Landroid/widget/TextView;
    .end local v8    # "view":Landroid/view/View;
    :cond_c5
    const/4 v6, 0x0

    goto/16 :goto_13

    .line 5489
    .restart local v6    # "on":Z
    :cond_c8
    iget-object v0, p0, mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    .restart local v0    # "actionsLayout":Landroid/view/ViewGroup;
    goto/16 :goto_24

    .line 5508
    .restart local v1    # "childCount":I
    .restart local v2    # "i":I
    .restart local v3    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .restart local v4    # "imageView":Landroid/widget/ImageView;
    .restart local v5    # "messageView":Landroid/widget/TextView;
    .restart local v7    # "statusView":Landroid/widget/TextView;
    .restart local v8    # "view":Landroid/view/View;
    :cond_cc
    iget-object v10, p0, mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget v10, v10, Lcom/android/server/policy/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    goto :goto_81

    .line 5509
    :cond_d1
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget v11, p0, mAirplaneStringId:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f2

    .line 5510
    if-eqz v6, :cond_ed

    iget-object v10, p0, mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget v10, v10, Lcom/android/server/policy/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    :goto_e9
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_84

    :cond_ed
    iget-object v10, p0, mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget v10, v10, Lcom/android/server/policy/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    goto :goto_e9

    .line 5511
    :cond_f2
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget v11, p0, mDataNetworkStringId:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_84

    .line 5512
    if-eqz v6, :cond_10f

    iget-object v10, p0, mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget v10, v10, Lcom/android/server/policy/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    :goto_10a
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_84

    :cond_10f
    iget-object v10, p0, mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget v10, v10, Lcom/android/server/policy/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    goto :goto_10a

    .line 5527
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    .end local v3    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .end local v4    # "imageView":Landroid/widget/ImageView;
    .end local v5    # "messageView":Landroid/widget/TextView;
    .end local v7    # "statusView":Landroid/widget/TextView;
    .end local v8    # "view":Landroid/view/View;
    :cond_114
    return-void
.end method

.method private virtualDismissInSCover()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 4968
    sget-boolean v1, mIsCoverOpen:Z

    if-nez v1, :cond_9

    iget-object v1, p0, mContext:Landroid/content/Context;

    if-nez v1, :cond_a

    .line 4985
    :cond_9
    :goto_9
    return-void

    .line 4969
    :cond_a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4970
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4971
    const-string/jumbo v1, "suppressCoverUI"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4972
    const-string/jumbo v1, "miniModeUI"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4973
    const-string/jumbo v1, "sender"

    const-string v2, "GlobalActions"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4974
    iget-object v1, p0, mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v1, :cond_3c

    iget-object v1, p0, mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 4975
    const-string/jumbo v1, "sender"

    const-string v2, "GlobalActions"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4977
    :cond_3c
    iget-object v1, p0, mConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_50

    iget-object v1, p0, mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 4978
    const-string/jumbo v1, "sender"

    const-string v2, "GlobalActions$ConfirmDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4980
    :cond_50
    iget-object v1, p0, mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;

    if-eqz v1, :cond_64

    iget-object v1, p0, mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;

    invoke-virtual {v1}, Landroid/app/GlobalActionsSViewCoverDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 4981
    const-string/jumbo v1, "sender"

    const-string v2, "GlobalActions$ConfirmDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4983
    :cond_64
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4984
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_9
.end method

.method private virtualDismissInSCover(Ljava/lang/String;)V
    .registers 7
    .param p1, "sender"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 4987
    sget-boolean v1, mIsCoverOpen:Z

    if-nez v1, :cond_9

    iget-object v1, p0, mContext:Landroid/content/Context;

    if-nez v1, :cond_a

    .line 4995
    :cond_9
    :goto_9
    return-void

    .line 4988
    :cond_a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4989
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4990
    const-string/jumbo v1, "suppressCoverUI"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4991
    const-string/jumbo v1, "miniModeUI"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4992
    const-string/jumbo v1, "sender"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4993
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4994
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_9
.end method


# virtual methods
.method adjustBottomView()V
    .registers 12

    .prologue
    const v10, 0x10203a9

    const v9, 0x10203a8

    const v8, 0x10203a6

    const/16 v7, 0x8

    .line 5339
    const/4 v4, 0x0

    .line 5340
    .local v4, "showfl":Landroid/widget/FrameLayout;
    const/4 v2, 0x0

    .line 5341
    .local v2, "hidefl":Landroid/widget/FrameLayout;
    const/4 v1, 0x0

    .line 5342
    .local v1, "dividerfl":Landroid/widget/FrameLayout;
    const/4 v0, 0x0

    .line 5343
    .local v0, "dividerSViewfl":Landroid/widget/FrameLayout;
    const/4 v3, 0x0

    .line 5344
    .local v3, "lllp":Landroid/widget/LinearLayout$LayoutParams;
    sget-boolean v5, mIsBugReportEnable:Z

    if-eqz v5, :cond_4e

    sget-boolean v5, mIsCancelEnable:Z

    if-nez v5, :cond_4e

    .line 5345
    sget-boolean v5, mIsCoverOpen:Z

    if-nez v5, :cond_24

    sget-boolean v5, mIsCoverOpen:Z

    if-nez v5, :cond_59

    sget-boolean v5, mIsClearCover:Z

    if-eqz v5, :cond_59

    .line 5346
    :cond_24
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, p0, mBottomViewSingleItemWidth:I

    iget v6, p0, mBottomViewSingleItemHeight:I

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5347
    .restart local v3    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    invoke-virtual {v5, v9}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "dividerfl":Landroid/widget/FrameLayout;
    check-cast v1, Landroid/widget/FrameLayout;

    .line 5348
    .restart local v1    # "dividerfl":Landroid/widget/FrameLayout;
    iget-object v5, p0, mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    invoke-virtual {v5, v8}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "hidefl":Landroid/widget/FrameLayout;
    check-cast v2, Landroid/widget/FrameLayout;

    .line 5349
    .restart local v2    # "hidefl":Landroid/widget/FrameLayout;
    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5350
    iget-object v5, p0, mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    invoke-virtual {v5, v10}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "showfl":Landroid/widget/FrameLayout;
    check-cast v4, Landroid/widget/FrameLayout;

    .line 5351
    .restart local v4    # "showfl":Landroid/widget/FrameLayout;
    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5352
    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5401
    :cond_4e
    :goto_4e
    iget-object v5, p0, mBottomlayout:Landroid/widget/LinearLayout;

    new-instance v6, Lcom/android/server/policy/GlobalActions$43;

    invoke-direct {v6, p0}, Lcom/android/server/policy/GlobalActions$43;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5416
    return-void

    .line 5354
    :cond_59
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, p0, mBottomViewSingleCancelItemWidth:I

    iget v6, p0, mBottomViewSingleItemHeight:I

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5355
    .restart local v3    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    invoke-virtual {v5, v9}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "dividerSViewfl":Landroid/widget/FrameLayout;
    check-cast v0, Landroid/widget/FrameLayout;

    .line 5356
    .restart local v0    # "dividerSViewfl":Landroid/widget/FrameLayout;
    iget-object v5, p0, mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    invoke-virtual {v5, v8}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "hidefl":Landroid/widget/FrameLayout;
    check-cast v2, Landroid/widget/FrameLayout;

    .line 5357
    .restart local v2    # "hidefl":Landroid/widget/FrameLayout;
    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5358
    iget-object v5, p0, mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    invoke-virtual {v5, v10}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "showfl":Landroid/widget/FrameLayout;
    check-cast v4, Landroid/widget/FrameLayout;

    .line 5359
    .restart local v4    # "showfl":Landroid/widget/FrameLayout;
    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5360
    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_4e
.end method

.method public airplaneModeClickAction(Z)V
    .registers 7
    .param p1, "isShowingConfirmMessage"    # Z

    .prologue
    const/4 v4, 0x0

    .line 3371
    iget-object v0, p0, mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$ToggleAction;->onPressAction()V

    .line 3372
    sget-boolean v0, mIsCoverOpen:Z

    if-nez v0, :cond_1f

    .line 3373
    sget-boolean v0, sIsSecondConfirming:Z

    if-nez v0, :cond_79

    .line 3374
    sget-object v1, sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 3375
    const/4 v0, 0x0

    :try_start_12
    sput-boolean v0, sIsConfirming:Z

    .line 3376
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_76

    .line 3380
    :goto_15
    invoke-direct {p0}, clearSCoverRequestStatus()V

    .line 3381
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3384
    :cond_1f
    iget-boolean v0, p0, isVZWOperatorAirplaneModeONReasonUSB3:Z

    if-eqz v0, :cond_52

    .line 3385
    iget-object v0, p0, mUsbManager:Landroid/hardware/usb/UsbManager;

    if-eqz v0, :cond_7c

    .line 3386
    iget-object v0, p0, mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->isUsb30Available()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 3388
    iget-object v0, p0, mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, v4}, Landroid/hardware/usb/UsbManager;->setUsb30Mode(Z)V

    .line 3389
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on_reason_usb3"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3390
    sget-boolean v0, SAFE_DEBUG:Z

    if-eqz v0, :cond_52

    .line 3391
    const-string v0, "GlobalActions"

    const-string v1, "USB 3.0 is disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3399
    :cond_52
    :goto_52
    if-eqz p1, :cond_75

    iget-boolean v0, p0, mIsSetAirplaneOnMessageVZW:Z

    if-nez v0, :cond_5c

    iget-boolean v0, p0, mIsSetAirplaneOnMessageCHINA:Z

    if-eqz v0, :cond_75

    .line 3400
    :cond_5c
    iget-object v0, p0, mDontShowCheckbox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_75

    iget-object v0, p0, mDontShowCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 3401
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tw_globalactions_dont_show_again"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3404
    :cond_75
    return-void

    .line 3376
    :catchall_76
    move-exception v0

    :try_start_77
    monitor-exit v1
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    throw v0

    .line 3378
    :cond_79
    sput-boolean v4, sIsSecondConfirming:Z

    goto :goto_15

    .line 3394
    :cond_7c
    sget-boolean v0, SAFE_DEBUG:Z

    if-eqz v0, :cond_52

    .line 3395
    const-string v0, "GlobalActions"

    const-string v1, "USB manager is not created hence USB 3.0 connection can not be terminated."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52
.end method

.method public bottomViewOnTouch(IZZ)Z
    .registers 7
    .param p1, "action"    # I
    .param p2, "isPortrait"    # Z
    .param p3, "isConfirm"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5427
    if-nez p1, :cond_1d

    .line 5428
    sget-boolean v2, mAccessibiltyShortcutEnabled:Z

    if-eqz v2, :cond_b

    if-nez p3, :cond_b

    .line 5458
    :goto_a
    return v0

    .line 5431
    :cond_b
    if-eqz p3, :cond_17

    .line 5432
    if-eqz p2, :cond_13

    .line 5433
    invoke-direct {p0, v0}, onClickForHidePortraitConfirmDialog(Z)V

    goto :goto_a

    .line 5435
    :cond_13
    invoke-direct {p0, v0}, onClickForHideLandscapeConfirmDialog(Z)V

    goto :goto_a

    .line 5438
    :cond_17
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_a

    .line 5444
    :cond_1d
    if-ne p1, v0, :cond_29

    .line 5445
    sget-boolean v0, mAccessibiltyShortcutEnabled:Z

    if-eqz v0, :cond_29

    .line 5446
    if-eqz p3, :cond_2e

    .line 5447
    if-eqz p2, :cond_2b

    .line 5448
    sput-boolean v1, mIsConfirmDlg:Z

    :cond_29
    :goto_29
    move v0, v1

    .line 5458
    goto :goto_a

    .line 5450
    :cond_2b
    sput-boolean v1, mIsConfirmLandDlg:Z

    goto :goto_29

    .line 5453
    :cond_2e
    sput-boolean v1, mAccessibiltyShortcutEnabled:Z

    .line 5454
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_29
.end method

.method calculateDescritionViewHeight(Landroid/view/View;I)V
    .registers 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "diff"    # I

    .prologue
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 5325
    const v2, 0x10203ad

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 5326
    .local v1, "statusView":Landroid/widget/TextView;
    iget-object v2, p0, mDescriptionlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 5327
    .local v0, "fllp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v2, -0x2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 5328
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4d

    .line 5329
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p0, v2}, item_yposition(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-double v4, v3

    mul-double/2addr v4, v6

    int-to-double v6, p2

    const-wide v8, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v3, v4

    add-int/2addr v2, v3

    iget v3, p0, mMessageViewPaddingBottom:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 5330
    iget v2, p0, mItemMaxWidth:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 5335
    :goto_47
    iget-object v2, p0, mDescriptionlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 5336
    return-void

    .line 5332
    :cond_4d
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0, v2}, item_xposition(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-double v4, v3

    mul-double/2addr v4, v6

    int-to-double v6, p2

    const-wide v8, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v3, v4

    add-int/2addr v2, v3

    iget v3, p0, mMessageViewPaddingBottom:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 5333
    iget v2, p0, mItemMaxWidthLand:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_47
.end method

.method public checkOnAirplaneConfirmShow()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 545
    const-string v0, "GlobalActions"

    const-string v1, "checkOnAirplaneConfirmShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tw_globalactions_dont_show_again"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_35

    .line 547
    iput-boolean v2, p0, mShowOnAirplaneConfirm:Z

    .line 551
    :goto_1a
    const-string v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkOnAirplaneConfirmShow : mShowOnAirplaneConfirm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mShowOnAirplaneConfirm:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    return-void

    .line 549
    :cond_35
    iput-boolean v3, p0, mShowOnAirplaneConfirm:Z

    goto :goto_1a
.end method

.method public hasTSafeLock()Z
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 5144
    const/4 v3, 0x0

    .line 5145
    .local v3, "result":Z
    const-string v0, "com.skt.t_smart_charge"

    .line 5147
    .local v0, "TLOCK_PKG_NAME":Ljava/lang/String;
    :try_start_4
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 5148
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_16

    .line 5149
    const-string v6, "com.skt.t_smart_charge"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_1a

    move-result-object v4

    .line 5150
    .local v4, "tLock":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_18

    const/4 v3, 0x1

    .end local v4    # "tLock":Landroid/content/pm/ApplicationInfo;
    :cond_16
    :goto_16
    move v5, v3

    .line 5155
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_17
    return v5

    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "tLock":Landroid/content/pm/ApplicationInfo;
    :cond_18
    move v3, v5

    .line 5150
    goto :goto_16

    .line 5152
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "tLock":Landroid/content/pm/ApplicationInfo;
    :catch_1a
    move-exception v1

    .line 5153
    .local v1, "ex":Ljava/lang/Exception;
    goto :goto_17
.end method

.method public initStrings()V
    .registers 3

    .prologue
    .line 535
    iget-object v0, p0, mContext:Landroid/content/Context;

    const v1, 0x104097d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mUnablePowerOff:Ljava/lang/String;

    .line 536
    iget-object v0, p0, mContext:Landroid/content/Context;

    const v1, 0x104097e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mUnableAirplanemode:Ljava/lang/String;

    .line 537
    iget-object v0, p0, mContext:Landroid/content/Context;

    const v1, 0x104097f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mLDUWarning:Ljava/lang/String;

    .line 539
    iget-object v0, p0, mContext:Landroid/content/Context;

    const v1, 0x1040980

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mUnablePowerOffForFMM:Ljava/lang/String;

    .line 540
    iget-object v0, p0, mContext:Landroid/content/Context;

    const v1, 0x1040981

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mUnableRestartForFMM:Ljava/lang/String;

    .line 541
    iget-object v0, p0, mContext:Landroid/content/Context;

    const v1, 0x1040982

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mUnableEmergencyforFMM:Ljava/lang/String;

    .line 542
    return-void
.end method

.method public insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;

    .prologue
    .line 5003
    sget-boolean v2, SURVEY_LOG:Z

    if-eqz v2, :cond_5b

    .line 5004
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 5005
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5006
    const-string/jumbo v2, "feature"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5007
    const-string/jumbo v2, "extra"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5010
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5011
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5012
    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5013
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5014
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5015
    sget-boolean v2, SAFE_DEBUG:Z

    if-eqz v2, :cond_5b

    .line 5016
    const-string v2, "GlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insetLog feature="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,extra="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5019
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_5b
    return-void
.end method

.method public isPortrait()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 5419
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_10

    .line 5422
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isTouchInside(Landroid/view/View;II)Z
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 5462
    const/4 v5, 0x2

    new-array v0, v5, [I

    .line 5463
    .local v0, "location":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 5465
    aget v5, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int v2, v5, v6

    .line 5466
    .local v2, "realRight":I
    aget v5, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int v1, v5, v6

    .line 5467
    .local v1, "realBottom":I
    aget v5, v0, v4

    if-lt p2, v5, :cond_25

    if-gt p2, v2, :cond_25

    aget v5, v0, v3

    if-lt p3, v5, :cond_25

    if-gt p3, v1, :cond_25

    .line 5469
    .local v3, "result":Z
    :goto_24
    return v3

    .end local v3    # "result":Z
    :cond_25
    move v3, v4

    .line 5467
    goto :goto_24
.end method

.method item_xposition(I)I
    .registers 4
    .param p1, "item_width"    # I

    .prologue
    .line 5303
    iget-object v0, p0, mContext:Landroid/content/Context;

    if-eqz v0, :cond_27

    iget-object v0, p0, mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v0, :cond_27

    .line 5304
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2d

    .line 5305
    iget-object v0, p0, mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, displaywidth:I

    .line 5310
    :cond_27
    :goto_27
    iget v0, p0, displaywidth:I

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    return v0

    .line 5307
    :cond_2d
    iget-object v0, p0, mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, displaywidth:I

    goto :goto_27
.end method

.method item_yposition(I)I
    .registers 4
    .param p1, "item_height"    # I

    .prologue
    .line 5314
    iget-object v0, p0, mContext:Landroid/content/Context;

    if-eqz v0, :cond_27

    iget-object v0, p0, mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v0, :cond_27

    .line 5315
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2d

    .line 5316
    iget-object v0, p0, mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, displayheight:I

    .line 5321
    :cond_27
    :goto_27
    iget v0, p0, displayheight:I

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    return v0

    .line 5318
    :cond_2d
    iget-object v0, p0, mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, displayheight:I

    goto :goto_27
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 3457
    sget-boolean v0, mNewFeatureForM:Z

    if-nez v0, :cond_33

    .line 3458
    iget-object v0, p0, mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/policy/GlobalActions$SilentModeAction;

    if-nez v0, :cond_11

    .line 3460
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3462
    :cond_11
    const-string v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick  which="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3463
    iget-object v0, p0, mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/GlobalActions$Action;->onPress()V

    .line 3465
    :cond_33
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v3, 0x0

    .line 3419
    iget-boolean v1, p0, mShowSilentToggle:Z

    if-eqz v1, :cond_c

    .line 3421
    :try_start_5
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_c} :catch_2b

    .line 3428
    :cond_c
    :goto_c
    sget-boolean v1, mIsAirplaneConfirmDialogExist:Z

    if-nez v1, :cond_17

    .line 3430
    :try_start_10
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_17} :catch_32

    .line 3437
    :cond_17
    :goto_17
    sget-boolean v1, mIsCoverOpen:Z

    if-nez v1, :cond_26

    .line 3438
    sget-boolean v1, sIsSecondConfirming:Z

    if-nez v1, :cond_3c

    .line 3439
    sget-object v2, sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v2

    .line 3440
    const/4 v1, 0x0

    :try_start_23
    sput-boolean v1, sIsConfirming:Z

    .line 3441
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_39

    .line 3447
    :cond_26
    :goto_26
    sput-boolean v3, mIsConfirmDlg:Z

    .line 3448
    sput-boolean v3, mIsConfirmLandDlg:Z

    .line 3449
    return-void

    .line 3422
    :catch_2b
    move-exception v0

    .line 3424
    .local v0, "ie":Ljava/lang/IllegalArgumentException;
    const-string v1, "GlobalActions"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 3431
    .end local v0    # "ie":Ljava/lang/IllegalArgumentException;
    :catch_32
    move-exception v0

    .line 3433
    .restart local v0    # "ie":Ljava/lang/IllegalArgumentException;
    const-string v1, "GlobalActions"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 3441
    .end local v0    # "ie":Ljava/lang/IllegalArgumentException;
    :catchall_39
    move-exception v1

    :try_start_3a
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v1

    .line 3443
    :cond_3c
    sput-boolean v3, sIsSecondConfirming:Z

    goto :goto_26
.end method

.method public requestUpdateWindowBlur(F)V
    .registers 4
    .param p1, "blurValue"    # F

    .prologue
    .line 5473
    iget-object v1, p0, mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v1, :cond_19

    .line 5474
    iget-object v1, p0, mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 5475
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 5476
    iget-object v1, p0, mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 5478
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_19
    return-void
.end method

.method public showDialog(ZZ)V
    .registers 10
    .param p1, "keyguardShowing"    # Z
    .param p2, "isDeviceProvisioned"    # Z

    .prologue
    const/4 v4, 0x0

    .line 559
    const-string v3, "com.android.service.GlobalAction"

    const-string v5, "0001"

    const-string/jumbo v6, "null"

    invoke-virtual {p0, v3, v5, v6}, insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-object v3, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v3

    iput-object v3, p0, mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 567
    invoke-direct {p0}, isGlobalActionConfirming()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 622
    :goto_19
    return-void

    .line 574
    :cond_1a
    invoke-virtual {p0}, initStrings()V

    .line 577
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v5, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v3, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 578
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    .line 579
    .local v0, "emMgr":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isModifying()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 580
    const-string v3, "GlobalActions"

    const-string v4, "Cannot use Global Action. because Emergency mode Entering.."

    invoke-static {v3, v4}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 585
    .end local v0    # "emMgr":Lcom/sec/android/emergencymode/EmergencyManager;
    :cond_3d
    sput-boolean v4, mIsAirplaneConfirmDialogExist:Z

    .line 586
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string/jumbo v5, "keyguard"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, mKeyguardManager:Landroid/app/KeyguardManager;

    .line 587
    iget-object v3, p0, mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v3

    if-eqz v3, :cond_c2

    iget-object v3, p0, mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    if-eqz v3, :cond_c2

    const/4 v3, 0x1

    :goto_5d
    iput-boolean v3, p0, mIsSecureKeyguard:Z

    .line 589
    iput-boolean p1, p0, mKeyguardShowing:Z

    .line 591
    iget-boolean v3, p0, mKeyguardShowing:Z

    if-nez v3, :cond_a8

    .line 593
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v2

    .line 594
    .local v2, "versionInfo":Landroid/os/Bundle;
    if-eqz v2, :cond_a8

    const-string v3, "2.0"

    const-string/jumbo v5, "version"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a8

    .line 595
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string/jumbo v5, "persona"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    .line 596
    .local v1, "pm":Landroid/os/PersonaManager;
    iget-boolean v3, p0, mKeyguardShowing:Z

    invoke-virtual {v1}, Landroid/os/PersonaManager;->getKeyguardShowState()Z

    move-result v5

    or-int/2addr v3, v5

    iput-boolean v3, p0, mKeyguardShowing:Z

    .line 597
    const-string v3, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Oring mKeyguardShowing and pm.getKeyguardShowState()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, mKeyguardShowing:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    .end local v1    # "pm":Landroid/os/PersonaManager;
    .end local v2    # "versionInfo":Landroid/os/Bundle;
    :cond_a8
    iput-boolean p2, p0, mDeviceProvisioned:Z

    .line 604
    iget-object v3, p0, mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v3, :cond_c4

    .line 605
    iget-object v3, p0, mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->dismiss()V

    .line 606
    const/4 v3, 0x0

    iput-object v3, p0, mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    .line 607
    sput-boolean v4, mIsConfirmDlg:Z

    .line 608
    sput-boolean v4, mIsConfirmLandDlg:Z

    .line 610
    iget-object v3, p0, mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_19

    :cond_c2
    move v3, v4

    .line 587
    goto :goto_5d

    .line 614
    :cond_c4
    const-string v3, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showDialog() : mIsFirstCreated = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, mIsFirstCreated:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    sget-boolean v3, mIsFirstCreated:Z

    if-eqz v3, :cond_f0

    .line 616
    const-string v3, "GlobalActions"

    const-string/jumbo v5, "showDialog() : call checkAirplaneModeOnOff"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-direct {p0}, checkAirplaneModeOnOff()V

    .line 618
    sput-boolean v4, mIsFirstCreated:Z

    .line 620
    :cond_f0
    invoke-direct {p0}, handleShow()V

    goto/16 :goto_19
.end method

.method public showErrorMessage(I)V
    .registers 4
    .param p1, "resId"    # I

    .prologue
    .line 5022
    if-eqz p1, :cond_c

    .line 5023
    iget-object v0, p0, mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5025
    :cond_c
    return-void
.end method
