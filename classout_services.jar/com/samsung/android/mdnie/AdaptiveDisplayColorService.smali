.class public Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;
.super Ljava/lang/Object;
.source "AdaptiveDisplayColorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;,
        Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$SettingsObserver;,
        Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScreenWatchingReceiver;
    }
.end annotation


# static fields
.field private static final EAD_ON:Ljava/lang/String; = "sys.adaptivedisplay.eadon"

.field private static final MSCS_ON:Ljava/lang/String; = "sys.mdniecontrolservice.mscon"

.field private static final TAG:Ljava/lang/String; = "AdaptiveDisplayColorService"


# instance fields
.field private final ACTION_NOTIFY_MULTIWINDOW_STATUS:Ljava/lang/String;

.field private final ANIMATION_DEBOUNCE_MILLIS:J

.field private final ANIMATION_MAX_COUNT:F

.field private final APP_MANAGER_NAME:Ljava/lang/String;

.field private final BROWSER_MODE_DEBOUNCE_MILLIS:J

.field private final BROWSER_NAMES:[Ljava/lang/String;

.field private final DEBUG:Z

.field private final EXTRA_MULTIWINDOW_RUNNING:Ljava/lang/String;

.field private final FOREGROUND_RESCAN_DEBOUNCE_MILLIS:J

.field private final FOREGROUND_THREAD_DELAY_MILLIS:J

.field private final LIGHT_SENSOR_RAW_DATA_PATH:Ljava/lang/String;

.field private final LIGHT_SENSOR_READ_DELAY:I

.field private final MAX_RGB_SENSOR_COUNT:I

.field private final MDNIE_BROWSER_MODE_NUMBER:Ljava/lang/String;

.field private final MDNIE_READING_MODE_NUMBER:Ljava/lang/String;

.field private final MDNIE_VIDEO_MODE_NUMBER:Ljava/lang/String;

.field private final MEDIA_PLAYER_NAMES:[Ljava/lang/String;

.field private final MSG_ANIMATE_SCR_RGB:I

.field private final MSG_FOREGROUND_APP:I

.field private final MSG_RESCAN_FOREGROUND_APP:I

.field private final MSG_RGB_DEBOUNCE:I

.field private final MSG_SEND_RGB_AVERAGE:I

.field private final MSG_SET_BROWSER_MODE:I

.field private final MSG_SET_VIDEO_MODE:I

.field private final MSG_TERMINATE_SCR_RGB:I

.field private final MSG_TERMINATE_VIDEO_MODE:I

.field private final MULTI_SCREEN_DEBOUNCE_MILLIS:J

.field private final NUMBER_COEFFICIENT_VALUE:I

.field private final RGB_DEBOUNCE_MILLIS:J

.field private final RGB_FLOAT_MAX:F

.field private final RGB_INTEGER_MAX:I

.field private final SBROWSER_NAME:Ljava/lang/String;

.field private final SCENARIO_FILE_PATH:Ljava/lang/String;

.field private final SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

.field private final SCREEN_MODE_SETTING:Ljava/lang/String;

.field private final SCR_FILE_PATH:Ljava/lang/String;

.field private final SETUP_WIZARD_NAME:Ljava/lang/String;

.field private final SSRM_INTENT_MDNIE_SETTING:Ljava/lang/String;

.field private final TEST_RGB_EXPONENTIAL:I

.field private final VIDEO_MODE_DEBOUNCE_MILLIS:J

.field private exitHomeDelay:I

.field private exitHomeDelayTime:J

.field private exitMenuDelay:I

.field private exitMenuDelayTime:J

.field private foregroundDelayTime:J

.field private isLockScreenOn:Z

.field private mAceessibilityEnabled:Z

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAutoModeEnabled:Z

.field private mAvgB:F

.field private mAvgG:F

.field private mAvgR:F

.field private mBrowserScenarioEnabled:Z

.field private mCoefficientValueArray:[F

.field private mColorBlindEnabled:Z

.field private final mContext:Landroid/content/Context;

.field private mCountAnimationValue:I

.field private mCountSensorValue:I

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverState:Z

.field private mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mDefaultAdjustB:I

.field private mDefaultAdjustG:I

.field private mDefaultAdjustR:I

.field private mDefaultB:I

.field private mDefaultEbookB:I

.field private mDefaultEbookG:I

.field private mDefaultEbookR:I

.field private mDefaultG:I

.field private mDefaultR:I

.field private mDuration:I

.field private mEBookScenarioIntented:Z

.field private mEbookAdjustB:I

.field private mEbookAdjustG:I

.field private mEbookAdjustR:I

.field private mEbookScenarioEnabled:Z

.field private mEnableCondition:Z

.field private mEnvironmentDisplayColorServiceEnable:Z

.field private mFinalIntAvgB:I

.field private mFinalIntAvgG:I

.field private mFinalIntAvgR:I

.field private mForegroundThreadWork:Z

.field private mGreyScaleModeEnabled:Z

.field private mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIActivityManager:Landroid/app/IActivityManager;

.field private mIsFirstStart:Z

.field private mLastAvgB:F

.field private mLastAvgG:F

.field private mLastAvgR:F

.field private mLastChangedRgbTime:J

.field private mLightSensorB:I

.field private mLightSensorDelay:I

.field private mLightSensorG:I

.field private mLightSensorR:I

.field private mMultiWindowOn:Z

.field private mNegativeColorEnabled:Z

.field private mPowerSavingEnabled:Z

.field private mPrevContorlZone:I

.field private mPrevIntAvgB:I

.field private mPrevIntAvgG:I

.field private mPrevIntAvgR:I

.field mProcessObserver:Landroid/app/IProcessObserver;

.field private mRgbSensor:Landroid/hardware/Sensor;

.field private mRgbSensorListener:Landroid/hardware/SensorEventListener;

.field private mRgbThreshold:F

.field private mSContextListener:Landroid/hardware/scontext/SContextListener;

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mScrFileExists:Z

.field private mScreenCurtainEnabled:Z

.field private mScreenMode:I

.field private mScreenStateOn:Z

.field private mScreenWatchingReceiver:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScreenWatchingReceiver;

.field private mSensorEnabled:Z

.field private mSensorHubSupportInterrupt:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorValueValid:Z

.field private mSettingCondition:Z

.field private mSettingsObserver:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$SettingsObserver;

.field private mSumCCT:I

.field private mSumLux:J

.field private mTempIntAvgB:I

.field private mTempIntAvgG:I

.field private mTempIntAvgR:I

.field private mTestScrB:I

.field private mTestScrG:I

.field private mTestScrR:I

.field private mUltraPowerSavingModeEnabled:Z

.field private mUseAdaptiveDisplayColorServiceConfig:Z

.field private mUseEnvironmentDisplayColorConfig:Z

.field private mValidZone:Z

.field private mVideoScenarioEnabled:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 19
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 264
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const-string/jumbo v14, "eng"

    sget-object v15, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, DEBUG:Z

    .line 93
    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, RGB_INTEGER_MAX:I

    .line 94
    const/high16 v14, 0x437f0000    # 255.0f

    move-object/from16 v0, p0

    iput v14, v0, RGB_FLOAT_MAX:F

    .line 96
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, MSG_FOREGROUND_APP:I

    .line 97
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, MSG_RESCAN_FOREGROUND_APP:I

    .line 98
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, MSG_SEND_RGB_AVERAGE:I

    .line 99
    const/4 v14, 0x3

    move-object/from16 v0, p0

    iput v14, v0, MSG_ANIMATE_SCR_RGB:I

    .line 100
    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, MSG_SET_VIDEO_MODE:I

    .line 101
    const/4 v14, 0x5

    move-object/from16 v0, p0

    iput v14, v0, MSG_SET_BROWSER_MODE:I

    .line 102
    const/4 v14, 0x6

    move-object/from16 v0, p0

    iput v14, v0, MSG_TERMINATE_VIDEO_MODE:I

    .line 103
    const/4 v14, 0x7

    move-object/from16 v0, p0

    iput v14, v0, MSG_TERMINATE_SCR_RGB:I

    .line 104
    const/16 v14, 0x8

    move-object/from16 v0, p0

    iput v14, v0, MSG_RGB_DEBOUNCE:I

    .line 106
    const/high16 v14, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    iput v14, v0, ANIMATION_MAX_COUNT:F

    .line 107
    const v14, 0x989680

    move-object/from16 v0, p0

    iput v14, v0, TEST_RGB_EXPONENTIAL:I

    .line 108
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, LIGHT_SENSOR_READ_DELAY:I

    .line 109
    const/16 v14, 0x14

    move-object/from16 v0, p0

    iput v14, v0, MAX_RGB_SENSOR_COUNT:I

    .line 110
    const/16 v14, 0x24

    move-object/from16 v0, p0

    iput v14, v0, NUMBER_COEFFICIENT_VALUE:I

    .line 112
    const-wide/16 v14, 0x2710

    move-object/from16 v0, p0

    iput-wide v14, v0, RGB_DEBOUNCE_MILLIS:J

    .line 113
    const-wide/16 v14, 0xfa

    move-object/from16 v0, p0

    iput-wide v14, v0, ANIMATION_DEBOUNCE_MILLIS:J

    .line 114
    const-wide/16 v14, 0x12c

    move-object/from16 v0, p0

    iput-wide v14, v0, FOREGROUND_THREAD_DELAY_MILLIS:J

    .line 115
    const-wide/16 v14, 0x1f4

    move-object/from16 v0, p0

    iput-wide v14, v0, VIDEO_MODE_DEBOUNCE_MILLIS:J

    .line 116
    const-wide/16 v14, 0x12c

    move-object/from16 v0, p0

    iput-wide v14, v0, BROWSER_MODE_DEBOUNCE_MILLIS:J

    .line 117
    const-wide/16 v14, 0x2bc

    move-object/from16 v0, p0

    iput-wide v14, v0, MULTI_SCREEN_DEBOUNCE_MILLIS:J

    .line 118
    const-wide/16 v14, 0x3e8

    move-object/from16 v0, p0

    iput-wide v14, v0, FOREGROUND_RESCAN_DEBOUNCE_MILLIS:J

    .line 120
    const-string/jumbo v14, "screen_mode_automatic_setting"

    move-object/from16 v0, p0

    iput-object v14, v0, SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

    .line 121
    const-string/jumbo v14, "screen_mode_setting"

    move-object/from16 v0, p0

    iput-object v14, v0, SCREEN_MODE_SETTING:Ljava/lang/String;

    .line 122
    const-string v14, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    move-object/from16 v0, p0

    iput-object v14, v0, ACTION_NOTIFY_MULTIWINDOW_STATUS:Ljava/lang/String;

    .line 123
    const-string v14, "com.sec.android.extra.MULTIWINDOW_RUNNING"

    move-object/from16 v0, p0

    iput-object v14, v0, EXTRA_MULTIWINDOW_RUNNING:Ljava/lang/String;

    .line 124
    const-string v14, "com.sec.android.intent.action.SSRM_MDNIE_CHANGED"

    move-object/from16 v0, p0

    iput-object v14, v0, SSRM_INTENT_MDNIE_SETTING:Ljava/lang/String;

    .line 125
    const-string v14, "1"

    move-object/from16 v0, p0

    iput-object v14, v0, MDNIE_VIDEO_MODE_NUMBER:Ljava/lang/String;

    .line 126
    const-string v14, "8"

    move-object/from16 v0, p0

    iput-object v14, v0, MDNIE_BROWSER_MODE_NUMBER:Ljava/lang/String;

    .line 127
    const-string v14, "9"

    move-object/from16 v0, p0

    iput-object v14, v0, MDNIE_READING_MODE_NUMBER:Ljava/lang/String;

    .line 129
    const-string v14, "/sys/class/mdnie/mdnie/sensorRGB"

    move-object/from16 v0, p0

    iput-object v14, v0, SCR_FILE_PATH:Ljava/lang/String;

    .line 130
    const-string v14, "/sys/class/mdnie/mdnie/scenario"

    move-object/from16 v0, p0

    iput-object v14, v0, SCENARIO_FILE_PATH:Ljava/lang/String;

    .line 131
    const-string v14, "/sys/class/sensors/light_sensor/raw_data"

    move-object/from16 v0, p0

    iput-object v14, v0, LIGHT_SENSOR_RAW_DATA_PATH:Ljava/lang/String;

    .line 132
    const-string v14, "com.sec.android.app.SecSetupWizard"

    move-object/from16 v0, p0

    iput-object v14, v0, SETUP_WIZARD_NAME:Ljava/lang/String;

    .line 133
    const-string v14, "com.android.systemui"

    move-object/from16 v0, p0

    iput-object v14, v0, APP_MANAGER_NAME:Ljava/lang/String;

    .line 134
    const-string v14, "com.sec.android.app.sbrowser"

    move-object/from16 v0, p0

    iput-object v14, v0, SBROWSER_NAME:Ljava/lang/String;

    .line 135
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "com.sec.android.app.sbrowser"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "com.android.chrome"

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    iput-object v14, v0, BROWSER_NAMES:[Ljava/lang/String;

    .line 140
    const/16 v14, 0x9

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "com.zgz.supervideo"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "com.kmplayer"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "com.pg.gom"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const-string v16, "com.gretech.gomplayer"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string v16, "com.mxtech.videoplayer"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    const-string v16, "com.nhn.android.naverplayer"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    const-string v16, "com.inisoft.mediaplayer"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    const-string v16, "com.google.android.youtube"

    aput-object v16, v14, v15

    const/16 v15, 0x8

    const-string v16, "com.google.android.videos"

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    iput-object v14, v0, MEDIA_PLAYER_NAMES:[Ljava/lang/String;

    .line 154
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mUseAdaptiveDisplayColorServiceConfig:Z

    .line 155
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mUseEnvironmentDisplayColorConfig:Z

    .line 156
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mEnvironmentDisplayColorServiceEnable:Z

    .line 157
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mSensorHubSupportInterrupt:Z

    .line 158
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mEnableCondition:Z

    .line 159
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mScreenStateOn:Z

    .line 165
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, mRgbSensor:Landroid/hardware/Sensor;

    .line 166
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, mSensorManager:Landroid/hardware/SensorManager;

    .line 167
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 170
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mAceessibilityEnabled:Z

    .line 171
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mSensorEnabled:Z

    .line 172
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mSensorValueValid:Z

    .line 173
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mValidZone:Z

    .line 174
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, isLockScreenOn:Z

    .line 175
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mMultiWindowOn:Z

    .line 176
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mForegroundThreadWork:Z

    .line 178
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, mCoverState:Z

    .line 180
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mUltraPowerSavingModeEnabled:Z

    .line 181
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mScreenCurtainEnabled:Z

    .line 182
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mNegativeColorEnabled:Z

    .line 183
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mColorBlindEnabled:Z

    .line 184
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mAutoModeEnabled:Z

    .line 185
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mEBookScenarioIntented:Z

    .line 186
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mEbookScenarioEnabled:Z

    .line 187
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mVideoScenarioEnabled:Z

    .line 188
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mBrowserScenarioEnabled:Z

    .line 190
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mSettingCondition:Z

    .line 191
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mPowerSavingEnabled:Z

    .line 192
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mGreyScaleModeEnabled:Z

    .line 194
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mScreenMode:I

    .line 196
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, mPrevContorlZone:I

    .line 198
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mCountSensorValue:I

    .line 206
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, mTestScrR:I

    .line 207
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, mTestScrG:I

    .line 208
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, mTestScrB:I

    .line 215
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mAvgR:F

    .line 216
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mAvgG:F

    .line 217
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mAvgB:F

    .line 218
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mLastAvgR:F

    .line 219
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mLastAvgG:F

    .line 220
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mLastAvgB:F

    .line 221
    const v14, 0x3d8f5c29    # 0.07f

    move-object/from16 v0, p0

    iput v14, v0, mRgbThreshold:F

    .line 223
    const/16 v14, 0x23

    move-object/from16 v0, p0

    iput v14, v0, mDuration:I

    .line 225
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, mSumLux:J

    .line 226
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mSumCCT:I

    .line 228
    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, mPrevIntAvgR:I

    .line 229
    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, mPrevIntAvgG:I

    .line 230
    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, mPrevIntAvgB:I

    .line 232
    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, mFinalIntAvgR:I

    .line 233
    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, mFinalIntAvgG:I

    .line 234
    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, mFinalIntAvgB:I

    .line 236
    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, mTempIntAvgR:I

    .line 237
    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, mTempIntAvgG:I

    .line 238
    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, mTempIntAvgB:I

    .line 240
    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, mDefaultR:I

    .line 241
    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, mDefaultG:I

    .line 242
    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, mDefaultB:I

    .line 244
    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, mDefaultEbookR:I

    .line 245
    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, mDefaultEbookG:I

    .line 246
    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, mDefaultEbookB:I

    .line 248
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mDefaultAdjustR:I

    .line 249
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mDefaultAdjustG:I

    .line 250
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mDefaultAdjustB:I

    .line 252
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mEbookAdjustR:I

    .line 253
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mEbookAdjustG:I

    .line 254
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mEbookAdjustB:I

    .line 256
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mCountAnimationValue:I

    .line 258
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mIsFirstStart:Z

    .line 262
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 443
    new-instance v14, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$1;-><init>(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V

    move-object/from16 v0, p0

    iput-object v14, v0, mProcessObserver:Landroid/app/IProcessObserver;

    .line 632
    new-instance v14, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;-><init>(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V

    move-object/from16 v0, p0

    iput-object v14, v0, mRgbSensorListener:Landroid/hardware/SensorEventListener;

    .line 662
    new-instance v14, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$3;-><init>(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V

    move-object/from16 v0, p0

    iput-object v14, v0, mSContextListener:Landroid/hardware/scontext/SContextListener;

    .line 681
    new-instance v14, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$4;-><init>(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V

    move-object/from16 v0, p0

    iput-object v14, v0, mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 265
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, mContext:Landroid/content/Context;

    .line 267
    new-instance v14, Landroid/os/HandlerThread;

    const-string v15, "AdaptiveDisplayColorServiceThread"

    invoke-direct {v14, v15}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v14, v0, mHandlerThread:Landroid/os/HandlerThread;

    .line 268
    move-object/from16 v0, p0

    iget-object v14, v0, mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v14}, Landroid/os/HandlerThread;->start()V

    .line 269
    new-instance v14, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    move-object/from16 v0, p0

    iget-object v15, v0, mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v15}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;-><init>(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v14, v0, mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    .line 271
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x11200d5

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, mUseAdaptiveDisplayColorServiceConfig:Z

    .line 275
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x11200d6

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, mUseEnvironmentDisplayColorConfig:Z

    .line 278
    const-string/jumbo v14, "sys.adaptivedisplay.eadon"

    const-string/jumbo v15, "false"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    new-instance v14, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$SettingsObserver;

    move-object/from16 v0, p0

    iget-object v15, v0, mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$SettingsObserver;-><init>(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v14, v0, mSettingsObserver:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$SettingsObserver;

    .line 282
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 284
    .local v12, "resolver":Landroid/content/ContentResolver;
    new-instance v14, Lcom/samsung/android/cover/CoverManager;

    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 286
    const-string/jumbo v14, "lcd_curtain"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, mSettingsObserver:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$SettingsObserver;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 288
    const-string/jumbo v14, "high_contrast"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, mSettingsObserver:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$SettingsObserver;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 290
    const-string v14, "color_blind"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, mSettingsObserver:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$SettingsObserver;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 296
    const-string/jumbo v14, "psm_switch"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, mSettingsObserver:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$SettingsObserver;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 299
    const-string/jumbo v14, "ultra_powersaving_mode"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, mSettingsObserver:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$SettingsObserver;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 301
    const-string/jumbo v14, "screen_mode_automatic_setting"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, mSettingsObserver:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$SettingsObserver;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 304
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 305
    .local v9, "intentFilter":Landroid/content/IntentFilter;
    const-string v14, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v9, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 306
    const-string v14, "android.intent.action.SCREEN_ON"

    invoke-virtual {v9, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 307
    const-string v14, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v9, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 308
    const-string v14, "android.intent.action.USER_PRESENT"

    invoke-virtual {v9, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    const-string v14, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    invoke-virtual {v9, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    const-string v14, "com.sec.android.intent.action.SSRM_MDNIE_CHANGED"

    invoke-virtual {v9, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 311
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    new-instance v15, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScreenWatchingReceiver;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$1;)V

    invoke-virtual {v14, v15, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 313
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    const-string v15, "activity"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityManager;

    move-object/from16 v0, p0

    iput-object v14, v0, mActivityManager:Landroid/app/ActivityManager;

    .line 315
    const/4 v11, 0x0

    .line 316
    .local v11, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 317
    if-eqz v11, :cond_43b

    .line 318
    const-string v14, "com.sec.feature.sensorhub"

    invoke-virtual {v11, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_416

    const-string v14, "com.sec.feature.scontext_lite"

    invoke-virtual {v11, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_43b

    .line 319
    :cond_416
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    const-string/jumbo v15, "scontext"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/scontext/SContextManager;

    move-object/from16 v0, p0

    iput-object v14, v0, mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 321
    move-object/from16 v0, p0

    iget-object v14, v0, mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v14, :cond_43b

    .line 322
    move-object/from16 v0, p0

    iget-object v14, v0, mSContextManager:Landroid/hardware/scontext/SContextManager;

    const/16 v15, 0x2c

    invoke-virtual {v14, v15}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, mSensorHubSupportInterrupt:Z

    .line 327
    :cond_43b
    move-object/from16 v0, p0

    iget-boolean v14, v0, mSensorHubSupportInterrupt:Z

    if-nez v14, :cond_465

    .line 328
    new-instance v14, Landroid/hardware/SystemSensorManager;

    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->getLooper()Landroid/os/Looper;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v14, v0, mSensorManager:Landroid/hardware/SensorManager;

    .line 329
    move-object/from16 v0, p0

    iget-object v14, v0, mSensorManager:Landroid/hardware/SensorManager;

    const/4 v15, 0x5

    invoke-virtual {v14, v15}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, mRgbSensor:Landroid/hardware/Sensor;

    .line 332
    :cond_465
    move-object/from16 v0, p0

    iget-boolean v14, v0, mUseEnvironmentDisplayColorConfig:Z

    if-eqz v14, :cond_56a

    .line 333
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x107007c

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 334
    .local v2, "adj_rgb":[I
    const/4 v14, 0x0

    aget v14, v2, v14

    move-object/from16 v0, p0

    iput v14, v0, mEbookAdjustR:I

    .line 335
    const/4 v14, 0x1

    aget v14, v2, v14

    move-object/from16 v0, p0

    iput v14, v0, mEbookAdjustG:I

    .line 336
    const/4 v14, 0x2

    aget v14, v2, v14

    move-object/from16 v0, p0

    iput v14, v0, mEbookAdjustB:I

    .line 338
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x107007d

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v13

    .line 339
    .local v13, "test_rgb":[I
    const/4 v14, 0x0

    aget v14, v13, v14

    move-object/from16 v0, p0

    iput v14, v0, mTestScrR:I

    .line 340
    const/4 v14, 0x1

    aget v14, v13, v14

    move-object/from16 v0, p0

    iput v14, v0, mTestScrG:I

    .line 341
    const/4 v14, 0x2

    aget v14, v13, v14

    move-object/from16 v0, p0

    iput v14, v0, mTestScrB:I

    .line 343
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10e00e1

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 344
    .local v7, "foregroundDelay":I
    const-wide/16 v14, 0x12c

    move-object/from16 v0, p0

    iput-wide v14, v0, foregroundDelayTime:J

    .line 345
    if-eqz v7, :cond_4cf

    .line 346
    int-to-long v14, v7

    move-object/from16 v0, p0

    iput-wide v14, v0, foregroundDelayTime:J

    .line 348
    :cond_4cf
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10e00e2

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 349
    .local v5, "exitHomeDelay":I
    const-wide/16 v14, 0x12c

    move-object/from16 v0, p0

    iput-wide v14, v0, exitHomeDelayTime:J

    .line 350
    if-eqz v5, :cond_4eb

    .line 351
    int-to-long v14, v5

    move-object/from16 v0, p0

    iput-wide v14, v0, exitHomeDelayTime:J

    .line 353
    :cond_4eb
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10e00e3

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 354
    .local v6, "exitMenuDelay":I
    const-wide/16 v14, 0x2bc

    move-object/from16 v0, p0

    iput-wide v14, v0, exitMenuDelayTime:J

    .line 355
    if-eqz v6, :cond_507

    .line 356
    int-to-long v14, v6

    move-object/from16 v0, p0

    iput-wide v14, v0, exitMenuDelayTime:J

    .line 358
    :cond_507
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x107007e

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 360
    .local v3, "coefficientStringArray":[Ljava/lang/String;
    const/16 v14, 0x24

    new-array v14, v14, [F

    move-object/from16 v0, p0

    iput-object v14, v0, mCoefficientValueArray:[F

    .line 362
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_51f
    array-length v14, v3

    if-ge v8, v14, :cond_539

    .line 363
    move-object/from16 v0, p0

    iget-object v14, v0, mCoefficientValueArray:[F

    aget-object v15, v3, v8

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    aput v15, v14, v8

    .line 362
    add-int/lit8 v8, v8, 0x1

    goto :goto_51f

    .line 365
    :cond_539
    const-string/jumbo v14, "sys.adaptivedisplay.eadon"

    const-string/jumbo v15, "true"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, mScreenStateOn:Z

    .line 368
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mLightSensorDelay:I

    .line 370
    move-object/from16 v0, p0

    iget v14, v0, mEbookAdjustR:I

    add-int/lit16 v14, v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, mDefaultEbookR:I

    .line 371
    move-object/from16 v0, p0

    iget v14, v0, mEbookAdjustG:I

    add-int/lit16 v14, v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, mDefaultEbookG:I

    .line 372
    move-object/from16 v0, p0

    iget v14, v0, mEbookAdjustB:I

    add-int/lit16 v14, v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, mDefaultEbookB:I

    .line 375
    .end local v2    # "adj_rgb":[I
    .end local v3    # "coefficientStringArray":[Ljava/lang/String;
    .end local v5    # "exitHomeDelay":I
    .end local v6    # "exitMenuDelay":I
    .end local v7    # "foregroundDelay":I
    .end local v8    # "i":I
    .end local v13    # "test_rgb":[I
    :cond_56a
    invoke-direct/range {p0 .. p0}, setting_is_changed()V

    .line 378
    :try_start_56d
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    .line 379
    .local v10, "mIActivityManager":Landroid/app/IActivityManager;
    move-object/from16 v0, p0

    iget-object v14, v0, mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v10, v14}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_578
    .catch Landroid/os/RemoteException; {:try_start_56d .. :try_end_578} :catch_579

    .line 385
    .end local v10    # "mIActivityManager":Landroid/app/IActivityManager;
    :cond_578
    :goto_578
    return-void

    .line 380
    :catch_579
    move-exception v4

    .line 381
    .local v4, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-boolean v14, v0, DEBUG:Z

    if-eqz v14, :cond_578

    .line 382
    const-string v14, "AdaptiveDisplayColorService"

    const-string/jumbo v15, "failed to registerProcessObserver"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_578
.end method

.method static synthetic access$1000(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)Landroid/app/ActivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .prologue
    .line 87
    iget-object v0, p0, mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, isLockScreenOn:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .prologue
    .line 87
    iget v0, p0, mLightSensorDelay:I

    return v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;
    .param p1, "x1"    # I

    .prologue
    .line 87
    iput p1, p0, mLightSensorDelay:I

    return p1
.end method

.method static synthetic access$1110(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)I
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .prologue
    .line 87
    iget v0, p0, mLightSensorDelay:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, mLightSensorDelay:I

    return v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .prologue
    .line 87
    invoke-direct {p0}, getRgbFromLightSensor()V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .prologue
    .line 87
    iget-boolean v0, p0, mSensorValueValid:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .prologue
    .line 87
    iget v0, p0, mLightSensorR:I

    return v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .prologue
    .line 87
    iget v0, p0, mLightSensorG:I

    return v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .prologue
    .line 87
    iget v0, p0, mLightSensorB:I

    return v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;IIIII)V
    .registers 6
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 87
    invoke-direct/range {p0 .. p5}, handleRgbSensorEvent(IIIII)V

    return-void
.end method

.method static synthetic access$1802(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;F)F
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;
    .param p1, "x1"    # F

    .prologue
    .line 87
    iput p1, p0, mAvgR:F

    return p1
.end method

.method static synthetic access$1902(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;F)F
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;
    .param p1, "x1"    # F

    .prologue
    .line 87
    iput p1, p0, mAvgG:F

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .prologue
    .line 87
    invoke-direct {p0}, receive_screen_on_intent()V

    return-void
.end method

.method static synthetic access$2002(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;F)F
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;
    .param p1, "x1"    # F

    .prologue
    .line 87
    iput p1, p0, mAvgB:F

    return p1
.end method

.method static synthetic access$2102(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;J)J
    .registers 4
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;
    .param p1, "x1"    # J

    .prologue
    .line 87
    iput-wide p1, p0, mSumLux:J

    return-wide p1
.end method

.method static synthetic access$2202(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;
    .param p1, "x1"    # I

    .prologue
    .line 87
    iput p1, p0, mSumCCT:I

    return p1
.end method

.method static synthetic access$2302(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;
    .param p1, "x1"    # I

    .prologue
    .line 87
    iput p1, p0, mCountSensorValue:I

    return p1
.end method

.method static synthetic access$2402(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, mCoverState:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;Ljava/lang/String;II)V
    .registers 4
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, monitorForegroundBrowser(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$2600(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .prologue
    .line 87
    invoke-direct {p0}, sendRgbAverage()V

    return-void
.end method

.method static synthetic access$2700(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .prologue
    .line 87
    invoke-direct {p0}, animateScrRGB()V

    return-void
.end method

.method static synthetic access$2800(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .prologue
    .line 87
    invoke-direct {p0}, setVideoMode()V

    return-void
.end method

.method static synthetic access$2900(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .prologue
    .line 87
    invoke-direct {p0}, setBrowserMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .prologue
    .line 87
    invoke-direct {p0}, receive_screen_off_intent()V

    return-void
.end method

.method static synthetic access$3000(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .prologue
    .line 87
    invoke-direct {p0}, terminateVideoMode()V

    return-void
.end method

.method static synthetic access$3100(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .prologue
    .line 87
    invoke-direct {p0}, terminateScrRGB()V

    return-void
.end method

.method static synthetic access$3200(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)Landroid/hardware/SensorManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .prologue
    .line 87
    iget-object v0, p0, mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)Landroid/hardware/SensorEventListener;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .prologue
    .line 87
    iget-object v0, p0, mRgbSensorListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)Landroid/hardware/Sensor;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .prologue
    .line 87
    iget-object v0, p0, mRgbSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, mMultiWindowOn:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .prologue
    .line 87
    invoke-direct {p0}, receive_multi_window_on_intent()V

    return-void
.end method

.method static synthetic access$602(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, mEBookScenarioIntented:Z

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .prologue
    .line 87
    iget-object v0, p0, mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .prologue
    .line 87
    iget-boolean v0, p0, DEBUG:Z

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .prologue
    .line 87
    invoke-direct {p0}, setting_is_changed()V

    return-void
.end method

.method private animateScrRGB()V
    .registers 15

    .prologue
    const/4 v13, 0x3

    const/high16 v12, 0x41a00000    # 20.0f

    const/16 v11, 0xff

    .line 1217
    invoke-direct {p0}, isInBoundary()I

    move-result v4

    .line 1218
    .local v4, "state":I
    iget v7, p0, mCountAnimationValue:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, mCountAnimationValue:I

    .line 1220
    if-lez v4, :cond_61

    .line 1222
    iget v7, p0, mCountAnimationValue:I

    const/16 v10, 0x14

    if-ne v7, v10, :cond_62

    .line 1224
    iget v3, p0, mFinalIntAvgR:I

    .line 1225
    .local v3, "r":I
    iget v1, p0, mFinalIntAvgG:I

    .line 1226
    .local v1, "g":I
    iget v0, p0, mFinalIntAvgB:I

    .line 1228
    .local v0, "b":I
    if-lez v3, :cond_61

    if-gt v3, v11, :cond_61

    if-lez v1, :cond_61

    if-gt v1, v11, :cond_61

    if-lez v0, :cond_61

    if-gt v0, v11, :cond_61

    .line 1229
    iget v7, p0, mPrevIntAvgR:I

    if-ne v3, v7, :cond_35

    iget v7, p0, mPrevIntAvgG:I

    if-ne v1, v7, :cond_35

    iget v7, p0, mPrevIntAvgB:I

    if-eq v0, v7, :cond_61

    .line 1230
    :cond_35
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1231
    .local v6, "str":Ljava/lang/String;
    const-string v7, "/sys/class/mdnie/mdnie/sensorRGB"

    invoke-direct {p0, v7, v6}, fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    iput v3, p0, mPrevIntAvgR:I

    .line 1235
    iput v1, p0, mPrevIntAvgG:I

    .line 1236
    iput v0, p0, mPrevIntAvgB:I

    .line 1273
    .end local v0    # "b":I
    .end local v1    # "g":I
    .end local v3    # "r":I
    .end local v6    # "str":Ljava/lang/String;
    :cond_61
    :goto_61
    return-void

    .line 1242
    :cond_62
    const/4 v2, 0x0

    .line 1243
    .local v2, "gap":I
    const/4 v5, 0x0

    .line 1244
    .local v5, "step":F
    iget v7, p0, mFinalIntAvgR:I

    iget v10, p0, mTempIntAvgR:I

    sub-int v2, v7, v10

    .line 1245
    int-to-float v7, v2

    div-float/2addr v7, v12

    iget v10, p0, mCountAnimationValue:I

    int-to-float v10, v10

    mul-float v5, v7, v10

    .line 1246
    iget v7, p0, mTempIntAvgR:I

    float-to-int v10, v5

    add-int v3, v7, v10

    .line 1248
    .restart local v3    # "r":I
    iget v7, p0, mFinalIntAvgG:I

    iget v10, p0, mTempIntAvgG:I

    sub-int v2, v7, v10

    .line 1249
    int-to-float v7, v2

    div-float/2addr v7, v12

    iget v10, p0, mCountAnimationValue:I

    int-to-float v10, v10

    mul-float v5, v7, v10

    .line 1250
    iget v7, p0, mTempIntAvgG:I

    float-to-int v10, v5

    add-int v1, v7, v10

    .line 1252
    .restart local v1    # "g":I
    iget v7, p0, mFinalIntAvgB:I

    iget v10, p0, mTempIntAvgB:I

    sub-int v2, v7, v10

    .line 1253
    int-to-float v7, v2

    div-float/2addr v7, v12

    iget v10, p0, mCountAnimationValue:I

    int-to-float v10, v10

    mul-float v5, v7, v10

    .line 1254
    iget v7, p0, mTempIntAvgB:I

    float-to-int v10, v5

    add-int v0, v7, v10

    .line 1256
    .restart local v0    # "b":I
    if-lez v3, :cond_de

    if-gt v3, v11, :cond_de

    if-lez v1, :cond_de

    if-gt v1, v11, :cond_de

    if-lez v0, :cond_de

    if-gt v0, v11, :cond_de

    .line 1257
    iget v7, p0, mPrevIntAvgR:I

    if-ne v3, v7, :cond_b2

    iget v7, p0, mPrevIntAvgG:I

    if-ne v1, v7, :cond_b2

    iget v7, p0, mPrevIntAvgB:I

    if-eq v0, v7, :cond_de

    .line 1258
    :cond_b2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1259
    .restart local v6    # "str":Ljava/lang/String;
    const-string v7, "/sys/class/mdnie/mdnie/sensorRGB"

    invoke-direct {p0, v7, v6}, fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    iput v3, p0, mPrevIntAvgR:I

    .line 1263
    iput v1, p0, mPrevIntAvgG:I

    .line 1264
    iput v0, p0, mPrevIntAvgB:I

    .line 1268
    .end local v6    # "str":Ljava/lang/String;
    :cond_de
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1269
    .local v8, "time":J
    iget-object v7, p0, mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v7, v13}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 1270
    iget-object v7, p0, mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const-wide/16 v10, 0xfa

    add-long/2addr v10, v8

    invoke-virtual {v7, v13, v10, v11}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_61
.end method

.method private enableRgbSensor(Z)V
    .registers 13
    .param p1, "enable"    # Z

    .prologue
    const/16 v10, 0x2c

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/16 v7, 0xff

    .line 586
    new-instance v1, Ljava/io/File;

    const-string v4, "/sys/class/mdnie/mdnie/sensorRGB"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 587
    .local v1, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 588
    .local v3, "white_scr":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 589
    const-string v4, "AdaptiveDisplayColorService"

    const-string v5, "StatFs returns null."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_1b
    iget-boolean v4, p0, DEBUG:Z

    if-eqz v4, :cond_38

    .line 592
    const-string v4, "AdaptiveDisplayColorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "enableRgbSensor : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_38
    if-eqz p1, :cond_8a

    .line 595
    iget v4, p0, mTestScrR:I

    iget v5, p0, mTestScrG:I

    add-int/2addr v4, v5

    iget v5, p0, mTestScrB:I

    add-int/2addr v4, v5

    int-to-float v2, v4

    .line 596
    .local v2, "sum":F
    invoke-direct {p0}, initRgbAverage()V

    .line 597
    const/4 v4, 0x1

    iput-boolean v4, p0, mIsFirstStart:Z

    .line 598
    iput v8, p0, mPrevContorlZone:I

    .line 599
    iget v4, p0, mTestScrR:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    iput v4, p0, mLastAvgR:F

    .line 600
    iget v4, p0, mTestScrG:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    iput v4, p0, mLastAvgG:F

    .line 601
    iget v4, p0, mTestScrB:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    iput v4, p0, mLastAvgB:F

    .line 602
    iput v8, p0, mLightSensorDelay:I

    .line 603
    iget-boolean v4, p0, mSensorHubSupportInterrupt:Z

    if-eqz v4, :cond_7a

    .line 604
    iget-object v4, p0, mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v4, :cond_77

    .line 605
    new-instance v0, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;

    iget v4, p0, mRgbThreshold:F

    iget v5, p0, mDuration:I

    invoke-direct {v0, v4, v5}, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;-><init>(FI)V

    .line 607
    .local v0, "environmentAdaptiveDisplayAttribute":Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;
    iget-object v4, p0, mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v5, p0, mSContextListener:Landroid/hardware/scontext/SContextListener;

    invoke-virtual {v4, v5, v10}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    .line 629
    .end local v0    # "environmentAdaptiveDisplayAttribute":Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;
    .end local v2    # "sum":F
    :cond_77
    :goto_77
    iput-boolean p1, p0, mSensorEnabled:Z

    .line 630
    return-void

    .line 610
    .restart local v2    # "sum":F
    :cond_7a
    iget-object v4, p0, mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v4, :cond_77

    .line 611
    iget-object v4, p0, mSensorManager:Landroid/hardware/SensorManager;

    iget-object v5, p0, mRgbSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v6, p0, mRgbSensor:Landroid/hardware/Sensor;

    iget-object v7, p0, mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v4, v5, v6, v9, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_77

    .line 614
    .end local v2    # "sum":F
    :cond_8a
    iput v7, p0, mPrevIntAvgR:I

    .line 615
    iput v7, p0, mPrevIntAvgG:I

    .line 616
    iput v7, p0, mPrevIntAvgB:I

    .line 617
    iget-object v4, p0, mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 618
    iget-object v4, p0, mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v4, v9}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 619
    iget-object v4, p0, mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 620
    iget-object v4, p0, mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 621
    iget-boolean v4, p0, mSensorHubSupportInterrupt:Z

    if-eqz v4, :cond_b8

    .line 622
    iget-object v4, p0, mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v4, :cond_77

    .line 623
    iget-object v4, p0, mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v5, p0, mSContextListener:Landroid/hardware/scontext/SContextListener;

    invoke-virtual {v4, v5, v10}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    goto :goto_77

    .line 625
    :cond_b8
    iget-object v4, p0, mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v4, :cond_77

    .line 626
    iget-object v4, p0, mSensorManager:Landroid/hardware/SensorManager;

    iget-object v5, p0, mRgbSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_77
.end method

.method private fileWriteString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 1296
    const/4 v2, 0x0

    .line 1297
    .local v2, "out":Ljava/io/FileOutputStream;
    iget-boolean v4, p0, DEBUG:Z

    if-eqz v4, :cond_28

    .line 1298
    const-string v4, "AdaptiveDisplayColorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "fileWriteString : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    :cond_28
    :try_start_28
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_32} :catch_40
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_32} :catch_5b

    .line 1308
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_32
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 1309
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_3e} :catch_68

    move-object v2, v3

    .line 1318
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_3f
    return-void

    .line 1303
    :catch_40
    move-exception v0

    .line 1304
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_41
    const-string v4, "AdaptiveDisplayColorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "fileWriteString : file not found : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_5a} :catch_5b

    goto :goto_3f

    .line 1310
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_5b
    move-exception v0

    .line 1311
    .local v0, "e":Ljava/io/IOException;
    :goto_5c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1313
    :try_start_5f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_62} :catch_63

    goto :goto_3f

    .line 1314
    :catch_63
    move-exception v1

    .line 1315
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3f

    .line 1310
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_68
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_5c
.end method

.method private getRgbFromLightSensor()V
    .registers 7

    .prologue
    .line 781
    const/4 v1, 0x0

    .line 783
    .local v1, "raw":Ljava/lang/String;
    :try_start_1
    const-string v3, "/sys/class/sensors/light_sensor/raw_data"

    invoke-direct {p0, v3}, getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 784
    if-eqz v1, :cond_60

    .line 785
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_12} :catch_5b

    move-result-object v2

    .line 787
    .local v2, "rawDatas":[Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_14
    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, mLightSensorR:I

    .line 788
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, mLightSensorG:I

    .line 789
    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, mLightSensorB:I

    .line 790
    const/4 v3, 0x1

    iput-boolean v3, p0, mSensorValueValid:Z
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_3d} :catch_3e
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_3d} :catch_5b

    .line 801
    .end local v2    # "rawDatas":[Ljava/lang/String;
    :goto_3d
    return-void

    .line 791
    .restart local v2    # "rawDatas":[Ljava/lang/String;
    :catch_3e
    move-exception v0

    .line 792
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_3f
    const-string v3, "AdaptiveDisplayColorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NumberFormatException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const/4 v3, 0x0

    iput-boolean v3, p0, mSensorValueValid:Z
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_5a} :catch_5b

    goto :goto_3d

    .line 798
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "rawDatas":[Ljava/lang/String;
    :catch_5b
    move-exception v0

    .line 799
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3d

    .line 797
    .end local v0    # "e":Ljava/io/IOException;
    :cond_60
    const/4 v3, 0x0

    :try_start_61
    iput-boolean v3, p0, mSensorValueValid:Z
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_63} :catch_5b

    goto :goto_3d
.end method

.method private getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x80

    const/4 v11, 0x0

    .line 804
    const/4 v6, 0x0

    .line 805
    .local v6, "in":Ljava/io/InputStream;
    const/16 v0, 0x80

    .line 806
    .local v0, "MAX_BUFFER_SIZE":I
    new-array v1, v12, [B

    .line 807
    .local v1, "buffer":[B
    const/4 v9, 0x0

    .line 808
    .local v9, "value":Ljava/lang/String;
    const/4 v8, 0x0

    .line 810
    .local v8, "length":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_b
    if-ge v5, v12, :cond_12

    .line 811
    aput-byte v11, v1, v5

    .line 810
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 814
    :cond_12
    :try_start_12
    new-instance v7, Ljava/io/FileInputStream;

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_1c} :catch_43
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1c} :catch_6b
    .catchall {:try_start_12 .. :try_end_1c} :catchall_96

    .line 815
    .end local v6    # "in":Ljava/io/InputStream;
    .local v7, "in":Ljava/io/InputStream;
    if-eqz v7, :cond_32

    .line 816
    :try_start_1e
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .line 817
    if-eqz v8, :cond_2f

    .line 818
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    add-int/lit8 v12, v8, -0x1

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v1, v11, v12, v13}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .end local v9    # "value":Ljava/lang/String;
    .local v10, "value":Ljava/lang/String;
    move-object v9, v10

    .line 820
    .end local v10    # "value":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/String;
    :cond_2f
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_32} :catch_ac
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_32} :catch_a9
    .catchall {:try_start_1e .. :try_end_32} :catchall_a6

    .line 829
    :cond_32
    if-eqz v7, :cond_af

    .line 831
    :try_start_34
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_39

    move-object v6, v7

    .line 837
    .end local v7    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    :cond_38
    :goto_38
    return-object v9

    .line 832
    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v7    # "in":Ljava/io/InputStream;
    :catch_39
    move-exception v3

    .line 833
    .local v3, "ee":Ljava/io/IOException;
    const-string v11, "AdaptiveDisplayColorService"

    const-string v12, "File Close error"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    .line 834
    .end local v7    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    goto :goto_38

    .line 822
    .end local v3    # "ee":Ljava/io/IOException;
    :catch_43
    move-exception v4

    .line 824
    .local v4, "ex":Ljava/io/FileNotFoundException;
    :goto_44
    :try_start_44
    const-string v11, "AdaptiveDisplayColorService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FileNotFoundException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_44 .. :try_end_5c} :catchall_96

    .line 829
    if-eqz v6, :cond_38

    .line 831
    :try_start_5e
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62

    goto :goto_38

    .line 832
    :catch_62
    move-exception v3

    .line 833
    .restart local v3    # "ee":Ljava/io/IOException;
    const-string v11, "AdaptiveDisplayColorService"

    const-string v12, "File Close error"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 825
    .end local v3    # "ee":Ljava/io/IOException;
    .end local v4    # "ex":Ljava/io/FileNotFoundException;
    :catch_6b
    move-exception v2

    .line 826
    .local v2, "e":Ljava/io/IOException;
    :goto_6c
    :try_start_6c
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 827
    const-string v11, "AdaptiveDisplayColorService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catchall {:try_start_6c .. :try_end_87} :catchall_96

    .line 829
    if-eqz v6, :cond_38

    .line 831
    :try_start_89
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_8d

    goto :goto_38

    .line 832
    :catch_8d
    move-exception v3

    .line 833
    .restart local v3    # "ee":Ljava/io/IOException;
    const-string v11, "AdaptiveDisplayColorService"

    const-string v12, "File Close error"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 829
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ee":Ljava/io/IOException;
    :catchall_96
    move-exception v11

    :goto_97
    if-eqz v6, :cond_9c

    .line 831
    :try_start_99
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_9d

    .line 834
    :cond_9c
    :goto_9c
    throw v11

    .line 832
    :catch_9d
    move-exception v3

    .line 833
    .restart local v3    # "ee":Ljava/io/IOException;
    const-string v12, "AdaptiveDisplayColorService"

    const-string v13, "File Close error"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9c

    .line 829
    .end local v3    # "ee":Ljava/io/IOException;
    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v7    # "in":Ljava/io/InputStream;
    :catchall_a6
    move-exception v11

    move-object v6, v7

    .end local v7    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    goto :goto_97

    .line 825
    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v7    # "in":Ljava/io/InputStream;
    :catch_a9
    move-exception v2

    move-object v6, v7

    .end local v7    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    goto :goto_6c

    .line 822
    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v7    # "in":Ljava/io/InputStream;
    :catch_ac
    move-exception v4

    move-object v6, v7

    .end local v7    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    goto :goto_44

    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v7    # "in":Ljava/io/InputStream;
    :cond_af
    move-object v6, v7

    .end local v7    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    goto :goto_38
.end method

.method private handleRgbSensorEvent(IIIII)V
    .registers 13
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .param p4, "lux"    # I
    .param p5, "cct"    # I

    .prologue
    const/16 v6, 0x8

    .line 841
    invoke-direct {p0}, isInBoundary()I

    move-result v0

    .line 842
    .local v0, "isInControlZone":I
    iget v1, p0, mPrevContorlZone:I

    if-eq v1, v0, :cond_15

    .line 843
    iget-object v1, p0, mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 844
    iput v0, p0, mPrevContorlZone:I

    .line 845
    invoke-direct {p0}, initRgbAverage()V

    .line 848
    :cond_15
    if-lez v0, :cond_43

    .line 849
    iget-boolean v1, p0, mSensorHubSupportInterrupt:Z

    if-eqz v1, :cond_44

    .line 850
    iget-object v1, p0, mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v1, :cond_28

    .line 851
    iget-object v1, p0, mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v4, p0, mSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v5, 0x2c

    invoke-virtual {v1, v4, v5}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 857
    :cond_28
    :goto_28
    invoke-direct/range {p0 .. p5}, handleRgbSensorValue(IIIII)V

    .line 859
    iget-boolean v1, p0, mSensorHubSupportInterrupt:Z

    if-nez v1, :cond_43

    .line 860
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 861
    .local v2, "time":J
    const/4 v1, 0x1

    iput-boolean v1, p0, mValidZone:Z

    .line 862
    iget-object v1, p0, mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v1, v6}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 863
    iget-object v1, p0, mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const-wide/16 v4, 0x2710

    add-long/2addr v4, v2

    invoke-virtual {v1, v6, v4, v5}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 866
    .end local v2    # "time":J
    :cond_43
    return-void

    .line 853
    :cond_44
    iget-object v1, p0, mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_28

    .line 854
    iget-object v1, p0, mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, mRgbSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v4}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_28
.end method

.method private handleRgbSensorValue(IIIII)V
    .registers 15
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .param p4, "lux"    # I
    .param p5, "cct"    # I

    .prologue
    const/4 v8, 0x2

    .line 939
    add-int v6, p1, p2

    add-int v3, v6, p3

    .line 940
    .local v3, "sumRGB":I
    const/4 v2, 0x0

    .local v2, "ratioR":F
    const/4 v1, 0x0

    .local v1, "ratioG":F
    const/4 v0, 0x0

    .line 942
    .local v0, "ratioB":F
    int-to-float v6, p1

    int-to-float v7, v3

    div-float v2, v6, v7

    .line 943
    int-to-float v6, p2

    int-to-float v7, v3

    div-float v1, v6, v7

    .line 944
    int-to-float v6, p3

    int-to-float v7, v3

    div-float v0, v6, v7

    .line 946
    iget v6, p0, mLastAvgR:F

    sub-float v6, v2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, mRgbThreshold:F

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_3e

    iget v6, p0, mLastAvgG:F

    sub-float v6, v1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, mRgbThreshold:F

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_3e

    iget v6, p0, mLastAvgB:F

    sub-float v6, v0, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, mRgbThreshold:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_66

    .line 948
    :cond_3e
    iget v6, p0, mCountSensorValue:I

    if-lez v6, :cond_5f

    .line 949
    iput v2, p0, mAvgR:F

    .line 950
    iput v1, p0, mAvgG:F

    .line 951
    iput v0, p0, mAvgB:F

    .line 952
    int-to-long v6, p4

    iput-wide v6, p0, mSumLux:J

    .line 953
    iput p5, p0, mSumCCT:I

    .line 954
    const/4 v6, 0x0

    iput v6, p0, mCountSensorValue:I

    .line 956
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 957
    .local v4, "time":J
    iget-object v6, p0, mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v6, v8}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 958
    iget-object v6, p0, mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v6, v8, v4, v5}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 971
    .end local v4    # "time":J
    :goto_5e
    return-void

    .line 961
    :cond_5f
    iget v6, p0, mCountSensorValue:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, mCountSensorValue:I

    goto :goto_5e

    .line 965
    :cond_66
    invoke-direct {p0}, initRgbAverage()V

    .line 966
    iput v2, p0, mLastAvgR:F

    .line 967
    iput v1, p0, mLastAvgG:F

    .line 968
    iput v0, p0, mLastAvgB:F

    .line 969
    iget-object v6, p0, mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v6, v8}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    goto :goto_5e
.end method

.method private initRgbAverage()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 881
    const/4 v0, 0x0

    iput v0, p0, mAvgB:F

    iput v0, p0, mAvgG:F

    iput v0, p0, mAvgR:F

    .line 882
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mSumLux:J

    .line 883
    iput v2, p0, mSumCCT:I

    .line 884
    iput v2, p0, mCountSensorValue:I

    .line 885
    iput-boolean v2, p0, mValidZone:Z

    .line 886
    return-void
.end method

.method private isInBoundary()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 870
    iget-boolean v1, p0, isLockScreenOn:Z

    if-eqz v1, :cond_6

    .line 877
    :cond_5
    :goto_5
    return v0

    .line 872
    :cond_6
    iget-boolean v1, p0, mEbookScenarioEnabled:Z

    if-eqz v1, :cond_c

    .line 873
    const/4 v0, 0x2

    goto :goto_5

    .line 874
    :cond_c
    iget-boolean v1, p0, mBrowserScenarioEnabled:Z

    if-eqz v1, :cond_5

    .line 875
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private max_num(II)I
    .registers 3
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 1348
    if-lt p1, p2, :cond_3

    .line 1351
    .end local p1    # "a":I
    :goto_2
    return p1

    .restart local p1    # "a":I
    :cond_3
    move p1, p2

    goto :goto_2
.end method

.method private min_num(II)I
    .registers 3
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 1340
    if-ge p1, p2, :cond_3

    .line 1343
    .end local p1    # "a":I
    :goto_2
    return p1

    .restart local p1    # "a":I
    :cond_3
    move p1, p2

    goto :goto_2
.end method

.method private monitorForegroundBrowser(Ljava/lang/String;II)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    .line 690
    iget-boolean v6, p0, mMultiWindowOn:Z

    if-nez v6, :cond_8

    iget-boolean v6, p0, mCoverState:Z

    if-nez v6, :cond_28

    .line 691
    :cond_8
    iget-boolean v6, p0, mBrowserScenarioEnabled:Z

    if-eqz v6, :cond_27

    .line 692
    const/4 v6, 0x0

    iput-boolean v6, p0, mBrowserScenarioEnabled:Z

    .line 693
    iget-boolean v6, p0, mSensorEnabled:Z

    if-eqz v6, :cond_17

    .line 694
    const/4 v6, 0x0

    invoke-direct {p0, v6}, enableRgbSensor(Z)V

    .line 695
    :cond_17
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 696
    .local v4, "time":J
    iget-object v6, p0, mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 697
    iget-object v6, p0, mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x7

    invoke-virtual {v6, v7, v4, v5}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 778
    .end local v4    # "time":J
    :cond_27
    :goto_27
    return-void

    .line 701
    :cond_28
    const/4 v1, 0x0

    .line 702
    .local v1, "isBrowser":Z
    const/4 v2, 0x0

    .line 703
    .local v2, "isReading":Z
    const/4 v3, 0x0

    .line 705
    .local v3, "isVideo":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2c
    iget-object v6, p0, MEDIA_PLAYER_NAMES:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_3c

    .line 706
    iget-object v6, p0, MEDIA_PLAYER_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 707
    const/4 v3, 0x1

    .line 712
    :cond_3c
    const/4 v0, 0x0

    :goto_3d
    iget-object v6, p0, BROWSER_NAMES:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_53

    .line 713
    iget-object v6, p0, BROWSER_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 714
    const/4 v1, 0x1

    .line 712
    :cond_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 705
    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 718
    :cond_53
    const-string/jumbo v6, "sys.ssrm.mdnie"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "9"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 719
    iget-boolean v6, p0, mEBookScenarioIntented:Z

    or-int/2addr v2, v6

    .line 721
    if-eqz v2, :cond_8e

    .line 722
    iget-boolean v6, p0, mEbookScenarioEnabled:Z

    if-nez v6, :cond_27

    .line 723
    const/4 v6, 0x1

    iput-boolean v6, p0, mEbookScenarioEnabled:Z

    .line 724
    iget-boolean v6, p0, mUseEnvironmentDisplayColorConfig:Z

    if-eqz v6, :cond_8c

    iget-boolean v6, p0, mEnableCondition:Z

    if-eqz v6, :cond_8c

    iget-boolean v6, p0, mEbookScenarioEnabled:Z

    if-nez v6, :cond_7c

    iget-boolean v6, p0, mBrowserScenarioEnabled:Z

    if-eqz v6, :cond_8c

    :cond_7c
    const/4 v6, 0x1

    :goto_7d
    iput-boolean v6, p0, mEnvironmentDisplayColorServiceEnable:Z

    .line 725
    iget-boolean v6, p0, mEnvironmentDisplayColorServiceEnable:Z

    if-eqz v6, :cond_27

    iget-boolean v6, p0, mSensorEnabled:Z

    if-nez v6, :cond_27

    .line 726
    const/4 v6, 0x1

    invoke-direct {p0, v6}, enableRgbSensor(Z)V

    goto :goto_27

    .line 724
    :cond_8c
    const/4 v6, 0x0

    goto :goto_7d

    .line 730
    :cond_8e
    iget-boolean v6, p0, mEbookScenarioEnabled:Z

    if-eqz v6, :cond_9e

    .line 731
    const/4 v6, 0x0

    iput-boolean v6, p0, mEbookScenarioEnabled:Z

    .line 732
    iget-boolean v6, p0, mSensorEnabled:Z

    if-eqz v6, :cond_27

    .line 733
    const/4 v6, 0x0

    invoke-direct {p0, v6}, enableRgbSensor(Z)V

    goto :goto_27

    .line 735
    :cond_9e
    if-eqz v3, :cond_bc

    .line 736
    iget-boolean v6, p0, mVideoScenarioEnabled:Z

    if-nez v6, :cond_27

    .line 737
    const/4 v6, 0x1

    iput-boolean v6, p0, mVideoScenarioEnabled:Z

    .line 738
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 739
    .restart local v4    # "time":J
    iget-object v6, p0, mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 740
    iget-object v6, p0, mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x4

    const-wide/16 v8, 0x1f4

    add-long/2addr v8, v4

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_27

    .line 742
    .end local v4    # "time":J
    :cond_bc
    if-eqz v1, :cond_fb

    .line 743
    iget-boolean v6, p0, mBrowserScenarioEnabled:Z

    if-nez v6, :cond_27

    .line 744
    const/4 v6, 0x1

    iput-boolean v6, p0, mBrowserScenarioEnabled:Z

    .line 745
    iget-boolean v6, p0, mUseEnvironmentDisplayColorConfig:Z

    if-eqz v6, :cond_f9

    iget-boolean v6, p0, mEnableCondition:Z

    if-eqz v6, :cond_f9

    iget-boolean v6, p0, mEbookScenarioEnabled:Z

    if-nez v6, :cond_d5

    iget-boolean v6, p0, mBrowserScenarioEnabled:Z

    if-eqz v6, :cond_f9

    :cond_d5
    const/4 v6, 0x1

    :goto_d6
    iput-boolean v6, p0, mEnvironmentDisplayColorServiceEnable:Z

    .line 747
    iget-boolean v6, p0, mEnvironmentDisplayColorServiceEnable:Z

    if-eqz v6, :cond_e4

    iget-boolean v6, p0, mSensorEnabled:Z

    if-nez v6, :cond_e4

    .line 748
    const/4 v6, 0x1

    invoke-direct {p0, v6}, enableRgbSensor(Z)V

    .line 750
    :cond_e4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 751
    .restart local v4    # "time":J
    iget-object v6, p0, mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 752
    iget-object v6, p0, mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x5

    iget-wide v8, p0, foregroundDelayTime:J

    add-long/2addr v8, v4

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_27

    .line 745
    .end local v4    # "time":J
    :cond_f9
    const/4 v6, 0x0

    goto :goto_d6

    .line 755
    :cond_fb
    iget-boolean v6, p0, mVideoScenarioEnabled:Z

    if-eqz v6, :cond_11c

    .line 756
    const/4 v6, 0x0

    iput-boolean v6, p0, mVideoScenarioEnabled:Z

    .line 757
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 758
    .restart local v4    # "time":J
    iget-object v6, p0, mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 759
    iget-object v6, p0, mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x6

    invoke-virtual {v6, v7, v4, v5}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 772
    .end local v4    # "time":J
    :cond_112
    :goto_112
    iget-boolean v6, p0, mSensorEnabled:Z

    if-eqz v6, :cond_27

    .line 773
    const/4 v6, 0x0

    invoke-direct {p0, v6}, enableRgbSensor(Z)V

    goto/16 :goto_27

    .line 760
    :cond_11c
    iget-boolean v6, p0, mBrowserScenarioEnabled:Z

    if-eqz v6, :cond_112

    .line 761
    const/4 v6, 0x0

    iput-boolean v6, p0, mBrowserScenarioEnabled:Z

    .line 762
    const-string v6, "com.android.systemui"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13f

    .line 763
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 764
    .restart local v4    # "time":J
    iget-object v6, p0, mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 765
    iget-object v6, p0, mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x7

    iget-wide v8, p0, exitMenuDelayTime:J

    add-long/2addr v8, v4

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_112

    .line 767
    .end local v4    # "time":J
    :cond_13f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 768
    .restart local v4    # "time":J
    iget-object v6, p0, mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 769
    iget-object v6, p0, mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x7

    iget-wide v8, p0, exitHomeDelayTime:J

    add-long/2addr v8, v4

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_112
.end method

.method private receive_multi_window_on_intent()V
    .registers 6

    .prologue
    .line 520
    iget-boolean v1, p0, mMultiWindowOn:Z

    if-nez v1, :cond_c

    .line 522
    :try_start_4
    iget-object v1, p0, mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    .line 529
    :cond_c
    :goto_c
    return-void

    .line 523
    :catch_d
    move-exception v0

    .line 524
    .local v0, "e":Landroid/os/RemoteException;
    iget-boolean v1, p0, DEBUG:Z

    if-eqz v1, :cond_c

    .line 525
    const-string v1, "AdaptiveDisplayColorService"

    const-string/jumbo v2, "failed to onForegroundActivitiesChanged"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method private receive_screen_off_intent()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 545
    iput-boolean v1, p0, mScreenStateOn:Z

    .line 546
    iget-boolean v0, p0, mScreenStateOn:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, mSettingCondition:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_c
    iput-boolean v0, p0, mEnableCondition:Z

    .line 547
    iget-boolean v0, p0, mSensorEnabled:Z

    if-eqz v0, :cond_15

    .line 548
    invoke-direct {p0, v1}, enableRgbSensor(Z)V

    .line 550
    :cond_15
    return-void

    :cond_16
    move v0, v1

    .line 546
    goto :goto_c
.end method

.method private receive_screen_on_intent()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 532
    iput-boolean v2, p0, mBrowserScenarioEnabled:Z

    .line 533
    iput-boolean v1, p0, mScreenStateOn:Z

    .line 534
    iget-boolean v3, p0, mScreenStateOn:Z

    if-eqz v3, :cond_19

    iget-boolean v3, p0, mSettingCondition:Z

    if-eqz v3, :cond_19

    :goto_e
    iput-boolean v1, p0, mEnableCondition:Z

    .line 536
    :try_start_10
    iget-object v1, p0, mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_18} :catch_1b

    .line 542
    :cond_18
    :goto_18
    return-void

    :cond_19
    move v1, v2

    .line 534
    goto :goto_e

    .line 537
    :catch_1b
    move-exception v0

    .line 538
    .local v0, "e":Landroid/os/RemoteException;
    iget-boolean v1, p0, DEBUG:Z

    if-eqz v1, :cond_18

    .line 539
    const-string v1, "AdaptiveDisplayColorService"

    const-string/jumbo v2, "failed to onForegroundActivitiesChanged"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method private sendForcedRGB(IIIII)V
    .registers 10
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .param p4, "lux"    # I
    .param p5, "cct"    # I

    .prologue
    .line 889
    add-int v1, p1, p2

    add-int v0, v1, p3

    .line 891
    .local v0, "sumRGB":I
    int-to-float v1, p1

    int-to-float v2, v0

    div-float/2addr v1, v2

    iput v1, p0, mAvgR:F

    .line 892
    int-to-float v1, p2

    int-to-float v2, v0

    div-float/2addr v1, v2

    iput v1, p0, mAvgG:F

    .line 893
    int-to-float v1, p3

    int-to-float v2, v0

    div-float/2addr v1, v2

    iput v1, p0, mAvgB:F

    .line 894
    int-to-long v2, p4

    iput-wide v2, p0, mSumLux:J

    .line 895
    iput p5, p0, mSumCCT:I

    .line 896
    const/4 v1, 0x1

    iput v1, p0, mCountSensorValue:I

    .line 898
    invoke-direct {p0}, sendRgbAverage()V

    .line 899
    return-void
.end method

.method private sendRgbAverage()V
    .registers 39

    .prologue
    .line 1023
    const/16 v27, 0x0

    .local v27, "scrR":I
    const/16 v26, 0x0

    .local v26, "scrG":I
    const/16 v24, 0x0

    .line 1024
    .local v24, "scrB":I
    const/16 v23, 0x0

    .local v23, "scr400LuxR":I
    const/16 v22, 0x0

    .local v22, "scr400LuxG":I
    const/16 v21, 0x0

    .line 1026
    .local v21, "scr400LuxB":I
    const/4 v6, 0x0

    .local v6, "adjustR":I
    const/4 v5, 0x0

    .local v5, "adjustG":I
    const/4 v4, 0x0

    .line 1027
    .local v4, "adjustB":I
    const-wide/16 v12, 0x1

    .local v12, "count_l":J
    const-wide/16 v8, 0x0

    .local v8, "avgLux":J
    const-wide/16 v18, 0x0

    .line 1029
    .local v18, "luxValue":J
    move-object/from16 v0, p0

    iget-boolean v15, v0, mEbookScenarioEnabled:Z

    .line 1030
    .local v15, "isEbookmode":Z
    const/16 v32, 0x0

    .line 1032
    .local v32, "white_scr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, mCountSensorValue:I

    move/from16 v33, v0

    if-lez v33, :cond_25b

    move-object/from16 v0, p0

    iget v10, v0, mCountSensorValue:I

    .line 1033
    .local v10, "count":I
    :goto_27
    int-to-long v12, v10

    .line 1034
    move-object/from16 v0, p0

    iget v0, v0, mAvgR:F

    move/from16 v33, v0

    int-to-float v0, v10

    move/from16 v34, v0

    div-float v20, v33, v34

    .line 1035
    .local v20, "r":F
    move-object/from16 v0, p0

    iget v0, v0, mAvgG:F

    move/from16 v33, v0

    int-to-float v0, v10

    move/from16 v34, v0

    div-float v14, v33, v34

    .line 1036
    .local v14, "g":F
    move-object/from16 v0, p0

    iget v0, v0, mAvgB:F

    move/from16 v33, v0

    int-to-float v0, v10

    move/from16 v34, v0

    div-float v7, v33, v34

    .line 1037
    .local v7, "b":F
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mLastAvgR:F

    .line 1038
    move-object/from16 v0, p0

    iput v14, v0, mLastAvgG:F

    .line 1039
    move-object/from16 v0, p0

    iput v7, v0, mLastAvgB:F

    .line 1040
    move-object/from16 v0, p0

    iget-wide v0, v0, mSumLux:J

    move-wide/from16 v34, v0

    div-long v8, v34, v12

    .line 1042
    const-string v33, "AdaptiveDisplayColorService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "AvgR : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget v0, v0, mLastAvgR:F

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", AvgG : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget v0, v0, mLastAvgG:F

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", AvgB : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget v0, v0, mLastAvgB:F

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", avg lux : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    invoke-direct/range {p0 .. p0}, initRgbAverage()V

    .line 1047
    :try_start_ac
    const-string v33, "/sys/class/mdnie/mdnie/sensorRGB"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1048
    if-eqz v32, :cond_f8

    .line 1049
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 1050
    .local v25, "scrDatas":[Ljava/lang/String;
    const/16 v33, 0x0

    aget-object v33, v25, v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, mPrevIntAvgR:I

    .line 1051
    const/16 v33, 0x1

    aget-object v33, v25, v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, mPrevIntAvgG:I

    .line 1052
    const/16 v33, 0x2

    aget-object v33, v25, v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, mPrevIntAvgB:I
    :try_end_f8
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_f8} :catch_25e
    .catchall {:try_start_ac .. :try_end_f8} :catchall_284

    .line 1057
    .end local v25    # "scrDatas":[Ljava/lang/String;
    :cond_f8
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsFirstStart:Z

    move/from16 v33, v0

    if-eqz v33, :cond_118

    .line 1058
    const/16 v33, 0xff

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, mDefaultR:I

    .line 1059
    const/16 v33, 0xff

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, mDefaultG:I

    .line 1060
    const/16 v33, 0xff

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, mDefaultB:I

    .line 1064
    :cond_118
    :goto_118
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsFirstStart:Z

    move/from16 v33, v0

    if-eqz v33, :cond_14e

    .line 1065
    if-eqz v15, :cond_2a6

    .line 1066
    move-object/from16 v0, p0

    iget v0, v0, mDefaultEbookR:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, mPrevIntAvgR:I

    .line 1067
    move-object/from16 v0, p0

    iget v0, v0, mDefaultEbookG:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, mPrevIntAvgG:I

    .line 1068
    move-object/from16 v0, p0

    iget v0, v0, mDefaultEbookB:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, mPrevIntAvgB:I

    .line 1074
    :goto_146
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsFirstStart:Z

    .line 1077
    :cond_14e
    move-wide/from16 v18, v8

    .line 1078
    const/16 v16, -0x1

    .line 1080
    .local v16, "log2Lux":I
    const-wide/16 v34, 0x4

    cmp-long v33, v18, v34

    if-ltz v33, :cond_19a

    const-wide/16 v34, 0x3e8

    cmp-long v33, v18, v34

    if-gtz v33, :cond_19a

    move-object/from16 v0, p0

    iget v0, v0, mLastAvgR:F

    move/from16 v33, v0

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v33, v34, v36

    if-ltz v33, :cond_19a

    move-object/from16 v0, p0

    iget v0, v0, mLastAvgG:F

    move/from16 v33, v0

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v33, v34, v36

    if-ltz v33, :cond_19a

    move-object/from16 v0, p0

    iget v0, v0, mLastAvgB:F

    move/from16 v33, v0

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v33, v34, v36

    if-gez v33, :cond_2e0

    .line 1081
    :cond_19a
    if-eqz v15, :cond_2cc

    .line 1082
    move-object/from16 v0, p0

    iget v0, v0, mDefaultEbookR:I

    move/from16 v27, v0

    .line 1083
    move-object/from16 v0, p0

    iget v0, v0, mDefaultEbookG:I

    move/from16 v26, v0

    .line 1084
    move-object/from16 v0, p0

    iget v0, v0, mDefaultEbookB:I

    move/from16 v24, v0

    .line 1196
    :goto_1ae
    if-eqz v27, :cond_25a

    if-eqz v26, :cond_25a

    if-eqz v24, :cond_25a

    .line 1198
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, mFinalIntAvgR:I

    .line 1199
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, mFinalIntAvgG:I

    .line 1200
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, mFinalIntAvgB:I

    .line 1201
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, mCountAnimationValue:I

    .line 1203
    move-object/from16 v0, p0

    iget-boolean v0, v0, DEBUG:Z

    move/from16 v33, v0

    if-eqz v33, :cond_20f

    .line 1204
    const-string v33, "AdaptiveDisplayColorService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "scrR : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", scrG : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", scrB : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    :cond_20f
    move-object/from16 v0, p0

    iget v0, v0, mPrevIntAvgR:I

    move/from16 v33, v0

    move/from16 v0, v27

    move/from16 v1, v33

    if-ne v0, v1, :cond_233

    move-object/from16 v0, p0

    iget v0, v0, mPrevIntAvgG:I

    move/from16 v33, v0

    move/from16 v0, v26

    move/from16 v1, v33

    if-ne v0, v1, :cond_233

    move-object/from16 v0, p0

    iget v0, v0, mPrevIntAvgB:I

    move/from16 v33, v0

    move/from16 v0, v24

    move/from16 v1, v33

    if-eq v0, v1, :cond_25a

    .line 1207
    :cond_233
    move-object/from16 v0, p0

    iget v0, v0, mPrevIntAvgR:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, mTempIntAvgR:I

    .line 1208
    move-object/from16 v0, p0

    iget v0, v0, mPrevIntAvgG:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, mTempIntAvgG:I

    .line 1209
    move-object/from16 v0, p0

    iget v0, v0, mPrevIntAvgB:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, mTempIntAvgB:I

    .line 1210
    invoke-direct/range {p0 .. p0}, animateScrRGB()V

    .line 1213
    :cond_25a
    return-void

    .line 1032
    .end local v7    # "b":F
    .end local v10    # "count":I
    .end local v14    # "g":F
    .end local v16    # "log2Lux":I
    .end local v20    # "r":F
    :cond_25b
    const/4 v10, 0x1

    goto/16 :goto_27

    .line 1054
    .restart local v7    # "b":F
    .restart local v10    # "count":I
    .restart local v14    # "g":F
    .restart local v20    # "r":F
    :catch_25e
    move-exception v11

    .line 1055
    .local v11, "e":Ljava/io/IOException;
    :try_start_25f
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V
    :try_end_262
    .catchall {:try_start_25f .. :try_end_262} :catchall_284

    .line 1057
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsFirstStart:Z

    move/from16 v33, v0

    if-eqz v33, :cond_118

    .line 1058
    const/16 v33, 0xff

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, mDefaultR:I

    .line 1059
    const/16 v33, 0xff

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, mDefaultG:I

    .line 1060
    const/16 v33, 0xff

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, mDefaultB:I

    goto/16 :goto_118

    .line 1057
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_284
    move-exception v33

    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsFirstStart:Z

    move/from16 v34, v0

    if-eqz v34, :cond_2a5

    .line 1058
    const/16 v34, 0xff

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, mDefaultR:I

    .line 1059
    const/16 v34, 0xff

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, mDefaultG:I

    .line 1060
    const/16 v34, 0xff

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, mDefaultB:I

    :cond_2a5
    throw v33

    .line 1070
    :cond_2a6
    move-object/from16 v0, p0

    iget v0, v0, mPrevIntAvgR:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, mDefaultR:I

    .line 1071
    move-object/from16 v0, p0

    iget v0, v0, mPrevIntAvgG:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, mDefaultG:I

    .line 1072
    move-object/from16 v0, p0

    iget v0, v0, mPrevIntAvgB:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, mDefaultB:I

    goto/16 :goto_146

    .line 1086
    .restart local v16    # "log2Lux":I
    :cond_2cc
    move-object/from16 v0, p0

    iget v0, v0, mDefaultR:I

    move/from16 v27, v0

    .line 1087
    move-object/from16 v0, p0

    iget v0, v0, mDefaultG:I

    move/from16 v26, v0

    .line 1088
    move-object/from16 v0, p0

    iget v0, v0, mDefaultB:I

    move/from16 v24, v0

    goto/16 :goto_1ae

    .line 1092
    :cond_2e0
    :goto_2e0
    const-wide/16 v34, 0x0

    cmp-long v33, v18, v34

    if-eqz v33, :cond_2ed

    .line 1093
    const/16 v33, 0x1

    shr-long v18, v18, v33

    .line 1094
    add-int/lit8 v16, v16, 0x1

    goto :goto_2e0

    .line 1097
    :cond_2ed
    move-object/from16 v0, p0

    iget-boolean v0, v0, mEbookScenarioEnabled:Z

    move/from16 v33, v0

    if-nez v33, :cond_2fd

    move-object/from16 v0, p0

    iget-boolean v0, v0, mBrowserScenarioEnabled:Z

    move/from16 v33, v0

    if-eqz v33, :cond_771

    .line 1098
    :cond_2fd
    if-eqz v15, :cond_4df

    .line 1099
    move-object/from16 v0, p0

    iget v6, v0, mEbookAdjustR:I

    .line 1100
    move-object/from16 v0, p0

    iget v5, v0, mEbookAdjustG:I

    .line 1101
    move-object/from16 v0, p0

    iget v4, v0, mEbookAdjustB:I

    .line 1108
    :goto_30b
    const v33, 0x4b189680    # 1.0E7f

    mul-float v33, v33, v20

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, mTestScrR:I

    move/from16 v34, v0

    div-int v31, v33, v34

    .line 1109
    .local v31, "testR":I
    const v33, 0x4b189680    # 1.0E7f

    mul-float v33, v33, v14

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, mTestScrG:I

    move/from16 v34, v0

    div-int v30, v33, v34

    .line 1110
    .local v30, "testG":I
    const v33, 0x4b189680    # 1.0E7f

    mul-float v33, v33, v7

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, mTestScrB:I

    move/from16 v34, v0

    div-int v29, v33, v34

    .line 1112
    .local v29, "testB":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, max_num(II)I

    move-result v17

    .line 1113
    .local v17, "maxValue":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, max_num(II)I

    move-result v17

    .line 1115
    move/from16 v0, v17

    move/from16 v1, v31

    if-ne v0, v1, :cond_4ff

    .line 1116
    const/16 v27, 0xff

    .line 1118
    move-object/from16 v0, p0

    iget-object v0, v0, mCoefficientValueArray:[F

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aget v33, v33, v34

    mul-float v33, v33, v20

    mul-float v33, v33, v20

    move-object/from16 v0, p0

    iget-object v0, v0, mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x1

    aget v34, v34, v35

    mul-float v34, v34, v14

    mul-float v34, v34, v14

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x2

    aget v34, v34, v35

    mul-float v34, v34, v20

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x3

    aget v34, v34, v35

    mul-float v34, v34, v14

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x4

    aget v34, v34, v35

    mul-float v34, v34, v20

    mul-float v34, v34, v14

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x5

    aget v34, v34, v35

    add-float v28, v33, v34

    .line 1120
    .local v28, "temp":F
    const/high16 v33, 0x437f0000    # 255.0f

    mul-float v33, v33, v28

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v26, v0

    .line 1121
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, min_num(II)I

    move-result v26

    .line 1123
    move-object/from16 v0, p0

    iget-object v0, v0, mCoefficientValueArray:[F

    move-object/from16 v33, v0

    const/16 v34, 0x6

    aget v33, v33, v34

    mul-float v33, v33, v20

    mul-float v33, v33, v20

    move-object/from16 v0, p0

    iget-object v0, v0, mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x7

    aget v34, v34, v35

    mul-float v34, v34, v7

    mul-float v34, v34, v7

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x8

    aget v34, v34, v35

    mul-float v34, v34, v20

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x9

    aget v34, v34, v35

    mul-float v34, v34, v7

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0xa

    aget v34, v34, v35

    mul-float v34, v34, v20

    mul-float v34, v34, v7

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0xb

    aget v34, v34, v35

    add-float v28, v33, v34

    .line 1125
    const/high16 v33, 0x437f0000    # 255.0f

    mul-float v33, v33, v28

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v24, v0

    .line 1126
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, min_num(II)I

    move-result v24

    .line 1155
    :goto_44b
    add-int v23, v27, v6

    .line 1156
    add-int v22, v26, v5

    .line 1157
    add-int v21, v24, v4

    .line 1159
    const-wide/16 v34, 0x190

    cmp-long v33, v8, v34

    if-gez v33, :cond_769

    .line 1161
    move-object/from16 v0, p0

    iget-boolean v0, v0, mEbookScenarioEnabled:Z

    move/from16 v33, v0

    if-eqz v33, :cond_6e9

    .line 1162
    rsub-int/lit8 v33, v16, 0x8

    move-object/from16 v0, p0

    iget v0, v0, mDefaultEbookR:I

    move/from16 v34, v0

    mul-int v33, v33, v34

    mul-int v34, v16, v23

    add-int v33, v33, v34

    add-int/lit8 v33, v33, 0x4

    div-int/lit8 v27, v33, 0x8

    .line 1163
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, min_num(II)I

    move-result v27

    .line 1165
    rsub-int/lit8 v33, v16, 0x8

    move-object/from16 v0, p0

    iget v0, v0, mDefaultEbookG:I

    move/from16 v34, v0

    mul-int v33, v33, v34

    mul-int v34, v16, v22

    add-int v33, v33, v34

    add-int/lit8 v33, v33, 0x4

    div-int/lit8 v26, v33, 0x8

    .line 1166
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, min_num(II)I

    move-result v26

    .line 1168
    rsub-int/lit8 v33, v16, 0x8

    move-object/from16 v0, p0

    iget v0, v0, mDefaultEbookB:I

    move/from16 v34, v0

    mul-int v33, v33, v34

    mul-int v34, v16, v21

    add-int v33, v33, v34

    add-int/lit8 v33, v33, 0x4

    div-int/lit8 v24, v33, 0x8

    .line 1169
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, min_num(II)I

    move-result v24

    goto/16 :goto_1ae

    .line 1103
    .end local v17    # "maxValue":I
    .end local v28    # "temp":F
    .end local v29    # "testB":I
    .end local v30    # "testG":I
    .end local v31    # "testR":I
    :cond_4df
    move-object/from16 v0, p0

    iget v0, v0, mDefaultR:I

    move/from16 v33, v0

    move/from16 v0, v33

    add-int/lit16 v6, v0, -0xff

    .line 1104
    move-object/from16 v0, p0

    iget v0, v0, mDefaultG:I

    move/from16 v33, v0

    move/from16 v0, v33

    add-int/lit16 v5, v0, -0xff

    .line 1105
    move-object/from16 v0, p0

    iget v0, v0, mDefaultB:I

    move/from16 v33, v0

    move/from16 v0, v33

    add-int/lit16 v4, v0, -0xff

    goto/16 :goto_30b

    .line 1128
    .restart local v17    # "maxValue":I
    .restart local v29    # "testB":I
    .restart local v30    # "testG":I
    .restart local v31    # "testR":I
    :cond_4ff
    move/from16 v0, v17

    move/from16 v1, v29

    if-ne v0, v1, :cond_5f7

    .line 1129
    move-object/from16 v0, p0

    iget-object v0, v0, mCoefficientValueArray:[F

    move-object/from16 v33, v0

    const/16 v34, 0xc

    aget v33, v33, v34

    mul-float v33, v33, v20

    mul-float v33, v33, v20

    move-object/from16 v0, p0

    iget-object v0, v0, mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0xd

    aget v34, v34, v35

    mul-float v34, v34, v7

    mul-float v34, v34, v7

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0xe

    aget v34, v34, v35

    mul-float v34, v34, v20

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0xf

    aget v34, v34, v35

    mul-float v34, v34, v7

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x10

    aget v34, v34, v35

    mul-float v34, v34, v20

    mul-float v34, v34, v7

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x11

    aget v34, v34, v35

    add-float v28, v33, v34

    .line 1131
    .restart local v28    # "temp":F
    const/high16 v33, 0x437f0000    # 255.0f

    mul-float v33, v33, v28

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v27, v0

    .line 1132
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, min_num(II)I

    move-result v27

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, mCoefficientValueArray:[F

    move-object/from16 v33, v0

    const/16 v34, 0x12

    aget v33, v33, v34

    mul-float v33, v33, v14

    mul-float v33, v33, v14

    move-object/from16 v0, p0

    iget-object v0, v0, mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x13

    aget v34, v34, v35

    mul-float v34, v34, v7

    mul-float v34, v34, v7

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x14

    aget v34, v34, v35

    mul-float v34, v34, v14

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x15

    aget v34, v34, v35

    mul-float v34, v34, v7

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x16

    aget v34, v34, v35

    mul-float v34, v34, v14

    mul-float v34, v34, v7

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x17

    aget v34, v34, v35

    add-float v28, v33, v34

    .line 1136
    const/high16 v33, 0x437f0000    # 255.0f

    mul-float v33, v33, v28

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v26, v0

    .line 1137
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, min_num(II)I

    move-result v26

    .line 1139
    const/16 v24, 0xff

    goto/16 :goto_44b

    .line 1142
    .end local v28    # "temp":F
    :cond_5f7
    move-object/from16 v0, p0

    iget-object v0, v0, mCoefficientValueArray:[F

    move-object/from16 v33, v0

    const/16 v34, 0x18

    aget v33, v33, v34

    mul-float v33, v33, v20

    mul-float v33, v33, v20

    move-object/from16 v0, p0

    iget-object v0, v0, mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x19

    aget v34, v34, v35

    mul-float v34, v34, v14

    mul-float v34, v34, v14

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x1a

    aget v34, v34, v35

    mul-float v34, v34, v20

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x1b

    aget v34, v34, v35

    mul-float v34, v34, v14

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x1c

    aget v34, v34, v35

    mul-float v34, v34, v20

    mul-float v34, v34, v14

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x1d

    aget v34, v34, v35

    add-float v28, v33, v34

    .line 1144
    .restart local v28    # "temp":F
    const/high16 v33, 0x437f0000    # 255.0f

    mul-float v33, v33, v28

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v27, v0

    .line 1145
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, min_num(II)I

    move-result v27

    .line 1147
    const/16 v26, 0xff

    .line 1149
    move-object/from16 v0, p0

    iget-object v0, v0, mCoefficientValueArray:[F

    move-object/from16 v33, v0

    const/16 v34, 0x1e

    aget v33, v33, v34

    mul-float v33, v33, v14

    mul-float v33, v33, v14

    move-object/from16 v0, p0

    iget-object v0, v0, mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x1f

    aget v34, v34, v35

    mul-float v34, v34, v7

    mul-float v34, v34, v7

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x20

    aget v34, v34, v35

    mul-float v34, v34, v14

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x21

    aget v34, v34, v35

    mul-float v34, v34, v7

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x22

    aget v34, v34, v35

    mul-float v34, v34, v14

    mul-float v34, v34, v7

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x23

    aget v34, v34, v35

    add-float v28, v33, v34

    .line 1151
    const/high16 v33, 0x437f0000    # 255.0f

    mul-float v33, v33, v28

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v24, v0

    .line 1152
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, min_num(II)I

    move-result v24

    goto/16 :goto_44b

    .line 1171
    :cond_6e9
    rsub-int/lit8 v33, v16, 0x8

    move-object/from16 v0, p0

    iget v0, v0, mDefaultR:I

    move/from16 v34, v0

    mul-int v33, v33, v34

    mul-int v34, v16, v23

    add-int v33, v33, v34

    add-int/lit8 v33, v33, 0x4

    div-int/lit8 v27, v33, 0x8

    .line 1172
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, min_num(II)I

    move-result v27

    .line 1174
    rsub-int/lit8 v33, v16, 0x8

    move-object/from16 v0, p0

    iget v0, v0, mDefaultG:I

    move/from16 v34, v0

    mul-int v33, v33, v34

    mul-int v34, v16, v22

    add-int v33, v33, v34

    add-int/lit8 v33, v33, 0x4

    div-int/lit8 v26, v33, 0x8

    .line 1175
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, min_num(II)I

    move-result v26

    .line 1177
    rsub-int/lit8 v33, v16, 0x8

    move-object/from16 v0, p0

    iget v0, v0, mDefaultB:I

    move/from16 v34, v0

    mul-int v33, v33, v34

    mul-int v34, v16, v21

    add-int v33, v33, v34

    add-int/lit8 v33, v33, 0x4

    div-int/lit8 v24, v33, 0x8

    .line 1178
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, min_num(II)I

    move-result v24

    goto/16 :goto_1ae

    .line 1183
    :cond_769
    move/from16 v27, v23

    .line 1184
    move/from16 v26, v22

    .line 1185
    move/from16 v24, v21

    goto/16 :goto_1ae

    .line 1190
    .end local v17    # "maxValue":I
    .end local v28    # "temp":F
    .end local v29    # "testB":I
    .end local v30    # "testG":I
    .end local v31    # "testR":I
    :cond_771
    const/16 v27, 0x0

    .line 1191
    const/16 v26, 0x0

    .line 1192
    const/16 v24, 0x0

    goto/16 :goto_1ae
.end method

.method private setAverageValue(IIIII)V
    .registers 16
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .param p4, "lux"    # I
    .param p5, "cct"    # I

    .prologue
    .line 902
    add-int v6, p1, p2

    add-int v3, v6, p3

    .line 903
    .local v3, "sumRGB":I
    const/4 v2, 0x0

    .local v2, "ratioR":F
    const/4 v1, 0x0

    .local v1, "ratioG":F
    const/4 v0, 0x0

    .line 905
    .local v0, "ratioB":F
    int-to-float v6, p1

    int-to-float v7, v3

    div-float v2, v6, v7

    .line 906
    int-to-float v6, p2

    int-to-float v7, v3

    div-float v1, v6, v7

    .line 907
    int-to-float v6, p3

    int-to-float v7, v3

    div-float v0, v6, v7

    .line 909
    iget v6, p0, mLastAvgR:F

    sub-float v6, v2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, mRgbThreshold:F

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_3d

    iget v6, p0, mLastAvgG:F

    sub-float v6, v1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, mRgbThreshold:F

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_3d

    iget v6, p0, mLastAvgB:F

    sub-float v6, v0, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, mRgbThreshold:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_99

    .line 910
    :cond_3d
    iget v6, p0, mAvgR:F

    add-float/2addr v6, v2

    iput v6, p0, mAvgR:F

    .line 911
    iget v6, p0, mAvgG:F

    add-float/2addr v6, v1

    iput v6, p0, mAvgG:F

    .line 912
    iget v6, p0, mAvgB:F

    add-float/2addr v6, v0

    iput v6, p0, mAvgB:F

    .line 913
    iget-wide v6, p0, mSumLux:J

    int-to-long v8, p4

    add-long/2addr v6, v8

    iput-wide v6, p0, mSumLux:J

    .line 914
    iget v6, p0, mSumCCT:I

    add-int/2addr v6, p5

    iput v6, p0, mSumCCT:I

    .line 915
    iget v6, p0, mCountSensorValue:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, mCountSensorValue:I

    .line 917
    iget v6, p0, mCountSensorValue:I

    const/16 v7, 0x14

    if-lt v6, v7, :cond_7e

    .line 918
    iget v6, p0, mAvgR:F

    iget v7, p0, mCountSensorValue:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, mLastAvgR:F

    .line 919
    iget v6, p0, mAvgG:F

    iget v7, p0, mCountSensorValue:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, mLastAvgG:F

    .line 920
    iget v6, p0, mAvgB:F

    iget v7, p0, mCountSensorValue:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, mLastAvgB:F

    .line 922
    invoke-direct {p0}, initRgbAverage()V

    .line 925
    :cond_7e
    iget-boolean v6, p0, mValidZone:Z

    if-nez v6, :cond_98

    .line 926
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 927
    .local v4, "time":J
    const/4 v6, 0x1

    iput-boolean v6, p0, mValidZone:Z

    .line 928
    iget-object v6, p0, mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 929
    iget-object v6, p0, mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x2

    const-wide/16 v8, 0x2710

    add-long/2addr v8, v4

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 936
    .end local v4    # "time":J
    :cond_98
    :goto_98
    return-void

    .line 933
    :cond_99
    invoke-direct {p0}, initRgbAverage()V

    .line 934
    iget-object v6, p0, mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    goto :goto_98
.end method

.method private setBrowserMode()V
    .registers 3

    .prologue
    .line 1281
    const-string/jumbo v0, "sys.mdniecontrolservice.mscon"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1282
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)Z

    .line 1283
    :cond_15
    return-void
.end method

.method private setVideoMode()V
    .registers 3

    .prologue
    .line 1276
    const-string/jumbo v0, "sys.mdniecontrolservice.mscon"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1277
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)Z

    .line 1278
    :cond_14
    return-void
.end method

.method private setting_is_changed()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 553
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 555
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "lcd_curtain"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_8c

    move v2, v3

    :goto_12
    iput-boolean v2, p0, mScreenCurtainEnabled:Z

    .line 556
    const-string/jumbo v2, "high_contrast"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_8e

    move v2, v3

    :goto_1e
    iput-boolean v2, p0, mNegativeColorEnabled:Z

    .line 557
    const-string v2, "color_blind"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_90

    move v2, v3

    :goto_29
    iput-boolean v2, p0, mColorBlindEnabled:Z

    .line 561
    const-string/jumbo v2, "psm_switch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_92

    move v2, v3

    :goto_35
    iput-boolean v2, p0, mPowerSavingEnabled:Z

    .line 563
    const-string/jumbo v2, "ultra_powersaving_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_94

    move v2, v3

    :goto_41
    iput-boolean v2, p0, mUltraPowerSavingModeEnabled:Z

    .line 564
    const-string/jumbo v2, "screen_mode_automatic_setting"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_96

    move v2, v3

    :goto_4d
    iput-boolean v2, p0, mAutoModeEnabled:Z

    .line 565
    iget-boolean v2, p0, mScreenCurtainEnabled:Z

    if-nez v2, :cond_98

    iget-boolean v2, p0, mNegativeColorEnabled:Z

    if-nez v2, :cond_98

    iget-boolean v2, p0, mColorBlindEnabled:Z

    if-nez v2, :cond_98

    iget-boolean v2, p0, mUltraPowerSavingModeEnabled:Z

    if-nez v2, :cond_98

    iget-boolean v2, p0, mPowerSavingEnabled:Z

    if-nez v2, :cond_98

    iget-boolean v2, p0, mAutoModeEnabled:Z

    if-eqz v2, :cond_98

    move v2, v3

    :goto_68
    iput-boolean v2, p0, mSettingCondition:Z

    .line 567
    iget-boolean v2, p0, mScreenStateOn:Z

    if-eqz v2, :cond_9a

    iget-boolean v2, p0, mSettingCondition:Z

    if-eqz v2, :cond_9a

    :goto_72
    iput-boolean v3, p0, mEnableCondition:Z

    .line 569
    iget-boolean v2, p0, mEnableCondition:Z

    if-eqz v2, :cond_aa

    .line 570
    iget-object v2, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v2, :cond_83

    .line 571
    iget-object v2, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v3, p0, mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 573
    :cond_83
    :try_start_83
    iget-object v2, p0, mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_83 .. :try_end_8b} :catch_9c

    .line 583
    :cond_8b
    :goto_8b
    return-void

    :cond_8c
    move v2, v4

    .line 555
    goto :goto_12

    :cond_8e
    move v2, v4

    .line 556
    goto :goto_1e

    :cond_90
    move v2, v4

    .line 557
    goto :goto_29

    :cond_92
    move v2, v4

    .line 561
    goto :goto_35

    :cond_94
    move v2, v4

    .line 563
    goto :goto_41

    :cond_96
    move v2, v4

    .line 564
    goto :goto_4d

    :cond_98
    move v2, v4

    .line 565
    goto :goto_68

    :cond_9a
    move v3, v4

    .line 567
    goto :goto_72

    .line 574
    :catch_9c
    move-exception v0

    .line 575
    .local v0, "e":Landroid/os/RemoteException;
    iget-boolean v2, p0, DEBUG:Z

    if-eqz v2, :cond_8b

    .line 576
    const-string v2, "AdaptiveDisplayColorService"

    const-string/jumbo v3, "failed to onForegroundActivitiesChanged"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b

    .line 580
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_aa
    iget-object v2, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v2, :cond_8b

    .line 581
    iget-object v2, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v3, p0, mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/cover/CoverManager;->unregisterListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    goto :goto_8b
.end method

.method private terminateScrRGB()V
    .registers 3

    .prologue
    .line 1291
    const-string/jumbo v0, "sys.mdniecontrolservice.mscon"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1292
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)Z

    .line 1293
    :cond_14
    return-void
.end method

.method private terminateVideoMode()V
    .registers 3

    .prologue
    .line 1286
    const-string/jumbo v0, "sys.mdniecontrolservice.mscon"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1287
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)Z

    .line 1288
    :cond_14
    return-void
.end method

.method private updateScreen()V
    .registers 7

    .prologue
    .line 1323
    :try_start_0
    const-string v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1324
    .local v2, "flinger":Landroid/os/IBinder;
    if-eqz v2, :cond_1f

    .line 1325
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1326
    .local v0, "data":Landroid/os/Parcel;
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1327
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1328
    const/16 v3, 0x3ee

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_20

    .line 1336
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v2    # "flinger":Landroid/os/IBinder;
    :cond_1f
    :goto_1f
    return-void

    .line 1331
    :catch_20
    move-exception v1

    .line 1332
    .local v1, "e":Landroid/os/RemoteException;
    iget-boolean v3, p0, DEBUG:Z

    if-eqz v3, :cond_1f

    .line 1333
    const-string v3, "AdaptiveDisplayColorService"

    const-string/jumbo v4, "failed to updateScreen"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method
