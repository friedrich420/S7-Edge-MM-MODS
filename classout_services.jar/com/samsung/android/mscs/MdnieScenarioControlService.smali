.class public Lcom/samsung/android/mscs/MdnieScenarioControlService;
.super Ljava/lang/Object;
.source "MdnieScenarioControlService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;,
        Lcom/samsung/android/mscs/MdnieScenarioControlService$SettingsObserver;,
        Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;
    }
.end annotation


# static fields
.field private static final MSC_ON:Ljava/lang/String; = "sys.mdniecontrolservice.mscon"

.field private static final TAG:Ljava/lang/String; = "MdnieScenarioControlService"


# instance fields
.field private final ACTION_DETAIL_VIEW_STATE_IN:Ljava/lang/String;

.field private ACTION_DETAIL_VIEW_STATE_IN_DEBOUNCE_MILLIS:I

.field private final ACTION_DETAIL_VIEW_STATE_OUT:Ljava/lang/String;

.field private ACTION_DETAIL_VIEW_STATE_OUT_DEBOUNCE_MILLIS:I

.field private final ACTION_GAME_MODE_STATE_IN:Ljava/lang/String;

.field private ACTION_GAME_MODE_STATE_IN_DEBOUNCE_MILLIS:I

.field private final ACTION_GAME_MODE_STATE_OUT:Ljava/lang/String;

.field private ACTION_GAME_MODE_STATE_OUT_DEBOUNCE_MILLIS:I

.field private final ACTION_MOVIE_PLAYER_STATE_IN:Ljava/lang/String;

.field private ACTION_MOVIE_PLAYER_STATE_IN_DEBOUNCE_MILLIS:I

.field private final ACTION_MOVIE_PLAYER_STATE_OUT:Ljava/lang/String;

.field private ACTION_MOVIE_PLAYER_STATE_OUT_DEBOUNCE_MILLIS:I

.field private final ACTION_NOTIFY_MULTIWINDOW_STATUS:Ljava/lang/String;

.field private ACTION_NOTIFY_MULTIWINDOW_STATUS_DEBOUNCE_MILLIS:I

.field private ACTION_SET_UI_MODE_DEBOUNCE_MILLIS:I

.field private ANDROID_APP_LAUNCHER:[Ljava/lang/String;

.field private CAMERA_APP_LAUNCHER:[Ljava/lang/String;

.field private CHROMEBROWSER_APP_LAUNCHER:[Ljava/lang/String;

.field private final DEBUG:Z

.field private DMB_APP_LAUNCHER:[Ljava/lang/String;

.field private EBOOK_APP_LAUNCHER:[Ljava/lang/String;

.field private EMAIL_APP_LAUNCHER:[Ljava/lang/String;

.field private final EXTRA_MULTIWINDOW_RUNNING:Ljava/lang/String;

.field private FOREGROUND_RESCAN_DEBOUNCE_MILLIS:I

.field private GALLERY_APP_LAUNCHER:[Ljava/lang/String;

.field private GALLERY_APP_LAUNCHER_FROM_CAMERA:[Ljava/lang/String;

.field private GALLERY_APP_MULTI_VIEW_LAUNCHER:[Ljava/lang/String;

.field private GALLERY_APP_OPTION_LAUNCHER:[Ljava/lang/String;

.field private IS_CAMERA_APP_DEBOUNCE_MILLIS:I

.field private IS_GALLERY_FROM_CAMERA_DEBOUNCE_MILLIS:I

.field private MDNIE_GAME_HIGH_MODE:Ljava/lang/String;

.field private MDNIE_GAME_LOW_MODE:Ljava/lang/String;

.field private MDNIE_GAME_MID_MODE:Ljava/lang/String;

.field private final MSG_FOREGROUND_APP:I

.field private final MSG_RESCAN_FOREGROUND_APP:I

.field private final MSG_SET_BROWSER_MODE:I

.field private final MSG_SET_CAMERA_MODE:I

.field private final MSG_SET_DMB_MODE:I

.field private final MSG_SET_EBOOK_MODE:I

.field private final MSG_SET_EMAIL_MODE:I

.field private final MSG_SET_GALLERY_MODE:I

.field private final MSG_SET_GALLERY_OUT_MODE:I

.field private final MSG_SET_GAME_HIGH_MODE:I

.field private final MSG_SET_GAME_LOW_MODE:I

.field private final MSG_SET_GAME_MID_MODE:I

.field private final MSG_SET_GAME_OUT_MODE:I

.field private final MSG_SET_UI_MODE:I

.field private final MSG_SET_VIDEO_MODE:I

.field private final MSG_SET_VIDEO_OUT_MODE:I

.field private SBROWSER_APP_LAUNCHER:[Ljava/lang/String;

.field private final SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

.field private final SCREEN_MODE_SETTING:Ljava/lang/String;

.field private SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

.field private SVIDEO_APP_OPTION_LAUNCHER:[Ljava/lang/String;

.field private VIDEO_APP_LAUNCHER:[Ljava/lang/String;

.field private first_MultiWindowOn:Z

.field private isLockScreenOn:Z

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAutoModeEnabled:Z

.field private mBrowserScenarioEnabled:Z

.field private mCameraScenarioEnabled:Z

.field private mColorBlindEnabled:Z

.field private final mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverState:Z

.field private mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mDMBScenarioEnabled:Z

.field private mDetailViewState:Z

.field private mEBookScenarioIntented:Z

.field private mEbookScenarioEnabled:Z

.field private mEmailScenarioEnabled:Z

.field private mEnableCondition:Z

.field private mForegroundThreadWork:Z

.field private mGalleryAppLauncher:Z

.field private mGalleryModeFirst:Z

.field private mGalleryMultiView:Z

.field private mGalleryMultiViewLauncher:Z

.field private mGalleryOptionScenarioEnabled:Z

.field private mGalleryScenarioEnabled:Z

.field private mGameModeLauncher:Z

.field private mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIActivityManager:Landroid/app/IActivityManager;

.field private mIsFirstStart:Z

.field private mIsFromCamera:Z

.field private mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

.field private mMultiWindowOn:Z

.field private mNegativeColorEnabled:Z

.field private mNotGoUI:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerSavingEnabled:Z

.field mProcessObserver:Landroid/app/IProcessObserver;

.field private mQuickViewState:Z

.field private mSVideoOptionScenarioEnabled:Z

.field private mSVideoScenarioEnabled:Z

.field private mScrFileExists:Z

.field private mScreenCurtainEnabled:Z

.field private mScreenStateOn:Z

.field private mScreenWatchingReceiver:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;

.field private mSettingCondition:Z

.field private mSettingsObserver:Lcom/samsung/android/mscs/MdnieScenarioControlService$SettingsObserver;

.field private mUIScenarioEnabled:Z

.field private mUltraPowerSavingModeEnabled:Z

.field private mUseMdnieScenarioControlConfig:Z

.field private mVideoAppLauncher:Z

.field private mVideoEnd:Z

.field private mVideoEndNotUI:Z

.field private mVideoScenarioEnabled:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string/jumbo v4, "eng"

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, DEBUG:Z

    .line 87
    iput v6, p0, MSG_FOREGROUND_APP:I

    .line 88
    iput v8, p0, MSG_RESCAN_FOREGROUND_APP:I

    .line 89
    const/4 v4, 0x2

    iput v4, p0, MSG_SET_UI_MODE:I

    .line 90
    const/4 v4, 0x3

    iput v4, p0, MSG_SET_BROWSER_MODE:I

    .line 91
    const/4 v4, 0x4

    iput v4, p0, MSG_SET_GALLERY_MODE:I

    .line 92
    const/4 v4, 0x5

    iput v4, p0, MSG_SET_CAMERA_MODE:I

    .line 93
    const/4 v4, 0x6

    iput v4, p0, MSG_SET_VIDEO_MODE:I

    .line 94
    const/4 v4, 0x7

    iput v4, p0, MSG_SET_EMAIL_MODE:I

    .line 95
    const/16 v4, 0x8

    iput v4, p0, MSG_SET_EBOOK_MODE:I

    .line 96
    const/16 v4, 0x9

    iput v4, p0, MSG_SET_DMB_MODE:I

    .line 97
    const/16 v4, 0xa

    iput v4, p0, MSG_SET_GALLERY_OUT_MODE:I

    .line 98
    const/16 v4, 0xb

    iput v4, p0, MSG_SET_VIDEO_OUT_MODE:I

    .line 99
    const/16 v4, 0xc

    iput v4, p0, MSG_SET_GAME_LOW_MODE:I

    .line 100
    const/16 v4, 0xd

    iput v4, p0, MSG_SET_GAME_MID_MODE:I

    .line 101
    const/16 v4, 0xe

    iput v4, p0, MSG_SET_GAME_HIGH_MODE:I

    .line 102
    const/16 v4, 0xf

    iput v4, p0, MSG_SET_GAME_OUT_MODE:I

    .line 104
    iput v6, p0, FOREGROUND_RESCAN_DEBOUNCE_MILLIS:I

    .line 105
    iput v6, p0, ACTION_DETAIL_VIEW_STATE_IN_DEBOUNCE_MILLIS:I

    .line 106
    iput v6, p0, ACTION_DETAIL_VIEW_STATE_OUT_DEBOUNCE_MILLIS:I

    .line 107
    iput v6, p0, ACTION_MOVIE_PLAYER_STATE_IN_DEBOUNCE_MILLIS:I

    .line 108
    iput v6, p0, ACTION_MOVIE_PLAYER_STATE_OUT_DEBOUNCE_MILLIS:I

    .line 109
    iput v6, p0, ACTION_GAME_MODE_STATE_IN_DEBOUNCE_MILLIS:I

    .line 110
    iput v6, p0, ACTION_GAME_MODE_STATE_OUT_DEBOUNCE_MILLIS:I

    .line 111
    iput v6, p0, ACTION_SET_UI_MODE_DEBOUNCE_MILLIS:I

    .line 112
    iput v6, p0, ACTION_NOTIFY_MULTIWINDOW_STATUS_DEBOUNCE_MILLIS:I

    .line 113
    iput v6, p0, IS_GALLERY_FROM_CAMERA_DEBOUNCE_MILLIS:I

    .line 114
    iput v6, p0, IS_CAMERA_APP_DEBOUNCE_MILLIS:I

    .line 116
    const-string/jumbo v4, "screen_mode_automatic_setting"

    iput-object v4, p0, SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

    .line 117
    const-string/jumbo v4, "screen_mode_setting"

    iput-object v4, p0, SCREEN_MODE_SETTING:Ljava/lang/String;

    .line 118
    const-string v4, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    iput-object v4, p0, ACTION_NOTIFY_MULTIWINDOW_STATUS:Ljava/lang/String;

    .line 119
    const-string v4, "com.sec.android.extra.MULTIWINDOW_RUNNING"

    iput-object v4, p0, EXTRA_MULTIWINDOW_RUNNING:Ljava/lang/String;

    .line 121
    const-string v4, "ACTION_DETAIL_VIEW_STATE_IN"

    iput-object v4, p0, ACTION_DETAIL_VIEW_STATE_IN:Ljava/lang/String;

    .line 122
    const-string v4, "ACTION_DETAIL_VIEW_STATE_OUT"

    iput-object v4, p0, ACTION_DETAIL_VIEW_STATE_OUT:Ljava/lang/String;

    .line 124
    const-string v4, "ACTION_MOVIE_PLAYER_STATE_IN"

    iput-object v4, p0, ACTION_MOVIE_PLAYER_STATE_IN:Ljava/lang/String;

    .line 125
    const-string v4, "ACTION_MOVIE_PLAYER_STATE_OUT"

    iput-object v4, p0, ACTION_MOVIE_PLAYER_STATE_OUT:Ljava/lang/String;

    .line 128
    const-string v4, "ACTION_GAME_MODE_STATE_IN"

    iput-object v4, p0, ACTION_GAME_MODE_STATE_IN:Ljava/lang/String;

    .line 129
    const-string v4, "ACTION_GAME_MODE_STATE_OUT"

    iput-object v4, p0, ACTION_GAME_MODE_STATE_OUT:Ljava/lang/String;

    .line 131
    const-string v4, "MDNIE_GAME_LOW_MODE"

    iput-object v4, p0, MDNIE_GAME_LOW_MODE:Ljava/lang/String;

    .line 132
    const-string v4, "MDNIE_GAME_MID_MODE"

    iput-object v4, p0, MDNIE_GAME_MID_MODE:Ljava/lang/String;

    .line 133
    const-string v4, "MDNIE_GAME_HIGH_MODE"

    iput-object v4, p0, MDNIE_GAME_HIGH_MODE:Ljava/lang/String;

    .line 135
    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, ANDROID_APP_LAUNCHER:[Ljava/lang/String;

    .line 136
    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, SBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    .line 137
    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, CHROMEBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    .line 138
    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, GALLERY_APP_LAUNCHER:[Ljava/lang/String;

    .line 139
    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, GALLERY_APP_MULTI_VIEW_LAUNCHER:[Ljava/lang/String;

    .line 140
    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, GALLERY_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    .line 141
    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, GALLERY_APP_LAUNCHER_FROM_CAMERA:[Ljava/lang/String;

    .line 142
    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, CAMERA_APP_LAUNCHER:[Ljava/lang/String;

    .line 143
    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

    .line 144
    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, SVIDEO_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    .line 145
    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, VIDEO_APP_LAUNCHER:[Ljava/lang/String;

    .line 146
    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, EMAIL_APP_LAUNCHER:[Ljava/lang/String;

    .line 147
    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, EBOOK_APP_LAUNCHER:[Ljava/lang/String;

    .line 148
    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, DMB_APP_LAUNCHER:[Ljava/lang/String;

    .line 152
    iput-boolean v6, p0, mUseMdnieScenarioControlConfig:Z

    .line 154
    iput-boolean v6, p0, mEnableCondition:Z

    .line 155
    iput-boolean v6, p0, mScreenStateOn:Z

    .line 157
    iput-boolean v6, p0, mNotGoUI:Z

    .line 158
    iput-boolean v6, p0, mVideoEndNotUI:Z

    .line 159
    iput-object v7, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 168
    iput-object v7, p0, mPowerManager:Landroid/os/PowerManager;

    .line 173
    iput-boolean v6, p0, isLockScreenOn:Z

    .line 174
    iput-boolean v6, p0, mMultiWindowOn:Z

    .line 175
    iput-boolean v6, p0, first_MultiWindowOn:Z

    .line 176
    iput-boolean v6, p0, mForegroundThreadWork:Z

    .line 177
    iput-boolean v6, p0, mGalleryModeFirst:Z

    .line 179
    iput-boolean v6, p0, mUltraPowerSavingModeEnabled:Z

    .line 180
    iput-boolean v6, p0, mScreenCurtainEnabled:Z

    .line 181
    iput-boolean v6, p0, mNegativeColorEnabled:Z

    .line 182
    iput-boolean v6, p0, mColorBlindEnabled:Z

    .line 183
    iput-boolean v6, p0, mAutoModeEnabled:Z

    .line 184
    iput-boolean v6, p0, mEBookScenarioIntented:Z

    .line 186
    iput-boolean v6, p0, mUIScenarioEnabled:Z

    .line 187
    iput-boolean v6, p0, mBrowserScenarioEnabled:Z

    .line 188
    iput-boolean v6, p0, mGalleryScenarioEnabled:Z

    .line 189
    iput-boolean v6, p0, mGalleryOptionScenarioEnabled:Z

    .line 190
    iput-boolean v6, p0, mCameraScenarioEnabled:Z

    .line 191
    iput-boolean v6, p0, mSVideoScenarioEnabled:Z

    .line 192
    iput-boolean v6, p0, mSVideoOptionScenarioEnabled:Z

    .line 193
    iput-boolean v6, p0, mVideoScenarioEnabled:Z

    .line 194
    iput-boolean v6, p0, mEmailScenarioEnabled:Z

    .line 195
    iput-boolean v6, p0, mEbookScenarioEnabled:Z

    .line 196
    iput-boolean v6, p0, mDMBScenarioEnabled:Z

    .line 198
    iput-boolean v6, p0, mGalleryMultiViewLauncher:Z

    .line 199
    iput-boolean v6, p0, mGalleryAppLauncher:Z

    .line 200
    iput-boolean v6, p0, mVideoAppLauncher:Z

    .line 202
    iput-boolean v6, p0, mGalleryMultiView:Z

    .line 204
    iput-boolean v6, p0, mGameModeLauncher:Z

    .line 206
    iput-boolean v6, p0, mIsFromCamera:Z

    .line 207
    iput-boolean v6, p0, mDetailViewState:Z

    .line 208
    iput-boolean v6, p0, mQuickViewState:Z

    .line 209
    iput-boolean v6, p0, mVideoEnd:Z

    .line 212
    iput-boolean v6, p0, mSettingCondition:Z

    .line 213
    iput-boolean v6, p0, mPowerSavingEnabled:Z

    .line 215
    iput-boolean v6, p0, mIsFirstStart:Z

    .line 216
    iput-boolean v8, p0, mCoverState:Z

    .line 427
    new-instance v4, Lcom/samsung/android/mscs/MdnieScenarioControlService$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService$1;-><init>(Lcom/samsung/android/mscs/MdnieScenarioControlService;)V

    iput-object v4, p0, mProcessObserver:Landroid/app/IProcessObserver;

    .line 563
    new-instance v4, Lcom/samsung/android/mscs/MdnieScenarioControlService$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService$2;-><init>(Lcom/samsung/android/mscs/MdnieScenarioControlService;)V

    iput-object v4, p0, mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 219
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 221
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "MdnieScenarioControlServiceThread"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, mHandlerThread:Landroid/os/HandlerThread;

    .line 222
    iget-object v4, p0, mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 223
    new-instance v4, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    iget-object v5, p0, mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;-><init>(Lcom/samsung/android/mscs/MdnieScenarioControlService;Landroid/os/Looper;)V

    iput-object v4, p0, mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    .line 225
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11200d8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, mUseMdnieScenarioControlConfig:Z

    .line 227
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070083

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, ANDROID_APP_LAUNCHER:[Ljava/lang/String;

    .line 228
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070084

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, SBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    .line 229
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070085

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, CHROMEBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    .line 230
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070086

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, GALLERY_APP_LAUNCHER:[Ljava/lang/String;

    .line 231
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070087

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, GALLERY_APP_MULTI_VIEW_LAUNCHER:[Ljava/lang/String;

    .line 232
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070088

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, GALLERY_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    .line 233
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070089

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, GALLERY_APP_LAUNCHER_FROM_CAMERA:[Ljava/lang/String;

    .line 234
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107008a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, CAMERA_APP_LAUNCHER:[Ljava/lang/String;

    .line 235
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107008b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

    .line 236
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107008c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, SVIDEO_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    .line 237
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107008d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, VIDEO_APP_LAUNCHER:[Ljava/lang/String;

    .line 238
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107008e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, EMAIL_APP_LAUNCHER:[Ljava/lang/String;

    .line 239
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107008f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, EBOOK_APP_LAUNCHER:[Ljava/lang/String;

    .line 240
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070090

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, DMB_APP_LAUNCHER:[Ljava/lang/String;

    .line 242
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00e4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, FOREGROUND_RESCAN_DEBOUNCE_MILLIS:I

    .line 243
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00e5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, ACTION_DETAIL_VIEW_STATE_IN_DEBOUNCE_MILLIS:I

    .line 244
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00e6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, ACTION_DETAIL_VIEW_STATE_OUT_DEBOUNCE_MILLIS:I

    .line 245
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00e7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, ACTION_MOVIE_PLAYER_STATE_IN_DEBOUNCE_MILLIS:I

    .line 246
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00e8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, ACTION_MOVIE_PLAYER_STATE_OUT_DEBOUNCE_MILLIS:I

    .line 247
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00e9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, ACTION_GAME_MODE_STATE_IN_DEBOUNCE_MILLIS:I

    .line 248
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00ea

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, ACTION_GAME_MODE_STATE_OUT_DEBOUNCE_MILLIS:I

    .line 249
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00eb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, ACTION_SET_UI_MODE_DEBOUNCE_MILLIS:I

    .line 250
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00ec

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, ACTION_NOTIFY_MULTIWINDOW_STATUS_DEBOUNCE_MILLIS:I

    .line 251
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00ed

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, IS_GALLERY_FROM_CAMERA_DEBOUNCE_MILLIS:I

    .line 252
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00ee

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, IS_CAMERA_APP_DEBOUNCE_MILLIS:I

    .line 254
    const-string/jumbo v4, "sys.mdniecontrolservice.mscon"

    const-string/jumbo v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance v4, Lcom/samsung/android/mscs/MdnieScenarioControlService$SettingsObserver;

    iget-object v5, p0, mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/mscs/MdnieScenarioControlService$SettingsObserver;-><init>(Lcom/samsung/android/mscs/MdnieScenarioControlService;Landroid/os/Handler;)V

    iput-object v4, p0, mSettingsObserver:Lcom/samsung/android/mscs/MdnieScenarioControlService$SettingsObserver;

    .line 258
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 260
    .local v3, "resolver":Landroid/content/ContentResolver;
    new-instance v4, Lcom/samsung/android/cover/CoverManager;

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 262
    const-string/jumbo v4, "lcd_curtain"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, mSettingsObserver:Lcom/samsung/android/mscs/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 263
    const-string/jumbo v4, "high_contrast"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, mSettingsObserver:Lcom/samsung/android/mscs/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 264
    const-string v4, "color_blind"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, mSettingsObserver:Lcom/samsung/android/mscs/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 268
    const-string/jumbo v4, "psm_switch"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, mSettingsObserver:Lcom/samsung/android/mscs/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 270
    const-string/jumbo v4, "ultra_powersaving_mode"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, mSettingsObserver:Lcom/samsung/android/mscs/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 271
    const-string/jumbo v4, "screen_mode_automatic_setting"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, mSettingsObserver:Lcom/samsung/android/mscs/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 273
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 274
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    const-string v4, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    const-string v4, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    const-string v4, "ACTION_DETAIL_VIEW_STATE_IN"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    const-string v4, "ACTION_DETAIL_VIEW_STATE_OUT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 281
    const-string v4, "ACTION_MOVIE_PLAYER_STATE_IN"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 282
    const-string v4, "ACTION_MOVIE_PLAYER_STATE_OUT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    const-string v4, "ACTION_GAME_MODE_STATE_IN"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    const-string v4, "ACTION_GAME_MODE_STATE_OUT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    iget-object v4, p0, mContext:Landroid/content/Context;

    new-instance v5, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;

    invoke-direct {v5, p0, v7}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/mscs/MdnieScenarioControlService;Lcom/samsung/android/mscs/MdnieScenarioControlService$1;)V

    const-string v6, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v4, v5, v1, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 288
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    iput-object v4, p0, mActivityManager:Landroid/app/ActivityManager;

    .line 289
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string/jumbo v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, p0, mPowerManager:Landroid/os/PowerManager;

    .line 290
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string/jumbo v5, "mDNIe"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/mdnie/MdnieManager;

    iput-object v4, p0, mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    .line 292
    iget-boolean v4, p0, mUseMdnieScenarioControlConfig:Z

    if-eqz v4, :cond_3b3

    .line 293
    const-string/jumbo v4, "sys.mdniecontrolservice.mscon"

    const-string/jumbo v5, "true"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_3b3
    iput-boolean v8, p0, mScreenStateOn:Z

    .line 296
    invoke-direct {p0}, setting_is_changed()V

    .line 299
    :try_start_3b8
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 300
    .local v2, "mIActivityManager":Landroid/app/IActivityManager;
    iget-object v4, p0, mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v2, v4}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_3c1
    .catch Landroid/os/RemoteException; {:try_start_3b8 .. :try_end_3c1} :catch_3c2

    .line 306
    .end local v2    # "mIActivityManager":Landroid/app/IActivityManager;
    :cond_3c1
    :goto_3c1
    return-void

    .line 301
    :catch_3c2
    move-exception v0

    .line 302
    .local v0, "e":Landroid/os/RemoteException;
    iget-boolean v4, p0, DEBUG:Z

    if-eqz v4, :cond_3c1

    .line 303
    const-string v4, "MdnieScenarioControlService"

    const-string/jumbo v5, "failed to registerProcessObserver"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c1
.end method

.method static synthetic access$1002(Lcom/samsung/android/mscs/MdnieScenarioControlService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, mDetailViewState:Z

    return p1
.end method

.method static synthetic access$102(Lcom/samsung/android/mscs/MdnieScenarioControlService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, isLockScreenOn:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/mscs/MdnieScenarioControlService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    .line 81
    iget v0, p0, ACTION_DETAIL_VIEW_STATE_OUT_DEBOUNCE_MILLIS:I

    return v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/mscs/MdnieScenarioControlService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    .line 81
    iget v0, p0, ACTION_MOVIE_PLAYER_STATE_IN_DEBOUNCE_MILLIS:I

    return v0
.end method

.method static synthetic access$1302(Lcom/samsung/android/mscs/MdnieScenarioControlService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, mVideoEnd:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/samsung/android/mscs/MdnieScenarioControlService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    .line 81
    iget v0, p0, ACTION_MOVIE_PLAYER_STATE_OUT_DEBOUNCE_MILLIS:I

    return v0
.end method

.method static synthetic access$1502(Lcom/samsung/android/mscs/MdnieScenarioControlService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, mGameModeLauncher:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    .line 81
    iget-object v0, p0, MDNIE_GAME_LOW_MODE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/mscs/MdnieScenarioControlService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    .line 81
    iget v0, p0, ACTION_GAME_MODE_STATE_IN_DEBOUNCE_MILLIS:I

    return v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    .line 81
    iget-object v0, p0, MDNIE_GAME_MID_MODE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    .line 81
    iget-object v0, p0, MDNIE_GAME_HIGH_MODE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/mscs/MdnieScenarioControlService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    .line 81
    invoke-direct {p0}, receive_screen_on_intent()V

    return-void
.end method

.method static synthetic access$2000(Lcom/samsung/android/mscs/MdnieScenarioControlService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    .line 81
    iget v0, p0, ACTION_GAME_MODE_STATE_OUT_DEBOUNCE_MILLIS:I

    return v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/mscs/MdnieScenarioControlService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    .line 81
    invoke-direct {p0}, setting_is_changed()V

    return-void
.end method

.method static synthetic access$2200(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Landroid/app/ActivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    .line 81
    iget-object v0, p0, mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/mscs/MdnieScenarioControlService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    .line 81
    iget v0, p0, FOREGROUND_RESCAN_DEBOUNCE_MILLIS:I

    return v0
.end method

.method static synthetic access$2402(Lcom/samsung/android/mscs/MdnieScenarioControlService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, mCoverState:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/samsung/android/mscs/MdnieScenarioControlService;Ljava/lang/String;II)V
    .registers 4
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, monitorForegroundActivity(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$2600(Lcom/samsung/android/mscs/MdnieScenarioControlService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    invoke-direct {p0, p1}, setVideoMode(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/samsung/android/mscs/MdnieScenarioControlService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    .line 81
    invoke-direct {p0}, setBrowserMode()V

    return-void
.end method

.method static synthetic access$2800(Lcom/samsung/android/mscs/MdnieScenarioControlService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    invoke-direct {p0, p1}, setGalleryMode(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/samsung/android/mscs/MdnieScenarioControlService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0, p1}, setGameMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/mscs/MdnieScenarioControlService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    .line 81
    invoke-direct {p0}, receive_screen_off_intent()V

    return-void
.end method

.method static synthetic access$3000(Lcom/samsung/android/mscs/MdnieScenarioControlService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    .line 81
    invoke-direct {p0}, setCameraMode()V

    return-void
.end method

.method static synthetic access$3100(Lcom/samsung/android/mscs/MdnieScenarioControlService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    .line 81
    invoke-direct {p0}, setEmailMode()V

    return-void
.end method

.method static synthetic access$3200(Lcom/samsung/android/mscs/MdnieScenarioControlService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    .line 81
    invoke-direct {p0}, setEbookMode()V

    return-void
.end method

.method static synthetic access$3300(Lcom/samsung/android/mscs/MdnieScenarioControlService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    .line 81
    invoke-direct {p0}, setDMBMode()V

    return-void
.end method

.method static synthetic access$3400(Lcom/samsung/android/mscs/MdnieScenarioControlService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    .line 81
    invoke-direct {p0}, setUIMode()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    .line 81
    iget-boolean v0, p0, mMultiWindowOn:Z

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/android/mscs/MdnieScenarioControlService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, mMultiWindowOn:Z

    return p1
.end method

.method static synthetic access$502(Lcom/samsung/android/mscs/MdnieScenarioControlService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, first_MultiWindowOn:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/android/mscs/MdnieScenarioControlService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    .line 81
    invoke-direct {p0}, receive_multi_window_on_intent()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/mscs/MdnieScenarioControlService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    .line 81
    invoke-direct {p0}, scenario_enable_reset()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    .line 81
    iget-object v0, p0, mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/mscs/MdnieScenarioControlService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    .line 81
    iget v0, p0, ACTION_DETAIL_VIEW_STATE_IN_DEBOUNCE_MILLIS:I

    return v0
.end method

.method private mdnie_reset()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1036
    iput-boolean v0, p0, mUIScenarioEnabled:Z

    .line 1037
    iput-boolean v0, p0, mBrowserScenarioEnabled:Z

    .line 1038
    iput-boolean v0, p0, mGalleryScenarioEnabled:Z

    .line 1039
    iput-boolean v0, p0, mGalleryOptionScenarioEnabled:Z

    .line 1040
    iput-boolean v0, p0, mCameraScenarioEnabled:Z

    .line 1041
    iput-boolean v0, p0, mSVideoScenarioEnabled:Z

    .line 1042
    iput-boolean v0, p0, mSVideoOptionScenarioEnabled:Z

    .line 1043
    iput-boolean v0, p0, mVideoScenarioEnabled:Z

    .line 1044
    iput-boolean v0, p0, mEmailScenarioEnabled:Z

    .line 1045
    iput-boolean v0, p0, mEbookScenarioEnabled:Z

    .line 1046
    iput-boolean v0, p0, mDMBScenarioEnabled:Z

    .line 1047
    iput-boolean v0, p0, mGalleryAppLauncher:Z

    .line 1048
    iput-boolean v0, p0, mGalleryMultiViewLauncher:Z

    .line 1049
    iput-boolean v0, p0, mVideoAppLauncher:Z

    .line 1050
    iput-boolean v0, p0, mIsFromCamera:Z

    .line 1051
    return-void
.end method

.method private monitorForegroundActivity(Ljava/lang/String;II)V
    .registers 30
    .param p1, "packageName_className"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    .line 572
    const/16 v16, 0x0

    .line 573
    .local v16, "isUI":Z
    const/4 v5, 0x0

    .line 574
    .local v5, "isBrowser":Z
    const/4 v10, 0x0

    .line 575
    .local v10, "isGallery":Z
    const/4 v12, 0x0

    .line 576
    .local v12, "isGallery_Multi_View":Z
    const/4 v13, 0x0

    .line 577
    .local v13, "isGallery_from_camera":Z
    const/4 v6, 0x0

    .line 578
    .local v6, "isCamera":Z
    const/4 v14, 0x0

    .line 579
    .local v14, "isSVideo":Z
    const/4 v15, 0x0

    .line 580
    .local v15, "isSVideoOption":Z
    const/16 v17, 0x0

    .line 581
    .local v17, "isVideo":Z
    const/4 v9, 0x0

    .line 582
    .local v9, "isEmail":Z
    const/4 v8, 0x0

    .line 583
    .local v8, "isEbook":Z
    const/4 v7, 0x0

    .line 584
    .local v7, "isDmb":Z
    const/4 v11, 0x0

    .line 586
    .local v11, "isGalleryOption":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, ANDROID_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_33

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, ANDROID_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_243

    .line 588
    const/16 v16, 0x1

    .line 592
    :cond_33
    const/4 v4, 0x0

    :goto_34
    move-object/from16 v0, p0

    iget-object v0, v0, SBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_56

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, SBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_247

    .line 594
    const/4 v5, 0x1

    .line 598
    :cond_56
    const/4 v4, 0x0

    :goto_57
    move-object/from16 v0, p0

    iget-object v0, v0, CHROMEBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_79

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, CHROMEBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_24b

    .line 600
    const/4 v5, 0x1

    .line 604
    :cond_79
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_7b
    move-object/from16 v0, p0

    iget-object v0, v0, GALLERY_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_9f

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, GALLERY_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v18

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_24f

    .line 606
    const/4 v10, 0x1

    .line 611
    :cond_9f
    const/16 v18, 0x0

    :goto_a1
    move-object/from16 v0, p0

    iget-object v0, v0, GALLERY_APP_MULTI_VIEW_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_c5

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, GALLERY_APP_MULTI_VIEW_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v18

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_253

    .line 613
    const/4 v12, 0x1

    .line 618
    :cond_c5
    const/16 v18, 0x0

    :goto_c7
    move-object/from16 v0, p0

    iget-object v0, v0, GALLERY_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_eb

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, GALLERY_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v18

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_257

    .line 620
    const/4 v11, 0x1

    .line 624
    :cond_eb
    const/16 v18, 0x0

    :goto_ed
    move-object/from16 v0, p0

    iget-object v0, v0, GALLERY_APP_LAUNCHER_FROM_CAMERA:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_111

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, GALLERY_APP_LAUNCHER_FROM_CAMERA:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v18

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_25b

    .line 626
    const/4 v13, 0x1

    .line 630
    :cond_111
    const/4 v4, 0x0

    :goto_112
    move-object/from16 v0, p0

    iget-object v0, v0, CAMERA_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_134

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, CAMERA_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_25f

    .line 632
    const/4 v6, 0x1

    .line 636
    :cond_134
    const/4 v4, 0x0

    :goto_135
    move-object/from16 v0, p0

    iget-object v0, v0, SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_157

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_263

    .line 638
    const/4 v14, 0x1

    .line 642
    :cond_157
    const/4 v4, 0x0

    :goto_158
    move-object/from16 v0, p0

    iget-object v0, v0, SVIDEO_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_17a

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, SVIDEO_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_267

    .line 644
    const/4 v15, 0x1

    .line 648
    :cond_17a
    const/4 v4, 0x0

    :goto_17b
    move-object/from16 v0, p0

    iget-object v0, v0, VIDEO_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_19e

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, VIDEO_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_26b

    .line 650
    const/16 v17, 0x1

    .line 654
    :cond_19e
    const/4 v4, 0x0

    :goto_19f
    move-object/from16 v0, p0

    iget-object v0, v0, EMAIL_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_1c1

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, EMAIL_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_26f

    .line 656
    const/4 v9, 0x1

    .line 660
    :cond_1c1
    const/4 v4, 0x0

    :goto_1c2
    move-object/from16 v0, p0

    iget-object v0, v0, EBOOK_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_1e4

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, EBOOK_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_273

    .line 662
    const/4 v8, 0x1

    .line 666
    :cond_1e4
    const/4 v4, 0x0

    :goto_1e5
    move-object/from16 v0, p0

    iget-object v0, v0, DMB_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_207

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, DMB_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_277

    .line 668
    const/4 v7, 0x1

    .line 673
    :cond_207
    move-object/from16 v0, p0

    iget-boolean v0, v0, mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_27b

    if-eqz v5, :cond_27b

    .line 675
    move-object/from16 v0, p0

    iget-boolean v0, v0, mBrowserScenarioEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_242

    .line 676
    invoke-direct/range {p0 .. p0}, scenario_enable_reset()V

    .line 677
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, mBrowserScenarioEnabled:Z

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessage(I)Z

    .line 840
    :cond_242
    :goto_242
    return-void

    .line 586
    .end local v18    # "j":I
    :cond_243
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_10

    .line 592
    :cond_247
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_34

    .line 598
    :cond_24b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_57

    .line 604
    .restart local v18    # "j":I
    :cond_24f
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_7b

    .line 611
    :cond_253
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_a1

    .line 618
    :cond_257
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_c7

    .line 624
    :cond_25b
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_ed

    .line 630
    :cond_25f
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_112

    .line 636
    :cond_263
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_135

    .line 642
    :cond_267
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_158

    .line 648
    :cond_26b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_17b

    .line 654
    :cond_26f
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_19f

    .line 660
    :cond_273
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1c2

    .line 666
    :cond_277
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1e5

    .line 683
    :cond_27b
    move-object/from16 v0, p0

    iget-boolean v0, v0, mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_2d0

    if-eqz v10, :cond_2d0

    .line 685
    move-object/from16 v0, p0

    iget-boolean v0, v0, mGalleryScenarioEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_242

    .line 686
    invoke-direct/range {p0 .. p0}, scenario_enable_reset()V

    .line 687
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, mGalleryScenarioEnabled:Z

    .line 689
    move-object/from16 v0, p0

    iget-boolean v0, v0, mGalleryModeFirst:Z

    move/from16 v19, v0

    if-eqz v19, :cond_242

    move-object/from16 v0, p0

    iget-boolean v0, v0, mDetailViewState:Z

    move/from16 v19, v0

    if-nez v19, :cond_242

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessage(I)Z

    .line 692
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, mGalleryModeFirst:Z

    goto/16 :goto_242

    .line 697
    :cond_2d0
    move-object/from16 v0, p0

    iget-boolean v0, v0, mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_30d

    if-eqz v12, :cond_30d

    .line 699
    move-object/from16 v0, p0

    iget-boolean v0, v0, mGalleryMultiViewLauncher:Z

    move/from16 v19, v0

    if-nez v19, :cond_242

    .line 700
    invoke-direct/range {p0 .. p0}, scenario_enable_reset()V

    .line 701
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, mGalleryMultiViewLauncher:Z

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_242

    .line 707
    :cond_30d
    move-object/from16 v0, p0

    iget-boolean v0, v0, mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_34a

    if-eqz v11, :cond_34a

    .line 709
    move-object/from16 v0, p0

    iget-boolean v0, v0, mGalleryOptionScenarioEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_242

    .line 710
    invoke-direct/range {p0 .. p0}, scenario_enable_reset()V

    .line 711
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, mGalleryOptionScenarioEnabled:Z

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_242

    .line 717
    :cond_34a
    move-object/from16 v0, p0

    iget-boolean v0, v0, mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_45c

    if-eqz v13, :cond_45c

    .line 719
    move-object/from16 v0, p0

    iget-boolean v0, v0, mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_429

    move-object/from16 v0, p0

    iget-boolean v0, v0, mGalleryScenarioEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_429

    .line 720
    invoke-direct/range {p0 .. p0}, scenario_enable_reset()V

    .line 721
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, mGalleryScenarioEnabled:Z

    .line 723
    move-object/from16 v0, p0

    iget-boolean v0, v0, mGalleryModeFirst:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3a5

    move-object/from16 v0, p0

    iget-boolean v0, v0, mDetailViewState:Z

    move/from16 v19, v0

    if-nez v19, :cond_3a5

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessage(I)Z

    .line 726
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, mGalleryModeFirst:Z

    .line 735
    :cond_3a5
    :goto_3a5
    move-object/from16 v0, p0

    iget-boolean v0, v0, first_MultiWindowOn:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3f1

    .line 736
    invoke-direct/range {p0 .. p0}, scenario_enable_reset()V

    .line 737
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, mGalleryScenarioEnabled:Z

    .line 738
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    .line 739
    .local v20, "time":J
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x4

    move-object/from16 v0, p0

    iget v0, v0, IS_GALLERY_FROM_CAMERA_DEBOUNCE_MILLIS:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v24, v24, v20

    move-object/from16 v0, v19

    move/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 741
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, first_MultiWindowOn:Z

    .line 744
    .end local v20    # "time":J
    :cond_3f1
    move-object/from16 v0, p0

    iget-boolean v0, v0, mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_242

    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsFromCamera:Z

    move/from16 v19, v0

    if-eqz v19, :cond_242

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessage(I)Z

    .line 747
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsFromCamera:Z

    goto/16 :goto_242

    .line 728
    :cond_429
    move-object/from16 v0, p0

    iget-boolean v0, v0, mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_3a5

    move-object/from16 v0, p0

    iget-boolean v0, v0, mGalleryScenarioEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3a5

    .line 729
    invoke-direct/range {p0 .. p0}, scenario_enable_reset()V

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_3a5

    .line 751
    :cond_45c
    move-object/from16 v0, p0

    iget-boolean v0, v0, mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_4b4

    if-eqz v6, :cond_4b4

    .line 752
    move-object/from16 v0, p0

    iget-boolean v0, v0, mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_242

    move-object/from16 v0, p0

    iget-boolean v0, v0, mCameraScenarioEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_242

    .line 753
    invoke-direct/range {p0 .. p0}, scenario_enable_reset()V

    .line 754
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, mCameraScenarioEnabled:Z

    .line 755
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    .line 756
    .restart local v20    # "time":J
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x5

    move-object/from16 v0, p0

    iget v0, v0, IS_CAMERA_APP_DEBOUNCE_MILLIS:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v24, v24, v20

    move-object/from16 v0, v19

    move/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_242

    .line 761
    .end local v20    # "time":J
    :cond_4b4
    move-object/from16 v0, p0

    iget-boolean v0, v0, mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_514

    if-eqz v14, :cond_514

    .line 762
    move-object/from16 v0, p0

    iget-boolean v0, v0, mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_4d9

    move-object/from16 v0, p0

    iget-boolean v0, v0, mSVideoScenarioEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_4d9

    .line 763
    invoke-direct/range {p0 .. p0}, scenario_enable_reset()V

    .line 764
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, mSVideoScenarioEnabled:Z

    .line 767
    :cond_4d9
    move-object/from16 v0, p0

    iget-boolean v0, v0, first_MultiWindowOn:Z

    move/from16 v19, v0

    if-eqz v19, :cond_242

    .line 768
    invoke-direct/range {p0 .. p0}, scenario_enable_reset()V

    .line 769
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, mSVideoScenarioEnabled:Z

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x6

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x6

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessage(I)Z

    .line 772
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, first_MultiWindowOn:Z

    goto/16 :goto_242

    .line 776
    :cond_514
    move-object/from16 v0, p0

    iget-boolean v0, v0, mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_551

    if-eqz v15, :cond_551

    .line 777
    move-object/from16 v0, p0

    iget-boolean v0, v0, mSVideoOptionScenarioEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_242

    .line 778
    invoke-direct/range {p0 .. p0}, scenario_enable_reset()V

    .line 779
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, mSVideoOptionScenarioEnabled:Z

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x6

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x6

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_242

    .line 785
    :cond_551
    move-object/from16 v0, p0

    iget-boolean v0, v0, mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_596

    if-eqz v17, :cond_596

    .line 786
    move-object/from16 v0, p0

    iget-boolean v0, v0, mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_242

    move-object/from16 v0, p0

    iget-boolean v0, v0, mVideoScenarioEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_242

    .line 787
    invoke-direct/range {p0 .. p0}, scenario_enable_reset()V

    .line 788
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, mVideoScenarioEnabled:Z

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x6

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x6

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_242

    .line 795
    :cond_596
    move-object/from16 v0, p0

    iget-boolean v0, v0, mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_5db

    if-eqz v9, :cond_5db

    .line 796
    move-object/from16 v0, p0

    iget-boolean v0, v0, mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_242

    move-object/from16 v0, p0

    iget-boolean v0, v0, mEmailScenarioEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_242

    .line 797
    invoke-direct/range {p0 .. p0}, scenario_enable_reset()V

    .line 798
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, mEmailScenarioEnabled:Z

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x7

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x7

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_242

    .line 805
    :cond_5db
    move-object/from16 v0, p0

    iget-boolean v0, v0, mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_620

    if-eqz v8, :cond_620

    .line 806
    move-object/from16 v0, p0

    iget-boolean v0, v0, mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_242

    move-object/from16 v0, p0

    iget-boolean v0, v0, mEbookScenarioEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_242

    .line 807
    invoke-direct/range {p0 .. p0}, scenario_enable_reset()V

    .line 808
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, mEbookScenarioEnabled:Z

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_242

    .line 815
    :cond_620
    move-object/from16 v0, p0

    iget-boolean v0, v0, mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_665

    if-eqz v7, :cond_665

    .line 816
    move-object/from16 v0, p0

    iget-boolean v0, v0, mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_242

    move-object/from16 v0, p0

    iget-boolean v0, v0, mDMBScenarioEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_242

    .line 817
    invoke-direct/range {p0 .. p0}, scenario_enable_reset()V

    .line 818
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, mDMBScenarioEnabled:Z

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x9

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x9

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_242

    .line 825
    :cond_665
    move-object/from16 v0, p0

    iget-boolean v0, v0, mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_6aa

    if-eqz v16, :cond_6aa

    .line 826
    move-object/from16 v0, p0

    iget-boolean v0, v0, mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_242

    move-object/from16 v0, p0

    iget-boolean v0, v0, mUIScenarioEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_242

    .line 827
    invoke-direct/range {p0 .. p0}, scenario_enable_reset()V

    .line 828
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, mUIScenarioEnabled:Z

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_242

    .line 835
    :cond_6aa
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    .line 836
    .restart local v20    # "time":J
    invoke-direct/range {p0 .. p0}, scenario_enable_reset()V

    .line 837
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, p0

    iget v0, v0, ACTION_SET_UI_MODE_DEBOUNCE_MILLIS:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v24, v24, v20

    move-object/from16 v0, v19

    move/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_242
.end method

.method private receive_multi_window_on_intent()V
    .registers 6

    .prologue
    .line 505
    iget-boolean v1, p0, mMultiWindowOn:Z

    if-nez v1, :cond_c

    .line 507
    :try_start_4
    iget-object v1, p0, mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    .line 514
    :cond_c
    :goto_c
    return-void

    .line 508
    :catch_d
    move-exception v0

    .line 509
    .local v0, "e":Landroid/os/RemoteException;
    iget-boolean v1, p0, DEBUG:Z

    if-eqz v1, :cond_c

    .line 510
    const-string v1, "MdnieScenarioControlService"

    const-string/jumbo v2, "failed to onForegroundActivitiesChanged"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method private receive_screen_off_intent()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 524
    iput-boolean v0, p0, mScreenStateOn:Z

    .line 525
    iget-boolean v1, p0, mScreenStateOn:Z

    if-eqz v1, :cond_c

    iget-boolean v1, p0, mSettingCondition:Z

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    iput-boolean v0, p0, mEnableCondition:Z

    .line 526
    invoke-direct {p0}, mdnie_reset()V

    .line 527
    return-void
.end method

.method private receive_screen_on_intent()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 517
    iput-boolean v1, p0, mBrowserScenarioEnabled:Z

    .line 518
    iput-boolean v0, p0, mScreenStateOn:Z

    .line 519
    iget-boolean v2, p0, mScreenStateOn:Z

    if-eqz v2, :cond_14

    iget-boolean v2, p0, mSettingCondition:Z

    if-eqz v2, :cond_14

    :goto_e
    iput-boolean v0, p0, mEnableCondition:Z

    .line 520
    invoke-direct {p0}, setUIMode()V

    .line 521
    return-void

    :cond_14
    move v0, v1

    .line 519
    goto :goto_e
.end method

.method private scenario_enable_reset()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1054
    iput-boolean v0, p0, mUIScenarioEnabled:Z

    .line 1055
    iput-boolean v0, p0, mBrowserScenarioEnabled:Z

    .line 1056
    iput-boolean v0, p0, mGalleryScenarioEnabled:Z

    .line 1057
    iput-boolean v0, p0, mGalleryOptionScenarioEnabled:Z

    .line 1058
    iput-boolean v0, p0, mCameraScenarioEnabled:Z

    .line 1059
    iput-boolean v0, p0, mSVideoScenarioEnabled:Z

    .line 1060
    iput-boolean v0, p0, mSVideoOptionScenarioEnabled:Z

    .line 1061
    iput-boolean v0, p0, mVideoScenarioEnabled:Z

    .line 1062
    iput-boolean v0, p0, mEmailScenarioEnabled:Z

    .line 1063
    iput-boolean v0, p0, mEbookScenarioEnabled:Z

    .line 1064
    iput-boolean v0, p0, mDMBScenarioEnabled:Z

    .line 1065
    return-void
.end method

.method private setBrowserMode()V
    .registers 3

    .prologue
    .line 934
    invoke-direct {p0}, mdnie_reset()V

    .line 935
    iget-object v0, p0, mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    .line 936
    const-string v0, "MdnieScenarioControlService"

    const-string/jumbo v1, "setBrowserMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    return-void
.end method

.method private setCameraMode()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 968
    invoke-direct {p0}, mdnie_reset()V

    .line 969
    iput-boolean v4, p0, mIsFromCamera:Z

    .line 970
    const-string v0, "MdnieScenarioControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mQuickViewState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mQuickViewState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mVideoEnd : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mVideoEnd:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    iget-boolean v0, p0, mQuickViewState:Z

    if-eqz v0, :cond_36

    iget-boolean v0, p0, mVideoEnd:Z

    if-nez v0, :cond_47

    .line 972
    :cond_36
    iget-object v0, p0, mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    .line 973
    const-string v0, "MdnieScenarioControlService"

    const-string/jumbo v1, "setCameraMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :goto_44
    iput-boolean v4, p0, mGalleryModeFirst:Z

    .line 980
    return-void

    .line 976
    :cond_47
    iput-boolean v3, p0, mQuickViewState:Z

    .line 977
    iput-boolean v3, p0, mVideoEnd:Z

    goto :goto_44
.end method

.method private setDMBMode()V
    .registers 3

    .prologue
    .line 1014
    invoke-direct {p0}, mdnie_reset()V

    .line 1015
    iget-object v0, p0, mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    .line 1016
    const-string v0, "MdnieScenarioControlService"

    const-string/jumbo v1, "setDMBMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    return-void
.end method

.method private setEbookMode()V
    .registers 3

    .prologue
    .line 1001
    invoke-direct {p0}, mdnie_reset()V

    .line 1002
    iget-object v0, p0, mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    .line 1003
    const-string v0, "MdnieScenarioControlService"

    const-string/jumbo v1, "setEbookMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    return-void
.end method

.method private setEmailMode()V
    .registers 3

    .prologue
    .line 1008
    invoke-direct {p0}, mdnie_reset()V

    .line 1009
    iget-object v0, p0, mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    .line 1010
    const-string v0, "MdnieScenarioControlService"

    const-string/jumbo v1, "setEmailMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    return-void
.end method

.method private setGalleryMode(Z)V
    .registers 7
    .param p1, "mGalleryAppLauncher"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 940
    const-string v0, "MdnieScenarioControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mGalleryAppLauncher : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    if-eqz p1, :cond_37

    .line 942
    invoke-direct {p0}, mdnie_reset()V

    .line 943
    iget-object v0, p0, mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    .line 944
    const-string v0, "MdnieScenarioControlService"

    const-string/jumbo v1, "setGalleryMode "

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    iput-boolean v3, p0, mNotGoUI:Z

    .line 946
    iput-boolean v3, p0, mGalleryModeFirst:Z

    .line 947
    iput-boolean v3, p0, mVideoEndNotUI:Z

    .line 948
    iput-boolean v3, p0, mQuickViewState:Z

    .line 965
    :cond_36
    :goto_36
    return-void

    .line 951
    :cond_37
    invoke-direct {p0}, mdnie_reset()V

    .line 952
    iget-object v0, p0, mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    invoke-virtual {v0, v3}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    .line 953
    iget-object v0, p0, mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    invoke-virtual {v0, v3}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessage(I)Z

    .line 954
    iput-boolean v4, p0, mVideoEndNotUI:Z

    .line 955
    iput-boolean v4, p0, mQuickViewState:Z

    .line 956
    const-string v0, "MdnieScenarioControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mNotGoUI : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mNotGoUI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    iget-boolean v0, p0, mNotGoUI:Z

    if-nez v0, :cond_75

    .line 958
    iget-object v0, p0, mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    invoke-virtual {v0, v4}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    .line 959
    const-string v0, "MdnieScenarioControlService"

    const-string/jumbo v1, "setUIMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 961
    :cond_75
    iget-boolean v0, p0, mNotGoUI:Z

    if-eqz v0, :cond_36

    .line 962
    iput-boolean v4, p0, mNotGoUI:Z

    goto :goto_36
.end method

.method private setGameMode(Ljava/lang/String;)V
    .registers 4
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 1020
    const-string v0, "LOW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1021
    iget-object v0, p0, mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    .line 1022
    const-string v0, "MdnieScenarioControlService"

    const-string/jumbo v1, "setGameMode(LOW)"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :cond_17
    :goto_17
    return-void

    .line 1023
    :cond_18
    const-string v0, "MID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1024
    iget-object v0, p0, mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    .line 1025
    const-string v0, "MdnieScenarioControlService"

    const-string/jumbo v1, "setGameMode(MID)"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 1026
    :cond_30
    const-string v0, "HIGH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1027
    iget-object v0, p0, mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    .line 1028
    const-string v0, "MdnieScenarioControlService"

    const-string/jumbo v1, "setGameMode(HIGH)"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 1029
    :cond_48
    const-string v0, "OUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1030
    iget-object v0, p0, mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    .line 1031
    const-string v0, "MdnieScenarioControlService"

    const-string/jumbo v1, "setUIMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method private setUIMode()V
    .registers 4

    .prologue
    .line 925
    invoke-direct {p0}, mdnie_reset()V

    .line 926
    const-string v0, "MdnieScenarioControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mGameModeLauncher : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mGameModeLauncher:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    iget-boolean v0, p0, mGameModeLauncher:Z

    if-nez v0, :cond_30

    .line 928
    iget-object v0, p0, mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    .line 929
    const-string v0, "MdnieScenarioControlService"

    const-string/jumbo v1, "setUIMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_30
    return-void
.end method

.method private setVideoMode(Z)V
    .registers 6
    .param p1, "mVideoAppLauncher"    # Z

    .prologue
    const/4 v3, 0x0

    .line 983
    const-string v0, "MdnieScenarioControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mVideoAppLauncher : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    if-eqz p1, :cond_30

    .line 985
    invoke-direct {p0}, mdnie_reset()V

    .line 986
    iget-object v0, p0, mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    .line 987
    const-string v0, "MdnieScenarioControlService"

    const-string/jumbo v1, "setVideoMode "

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    iput-boolean v3, p0, mVideoEndNotUI:Z

    .line 998
    :cond_2f
    :goto_2f
    return-void

    .line 991
    :cond_30
    invoke-direct {p0}, mdnie_reset()V

    .line 992
    const-string v0, "MdnieScenarioControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mVideoEndNotUI : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mVideoEndNotUI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    iget-boolean v0, p0, mVideoEndNotUI:Z

    if-nez v0, :cond_2f

    .line 994
    iget-object v0, p0, mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    invoke-virtual {v0, v3}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    .line 995
    const-string v0, "MdnieScenarioControlService"

    const-string/jumbo v1, "setUIMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f
.end method

.method private setting_is_changed()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 531
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 533
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "lcd_curtain"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_8c

    move v2, v3

    :goto_12
    iput-boolean v2, p0, mScreenCurtainEnabled:Z

    .line 534
    const-string/jumbo v2, "high_contrast"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_8e

    move v2, v3

    :goto_1e
    iput-boolean v2, p0, mNegativeColorEnabled:Z

    .line 535
    const-string v2, "color_blind"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_90

    move v2, v3

    :goto_29
    iput-boolean v2, p0, mColorBlindEnabled:Z

    .line 539
    const-string/jumbo v2, "psm_switch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_92

    move v2, v3

    :goto_35
    iput-boolean v2, p0, mPowerSavingEnabled:Z

    .line 541
    const-string/jumbo v2, "ultra_powersaving_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_94

    move v2, v3

    :goto_41
    iput-boolean v2, p0, mUltraPowerSavingModeEnabled:Z

    .line 542
    const-string/jumbo v2, "screen_mode_automatic_setting"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_96

    move v2, v3

    :goto_4d
    iput-boolean v2, p0, mAutoModeEnabled:Z

    .line 544
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

    .line 545
    iget-boolean v2, p0, mScreenStateOn:Z

    if-eqz v2, :cond_9a

    iget-boolean v2, p0, mSettingCondition:Z

    if-eqz v2, :cond_9a

    :goto_72
    iput-boolean v3, p0, mEnableCondition:Z

    .line 547
    iget-boolean v2, p0, mEnableCondition:Z

    if-eqz v2, :cond_a6

    .line 548
    iget-object v2, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v2, :cond_83

    .line 549
    iget-object v2, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v3, p0, mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 552
    :cond_83
    :try_start_83
    iget-object v2, p0, mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_83 .. :try_end_8b} :catch_9c

    .line 561
    :cond_8b
    :goto_8b
    return-void

    :cond_8c
    move v2, v4

    .line 533
    goto :goto_12

    :cond_8e
    move v2, v4

    .line 534
    goto :goto_1e

    :cond_90
    move v2, v4

    .line 535
    goto :goto_29

    :cond_92
    move v2, v4

    .line 539
    goto :goto_35

    :cond_94
    move v2, v4

    .line 541
    goto :goto_41

    :cond_96
    move v2, v4

    .line 542
    goto :goto_4d

    :cond_98
    move v2, v4

    .line 544
    goto :goto_68

    :cond_9a
    move v3, v4

    .line 545
    goto :goto_72

    .line 553
    :catch_9c
    move-exception v0

    .line 554
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MdnieScenarioControlService"

    const-string/jumbo v3, "failed to onForegroundActivitiesChanged"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b

    .line 557
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_a6
    iget-object v2, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v2, :cond_8b

    .line 558
    iget-object v2, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v3, p0, mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/cover/CoverManager;->unregisterListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    goto :goto_8b
.end method
