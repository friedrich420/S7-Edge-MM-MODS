.class public Lcom/android/systemui/volume/SecVolumeDialog;
.super Ljava/lang/Object;
.source "SecVolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/SecVolumeDialog$Callback;,
        Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;,
        Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;,
        Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;,
        Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;,
        Lcom/android/systemui/volume/SecVolumeDialog$H;
    }
.end annotation


# static fields
.field private static SUPPORT_DEFAULTSTREAM_NOTIFICATION:Z

.field private static final TAG:Ljava/lang/String;

.field private static mActiveStreamChanged:Z

.field public static mIsSafetyWarningShowing:Z

.field private static mRemoteControlCurrentVolume:I

.field private static mRemoteControlMaxVolume:I

.field private static final mSafetyWarningLock:Ljava/lang/Object;

.field public static mShowing:Z


# instance fields
.field private final mAccessibility:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

.field private final mActiveSliderTint:Landroid/content/res/ColorStateList;

.field private mActiveStream:I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mAutomute:Z

.field private mCallback:Lcom/android/systemui/volume/SecVolumeDialog$Callback;

.field private final mClickExpand:Landroid/view/View$OnClickListener;

.field private final mClickSettings:Landroid/view/View$OnClickListener;

.field private mCollapseTime:J

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/systemui/volume/VolumeDialogController;

.field private final mControllerCallbackH:Lcom/android/systemui/volume/VolumeDialogController$Callbacks;

.field private mCoverBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCoverLevel:I

.field private mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mCoverOpened:Z

.field private mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field private mCoverType:I

.field private final mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

.field private mDialogBgDrawable:Landroid/graphics/drawable/PaintDrawable;

.field private final mDialogContentView:Landroid/view/ViewGroup;

.field private final mDialogView:Landroid/view/ViewGroup;

.field private final mDisabledAlpha:F

.field private final mDynamic:Landroid/util/SparseBooleanArray;

.field private final mExpandButton:Landroid/widget/ImageButton;

.field private final mExpandButtonAnimationDuration:J

.field private mExpandButtonAnimationRunning:Z

.field private mExpanded:Z

.field private mExtraForRingerMode:Ljava/lang/String;

.field private final mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

.field private mIconActiveColor:Landroid/content/res/ColorStateList;

.field private mIconActiveDefaultColor:Landroid/content/res/ColorStateList;

.field private mIconDisabledColor:Landroid/content/res/ColorStateList;

.field private final mInactiveSliderTint:Landroid/content/res/ColorStateList;

.field private mIsShowingSCoverWarning:Z

.field private final mKeyguard:Landroid/app/KeyguardManager;

.field private final mLayoutTransition:Landroid/animation/LayoutTransition;

.field private final mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

.field private mPendingRecheckAll:Z

.field private mPendingStateChanged:Z

.field private mProgressBgColor:Landroid/content/res/ColorStateList;

.field private mProgressBgDefaultColor:Landroid/content/res/ColorStateList;

.field private mProgressColor:Landroid/content/res/ColorStateList;

.field private mProgressDefaultColor:Landroid/content/res/ColorStateList;

.field private final mRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;",
            ">;"
        }
    .end annotation
.end field

.field private mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

.field private final mSamsungAudioManager:Landroid/media/SamsungAudioManager;

.field private mScover:Lcom/samsung/android/sdk/cover/Scover;

.field mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mSettingsButton:Landroid/view/View;

.field private mShowHeaders:Z

.field private mSilentMode:Z

.field private mSoundID:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private final mSpTexts:Lcom/android/systemui/volume/SpTexts;

.field private mState:Lcom/android/systemui/volume/VolumeDialogController$State;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mThumbColor:Landroid/content/res/ColorStateList;

.field private mThumbDefaultColor:Landroid/content/res/ColorStateList;

.field private mThumbDisabledColor:Landroid/content/res/ColorStateList;

.field private mThumbDisabledDefaultColor:Landroid/content/res/ColorStateList;

.field private mTopOffset:I

.field private mValueForHwSwKey:J

.field private mVoiceCapable:Z

.field private mVolumePanelBgColor:Landroid/content/res/ColorStateList;

.field private mVolumePanelBgDefaultColor:Landroid/content/res/ColorStateList;

.field private mVolumeTitleColor:Landroid/content/res/ColorStateList;

.field private mVolumeTitleDefaultColor:Landroid/content/res/ColorStateList;

.field private sCoverTopOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 123
    const-class v0, Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    .line 145
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    .line 216
    sput-boolean v1, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafetyWarningShowing:Z

    .line 221
    sput-boolean v1, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStreamChanged:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/systemui/volume/VolumeDialogController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/volume/SecVolumeDialog$Callback;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowType"    # I
    .param p3, "controller"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p4, "zenModeController"    # Lcom/android/systemui/statusbar/policy/ZenModeController;
    .param p5, "callback"    # Lcom/android/systemui/volume/SecVolumeDialog$Callback;

    .prologue
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v2, Lcom/android/systemui/volume/SecVolumeDialog$H;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/SecVolumeDialog$H;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    .line 138
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    .line 140
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    .line 146
    new-instance v2, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$1;)V

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAccessibility:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    .line 154
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowHeaders:Z

    .line 155
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAutomute:Z

    .line 156
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSilentMode:Z

    .line 168
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 172
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundID:I

    .line 202
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    .line 203
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 204
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    .line 205
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    .line 206
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsShowingSCoverWarning:Z

    .line 208
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverLevel:I

    .line 209
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mTopOffset:I

    .line 210
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->sCoverTopOffset:I

    .line 211
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    .line 214
    const v2, 0x3ecccccd    # 0.4f

    iput v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDisabledAlpha:F

    .line 239
    const-string v2, "Ringtone"

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExtraForRingerMode:Ljava/lang/String;

    .line 240
    const-wide/16 v2, 0x3e8

    iput-wide v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mValueForHwSwKey:J

    .line 247
    new-instance v2, Lcom/android/systemui/volume/SecVolumeDialog$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/SecVolumeDialog$1;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1388
    new-instance v2, Lcom/android/systemui/volume/SecVolumeDialog$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/SecVolumeDialog$8;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mControllerCallbackH:Lcom/android/systemui/volume/VolumeDialogController$Callbacks;

    .line 1458
    new-instance v2, Lcom/android/systemui/volume/SecVolumeDialog$9;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/SecVolumeDialog$9;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mClickExpand:Landroid/view/View$OnClickListener;

    .line 1470
    new-instance v2, Lcom/android/systemui/volume/SecVolumeDialog$10;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/SecVolumeDialog$10;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mClickSettings:Landroid/view/View$OnClickListener;

    .line 1958
    new-instance v2, Lcom/android/systemui/volume/SecVolumeDialog$11;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/SecVolumeDialog$11;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 257
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    .line 258
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    .line 259
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCallback:Lcom/android/systemui/volume/SecVolumeDialog$Callback;

    .line 260
    new-instance v2, Lcom/android/systemui/volume/SpTexts;

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/volume/SpTexts;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    .line 261
    const-string v2, "keyguard"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mKeyguard:Landroid/app/KeyguardManager;

    .line 263
    new-instance v2, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    .line 265
    new-instance v2, Landroid/media/SamsungAudioManager;

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/media/SamsungAudioManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    .line 266
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    .line 267
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112005c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    sput-boolean v2, Lcom/android/systemui/volume/SecVolumeDialog;->SUPPORT_DEFAULTSTREAM_NOTIFICATION:Z

    .line 270
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v2}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    .line 271
    .local v13, "window":Landroid/view/Window;
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 272
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v13, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 273
    const/4 v2, 0x2

    invoke-virtual {v13, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 274
    const v2, 0x10c0128

    invoke-virtual {v13, v2}, Landroid/view/Window;->addFlags(I)V

    .line 280
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 281
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 282
    .local v11, "res":Landroid/content/res/Resources;
    invoke-virtual {v13}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    .line 283
    .local v9, "lp":Landroid/view/WindowManager$LayoutParams;
    move/from16 v0, p2

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 284
    const/4 v2, -0x3

    iput v2, v9, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 285
    const-class v2, Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 286
    const/16 v2, 0x31

    iput v2, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 287
    const v2, 0x7f0c01e7

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 288
    const/16 v2, 0x30

    iput v2, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 289
    const/4 v2, -0x1

    iput v2, v9, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 290
    invoke-virtual {v13, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 291
    const/16 v2, 0x30

    invoke-virtual {v13, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 293
    const v2, 0x7f0a004c

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/SecVolumeDialog;->loadColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveSliderTint:Landroid/content/res/ColorStateList;

    .line 294
    const v2, 0x7f0a00ab

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/SecVolumeDialog;->loadColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mInactiveSliderTint:Landroid/content/res/ColorStateList;

    .line 295
    const v2, 0x7f0a00cb

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/SecVolumeDialog;->loadColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconDisabledColor:Landroid/content/res/ColorStateList;

    .line 296
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    const v3, 0x7f0400b4

    invoke-virtual {v2, v3}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->setContentView(I)V

    .line 297
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    const v3, 0x7f0e0348

    invoke-virtual {v2, v3}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    .line 298
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    const v3, 0x7f0e034a

    invoke-virtual {v2, v3}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    .line 299
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    const v3, 0x7f0e0349

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    .line 300
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 301
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mClickExpand:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 303
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateWindowWidthH()V

    .line 304
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateExpandButtonH()V

    .line 305
    new-instance v2, Landroid/animation/LayoutTransition;

    invoke-direct {v2}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 306
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mLayoutTransition:Landroid/animation/LayoutTransition;

    new-instance v3, Landroid/animation/ValueAnimator;

    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 308
    new-instance v2, Lcom/android/systemui/volume/VolumeDialogMotion;

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    new-instance v7, Lcom/android/systemui/volume/SecVolumeDialog$2;

    invoke-direct {v7, p0}, Lcom/android/systemui/volume/SecVolumeDialog$2;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/volume/VolumeDialogMotion;-><init>(Landroid/app/Dialog;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/volume/VolumeDialogMotion$Callback;)V

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    .line 324
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112005c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVoiceCapable:Z

    .line 326
    iget-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVoiceCapable:Z

    if-eqz v2, :cond_1

    .line 327
    const/4 v2, 0x2

    const v3, 0x1080947

    const v4, 0x1080934

    const/4 v5, 0x1

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 329
    const/4 v2, 0x3

    const v3, 0x1080947

    const v4, 0x1080934

    const/4 v5, 0x1

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 331
    const/4 v2, 0x5

    const v3, 0x1080947

    const v4, 0x1080934

    const/4 v5, 0x1

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 333
    const/4 v2, 0x1

    const v3, 0x1080947

    const v4, 0x1080934

    const/4 v5, 0x1

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 335
    const/4 v2, 0x4

    const v3, 0x1080947

    const v4, 0x1080934

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 337
    const/4 v2, 0x0

    const v3, 0x1080947

    const v4, 0x1080947

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 339
    const/4 v2, 0x6

    const v3, 0x1080932

    const v4, 0x1080932

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 356
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    const v3, 0x7f0e034f

    invoke-virtual {v2, v3}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSettingsButton:Landroid/view/View;

    .line 357
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSettingsButton:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mClickSettings:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    const v2, 0x7f0f0043

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationDuration:J

    .line 362
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAccessibility:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    invoke-virtual {v2}, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->init()V

    .line 364
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mControllerCallbackH:Lcom/android/systemui/volume/VolumeDialogController$Callbacks;

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/volume/VolumeDialogController;->addCallback(Lcom/android/systemui/volume/VolumeDialogController$Callbacks;Landroid/os/Handler;)V

    .line 365
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/volume/VolumeDialogController;->getState()V

    .line 368
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->makeSound()V

    .line 371
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateTintColor()V

    .line 372
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateDefaultTintColor()V

    .line 374
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->refreshMorebuttonTintColor()V

    .line 376
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 377
    .local v12, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    invoke-direct {p0, v12}, Lcom/android/systemui/volume/SecVolumeDialog;->refreshResourceTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    goto :goto_2

    .line 267
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v11    # "res":Landroid/content/res/Resources;
    .end local v12    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .end local v13    # "window":Landroid/view/Window;
    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 342
    .restart local v9    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v11    # "res":Landroid/content/res/Resources;
    .restart local v13    # "window":Landroid/view/Window;
    :cond_1
    const/4 v2, 0x5

    const v3, 0x1080947

    const v4, 0x1080934

    const/4 v5, 0x1

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 344
    const/4 v2, 0x3

    const v3, 0x1080947

    const v4, 0x1080934

    const/4 v5, 0x1

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 346
    const/4 v2, 0x1

    const v3, 0x1080947

    const v4, 0x1080934

    const/4 v5, 0x1

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 348
    const/4 v2, 0x4

    const v3, 0x1080947

    const v4, 0x1080934

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 350
    const/4 v2, 0x0

    const v3, 0x1080947

    const v4, 0x1080947

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 352
    const/4 v2, 0x6

    const v3, 0x1080932

    const v4, 0x1080932

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    goto/16 :goto_1

    .line 381
    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 384
    new-instance v2, Lcom/android/systemui/volume/SecVolumeDialog$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/SecVolumeDialog$3;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    .line 423
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/SecVolumeDialog;->initCoverManager(Landroid/content/Context;)V

    .line 424
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    .line 425
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->registerCoverReceiver()V

    .line 426
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 427
    .local v10, "pm":Landroid/content/pm/PackageManager;
    if-eqz v10, :cond_3

    .line 428
    const-string v2, "com.sec.feature.cover.sviewcover"

    invoke-virtual {v10, v2}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverLevel:I

    .line 430
    :cond_3
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;
    .param p1, "x1"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->repositionExpandAnim(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPendingStateChanged:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPendingStateChanged:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVoiceCapable:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/systemui/volume/SecVolumeDialog;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->setExpandedH(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPendingRecheckAll:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPendingRecheckAll:Z

    return p1
.end method

.method static synthetic access$4100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SafetyWarningDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SafetyWarningDialog;)Lcom/android/systemui/volume/SafetyWarningDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;
    .param p1, "x1"    # Lcom/android/systemui/volume/SafetyWarningDialog;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;
    .param p1, "x1"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->recheckH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/systemui/volume/SecVolumeDialog;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;
    .param p1, "x1"    # I

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->showH(I)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/VolumeDialogController$State;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;
    .param p1, "x1"    # Lcom/android/systemui/volume/VolumeDialogController$State;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->onStateChangedH(Lcom/android/systemui/volume/VolumeDialogController$State;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateWindowWidthH()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SpTexts;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSilentMode:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/systemui/volume/SecVolumeDialog;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;
    .param p1, "x1"    # I

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->showSafetyWarningH(I)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationRunning:Z

    return v0
.end method

.method static synthetic access$5300(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    return v0
.end method

.method static synthetic access$5400(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCallback:Lcom/android/systemui/volume/SecVolumeDialog$Callback;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSettingsButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/systemui/volume/SecVolumeDialog;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/SecVolumeDialog;->setStreamImportantH(IZ)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateDialogBottomMarginH()V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogMotion;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    return-object v0
.end method

.method static synthetic access$5900(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 122
    invoke-static {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->getImpliedMediaVolumeLevel(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/samsung/android/sdk/cover/Scover;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    return-object v0
.end method

.method static synthetic access$6000(Landroid/widget/SeekBar;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SeekBar;
    .param p1, "x1"    # I

    .prologue
    .line 122
    invoke-static {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$6200(Lcom/android/systemui/volume/SecVolumeDialog;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsShowingSCoverWarning:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/samsung/android/sdk/cover/ScoverManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/volume/SecVolumeDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 122
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/volume/SecVolumeDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;
    .param p1, "x1"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->onDismissSafeVolumeWarning()V

    return-void
.end method

.method private addRow(IIIZ)V
    .locals 7
    .param p1, "stream"    # I
    .param p2, "iconRes"    # I
    .param p3, "iconMuteRes"    # I
    .param p4, "important"    # Z

    .prologue
    .line 483
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/volume/SecVolumeDialog;->initRow(IIIZ)Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v2

    .line 484
    .local v2, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 485
    new-instance v3, Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 486
    .local v3, "v":Landroid/view/View;
    const/high16 v4, 0x1020000

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 487
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c01e6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 489
    .local v0, "h":I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v1, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 491
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    invoke-virtual {v4, v3, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 492
    # setter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->space:Landroid/view/View;
    invoke-static {v2, v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1002(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    .line 494
    .end local v0    # "h":I
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "v":Landroid/view/View;
    :cond_0
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->settingsButton:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1500(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/volume/SecVolumeDialog$4;

    invoke-direct {v5, p0, v2}, Lcom/android/systemui/volume/SecVolumeDialog$4;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 520
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 521
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    return-void
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "color"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1740
    new-array v0, v2, [[I

    new-array v1, v3, [I

    aput-object v1, v0, v3

    .line 1741
    .local v0, "EMPTY":[[I
    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-direct {v1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method private computeTimeoutH()I
    .locals 2

    .prologue
    const/16 v0, 0x1388

    .line 780
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAccessibility:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->mFeedbackEnabled:Z
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->access$1700(Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 784
    :cond_0
    :goto_0
    return v0

    .line 781
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-nez v1, :cond_0

    .line 782
    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationRunning:Z

    if-nez v1, :cond_0

    .line 783
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const/16 v0, 0x5dc

    goto :goto_0

    .line 784
    :cond_2
    const/16 v0, 0xbb8

    goto :goto_0
.end method

.method private createCoverMsgRemoteView()Landroid/widget/RemoteViews;
    .locals 3

    .prologue
    .line 1939
    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 1940
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0400b3

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1944
    .local v0, "coverMsgRemoteViews":Landroid/widget/RemoteViews;
    :goto_0
    return-object v0

    .line 1942
    .end local v0    # "coverMsgRemoteViews":Landroid/widget/RemoteViews;
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0400b1

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local v0    # "coverMsgRemoteViews":Landroid/widget/RemoteViews;
    goto :goto_0
.end method

.method private findRow(I)Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .locals 3
    .param p1, "stream"    # I

    .prologue
    .line 538
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 539
    .local v1, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 541
    .end local v1    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getActiveRow()Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .locals 4

    .prologue
    .line 529
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 530
    .local v1, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v2

    iget v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    if-ne v2, v3, :cond_0

    .line 534
    .end local v1    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-object v1, v2

    goto :goto_0
.end method

.method private getConservativeCollapseDuration()J
    .locals 4

    .prologue
    .line 865
    iget-wide v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationDuration:J

    const-wide/16 v2, 0x3

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private static getImpliedLevel(Landroid/widget/SeekBar;I)I
    .locals 5
    .param p0, "seekBar"    # Landroid/widget/SeekBar;
    .param p1, "progress"    # I

    .prologue
    .line 573
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    .line 574
    .local v1, "m":I
    div-int/lit8 v3, v1, 0x64

    add-int/lit8 v2, v3, -0x1

    .line 575
    .local v2, "n":I
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 577
    .local v0, "level":I
    :goto_0
    return v0

    .line 575
    .end local v0    # "level":I
    :cond_0
    if-ne p1, v1, :cond_1

    div-int/lit8 v0, v1, 0x64

    goto :goto_0

    :cond_1
    int-to-float v3, p1

    int-to-float v4, v1

    div-float/2addr v3, v4

    int-to-float v4, v2

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit8 v0, v3, 0x1

    goto :goto_0
.end method

.method private static getImpliedMediaVolumeLevel(I)I
    .locals 0
    .param p0, "progress"    # I

    .prologue
    .line 581
    div-int/lit8 p0, p0, 0xa

    .line 582
    mul-int/lit8 p0, p0, 0xa

    return p0
.end method

.method private initCoverManager(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1896
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    if-nez v0, :cond_0

    .line 1897
    new-instance v0, Lcom/samsung/android/sdk/cover/Scover;

    invoke-direct {v0}, Lcom/samsung/android/sdk/cover/Scover;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    .line 1899
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/cover/Scover;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1905
    :goto_0
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v1, "initCoverManager: initCoverManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 1907
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1909
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    .line 1913
    :cond_0
    :goto_1
    return-void

    .line 1911
    :cond_1
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v1, "initCoverManager fail NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1902
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1900
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private initRow(IIIZ)Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .locals 9
    .param p1, "stream"    # I
    .param p2, "iconRes"    # I
    .param p3, "iconMuteRes"    # I
    .param p4, "important"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/16 v8, 0x64

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 587
    new-instance v3, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-direct {v3, v7}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;-><init>(Lcom/android/systemui/volume/SecVolumeDialog$1;)V

    .line 588
    .local v3, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    # setter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static {v3, p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1602(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 589
    # setter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->iconRes:I
    invoke-static {v3, p2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1902(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 590
    # setter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->iconMuteRes:I
    invoke-static {v3, p3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2002(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 591
    # setter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->important:Z
    invoke-static {v3, p4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2102(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)Z

    .line 592
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v4}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v6, 0x7f0400b5

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    # setter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v3, v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1302(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    .line 593
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 594
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v4

    const v6, 0x7f0e034c

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    # setter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->header:Landroid/widget/TextView;
    invoke-static {v3, v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2202(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 595
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->header:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2200(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/systemui/volume/SpTexts;->add(Landroid/widget/TextView;)I

    .line 596
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v4

    const v6, 0x7f0e034e

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    # setter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {v3, v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2302(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;

    .line 597
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    new-instance v6, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;

    invoke-direct {v6, p0, v3, v7}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Lcom/android/systemui/volume/SecVolumeDialog$1;)V

    invoke-virtual {v4, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 598
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setMuteAnimation(Z)V

    .line 599
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setFluidEnabled(Z)V

    .line 627
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v4

    const v6, 0x7f0e034d

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    # setter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static {v3, v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2502(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    .line 628
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2500(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 629
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2500(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 630
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2500(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v4

    new-instance v6, Lcom/android/systemui/volume/SecVolumeDialog$5;

    invoke-direct {v6, p0, v3, p1}, Lcom/android/systemui/volume/SecVolumeDialog$5;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 659
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v4

    const v6, 0x7f0e034f

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    # setter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->settingsButton:Landroid/widget/ImageButton;
    invoke-static {v3, v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1502(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    .line 660
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->settingsButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1500(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mClickSettings:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 662
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    if-eqz v4, :cond_0

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    const/4 v6, 0x6

    if-ne v4, v6, :cond_1

    :cond_0
    move v0, v5

    .line 664
    .local v0, "isCallOrBTSco":Z
    :cond_1
    const/4 v1, 0x0

    .line 665
    .local v1, "levelMax":I
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    if-ge v4, v8, :cond_3

    .line 666
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 671
    :goto_0
    if-eqz v0, :cond_4

    add-int/lit8 v4, v1, 0x1

    mul-int/lit8 v2, v4, 0x64

    .line 672
    .local v2, "max":I
    :goto_1
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 673
    if-eqz v0, :cond_2

    .line 674
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/SeekBar;->setMin(I)V

    .line 677
    :cond_2
    return-object v3

    .line 668
    .end local v2    # "max":I
    :cond_3
    sget v1, Lcom/android/systemui/volume/SecVolumeDialog;->mRemoteControlMaxVolume:I

    goto :goto_0

    .line 671
    :cond_4
    mul-int/lit8 v2, v1, 0x64

    goto :goto_1
.end method

.method private insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;
    .param p4, "value"    # J

    .prologue
    .line 2011
    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertLog : extra = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertLog : value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2016
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2017
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2018
    const-string v2, "feature"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2019
    const-string v2, "extra"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2020
    const-string v2, "value"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2022
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2024
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2025
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2026
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2028
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2030
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private isAttached()Z
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVisibleH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)Z
    .locals 1
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .param p2, "isActive"    # Z

    .prologue
    .line 937
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v0, :cond_0

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v0, :cond_1

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->important:Z
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2100(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "colorResId"    # I

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private makeSound()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 694
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 710
    :goto_0
    return-void

    .line 696
    :cond_0
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v1, "sound : new SoundPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    invoke-virtual {v0, v3}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    .line 704
    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->SUPPORT_DEFAULTSTREAM_NOTIFICATION:Z

    if-eqz v0, :cond_1

    .line 705
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setStreamType(I)V

    .line 709
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    const-string v1, "system/media/audio/ui/TW_Volume_control.ogg"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundID:I

    goto :goto_0

    .line 707
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setStreamType(I)V

    goto :goto_1
.end method

.method private onDismissSafeVolumeWarning()V
    .locals 2

    .prologue
    .line 1996
    sget-object v1, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1997
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SafetyWarningDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1998
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SafetyWarningDialog;->dismiss()V

    .line 2000
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2002
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsShowingSCoverWarning:Z

    if-eqz v0, :cond_1

    .line 2003
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v1, "dismiss warning popup on the s view cover"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->sendCoverWarningMsgIntent(Z)V

    .line 2007
    :cond_1
    return-void

    .line 2000
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private onStateChangedH(Lcom/android/systemui/volume/VolumeDialogController$State;)V
    .locals 11
    .param p1, "state"    # Lcom/android/systemui/volume/VolumeDialogController$State;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 992
    iget-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v6, :cond_2

    .line 993
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 998
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateWindowWidthH()V

    .line 999
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v6}, Lcom/android/systemui/volume/VolumeDialogMotion;->isAnimating()Z

    move-result v0

    .line 1000
    .local v0, "animating":Z
    sget-boolean v6, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onStateChangedH animating="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    .line 1002
    if-eqz v0, :cond_3

    .line 1003
    iput-boolean v9, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPendingStateChanged:Z

    .line 1041
    :cond_1
    return-void

    .line 995
    .end local v0    # "animating":Z
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1006
    .restart local v0    # "animating":Z
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1008
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v6, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_6

    .line 1009
    iget-object v6, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1010
    .local v5, "stream":I
    iget-object v6, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    .line 1011
    .local v4, "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    iget-boolean v6, v4, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->dynamic:Z

    if-nez v6, :cond_5

    .line 1008
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1012
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1013
    invoke-direct {p0, v5}, Lcom/android/systemui/volume/SecVolumeDialog;->findRow(I)Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v6

    if-nez v6, :cond_4

    .line 1014
    iget v6, v4, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMax:I

    sput v6, Lcom/android/systemui/volume/SecVolumeDialog;->mRemoteControlMaxVolume:I

    .line 1015
    iget v6, v4, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    sput v6, Lcom/android/systemui/volume/SecVolumeDialog;->mRemoteControlCurrentVolume:I

    .line 1016
    const v6, 0x7f02023d

    const v7, 0x7f02023e

    invoke-direct {p0, v5, v6, v7, v9}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    goto :goto_2

    .line 1020
    .end local v4    # "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    .end local v5    # "stream":I
    :cond_6
    iget v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    iget v7, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->activeStream:I

    if-eq v6, v7, :cond_7

    .line 1021
    sput-boolean v9, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStreamChanged:Z

    .line 1022
    iget v6, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->activeStream:I

    iput v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    .line 1023
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateRowsH()V

    .line 1024
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->rescheduleTimeoutH()V

    .line 1030
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->refreshMorebuttonTintColor()V

    .line 1032
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 1033
    .local v3, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->refreshResourceTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    goto :goto_4

    .line 1026
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    :cond_7
    sput-boolean v10, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStreamChanged:Z

    goto :goto_3

    .line 1037
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_8
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 1038
    .restart local v3    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->updateVolumeRowH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    goto :goto_5
.end method

.method private phoneIsOffhook()Z
    .locals 4

    .prologue
    .line 1861
    const/4 v0, 0x0

    .line 1863
    .local v0, "phoneOffhook":Z
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_1

    .line 1864
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1871
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phoneIsOffhook : phoneOffhook = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    return v0

    .line 1866
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1867
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private recheckH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 5
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 1281
    if-nez p1, :cond_1

    .line 1282
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v3, "recheckH ALL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->trimObsoleteH()V

    .line 1284
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 1285
    .local v1, "r":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/SecVolumeDialog;->updateVolumeRowH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    goto :goto_0

    .line 1288
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "r":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    :cond_1
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recheckH "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->updateVolumeRowH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    .line 1291
    :cond_3
    return-void
.end method

.method private refreshMorebuttonTintColor()V
    .locals 3

    .prologue
    .line 1809
    new-instance v0, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/PaintDrawable;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogBgDrawable:Landroid/graphics/drawable/PaintDrawable;

    .line 1815
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-nez v0, :cond_0

    .line 1816
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconActiveDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 1817
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogBgDrawable:Landroid/graphics/drawable/PaintDrawable;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumePanelBgDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/PaintDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1823
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogBgDrawable:Landroid/graphics/drawable/PaintDrawable;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0193

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    .line 1824
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogBgDrawable:Landroid/graphics/drawable/PaintDrawable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1825
    return-void

    .line 1819
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconActiveColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 1820
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogBgDrawable:Landroid/graphics/drawable/PaintDrawable;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumePanelBgColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/PaintDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method private refreshResourceTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 2
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 1745
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-nez v0, :cond_0

    .line 1746
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->refreshSliderResourceDefaultTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    .line 1747
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2500(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconActiveDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 1748
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->header:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2200(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeTitleDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1754
    :goto_0
    return-void

    .line 1750
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->refreshSliderResourceTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    .line 1751
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2500(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconActiveColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 1752
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->header:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2200(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeTitleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method private refreshSliderResourceDefaultTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 3
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 1781
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshSliderResourceDefaultTintColor row stream : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setDefaultColorForVolumePanel(Z)V

    .line 1791
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->cachedSliderThumbTint:Landroid/content/res/ColorStateList;
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$6300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbDefaultColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_0

    .line 1792
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 1793
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbDefaultColor:Landroid/content/res/ColorStateList;

    # setter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->cachedSliderThumbTint:Landroid/content/res/ColorStateList;
    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$6302(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 1796
    :cond_0
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->cachedSliderTint:Landroid/content/res/ColorStateList;
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$6400(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressDefaultColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_1

    .line 1797
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1798
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressDefaultColor:Landroid/content/res/ColorStateList;

    # setter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->cachedSliderTint:Landroid/content/res/ColorStateList;
    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$6402(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 1801
    :cond_1
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->cachedSliderBackgroundTintList:Landroid/content/res/ColorStateList;
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$6500(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressBgDefaultColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_2

    .line 1802
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressBgDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1803
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressBgDefaultColor:Landroid/content/res/ColorStateList;

    # setter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->cachedSliderBackgroundTintList:Landroid/content/res/ColorStateList;
    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$6502(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 1805
    :cond_2
    return-void
.end method

.method private refreshSliderResourceTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 2
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 1759
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setDefaultColorForVolumePanel(Z)V

    .line 1761
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->cachedSliderThumbTint:Landroid/content/res/ColorStateList;
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$6300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_0

    .line 1762
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v1, "refreshSliderResourceTintColor #1 mThumbColor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 1764
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbColor:Landroid/content/res/ColorStateList;

    # setter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->cachedSliderThumbTint:Landroid/content/res/ColorStateList;
    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$6302(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 1767
    :cond_0
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->cachedSliderTint:Landroid/content/res/ColorStateList;
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$6400(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_1

    .line 1768
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v1, "refreshSliderResourceTintColor #2 mProgressColor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1770
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressColor:Landroid/content/res/ColorStateList;

    # setter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->cachedSliderTint:Landroid/content/res/ColorStateList;
    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$6402(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 1773
    :cond_1
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->cachedSliderBackgroundTintList:Landroid/content/res/ColorStateList;
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$6500(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressBgColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_2

    .line 1774
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v1, "refreshSliderResourceTintColor #3 mProgressBgColor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressBgColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1776
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressBgColor:Landroid/content/res/ColorStateList;

    # setter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->cachedSliderBackgroundTintList:Landroid/content/res/ColorStateList;
    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$6502(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 1778
    :cond_2
    return-void
.end method

.method private registerCoverReceiver()V
    .locals 3

    .prologue
    .line 1988
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1989
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1990
    const-string v1, "android.view.volumepanel.CLICK_BUTTON1"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1991
    const-string v1, "android.view.volumepanel.CLICK_BUTTON2"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1992
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1993
    return-void
.end method

.method private repositionExpandAnim(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 7
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 545
    const/4 v4, 0x2

    new-array v0, v4, [I

    .line 546
    .local v0, "loc":[I
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->settingsButton:Landroid/widget/ImageButton;
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1500(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->getLocationInWindow([I)V

    .line 547
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 548
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v4, 0x0

    aget v4, v0, v4

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v2, v4, v5

    .line 549
    .local v2, "x":I
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    .line 550
    .local v3, "y":I
    sget-boolean v4, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "repositionExpandAnim x="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " y="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    int-to-float v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setTranslationX(F)V

    .line 552
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    int-to-float v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setTranslationY(F)V

    .line 553
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 554
    return-void
.end method

.method private sendCoverWarningMsgIntent(Z)V
    .locals 4
    .param p1, "coverMessageEnabled"    # Z

    .prologue
    .line 1949
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->createCoverMsgRemoteView()Landroid/widget/RemoteViews;

    move-result-object v1

    .line 1950
    .local v1, "remoteViews":Landroid/widget/RemoteViews;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1951
    .local v0, "coverIntent":Landroid/content/Intent;
    const-string v2, "visibility"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1952
    const-string v2, "type"

    const-string v3, "volume"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1953
    const-string v2, "remote"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1954
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1955
    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsShowingSCoverWarning:Z

    .line 1956
    return-void
.end method

.method private setDualColorSeekbar(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 3
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    invoke-virtual {v0}, Landroid/media/SamsungAudioManager;->isSafeMediaVolumeDeviceOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1727
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMode(I)V

    .line 1728
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDualColorSeekbar - mAudioManager.getEarProtectLimitIndex() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->getEarProtectLimitIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->getEarProtectLimitIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOverlapPointForDualColor(I)V

    .line 1735
    :goto_0
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->invalidate()V

    .line 1736
    return-void

    .line 1733
    :cond_0
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOverlapPointForDualColor(I)V

    goto :goto_0
.end method

.method private setExpandedH(Z)V
    .locals 3
    .param p1, "expanded"    # Z

    .prologue
    .line 876
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-ne v0, p1, :cond_0

    .line 906
    :goto_0
    return-void

    .line 877
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    .line 878
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->isAttached()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationRunning:Z

    .line 879
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExpandedH "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStreamChanged:Z

    .line 884
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateRowsH()V

    .line 885
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationRunning:Z

    if-eqz v0, :cond_2

    .line 902
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationRunning:Z

    .line 904
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateExpandButtonH()V

    .line 905
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->rescheduleTimeoutH()V

    goto :goto_0
.end method

.method private setStreamImportantH(IZ)V
    .locals 3
    .param p1, "stream"    # I
    .param p2, "important"    # Z

    .prologue
    .line 1294
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 1295
    .local v1, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1296
    # setter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->important:Z
    invoke-static {v1, p2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2102(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)Z

    .line 1300
    .end local v1    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    :cond_1
    return-void
.end method

.method private setStreamTypeForLogging(I)V
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 831
    packed-switch p1, :pswitch_data_0

    .line 848
    :goto_0
    :pswitch_0
    return-void

    .line 833
    :pswitch_1
    const-string v0, "System"

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExtraForRingerMode:Ljava/lang/String;

    goto :goto_0

    .line 837
    :pswitch_2
    const-string v0, "Ringtone"

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExtraForRingerMode:Ljava/lang/String;

    goto :goto_0

    .line 841
    :pswitch_3
    const-string v0, "Media"

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExtraForRingerMode:Ljava/lang/String;

    goto :goto_0

    .line 845
    :pswitch_4
    const-string v0, "Notification"

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExtraForRingerMode:Ljava/lang/String;

    goto :goto_0

    .line 831
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private showH(I)V
    .locals 6
    .param p1, "reason"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 754
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 768
    :cond_0
    :goto_0
    return-void

    .line 757
    :cond_1
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showH r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/volume/Events;->SHOW_REASONS:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mShowing : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/SecVolumeDialog$H;->removeMessages(I)V

    .line 759
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    invoke-virtual {v0, v5}, Lcom/android/systemui/volume/SecVolumeDialog$H;->removeMessages(I)V

    .line 760
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->rescheduleTimeoutH()V

    .line 761
    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    if-nez v0, :cond_0

    .line 762
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-nez v0, :cond_0

    .line 763
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SafetyWarningDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 764
    :cond_4
    sput-boolean v3, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    .line 765
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->startShow()V

    .line 766
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mKeyguard:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v4, v1}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 767
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/VolumeDialogController;->notifyVisible(Z)V

    goto :goto_0
.end method

.method private showSafetyWarningH(I)V
    .locals 11
    .param p1, "flags"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    .line 1303
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v6

    const/4 v7, -0x1

    # setter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->requestedLevel:I
    invoke-static {v6, v7}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3602(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 1304
    const/high16 v6, 0x10000000

    and-int/2addr v6, p1

    if-eqz v6, :cond_2

    .line 1305
    sget-object v7, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1306
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v6, :cond_1

    .line 1307
    sget-boolean v6, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v8, "SafetyWarning dismissed by FLAG_DISMISS_UI_WARNINGS"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    :cond_0
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafetyWarningShowing:Z

    .line 1309
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->onDismissSafeVolumeWarning()V

    .line 1311
    :cond_1
    monitor-exit v7

    .line 1386
    :goto_0
    return-void

    .line 1311
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1313
    :cond_2
    const-string v6, "sys.hmt.connected"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1314
    sget-boolean v6, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v6, :cond_3

    sget-object v6, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v7, "Disable SafetyWarning by SUPPORT_WEARABLE_HMT"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->disableSafeMediaVolume()V

    goto :goto_0

    .line 1317
    :cond_4
    sget-object v7, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1318
    :try_start_1
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v6, :cond_6

    .line 1319
    iget-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-nez v6, :cond_5

    iget-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsShowingSCoverWarning:Z

    if-nez v6, :cond_5

    .line 1320
    sget-object v6, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v8, "show warning popup on the s view cover and than return"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/systemui/volume/SecVolumeDialog;->sendCoverWarningMsgIntent(Z)V

    .line 1323
    :cond_5
    monitor-exit v7

    goto :goto_0

    .line 1382
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v6

    .line 1325
    :cond_6
    :try_start_2
    new-instance v6, Lcom/android/systemui/volume/SecVolumeDialog$7;

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v9}, Lcom/android/systemui/volume/VolumeDialogController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v9

    invoke-direct {v6, p0, v8, v9}, Lcom/android/systemui/volume/SecVolumeDialog$7;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;Landroid/content/Context;Landroid/media/AudioManager;)V

    iput-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    .line 1335
    iget-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v6, :cond_a

    .line 1336
    sget-object v6, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v8, "cover open, warning popup window type is set to TYPE_VOLUME_OVERLAY"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v6}, Lcom/android/systemui/volume/SafetyWarningDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v8, 0x7e4

    invoke-virtual {v6, v8}, Landroid/view/Window;->setType(I)V

    .line 1343
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v6}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1344
    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/android/systemui/volume/SecVolumeDialog;->dismissH(I)V

    .line 1347
    :cond_7
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v6}, Lcom/android/systemui/volume/SafetyWarningDialog;->show()V

    .line 1348
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafetyWarningShowing:Z

    .line 1349
    iget-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-nez v6, :cond_9

    .line 1351
    sget-object v6, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v8, "Show warning popup on the s view cover"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    iget v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    const/4 v8, 0x6

    if-eq v6, v8, :cond_8

    iget v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverLevel:I

    if-ne v6, v10, :cond_b

    .line 1358
    :cond_8
    new-instance v5, Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v8, 0x7f0400b3

    invoke-direct {v5, v6, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1364
    .local v5, "remoteViews":Landroid/widget/RemoteViews;
    :goto_2
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1365
    .local v0, "coverIntent":Landroid/content/Intent;
    const-string v6, "visibility"

    const/4 v8, 0x1

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1366
    const-string v6, "type"

    const-string v8, "volume"

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1367
    const-string v6, "remote"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1369
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.view.volumepanel.CLICK_BUTTON1"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1370
    .local v1, "intent1":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v9, 0x8000000

    invoke-static {v6, v8, v1, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1372
    .local v3, "pendingIntent1":Landroid/app/PendingIntent;
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.view.volumepanel.CLICK_BUTTON2"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1373
    .local v2, "intent2":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v9, 0x8000000

    invoke-static {v6, v8, v2, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 1375
    .local v4, "pendingIntent2":Landroid/app/PendingIntent;
    const v6, 0x7f0e0346

    invoke-virtual {v5, v6, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1376
    const v6, 0x7f0e0347

    invoke-virtual {v5, v6, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1377
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1378
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1379
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsShowingSCoverWarning:Z

    .line 1381
    .end local v0    # "coverIntent":Landroid/content/Intent;
    .end local v1    # "intent1":Landroid/content/Intent;
    .end local v2    # "intent2":Landroid/content/Intent;
    .end local v3    # "pendingIntent1":Landroid/app/PendingIntent;
    .end local v4    # "pendingIntent2":Landroid/app/PendingIntent;
    .end local v5    # "remoteViews":Landroid/widget/RemoteViews;
    :cond_9
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/systemui/volume/SecVolumeDialog;->recheckH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    .line 1382
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1383
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->rescheduleTimeoutH()V

    goto/16 :goto_0

    .line 1339
    :cond_a
    :try_start_3
    sget-object v6, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v8, "cover closed, warning popup window type is set to TYPE_KEYGUARD_DIALOG"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v6}, Lcom/android/systemui/volume/SafetyWarningDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v8, 0x7d9

    invoke-virtual {v6, v8}, Landroid/view/Window;->setType(I)V

    goto/16 :goto_1

    .line 1359
    :cond_b
    iget v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    const/16 v8, 0x8

    if-ne v6, v8, :cond_c

    .line 1360
    new-instance v5, Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v8, 0x7f0400b2

    invoke-direct {v5, v6, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local v5    # "remoteViews":Landroid/widget/RemoteViews;
    goto/16 :goto_2

    .line 1362
    .end local v5    # "remoteViews":Landroid/widget/RemoteViews;
    :cond_c
    new-instance v5, Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v8, 0x7f0400b1

    invoke-direct {v5, v6, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .restart local v5    # "remoteViews":Landroid/widget/RemoteViews;
    goto/16 :goto_2
.end method

.method private trimObsoleteH()V
    .locals 4

    .prologue
    .line 978
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v3, "trimObsoleteH"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 980
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 981
    .local v1, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v2

    if-eqz v2, :cond_1

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->dynamic:Z

    if-nez v2, :cond_2

    .line 979
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 982
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 983
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 984
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 985
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->space:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1000(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 988
    .end local v1    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    :cond_3
    return-void
.end method

.method private updateDefaultTintColor()V
    .locals 2

    .prologue
    .line 1847
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v1, "updateDefaultTintColor()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    const-string v0, "#919799"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconActiveDefaultColor:Landroid/content/res/ColorStateList;

    .line 1849
    const-string v0, "#000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeTitleDefaultColor:Landroid/content/res/ColorStateList;

    .line 1850
    const-string v0, "#fafafa"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumePanelBgDefaultColor:Landroid/content/res/ColorStateList;

    .line 1851
    const-string v0, "#ff00a0ce"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbDefaultColor:Landroid/content/res/ColorStateList;

    .line 1852
    const-string v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbDisabledDefaultColor:Landroid/content/res/ColorStateList;

    .line 1853
    const-string v0, "#ff00a0ce"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressDefaultColor:Landroid/content/res/ColorStateList;

    .line 1854
    const-string v0, "#ffC9c9c9"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressBgDefaultColor:Landroid/content/res/ColorStateList;

    .line 1855
    return-void
.end method

.method private updateDialogBottomMarginH()V
    .locals 12

    .prologue
    const/4 v6, 0x1

    .line 851
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCollapseTime:J

    sub-long v2, v8, v10

    .line 852
    .local v2, "diff":J
    iget-wide v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCollapseTime:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->getConservativeCollapseDuration()J

    move-result-wide v8

    cmp-long v7, v2, v8

    if-gez v7, :cond_2

    move v1, v6

    .line 853
    .local v1, "collapsing":Z
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 854
    .local v4, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v5, v7, Landroid/content/res/Configuration;->orientation:I

    .line 855
    .local v5, "orientation":I
    if-eqz v1, :cond_3

    if-ne v5, v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    .line 857
    .local v0, "bottomMargin":I
    :goto_1
    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v0, v6, :cond_1

    .line 858
    sget-boolean v6, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bottomMargin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_0
    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 860
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 862
    :cond_1
    return-void

    .line 852
    .end local v0    # "bottomMargin":I
    .end local v1    # "collapsing":Z
    .end local v4    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v5    # "orientation":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 855
    .restart local v1    # "collapsing":Z
    .restart local v4    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v5    # "orientation":I
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c01e9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1
.end method

.method private updateExpandButtonH()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 909
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v2, "updateExpandButtonH"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationRunning:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 911
    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationRunning:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 934
    :goto_1
    return-void

    .line 910
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 914
    :cond_2
    sget-boolean v1, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    if-eqz v1, :cond_4

    .line 915
    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v1, :cond_3

    .line 916
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    const-string v2, "rotation"

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 917
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    iget-wide v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 918
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 932
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v1, :cond_5

    const v1, 0x7f0d0360

    :goto_3
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 920
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    const-string v2, "rotation"

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 921
    .restart local v0    # "animator":Landroid/animation/ObjectAnimator;
    iget-wide v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 922
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_2

    .line 925
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setRotation(F)V

    goto :goto_2

    .line 932
    :cond_5
    const v1, 0x7f0d035f

    goto :goto_3

    .line 916
    :array_0
    .array-data 4
        0x0
        0x43340000    # 180.0f
    .end array-data

    .line 920
    :array_1
    .array-data 4
        0x43340000    # 180.0f
        0x0
    .end array-data
.end method

.method private updateRowsH()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 943
    sget-boolean v8, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v9, "updateRowsH"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v0

    .line 947
    .local v0, "activeRow":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    sget-boolean v8, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    if-nez v8, :cond_1

    .line 948
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->trimObsoleteH()V

    .line 951
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 952
    .local v4, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    if-ne v4, v0, :cond_4

    move v3, v6

    .line 953
    .local v3, "isActive":Z
    :goto_1
    invoke-direct {p0, v4, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->isVisibleH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)Z

    move-result v5

    .line 954
    .local v5, "visible":Z
    sget-boolean v8, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStreamChanged:Z

    if-eqz v8, :cond_2

    .line 955
    invoke-direct {p0, v4, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->updateVolumeRowFocusable(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)V

    .line 957
    :cond_2
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 958
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->space:Landroid/view/View;
    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1000(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v9

    if-eqz v5, :cond_5

    iget-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v8, :cond_5

    move v8, v6

    :goto_2
    invoke-static {v9, v8}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 959
    iget-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v8, :cond_6

    const v1, 0x7f020242

    .line 960
    .local v1, "expandButtonRes":I
    :goto_3
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->cachedExpandButtonRes:I
    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3500(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v8

    if-eq v1, v8, :cond_3

    .line 961
    # setter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->cachedExpandButtonRes:I
    invoke-static {v4, v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3502(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 962
    if-nez v1, :cond_7

    .line 963
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->settingsButton:Landroid/widget/ImageButton;
    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1500(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 968
    :cond_3
    :goto_4
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->settingsButton:Landroid/widget/ImageButton;
    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1500(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/android/systemui/volume/Util;->setVisOrInvis(Landroid/view/View;Z)V

    .line 969
    invoke-direct {p0, v4}, Lcom/android/systemui/volume/SecVolumeDialog;->updateVolumeRowHeaderVisibleH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    .line 971
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->header:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2200(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .end local v1    # "expandButtonRes":I
    .end local v3    # "isActive":Z
    .end local v5    # "visible":Z
    :cond_4
    move v3, v7

    .line 952
    goto :goto_1

    .restart local v3    # "isActive":Z
    .restart local v5    # "visible":Z
    :cond_5
    move v8, v7

    .line 958
    goto :goto_2

    :cond_6
    move v1, v7

    .line 959
    goto :goto_3

    .line 965
    .restart local v1    # "expandButtonRes":I
    :cond_7
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->settingsButton:Landroid/widget/ImageButton;
    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1500(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_4

    .line 974
    .end local v1    # "expandButtonRes":I
    .end local v3    # "isActive":Z
    .end local v4    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .end local v5    # "visible":Z
    :cond_8
    sput-boolean v7, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStreamChanged:Z

    .line 975
    return-void
.end method

.method private updateTintColor()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v5, 0x10809dc

    .line 1828
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1829
    .local v1, "res":Landroid/content/res/Resources;
    sget-object v3, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v4, "updateTintColor()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    const v3, 0x7f0a00c7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconActiveColor:Landroid/content/res/ColorStateList;

    .line 1831
    const v3, 0x7f0a00cc

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeTitleColor:Landroid/content/res/ColorStateList;

    .line 1832
    const v3, 0x7f0a00cd

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumePanelBgColor:Landroid/content/res/ColorStateList;

    .line 1833
    const v3, 0x106011d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbColor:Landroid/content/res/ColorStateList;

    .line 1834
    const v3, 0x106011e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbDisabledColor:Landroid/content/res/ColorStateList;

    .line 1835
    const v3, 0x1060118

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressColor:Landroid/content/res/ColorStateList;

    .line 1836
    const v3, 0x1060117

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressBgColor:Landroid/content/res/ColorStateList;

    .line 1838
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 1839
    .local v2, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v1, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1840
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2500(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v1, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1843
    .end local v2    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1844
    return-void
.end method

.method private updateVolumeRowFocusable(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)V
    .locals 3
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .param p2, "isActive"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1176
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAccessibility:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->mAccessibilityState:Z
    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->access$3900(Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1177
    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v0, :cond_1

    .line 1178
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setFocusable(Z)V

    .line 1179
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setFocusableInTouchMode(Z)V

    .line 1180
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->requestFocus()Z

    .line 1193
    :cond_0
    :goto_0
    return-void

    .line 1182
    :cond_1
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setFocusable(Z)V

    .line 1183
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setFocusableInTouchMode(Z)V

    .line 1184
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->clearFocus()V

    goto :goto_0
.end method

.method private updateVolumeRowH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 31
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v28, v0

    if-nez v28, :cond_1

    .line 1164
    :cond_0
    :goto_0
    return-void

    .line 1057
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    .line 1058
    .local v24, "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    if-eqz v24, :cond_0

    .line 1059
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    # setter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3102(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Lcom/android/systemui/volume/VolumeDialogController$StreamState;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    .line 1060
    sget-boolean v28, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v28, :cond_2

    sget-object v28, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "updateVolumeRowH s="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", ss.level : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", row.lastAudibleLevel : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->lastAudibleLevel:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3200(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", row.ss.muted : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v30

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :cond_2
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v28, v0

    if-lez v28, :cond_3

    .line 1063
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    # setter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->lastAudibleLevel:I
    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3202(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 1065
    :cond_3
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v28, v0

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->requestedLevel:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_4

    .line 1066
    const/16 v28, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v28

    # setter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->requestedLevel:I
    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3602(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 1068
    :cond_4
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_f

    const/4 v15, 0x1

    .line 1069
    .local v15, "isRingStream":Z
    :goto_1
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v28

    const/16 v29, 0x5

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    const/4 v11, 0x1

    .line 1070
    .local v11, "isNotificationStream":Z
    :goto_2
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_11

    const/16 v19, 0x1

    .line 1071
    .local v19, "isSystemStream":Z
    :goto_3
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v28

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_12

    const/4 v6, 0x1

    .line 1072
    .local v6, "isAlarmStream":Z
    :goto_4
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v28

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_13

    const/4 v9, 0x1

    .line 1073
    .local v9, "isMusicStream":Z
    :goto_5
    if-eqz v15, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_14

    const/16 v16, 0x1

    .line 1075
    .local v16, "isRingVibrate":Z
    :goto_6
    if-eqz v11, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_15

    const/4 v12, 0x1

    .line 1077
    .local v12, "isNotificationVibrate":Z
    :goto_7
    if-eqz v19, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_16

    const/16 v20, 0x1

    .line 1079
    .local v20, "isSystemVibrate":Z
    :goto_8
    if-eqz v15, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v28, v0

    if-nez v28, :cond_17

    const/4 v14, 0x1

    .line 1081
    .local v14, "isRingSilent":Z
    :goto_9
    if-eqz v11, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v28, v0

    if-nez v28, :cond_18

    const/4 v10, 0x1

    .line 1083
    .local v10, "isNotificationSilent":Z
    :goto_a
    if-eqz v19, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v28, v0

    if-nez v28, :cond_19

    const/16 v18, 0x1

    .line 1085
    .local v18, "isSystemSilent":Z
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    move/from16 v28, v0

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1a

    const/16 v21, 0x1

    .line 1086
    .local v21, "isZenAlarms":Z
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1b

    const/16 v22, 0x1

    .line 1087
    .local v22, "isZenNone":Z
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1c

    const/16 v23, 0x1

    .line 1088
    .local v23, "isZenPriority":Z
    :goto_e
    if-nez v15, :cond_5

    if-eqz v19, :cond_1d

    :cond_5
    if-eqz v22, :cond_1d

    const/16 v17, 0x1

    .line 1089
    .local v17, "isRingZenNone":Z
    :goto_f
    if-eqz v15, :cond_1e

    if-eqz v23, :cond_1e

    const/4 v13, 0x1

    .line 1090
    .local v13, "isRingLimited":Z
    :goto_10
    const/16 v27, 0x0

    .line 1093
    .local v27, "zenMuted":Z
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v28

    if-eqz v28, :cond_6

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v28

    const/16 v29, 0x6

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1f

    :cond_6
    const/4 v7, 0x1

    .line 1095
    .local v7, "isCallOrBTSco":Z
    :goto_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mVoiceCapable:Z

    move/from16 v28, v0

    if-eqz v28, :cond_21

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_20

    const/4 v8, 0x1

    .line 1098
    .local v8, "isMainStream":Z
    :goto_12
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog;->updateVolumeRowHeaderVisibleH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    .line 1101
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 1117
    .local v25, "text":Ljava/lang/String;
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->header:Landroid/widget/TextView;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2200(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/systemui/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 1120
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mAutomute:Z

    move/from16 v28, v0

    if-nez v28, :cond_7

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muteSupported:Z

    move/from16 v28, v0

    if-eqz v28, :cond_23

    :cond_7
    const/4 v4, 0x1

    .line 1121
    .local v4, "iconEnabled":Z
    :goto_13
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2500(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1122
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2500(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v29

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v28

    if-eqz v28, :cond_8

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v28

    const/16 v30, 0x6

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_25

    :cond_8
    if-nez v4, :cond_24

    const/16 v28, 0x1

    :goto_14
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1124
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2500(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v29

    if-eqz v4, :cond_26

    const/high16 v28, 0x3f800000    # 1.0f

    :goto_15
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 1125
    if-nez v16, :cond_9

    if-eqz v12, :cond_27

    :cond_9
    const v5, 0x108094f

    .line 1131
    .local v5, "iconRes":I
    :goto_16
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->cachedIconRes:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3700(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v28

    move/from16 v0, v28

    if-eq v5, v0, :cond_a

    .line 1135
    move-object/from16 v0, p1

    # setter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->cachedIconRes:I
    invoke-static {v0, v5}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3702(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 1136
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2500(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1138
    :cond_a
    const v28, 0x108094f

    move/from16 v0, v28

    if-ne v5, v0, :cond_2c

    const/16 v28, 0x3

    :goto_17
    move-object/from16 v0, p1

    move/from16 v1, v28

    # setter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->iconState:I
    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2702(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 1145
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2500(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v28

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1148
    if-nez v12, :cond_b

    if-nez v10, :cond_b

    if-nez v20, :cond_b

    if-eqz v18, :cond_c

    :cond_b
    if-eqz v8, :cond_31

    :cond_c
    const/4 v3, 0x1

    .line 1150
    .local v3, "enableSlider":Z
    :goto_18
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v28

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    move/from16 v28, v0

    if-eqz v28, :cond_32

    if-nez v14, :cond_d

    if-nez v16, :cond_d

    if-nez v15, :cond_32

    :cond_d
    const/16 v26, 0x0

    .line 1154
    .local v26, "vlevel":I
    :goto_19
    if-nez v3, :cond_34

    .line 1156
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2500(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v28

    const v29, 0x3ecccccd    # 0.4f

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 1157
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2500(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v28

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 1163
    :cond_e
    :goto_1a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v26

    invoke-direct {v0, v1, v3, v2}, Lcom/android/systemui/volume/SecVolumeDialog;->updateVolumeRowSliderH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;ZI)V

    goto/16 :goto_0

    .line 1068
    .end local v3    # "enableSlider":Z
    .end local v4    # "iconEnabled":Z
    .end local v5    # "iconRes":I
    .end local v6    # "isAlarmStream":Z
    .end local v7    # "isCallOrBTSco":Z
    .end local v8    # "isMainStream":Z
    .end local v9    # "isMusicStream":Z
    .end local v10    # "isNotificationSilent":Z
    .end local v11    # "isNotificationStream":Z
    .end local v12    # "isNotificationVibrate":Z
    .end local v13    # "isRingLimited":Z
    .end local v14    # "isRingSilent":Z
    .end local v15    # "isRingStream":Z
    .end local v16    # "isRingVibrate":Z
    .end local v17    # "isRingZenNone":Z
    .end local v18    # "isSystemSilent":Z
    .end local v19    # "isSystemStream":Z
    .end local v20    # "isSystemVibrate":Z
    .end local v21    # "isZenAlarms":Z
    .end local v22    # "isZenNone":Z
    .end local v23    # "isZenPriority":Z
    .end local v25    # "text":Ljava/lang/String;
    .end local v26    # "vlevel":I
    .end local v27    # "zenMuted":Z
    :cond_f
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 1069
    .restart local v15    # "isRingStream":Z
    :cond_10
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 1070
    .restart local v11    # "isNotificationStream":Z
    :cond_11
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 1071
    .restart local v19    # "isSystemStream":Z
    :cond_12
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 1072
    .restart local v6    # "isAlarmStream":Z
    :cond_13
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 1073
    .restart local v9    # "isMusicStream":Z
    :cond_14
    const/16 v16, 0x0

    goto/16 :goto_6

    .line 1075
    .restart local v16    # "isRingVibrate":Z
    :cond_15
    const/4 v12, 0x0

    goto/16 :goto_7

    .line 1077
    .restart local v12    # "isNotificationVibrate":Z
    :cond_16
    const/16 v20, 0x0

    goto/16 :goto_8

    .line 1079
    .restart local v20    # "isSystemVibrate":Z
    :cond_17
    const/4 v14, 0x0

    goto/16 :goto_9

    .line 1081
    .restart local v14    # "isRingSilent":Z
    :cond_18
    const/4 v10, 0x0

    goto/16 :goto_a

    .line 1083
    .restart local v10    # "isNotificationSilent":Z
    :cond_19
    const/16 v18, 0x0

    goto/16 :goto_b

    .line 1085
    .restart local v18    # "isSystemSilent":Z
    :cond_1a
    const/16 v21, 0x0

    goto/16 :goto_c

    .line 1086
    .restart local v21    # "isZenAlarms":Z
    :cond_1b
    const/16 v22, 0x0

    goto/16 :goto_d

    .line 1087
    .restart local v22    # "isZenNone":Z
    :cond_1c
    const/16 v23, 0x0

    goto/16 :goto_e

    .line 1088
    .restart local v23    # "isZenPriority":Z
    :cond_1d
    const/16 v17, 0x0

    goto/16 :goto_f

    .line 1089
    .restart local v17    # "isRingZenNone":Z
    :cond_1e
    const/4 v13, 0x0

    goto/16 :goto_10

    .line 1093
    .restart local v13    # "isRingLimited":Z
    .restart local v27    # "zenMuted":Z
    :cond_1f
    const/4 v7, 0x0

    goto/16 :goto_11

    .line 1095
    .restart local v7    # "isCallOrBTSco":Z
    :cond_20
    const/4 v8, 0x0

    goto/16 :goto_12

    :cond_21
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v28

    const/16 v29, 0x5

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_22

    const/4 v8, 0x1

    goto/16 :goto_12

    :cond_22
    const/4 v8, 0x0

    goto/16 :goto_12

    .line 1120
    .restart local v8    # "isMainStream":Z
    .restart local v25    # "text":Ljava/lang/String;
    :cond_23
    const/4 v4, 0x0

    goto/16 :goto_13

    .line 1122
    .restart local v4    # "iconEnabled":Z
    :cond_24
    const/16 v28, 0x0

    goto/16 :goto_14

    :cond_25
    move/from16 v28, v4

    goto/16 :goto_14

    .line 1124
    :cond_26
    const/high16 v28, 0x3f000000    # 0.5f

    goto/16 :goto_15

    .line 1125
    :cond_27
    if-nez v14, :cond_28

    if-nez v10, :cond_28

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->routedToBluetooth:Z

    move/from16 v28, v0

    if-eqz v28, :cond_29

    const v5, 0x1080932

    goto/16 :goto_16

    :cond_28
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->iconMuteRes:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2000(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v5

    goto/16 :goto_16

    :cond_29
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mAutomute:Z

    move/from16 v28, v0

    if-eqz v28, :cond_2a

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v28, v0

    if-nez v28, :cond_2a

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->iconMuteRes:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2000(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v5

    goto/16 :goto_16

    :cond_2a
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    move/from16 v28, v0

    if-eqz v28, :cond_2b

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->iconMuteRes:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2000(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v5

    goto/16 :goto_16

    :cond_2b
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->iconRes:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v5

    goto/16 :goto_16

    .line 1138
    .restart local v5    # "iconRes":I
    :cond_2c
    const v28, 0x1080934

    move/from16 v0, v28

    if-eq v5, v0, :cond_2d

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->iconMuteRes:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2000(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v28

    move/from16 v0, v28

    if-ne v5, v0, :cond_2e

    :cond_2d
    const/16 v28, 0x2

    goto/16 :goto_17

    :cond_2e
    const v28, 0x1080932

    move/from16 v0, v28

    if-eq v5, v0, :cond_2f

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->iconRes:I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v28

    move/from16 v0, v28

    if-ne v5, v0, :cond_30

    :cond_2f
    const/16 v28, 0x1

    goto/16 :goto_17

    :cond_30
    const/16 v28, 0x0

    goto/16 :goto_17

    .line 1148
    :cond_31
    const/4 v3, 0x0

    goto/16 :goto_18

    .line 1150
    .restart local v3    # "enableSlider":Z
    :cond_32
    if-eqz v7, :cond_33

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v28, v0

    add-int/lit8 v26, v28, 0x1

    goto/16 :goto_19

    :cond_33
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v26, v0

    goto/16 :goto_19

    .line 1159
    .restart local v26    # "vlevel":I
    :cond_34
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2500(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/ImageButton;->isClickable()Z

    move-result v28

    if-nez v28, :cond_e

    .line 1160
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2500(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v28

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageButton;->setClickable(Z)V

    goto/16 :goto_1a
.end method

.method private updateVolumeRowHeaderVisibleH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 5
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1167
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v4

    if-eqz v4, :cond_2

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->dynamic:Z

    if-eqz v4, :cond_2

    move v0, v2

    .line 1168
    .local v0, "dynamic":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowHeaders:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    :cond_0
    move v1, v2

    .line 1169
    .local v1, "showHeaders":Z
    :goto_1
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->cachedShowHeaders:Z
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3800(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Z

    move-result v2

    if-eq v2, v1, :cond_1

    .line 1170
    # setter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->cachedShowHeaders:Z
    invoke-static {p1, v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3802(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)Z

    .line 1171
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->header:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2200(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 1173
    :cond_1
    return-void

    .end local v0    # "dynamic":Z
    .end local v1    # "showHeaders":Z
    :cond_2
    move v0, v3

    .line 1167
    goto :goto_0

    .restart local v0    # "dynamic":Z
    :cond_3
    move v1, v3

    .line 1168
    goto :goto_1
.end method

.method private updateVolumeRowSliderH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;ZI)V
    .locals 12
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .param p2, "enable"    # Z
    .param p3, "vlevel"    # I

    .prologue
    .line 1196
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1197
    if-nez p2, :cond_3

    .line 1198
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbDisabledColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 1203
    :goto_0
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v5

    if-nez v5, :cond_5

    .line 1204
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->phoneIsOffhook()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->isExtraButtonOn()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1205
    sget-object v5, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v6, "Call setMode(ProgressBar.MODE_WARNING)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setMode(I)V

    .line 1214
    :goto_1
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_1

    .line 1215
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->setDualColorSeekbar(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    .line 1219
    :cond_1
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->tracking:Z
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$4000(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1278
    :cond_2
    :goto_2
    return-void

    .line 1200
    :cond_3
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 1208
    :cond_4
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setMode(I)V

    goto :goto_1

    .line 1211
    :cond_5
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setMode(I)V

    goto :goto_1

    .line 1222
    :cond_6
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    .line 1224
    .local v3, "progress":I
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_8

    .line 1225
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog;->getImpliedMediaVolumeLevel(I)I

    move-result v1

    .line 1229
    .local v1, "level":I
    :goto_3
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_9

    const/4 v4, 0x1

    .line 1230
    .local v4, "rowVisible":Z
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->userAttempt:J
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    cmp-long v5, v6, v8

    if-gez v5, :cond_a

    const/4 v0, 0x1

    .line 1232
    .local v0, "inGracePeriod":Z
    :goto_5
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    const/4 v6, 0x3

    invoke-virtual {v5, v6, p1}, Lcom/android/systemui/volume/SecVolumeDialog$H;->removeMessages(ILjava/lang/Object;)V

    .line 1233
    sget-boolean v5, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    if-eqz v5, :cond_b

    if-eqz v4, :cond_b

    if-eqz v0, :cond_b

    .line 1234
    sget-boolean v5, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v5, :cond_7

    sget-object v5, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v6, "inGracePeriod"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    :cond_7
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, p1}, Lcom/android/systemui/volume/SecVolumeDialog$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->userAttempt:J
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    add-long/2addr v8, v10

    invoke-virtual {v5, v6, v8, v9}, Lcom/android/systemui/volume/SecVolumeDialog$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_2

    .line 1227
    .end local v0    # "inGracePeriod":Z
    .end local v1    # "level":I
    .end local v4    # "rowVisible":Z
    :cond_8
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v1

    .restart local v1    # "level":I
    goto :goto_3

    .line 1229
    :cond_9
    const/4 v4, 0x0

    goto :goto_4

    .line 1230
    .restart local v4    # "rowVisible":Z
    :cond_a
    const/4 v0, 0x0

    goto :goto_5

    .line 1239
    .restart local v0    # "inGracePeriod":Z
    :cond_b
    if-ne p3, v1, :cond_c

    .line 1240
    sget-boolean v5, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    if-eqz v5, :cond_c

    if-nez v4, :cond_2

    .line 1245
    :cond_c
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_d

    .line 1246
    move v2, p3

    .line 1251
    .local v2, "newProgress":I
    :goto_6
    if-eq v3, v2, :cond_2

    .line 1276
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_2

    .line 1248
    .end local v2    # "newProgress":I
    :cond_d
    mul-int/lit8 v2, p3, 0x64

    .restart local v2    # "newProgress":I
    goto :goto_6
.end method

.method private updateWindowWidthH()V
    .locals 7

    .prologue
    .line 437
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 438
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 439
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 440
    .local v3, "w":I
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0100

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 442
    .local v2, "max":I
    if-le v3, v2, :cond_0

    .line 443
    move v3, v2

    .line 446
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v4, :cond_2

    .line 447
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c01ea

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v3, v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 456
    :goto_0
    sget-boolean v4, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateWindowWidth lp.width="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    return-void

    .line 450
    :cond_2
    iget v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_3

    .line 451
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c01eb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v3, v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 453
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c01ec

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v3, v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method


# virtual methods
.method protected dismissH(I)V
    .locals 8
    .param p1, "reason"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 788
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissH reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    sget-object v1, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 790
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v0, :cond_5

    const/16 v0, 0x8

    if-eq p1, v0, :cond_5

    .line 791
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    if-ne p1, v3, :cond_3

    .line 793
    :cond_0
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v2, "SafetyWarning dismiss cancelled"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_1
    monitor-exit v1

    .line 828
    :cond_2
    :goto_0
    return-void

    .line 796
    :cond_3
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v2, "SafetyWarning dismissed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :cond_4
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafetyWarningShowing:Z

    .line 798
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SafetyWarningDialog;->dismiss()V

    .line 800
    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 801
    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    .line 804
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_2

    .line 807
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/SecVolumeDialog$H;->removeMessages(I)V

    .line 808
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    invoke-virtual {v0, v7}, Lcom/android/systemui/volume/SecVolumeDialog$H;->removeMessages(I)V

    .line 809
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissH : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    if-eqz v0, :cond_2

    .line 811
    sput-boolean v6, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    .line 812
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    new-instance v1, Lcom/android/systemui/volume/SecVolumeDialog$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/SecVolumeDialog$6;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->startDismiss(Ljava/lang/Runnable;)V

    .line 819
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 821
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v0

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->setStreamTypeForLogging(I)V

    .line 822
    const-string v1, "com.android.systemui.volume"

    const-string v2, "FWVP"

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExtraForRingerMode:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogController;->isChangedFromKey()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/SecVolumeDialog;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 826
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v7, v1}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 827
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v0, v6}, Lcom/android/systemui/volume/VolumeDialogController;->notifyVisible(Z)V

    goto/16 :goto_0

    .line 800
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 558
    const-string v0, "  mShowing: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 559
    const-string v0, "  mExpanded: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 560
    const-string v0, "  mExpandButtonAnimationRunning: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 561
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationRunning:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 562
    const-string v0, "  mActiveStream: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 563
    const-string v0, "  mDynamic: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 564
    const-string v0, "  mShowHeaders: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowHeaders:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 565
    const-string v0, "  mAutomute: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAutomute:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 566
    const-string v0, "  mSilentMode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSilentMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 567
    const-string v0, "  mCollapseTime: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCollapseTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 568
    const-string v0, "  mAccessibility.mFeedbackEnabled: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAccessibility:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->mFeedbackEnabled:Z
    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->access$1700(Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 570
    return-void
.end method

.method public isExtraButtonOn()Z
    .locals 6

    .prologue
    .line 1876
    const/4 v2, 0x0

    .line 1878
    .local v2, "rtvalue":Z
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "extraVolume"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1879
    .local v0, "extraButtonOn":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "audioParam;extraVolume"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1881
    .local v1, "extraButtonOnDevice":Ljava/lang/String;
    sget-object v3, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isExtraButtonOn : extraButtonOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    sget-object v3, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isExtraButtonOn : extraButtonOnDevice = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1886
    const/4 v2, 0x1

    .line 1891
    :goto_0
    sget-object v3, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isExtraButtonOn : rtvalue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    return v2

    .line 1888
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public playSoundH()V
    .locals 7

    .prologue
    .line 713
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v1, "playSoundH"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    monitor-enter p0

    .line 715
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v1

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setStreamType(I)V

    .line 716
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->makeSound()V

    .line 717
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundID:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 720
    :cond_0
    monitor-exit p0

    .line 721
    return-void

    .line 720
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected rescheduleTimeoutH()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 771
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    invoke-virtual {v1, v5}, Lcom/android/systemui/volume/SecVolumeDialog$H;->removeMessages(I)V

    .line 772
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->computeTimeoutH()I

    move-result v0

    .line 773
    .local v0, "timeout":I
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/systemui/volume/SecVolumeDialog$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/systemui/volume/SecVolumeDialog$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 776
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v1}, Lcom/android/systemui/volume/VolumeDialogController;->userActivity()V

    .line 777
    return-void
.end method

.method public setAutomute(Z)V
    .locals 2
    .param p1, "automute"    # Z

    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAutomute:Z

    if-ne v0, p1, :cond_0

    .line 474
    :goto_0
    return-void

    .line 472
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAutomute:Z

    .line 473
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$H;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setShowHeaders(Z)V
    .locals 2
    .param p1, "showHeaders"    # Z

    .prologue
    .line 465
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowHeaders:Z

    if-ne p1, v0, :cond_0

    .line 468
    :goto_0
    return-void

    .line 466
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowHeaders:Z

    .line 467
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$H;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setSilentMode(Z)V
    .locals 2
    .param p1, "silentMode"    # Z

    .prologue
    .line 477
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSilentMode:Z

    if-ne v0, p1, :cond_0

    .line 480
    :goto_0
    return-void

    .line 478
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSilentMode:Z

    .line 479
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$H;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public stopSoundH()V
    .locals 2

    .prologue
    .line 732
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v1, "stopSound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    return-void
.end method

.method public themeChanged()V
    .locals 4

    .prologue
    .line 738
    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v3, "themeChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateTintColor()V

    .line 742
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 743
    .local v1, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setFluidEnabled(Z)V

    goto :goto_0

    .line 750
    .end local v1    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    :cond_0
    return-void
.end method
