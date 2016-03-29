.class public Lcom/android/keyguard/securityview/KeyguardUniversalLockView;
.super Landroid/widget/LinearLayout;
.source "KeyguardUniversalLockView.java"

# interfaces
.implements Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;
.implements Lcom/android/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/securityview/KeyguardUniversalLockView$14;,
        Lcom/android/keyguard/securityview/KeyguardUniversalLockView$AccountAnalyzer;,
        Lcom/android/keyguard/securityview/KeyguardUniversalLockView$FooterMode;,
        Lcom/android/keyguard/securityview/KeyguardUniversalLockView$DirectionStichingTimer;
    }
.end annotation


# static fields
.field private static RIGHT_PASSWORD_DETECTED:I

.field private static WRONG_PASSWORD_DETECTED:I


# instance fields
.field private ANIMATION_DURATION:I

.field private ARROW_DOT_THRESHOLD:I

.field private DOT_MARGIN_LEFT:D

.field private DOT_MARGIN_RIGHT:D

.field private final MAX_DOTS_ALLOWED:I

.field private WHITE_LOCKSCREEN_WALLPAPER:Ljava/lang/String;

.field _TTSListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field _listener:Lcom/android/internal/widget/DirectionLockTouchListener;

.field private isChecking:Z

.field private isSleeping:Z

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mBackupPINButton:Landroid/widget/Button;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCancelDirectionRunnable:Ljava/lang/Runnable;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mDirectionImageView:Landroid/widget/ImageView;

.field private mDirectionView:Lcom/android/internal/widget/DirectionLockView;

.field private mDot:Landroid/widget/ImageView;

.field private mDotAnimator:Landroid/animation/ValueAnimator;

.field private mDotBackground:Landroid/graphics/drawable/Drawable;

.field private mDotLayout:Landroid/widget/LinearLayout;

.field private mDotList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mDotListAnimator:Landroid/animation/ValueAnimator;

.field private mEMAPress:Z

.field private mEcaView:Landroid/view/View;

.field private mErrorMessage:Ljava/lang/String;

.field private mErrorTextEnterAnim:Landroid/view/animation/Animation;

.field private mErrorTextEnterAnimListner:Landroid/view/animation/Animation$AnimationListener;

.field private mErrorTextExitAnim:Landroid/view/animation/Animation;

.field private mErrorTextExitAnimListner:Landroid/view/animation/Animation$AnimationListener;

.field private mForgotUniversalLockButton:Landroid/widget/Button;

.field private mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

.field private mIsAccountExist:Z

.field private mIsBouncerMode:Z

.field private mKeyguardBouncerFrameViewGroup:Landroid/view/ViewGroup;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLastFooterMode:Lcom/android/keyguard/securityview/KeyguardUniversalLockView$FooterMode;

.field private mLastPokeTime:J

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

.field private mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

.field private mShadowColor:I

.field private mShowArrow:Z

.field private mTextColor:I

.field private mTextToSpeech:Landroid/speech/tts/TextToSpeech;

.field mTimer:Lcom/android/keyguard/securityview/KeyguardUniversalLockView$DirectionStichingTimer;

.field private mTotalFailedUniversalLockAttempts:I

.field mUniversalLockWrongPasswordhandler:Landroid/os/Handler;

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mVibraterService:Landroid/os/Vibrator;

.field private playBeep:Z

.field private playVibration:Z

.field private playVoice:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    const/16 v0, 0x23

    sput v0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->WRONG_PASSWORD_DETECTED:I

    .line 131
    const/16 v0, 0x25

    sput v0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->RIGHT_PASSWORD_DETECTED:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 279
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 280
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 291
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 136
    iput v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mTotalFailedUniversalLockAttempts:I

    .line 137
    const/16 v0, 0x16

    iput v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->MAX_DOTS_ALLOWED:I

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 165
    const-wide/16 v0, -0x1b58

    iput-wide v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mLastPokeTime:J

    .line 170
    new-instance v0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$1;-><init>(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)V

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mCancelDirectionRunnable:Ljava/lang/Runnable;

    .line 184
    iput-boolean v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mEMAPress:Z

    .line 193
    const/16 v0, 0x50

    iput v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->ARROW_DOT_THRESHOLD:I

    .line 194
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->ANIMATION_DURATION:I

    .line 197
    sget-object v0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$FooterMode;->Normal:Lcom/android/keyguard/securityview/KeyguardUniversalLockView$FooterMode;

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mLastFooterMode:Lcom/android/keyguard/securityview/KeyguardUniversalLockView$FooterMode;

    .line 199
    const-string v0, "white_lockscreen_wallpaper"

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->WHITE_LOCKSCREEN_WALLPAPER:Ljava/lang/String;

    .line 200
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mShadowColor:I

    .line 201
    const v0, -0xbbbbbc

    iput v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mTextColor:I

    .line 202
    const-string v0, ""

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mErrorMessage:Ljava/lang/String;

    .line 257
    new-instance v0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$2;-><init>(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)V

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 298
    new-instance v0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$3;-><init>(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)V

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->_listener:Lcom/android/internal/widget/DirectionLockTouchListener;

    .line 383
    new-instance v0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$4;-><init>(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)V

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->_TTSListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 659
    new-instance v0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$11;

    invoke-direct {v0, p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$11;-><init>(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)V

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mErrorTextEnterAnimListner:Landroid/view/animation/Animation$AnimationListener;

    .line 692
    new-instance v0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$12;

    invoke-direct {v0, p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$12;-><init>(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)V

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mErrorTextExitAnimListner:Landroid/view/animation/Animation$AnimationListener;

    .line 292
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 293
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 294
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->makeAnimations()V

    .line 295
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Lcom/android/internal/widget/DirectionLockView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->resetmTimer()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDirectionImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Landroid/view/animation/AlphaAnimation;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Landroid/view/animation/AlphaAnimation;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mLastPokeTime:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView;
    .param p1, "x1"    # J

    .prologue
    .line 124
    iput-wide p1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mLastPokeTime:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Lcom/android/keyguard/KeyguardMessageArea;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->handleAndPerformDotAnimations()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    .prologue
    .line 124
    iget v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mTotalFailedUniversalLockAttempts:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView;
    .param p1, "x1"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mTotalFailedUniversalLockAttempts:I

    return p1
.end method

.method static synthetic access$1708(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    .prologue
    .line 124
    iget v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mTotalFailedUniversalLockAttempts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mTotalFailedUniversalLockAttempts:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->clearDots()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mErrorMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView;
    .param p1, "x1"    # I

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->updateErrorText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView;
    .param p1, "x1"    # J

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->handleAttemptLockout(J)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->playVoice:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Landroid/speech/tts/TextToSpeech;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mErrorTextEnterAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Landroid/os/Vibrator;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mVibraterService:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->isSleeping:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->disableDevicePermanently()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->isSleeping:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDot:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDotLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDotList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mErrorTextExitAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mIsAccountExist:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mIsAccountExist:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->displayDefaultSecurityMessage()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;Lcom/android/keyguard/securityview/KeyguardUniversalLockView$FooterMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView;
    .param p1, "x1"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView$FooterMode;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->updateFooter(Lcom/android/keyguard/securityview/KeyguardUniversalLockView$FooterMode;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->isChecking:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView;
    .param p1, "x1"    # Landroid/os/CountDownTimer;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->isChecking:Z

    return p1
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 124
    sget v0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->WRONG_PASSWORD_DETECTED:I

    return v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 124
    sget v0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->RIGHT_PASSWORD_DETECTED:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mEMAPress:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->WHITE_LOCKSCREEN_WALLPAPER:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method private checkAccountExist(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1000
    new-instance v0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$AccountAnalyzer;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$AccountAnalyzer;-><init>(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;Landroid/accounts/AccountManager;Lcom/android/keyguard/securityview/KeyguardUniversalLockView$1;)V

    .line 1001
    .local v0, "accountAnalyzer":Lcom/android/keyguard/securityview/KeyguardUniversalLockView$AccountAnalyzer;
    invoke-virtual {v0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$AccountAnalyzer;->start()V

    .line 1002
    return-void
.end method

.method private clearDots()V
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDotLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 640
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDotLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 642
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDotList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDotList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 643
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDotList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 645
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDot:Landroid/widget/ImageView;

    .line 646
    return-void
.end method

.method private disableDevicePermanently()V
    .locals 3

    .prologue
    .line 1338
    const-string v0, "KeyguardUniversalLockView"

    const-string v1, "in disableDevicePermanently()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    .line 1341
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    .line 1342
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    .line 1344
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->resetmTimer()V

    .line 1345
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->clearDots()V

    .line 1346
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    const v2, 0x1040b4f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 1347
    return-void
.end method

.method private displayDefaultSecurityMessage()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 876
    const-string v2, "KeyguardUniversalLockView"

    const-string v3, "in displayDefaultSecurityMessage()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v0

    .line 879
    .local v0, "attempts":I
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->getRemainingAttemptsBeforeWipe()I

    move-result v1

    .line 880
    .local v1, "remainingAttemptsBeforeWipe":I
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoWipe()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xa

    if-le v0, v2, :cond_1

    if-lez v1, :cond_1

    .line 882
    if-ne v1, v6, :cond_0

    .line 883
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$string;->kg_universal_lock_instructions_normal_mode:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$string;->kg_1_attempt_remaining:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 892
    :goto_0
    return-void

    .line 886
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget v3, Lcom/android/keyguard/R$string;->kg_universal_lock_instructions_normal_mode:I

    sget v4, Lcom/android/keyguard/R$string;->kg_n_attempts_remaining:I

    invoke-virtual {v2, v3, v4, v1, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IIIZ)V

    goto :goto_0

    .line 890
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget v3, Lcom/android/keyguard/R$string;->kg_universal_lock_instructions_normal_mode:I

    invoke-virtual {v2, v3, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ)V

    goto :goto_0
.end method

.method private handleAndPerformDotAnimations()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 710
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 711
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 713
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDot:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 714
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDotList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDot:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    :cond_1
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDot:Landroid/widget/ImageView;

    .line 718
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDot:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDotBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 720
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDot:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 721
    .local v0, "lTemp":Landroid/widget/LinearLayout$LayoutParams;
    if-nez v0, :cond_2

    .line 722
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0    # "lTemp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 724
    .restart local v0    # "lTemp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    iget-wide v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->DOT_MARGIN_LEFT:D

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->DOT_MARGIN_RIGHT:D

    double-to-int v2, v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 725
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDot:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 727
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 729
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDotList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 730
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDotListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 731
    :cond_3
    return-void
.end method

.method private handleAttemptLockout(J)V
    .locals 9
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 1013
    const-string v0, "KeyguardUniversalLockView"

    const-string v1, "in handleAttemptLockout()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    .line 1015
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    .line 1016
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    .line 1017
    sget-object v0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$FooterMode;->Normal:Lcom/android/keyguard/securityview/KeyguardUniversalLockView$FooterMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->updateFooter(Lcom/android/keyguard/securityview/KeyguardUniversalLockView$FooterMode;)V

    .line 1019
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->resetmTimer()V

    .line 1020
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->clearDots()V

    .line 1022
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1024
    .local v6, "elapsedRealtime":J
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 1025
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1026
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 1029
    :cond_0
    new-instance v0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$13;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$13;-><init>(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;JJ)V

    invoke-virtual {v0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$13;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 1113
    return-void
.end method

.method private isDeviceDisabledForMaxFailedAttempt()Z
    .locals 7

    .prologue
    .line 1309
    const-string v4, "KeyguardUniversalLockView"

    const-string v5, "in isDeviceDisabledForMaxFailedAttempt()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    const/4 v2, 0x0

    .line 1311
    .local v2, "isDeviceDisableForMaxFailedAttempt":Z
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "enterprise_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1313
    .local v1, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v1, :cond_0

    .line 1314
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/PasswordPolicy;->getMaximumFailedPasswordsForDeviceDisable()I

    move-result v3

    .line 1316
    .local v3, "maxNumFailedAttemptForDisable":I
    const-string v4, "KeyguardUniversalLockView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "max failed attempt for device disable :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    if-lez v3, :cond_0

    .line 1319
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getCurrentFailedPasswordAttempts()I

    move-result v0

    .line 1320
    .local v0, "curNumFailedAttempts":I
    const-string v4, "KeyguardUniversalLockView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current failed attempt for device  :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    if-lt v0, v3, :cond_1

    const/4 v2, 0x1

    .line 1325
    .end local v0    # "curNumFailedAttempts":I
    .end local v3    # "maxNumFailedAttemptForDisable":I
    :cond_0
    :goto_0
    const-string v4, "KeyguardUniversalLockView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDeviceDisabledForMaxFailedAttempt return :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    return v2

    .line 1321
    .restart local v0    # "curNumFailedAttempts":I
    .restart local v3    # "maxNumFailedAttemptForDisable":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private makeAnimations()V
    .locals 2

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$anim;->keyguard_error_text_enter_animation:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mErrorTextEnterAnim:Landroid/view/animation/Animation;

    .line 651
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mErrorTextEnterAnim:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mErrorTextEnterAnimListner:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 652
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mErrorTextEnterAnim:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/interpolator/SineIn33;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineIn33;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 653
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$anim;->keyguard_error_text_exit_animation:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mErrorTextExitAnim:Landroid/view/animation/Animation;

    .line 655
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mErrorTextExitAnim:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mErrorTextExitAnimListner:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 656
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mErrorTextExitAnim:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 657
    return-void
.end method

.method private resetmTimer()V
    .locals 1

    .prologue
    .line 629
    iget-boolean v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->isSleeping:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mTimer:Lcom/android/keyguard/securityview/KeyguardUniversalLockView$DirectionStichingTimer;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mTimer:Lcom/android/keyguard/securityview/KeyguardUniversalLockView$DirectionStichingTimer;

    invoke-virtual {v0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$DirectionStichingTimer;->interrupt()V

    .line 631
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mTimer:Lcom/android/keyguard/securityview/KeyguardUniversalLockView$DirectionStichingTimer;

    .line 633
    :cond_0
    return-void
.end method

.method private updateErrorText(I)Ljava/lang/String;
    .locals 5
    .param p1, "attempts"    # I

    .prologue
    .line 621
    const/4 v0, 0x5

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoWipe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->kg_wrong_universal_lock_vzw:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->getRemainingAttemptsBeforeWipe()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 624
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->kg_wrong_universal_lock:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateFooter(Lcom/android/keyguard/securityview/KeyguardUniversalLockView$FooterMode;)V
    .locals 5
    .param p1, "mode"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView$FooterMode;

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 745
    const-string v0, "KeyguardUniversalLockView"

    const-string v1, "in updateFooter()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mLastFooterMode:Lcom/android/keyguard/securityview/KeyguardUniversalLockView$FooterMode;

    .line 750
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mBackupPINButton:Landroid/widget/Button;

    if-nez v0, :cond_1

    .line 807
    :cond_0
    :goto_0
    return-void

    .line 753
    :cond_1
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isSupportBackupPin()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$FooterMode;->BackupPIN:Lcom/android/keyguard/securityview/KeyguardUniversalLockView$FooterMode;

    if-ne p1, v0, :cond_2

    .line 754
    sget-object p1, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$FooterMode;->Normal:Lcom/android/keyguard/securityview/KeyguardUniversalLockView$FooterMode;

    .line 758
    :cond_2
    sget-object v0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$14;->$SwitchMap$com$android$keyguard$securityview$KeyguardUniversalLockView$FooterMode:[I

    invoke-virtual {p1}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$FooterMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 805
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mEcaView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/EmergencyCarrierArea;

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mEcaView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/EmergencyCarrierArea;

    invoke-virtual {v0}, Lcom/android/keyguard/EmergencyCarrierArea;->resizeFooter()V

    goto :goto_0

    .line 760
    :pswitch_0
    const-string v0, "KeyguardUniversalLockView"

    const-string v1, "mode normal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v0, :cond_3

    .line 762
    const-string v0, "KeyguardUniversalLockView"

    const-string v1, "mSecurityMessageDisplay IS NOT NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iget-boolean v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mIsBouncerMode:Z

    if-eqz v0, :cond_4

    .line 764
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const-string v1, ""

    invoke-virtual {v0, v1, v4}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 772
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 766
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_universal_lock_instructions_normal_mode:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_2

    .line 776
    :pswitch_1
    const-string v0, "KeyguardUniversalLockView"

    const-string v1, "mode ForgotLockUniversal changing to BackupPIN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mForgotUniversalLockButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 778
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->savedBackupPinExists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isSupportBackupPin()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 779
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 781
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 784
    :pswitch_2
    const-string v0, "KeyguardUniversalLockView"

    const-string v1, "mode BackupPIN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->isCountDownTimerRunning()Z

    move-result v0

    if-nez v0, :cond_6

    .line 788
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->displayDefaultSecurityMessage()V

    .line 792
    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 798
    :pswitch_3
    const-string v0, "KeyguardUniversalLockView"

    const-string v1, "mode VerifyUnlocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    .line 758
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method checkForCorrectPassword()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 214
    const-string v2, "KeyguardUniversalLockView"

    const-string v3, "Checking For Correct Password"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v3}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPasswordNumbers()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->checkPattern(Ljava/util/List;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    const/4 v1, 0x1

    .line 225
    :cond_0
    :goto_0
    return v1

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "exc":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public hasOverlappingRendering()Z
    .locals 2

    .prologue
    .line 1273
    const-string v0, "KeyguardUniversalLockView"

    const-string v1, "in hasOverlappingRendering()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    const/4 v0, 0x0

    return v0
.end method

.method protected isCountDownTimerRunning()Z
    .locals 4

    .prologue
    .line 1116
    const-string v2, "KeyguardUniversalLockView"

    const-string v3, "in isCountDownTimerRunning()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 1120
    .local v0, "deadline":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 1121
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public needsInput()Z
    .locals 2

    .prologue
    .line 1133
    const-string v0, "KeyguardUniversalLockView"

    const-string v1, "in needsInput()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    const/4 v0, 0x0

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1209
    const-string v0, "KeyguardUniversalLockView"

    const-string v1, "in onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->clearDots()V

    .line 1211
    return-void
.end method

.method public onEmergencyButtonClickedWhenInCall()V
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    .line 811
    return-void
.end method

.method protected onFinishInflate()V
    .locals 13

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v9, -0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 398
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 399
    const-string v4, "KeyguardUniversalLockView"

    const-string v7, "in onFinishInflate()"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v4, :cond_6

    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v7}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 402
    sget v4, Lcom/android/keyguard/R$id;->directionLockView:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/DirectionLockView;

    iput-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    .line 405
    new-instance v4, Landroid/speech/tts/TextToSpeech;

    iget-object v7, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->_TTSListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v4, v7, v8}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 408
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "tts_default_rate"

    const/16 v8, 0x64

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 410
    .local v1, "mDefaultRate":I
    const-string v4, "KeyguardUniversalLockView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mTextToSpeech Rate - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    int-to-float v7, v1

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v7, v8

    invoke-virtual {v4, v7}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 413
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    const-string v7, "accessibility"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    iput-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 417
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "universal_lock_vibration"

    invoke-static {v4, v7, v5, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_7

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->playVibration:Z

    .line 419
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "universal_lock_voice"

    invoke-static {v4, v7, v6, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_8

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->playVoice:Z

    .line 421
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "universal_lock_visible"

    invoke-static {v4, v7, v6, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_9

    move v4, v5

    :goto_3
    iput-boolean v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mShowArrow:Z

    .line 423
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "universal_lock_beep"

    invoke-static {v4, v7, v5, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_a

    move v4, v5

    :goto_4
    iput-boolean v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->playBeep:Z

    .line 426
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mHashMap:Ljava/util/HashMap;

    .line 427
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mHashMap:Ljava/util/HashMap;

    const-string v7, "com.samsung.SMT.KEY_PARAM"

    const-string v8, "DISABLE_NOTICE_POPUP"

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isTabletDevice()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 430
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-object v7, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/keyguard/R$dimen;->universal_lock_keyguard_arrow_size:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v4, v7}, Lcom/android/internal/widget/DirectionLockView;->getDirectionImageView(I)Landroid/widget/ImageView;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDirectionImageView:Landroid/widget/ImageView;

    .line 435
    :goto_5
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-object v7, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->_listener:Lcom/android/internal/widget/DirectionLockTouchListener;

    invoke-virtual {v4, v7}, Lcom/android/internal/widget/DirectionLockView;->setOnDirectionLockTouchListener(Lcom/android/internal/widget/DirectionLockTouchListener;)V

    .line 436
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v7, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mShowArrow:Z

    invoke-virtual {v4, v7}, Lcom/android/internal/widget/DirectionLockView;->setShowArrow(Z)V

    .line 437
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v7, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->playVoice:Z

    invoke-virtual {v4, v7}, Lcom/android/internal/widget/DirectionLockView;->setPlayVoice(Z)V

    .line 438
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v7, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->playVibration:Z

    invoke-virtual {v4, v7}, Lcom/android/internal/widget/DirectionLockView;->setPlayVibration(Z)V

    .line 439
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v7, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->playBeep:Z

    invoke-virtual {v4, v7}, Lcom/android/internal/widget/DirectionLockView;->setPlayBeep(Z)V

    .line 440
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DirectionLockView;->setVisibility(I)V

    .line 443
    new-instance v4, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$5;

    invoke-direct {v4, p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$5;-><init>(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)V

    iput-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mUniversalLockWrongPasswordhandler:Landroid/os/Handler;

    .line 493
    sget v4, Lcom/android/keyguard/R$id;->keyguard_selector_fade_container:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/EmergencyCarrierArea;

    iput-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mEcaView:Landroid/view/View;

    .line 494
    sget v4, Lcom/android/keyguard/R$id;->forgot_password_button:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mForgotUniversalLockButton:Landroid/widget/Button;

    .line 495
    sget v4, Lcom/android/keyguard/R$id;->backup_pin_button:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mBackupPINButton:Landroid/widget/Button;

    .line 497
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mForgotUniversalLockButton:Landroid/widget/Button;

    if-eqz v4, :cond_0

    .line 498
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mForgotUniversalLockButton:Landroid/widget/Button;

    sget v7, Lcom/android/keyguard/R$string;->kg_forgot_spass_button_text:I

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(I)V

    .line 499
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mForgotUniversalLockButton:Landroid/widget/Button;

    new-instance v7, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$6;

    invoke-direct {v7, p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$6;-><init>(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)V

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mBackupPINButton:Landroid/widget/Button;

    if-eqz v4, :cond_1

    .line 507
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mBackupPINButton:Landroid/widget/Button;

    sget v7, Lcom/android/keyguard/R$string;->kg_lockscreen_backup_pin_button_text:I

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(I)V

    .line 508
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mBackupPINButton:Landroid/widget/Button;

    new-instance v7, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$7;

    invoke-direct {v7, p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$7;-><init>(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)V

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 517
    :cond_1
    sget v4, Lcom/android/keyguard/R$id;->emergency_call_button:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    .line 518
    .local v0, "button":Lcom/android/keyguard/EmergencyButton;
    if-eqz v0, :cond_2

    .line 519
    invoke-virtual {v0, p0}, Lcom/android/keyguard/EmergencyButton;->setCallback(Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;)V

    .line 522
    :cond_2
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isSupportSamsungAccountAuth()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 523
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->checkAccountExist(Landroid/content/Context;)V

    .line 525
    :cond_3
    invoke-static {p0}, Lcom/android/keyguard/KeyguardMessageArea;->findSecurityMessageDisplay(Landroid/view/View;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    .line 528
    sget v4, Lcom/android/keyguard/R$id;->container:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mKeyguardBouncerFrameViewGroup:Landroid/view/ViewGroup;

    .line 530
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v4, :cond_4

    .line 531
    const-string v4, "KeyguardUniversalLockView"

    const-string v7, "in onFinishInflate() mSecurityMessageDisplay IS NOT NULL"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v4, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    .line 535
    :cond_4
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 536
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->disableDevicePermanently()V

    .line 538
    :cond_5
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v7, "vibrator"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    iput-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mVibraterService:Landroid/os/Vibrator;

    .line 541
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, v10, v12}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    .line 542
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v4, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 543
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    iget v7, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->ANIMATION_DURATION:I

    int-to-long v8, v7

    invoke-virtual {v4, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 546
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, v12, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    .line 547
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    iget v7, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->ANIMATION_DURATION:I

    int-to-long v8, v7

    invoke-virtual {v4, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 548
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v4, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 551
    sget v4, Lcom/android/keyguard/R$id;->dot_layout:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDotLayout:Landroid/widget/LinearLayout;

    .line 553
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/android/keyguard/R$dimen;->dot_left_margin:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-double v8, v4

    iput-wide v8, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->DOT_MARGIN_LEFT:D

    .line 554
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/android/keyguard/R$dimen;->dot_right_margin:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-double v8, v4

    iput-wide v8, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->DOT_MARGIN_RIGHT:D

    .line 556
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDotList:Ljava/util/ArrayList;

    .line 557
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/android/keyguard/R$drawable;->keyguard_universal_view_dot_circle:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDotBackground:Landroid/graphics/drawable/Drawable;

    .line 558
    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    .line 559
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    iget v7, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->ANIMATION_DURATION:I

    int-to-long v8, v7

    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 560
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    iget v7, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->ANIMATION_DURATION:I

    div-int/lit8 v7, v7, 0x64

    iget v8, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->ARROW_DOT_THRESHOLD:I

    mul-int/2addr v7, v8

    int-to-long v8, v7

    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 562
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$8;

    invoke-direct {v7, p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$8;-><init>(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)V

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 574
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$9;

    invoke-direct {v7, p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$9;-><init>(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)V

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 595
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/android/keyguard/R$dimen;->dot_size:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-double v8, v4

    iget-wide v10, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->DOT_MARGIN_LEFT:D

    add-double/2addr v8, v10

    iget-wide v10, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->DOT_MARGIN_RIGHT:D

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    div-double v2, v8, v10

    .line 597
    .local v2, "mDotListAnimatorTolerance":D
    const/4 v4, 0x2

    new-array v4, v4, [F

    double-to-float v7, v2

    aput v7, v4, v6

    aput v12, v4, v5

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDotListAnimator:Landroid/animation/ValueAnimator;

    .line 598
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDotListAnimator:Landroid/animation/ValueAnimator;

    iget v5, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->ANIMATION_DURATION:I

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 599
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDotListAnimator:Landroid/animation/ValueAnimator;

    iget v5, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->ANIMATION_DURATION:I

    div-int/lit8 v5, v5, 0x64

    iget v6, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->ARROW_DOT_THRESHOLD:I

    mul-int/2addr v5, v6

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 601
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDotListAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$10;

    invoke-direct {v5, p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$10;-><init>(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 611
    return-void

    .line 400
    .end local v0    # "button":Lcom/android/keyguard/EmergencyButton;
    .end local v1    # "mDefaultRate":I
    .end local v2    # "mDotListAnimatorTolerance":D
    :cond_6
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    goto/16 :goto_0

    .restart local v1    # "mDefaultRate":I
    :cond_7
    move v4, v6

    .line 417
    goto/16 :goto_1

    :cond_8
    move v4, v6

    .line 419
    goto/16 :goto_2

    :cond_9
    move v4, v6

    .line 421
    goto/16 :goto_3

    :cond_a
    move v4, v6

    .line 423
    goto/16 :goto_4

    .line 433
    :cond_b
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v4}, Lcom/android/internal/widget/DirectionLockView;->getDirectionImageView()Landroid/widget/ImageView;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDirectionImageView:Landroid/widget/ImageView;

    goto/16 :goto_5

    .line 558
    nop

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1157
    const-string v0, "KeyguardUniversalLockView"

    const-string v1, "in onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 1159
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1160
    iput-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 1164
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    if-eqz v0, :cond_1

    .line 1165
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    .line 1166
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    .line 1169
    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->isSleeping:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mTimer:Lcom/android/keyguard/securityview/KeyguardUniversalLockView$DirectionStichingTimer;

    if-eqz v0, :cond_2

    .line 1170
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mTimer:Lcom/android/keyguard/securityview/KeyguardUniversalLockView$DirectionStichingTimer;

    invoke-virtual {v0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$DirectionStichingTimer;->interrupt()V

    .line 1171
    iput-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mTimer:Lcom/android/keyguard/securityview/KeyguardUniversalLockView$DirectionStichingTimer;

    .line 1174
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->clearDots()V

    .line 1175
    return-void
.end method

.method public onResume(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 1187
    const-string v0, "KeyguardUniversalLockView"

    const-string v1, "in onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->reset()V

    .line 1189
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->updateBlackTextOnWhiteWallpaper()V

    .line 1190
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 821
    const-string v0, "KeyguardUniversalLockView"

    const-string v1, "in onTouchEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    const/4 v0, 0x1

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 925
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 926
    const-string v0, "KeyguardUniversalLockView"

    const-string v1, "in onWindowFocusChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    .line 929
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    .line 931
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->resetmTimer()V

    .line 932
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->clearDots()V

    .line 934
    if-eqz p1, :cond_0

    .line 936
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->reset()V

    .line 938
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 832
    const-string v2, "KeyguardUniversalLockView"

    const-string v3, "in reset()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v2}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    .line 834
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v2}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    .line 835
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    .line 837
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->resetmTimer()V

    .line 838
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->clearDots()V

    .line 841
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    if-nez v2, :cond_4

    .line 844
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 845
    .local v0, "deadline":J
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mTotalFailedUniversalLockAttempts:I

    .line 847
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 848
    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->handleAttemptLockout(J)V

    .line 866
    .end local v0    # "deadline":J
    :goto_0
    return-void

    .line 851
    .restart local v0    # "deadline":J
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->isVerifyUnlockOnly()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 852
    sget-object v2, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$FooterMode;->VerifyUnlocked:Lcom/android/keyguard/securityview/KeyguardUniversalLockView$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->updateFooter(Lcom/android/keyguard/securityview/KeyguardUniversalLockView$FooterMode;)V

    goto :goto_0

    .line 853
    :cond_1
    iget-boolean v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mIsAccountExist:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isSupportSamsungAccountAuth()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mTotalFailedUniversalLockAttempts:I

    if-lt v2, v4, :cond_2

    .line 855
    sget-object v2, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$FooterMode;->ForgotLockUniversal:Lcom/android/keyguard/securityview/KeyguardUniversalLockView$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->updateFooter(Lcom/android/keyguard/securityview/KeyguardUniversalLockView$FooterMode;)V

    goto :goto_0

    .line 856
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->savedBackupPinExists()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mTotalFailedUniversalLockAttempts:I

    if-lt v2, v4, :cond_3

    .line 858
    sget-object v2, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$FooterMode;->BackupPIN:Lcom/android/keyguard/securityview/KeyguardUniversalLockView$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->updateFooter(Lcom/android/keyguard/securityview/KeyguardUniversalLockView$FooterMode;)V

    goto :goto_0

    .line 860
    :cond_3
    sget-object v2, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$FooterMode;->Normal:Lcom/android/keyguard/securityview/KeyguardUniversalLockView$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->updateFooter(Lcom/android/keyguard/securityview/KeyguardUniversalLockView$FooterMode;)V

    goto :goto_0

    .line 864
    .end local v0    # "deadline":J
    :cond_4
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->disableDevicePermanently()V

    goto :goto_0
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 362
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 373
    return-void
.end method

.method public showMessage(Ljava/lang/String;I)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardMessageArea;->setNextMessageColor(I)V

    .line 1145
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 1146
    return-void
.end method

.method public showPromptReason(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 1139
    const-string v0, "KeyguardUniversalLockView"

    const-string v1, "in showPromptReason()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    return-void
.end method

.method public startAppearAnimation()V
    .locals 2

    .prologue
    .line 1234
    const-string v0, "KeyguardUniversalLockView"

    const-string v1, "in startAppearAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 4
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v2, 0x0

    .line 1245
    const-string v0, "KeyguardUniversalLockView"

    const-string v1, "in startDisappearAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    .line 1247
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    .line 1249
    iget-boolean v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->isSleeping:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mTimer:Lcom/android/keyguard/securityview/KeyguardUniversalLockView$DirectionStichingTimer;

    if-eqz v0, :cond_0

    .line 1250
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mTimer:Lcom/android/keyguard/securityview/KeyguardUniversalLockView$DirectionStichingTimer;

    invoke-virtual {v0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$DirectionStichingTimer;->interrupt()V

    .line 1251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mTimer:Lcom/android/keyguard/securityview/KeyguardUniversalLockView$DirectionStichingTimer;

    .line 1254
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->clearDots()V

    .line 1256
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    const v2, 0x10c000f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 1261
    const/4 v0, 0x1

    return v0
.end method

.method protected updateBlackTextOnWhiteWallpaper()V
    .locals 6

    .prologue
    .line 1193
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v0

    .line 1194
    .local v0, "isWhiteWallpaper":Z
    const-string v1, "KeyguardUniversalLockView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in updateBlackTextOnWhiteWallpaper() isWhiteWallpaper="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v1, :cond_0

    .line 1197
    if-eqz v0, :cond_1

    .line 1198
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    iget v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mTextColor:I

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setTextColor(I)V

    .line 1199
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardMessageArea;->getShadowRadius()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardMessageArea;->getShadowDx()F

    move-result v3

    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardMessageArea;->getShadowDy()F

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/keyguard/KeyguardMessageArea;->setShadowLayer(FFFI)V

    .line 1205
    :cond_0
    :goto_0
    return-void

    .line 1201
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$color;->universal_lock_bouncer_message_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setTextColor(I)V

    .line 1202
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardMessageArea;->getShadowRadius()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardMessageArea;->getShadowDx()F

    move-result v3

    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardMessageArea;->getShadowDy()F

    move-result v4

    iget v5, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mShadowColor:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/keyguard/KeyguardMessageArea;->setShadowLayer(FFFI)V

    goto :goto_0
.end method
