.class public Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;
.super Landroid/widget/FrameLayout;
.source "DcmKeyguardBottomAreaShortcutView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$QueryHandler;
    }
.end annotation


# static fields
.field private static final CALL_LOG_PROJECTION:[Ljava/lang/String;

.field private static final FONT_REGULAR:Landroid/graphics/Typeface;

.field public static final INSECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private static final SECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private static sBroadcastReceiver:Landroid/content/BroadcastReceiver;


# instance fields
.field private mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mCallTextView:Landroid/widget/TextView;

.field private mCameraImageView:Landroid/widget/ImageView;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mCurrentOrientation:I

.field private mDcmManager:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

.field private final mDevicePolicyReceiver:Landroid/content/BroadcastReceiver;

.field private mDisplay:Landroid/view/Display;

.field private mEmailTextView:Landroid/widget/TextView;

.field mHandlerSp:Landroid/os/Handler;

.field mHandlerTel:Landroid/os/Handler;

.field private mIndicationText:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

.field private mIsCallViewVisible:Z

.field private mIsEmailViewVisible:Z

.field private mLastUnlockIconRes:I

.field private mLockIcon:Landroid/widget/ImageView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field private mPhoneImageView:Landroid/widget/ImageView;

.field private mPrewarmBound:Z

.field private final mPrewarmConnection:Landroid/content/ServiceConnection;

.field private mPrewarmMessenger:Landroid/os/Messenger;

.field private mScreenOn:Z

.field private final mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 85
    invoke-static {}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->createFont()Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->FONT_REGULAR:Landroid/graphics/Typeface;

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.camera"

    const-string v2, "com.sec.android.app.camera.Camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 94
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.camera"

    const-string v2, "com.sec.android.app.camera.Camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 114
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 124
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 153
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 109
    iput v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mLastUnlockIconRes:I

    .line 121
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mHandlerTel:Landroid/os/Handler;

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mHandlerSp:Landroid/os/Handler;

    .line 123
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mContentObserver:Landroid/database/ContentObserver;

    .line 125
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mVibrator:Landroid/os/Vibrator;

    .line 127
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mIsCallViewVisible:Z

    .line 128
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mIsEmailViewVisible:Z

    .line 137
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCurrentOrientation:I

    .line 156
    new-instance v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$1;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 478
    new-instance v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$6;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mPrewarmConnection:Landroid/content/ServiceConnection;

    .line 596
    new-instance v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$7;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mDevicePolicyReceiver:Landroid/content/BroadcastReceiver;

    .line 607
    new-instance v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$8;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 154
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mLockIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mDcmManager:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->updateLockIcon()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;
    .param p1, "x1"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->setMissedCallCount(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;
    .param p1, "x1"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->updateCallVisibility(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;
    .param p1, "x1"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->updateEmailVisibility(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;
    .param p1, "x1"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->setSPModeMailUnreadCount(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getMissedCallCount()V

    return-void
.end method

.method static synthetic access$1600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCameraImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mPhoneImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCallTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mEmailTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->updateOrientation()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;
    .param p1, "x1"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->isSuccessfulLaunch(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mPrewarmMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mScreenOn:Z

    return p1
.end method

.method private arrangeIcons()V
    .locals 9

    .prologue
    .line 804
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getContext()Landroid/content/Context;

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 805
    .local v5, "wm":Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 806
    .local v0, "disp":Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 807
    .local v3, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 808
    iget v4, v3, Landroid/graphics/Point;->x:I

    .line 809
    .local v4, "totalWidth":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0308

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 811
    .local v1, "oneIconWidth":I
    mul-int/lit8 v6, v1, 0x5

    sub-int v6, v4, v6

    div-int/lit8 v2, v6, 0x4

    .line 812
    .local v2, "oneMargin":I
    const-string v6, "DcmKeyguardBottomAreaShortcutView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "totalWidth="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", oneIconWidth="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", oneMargin="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCameraImageView:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setX(F)V

    .line 815
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCallTextView:Landroid/widget/TextView;

    add-int v7, v1, v2

    mul-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setX(F)V

    .line 816
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mLockIcon:Landroid/widget/ImageView;

    add-int v7, v1, v2

    mul-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setX(F)V

    .line 817
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mEmailTextView:Landroid/widget/TextView;

    add-int v7, v1, v2

    mul-int/lit8 v7, v7, 0x3

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setX(F)V

    .line 818
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mPhoneImageView:Landroid/widget/ImageView;

    add-int v7, v1, v2

    mul-int/lit8 v7, v7, 0x4

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setX(F)V

    .line 819
    return-void
.end method

.method private static final createFont()Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 897
    :try_start_0
    const-string v1, "/system/fonts/Roboto-Regular.ttf"

    invoke-static {v1}, Lcom/android/keyguard/util/KeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 899
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_0
    return-object v1

    .line 898
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_0
    move-exception v0

    .line 899
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCallIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 822
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 823
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 824
    const-string v1, "missed"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 825
    return-object v0
.end method

.method private getCameraIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 291
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    .line 293
    .local v0, "canSkipBouncer":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    goto :goto_0
.end method

.method private getEmailIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 829
    const-string v2, "jp.co.nttdocomo.carriermail"

    .line 830
    .local v2, "packageName":Ljava/lang/String;
    const-string v0, "jp.co.nttdocomo.carriermail.activity.EulaViewer"

    .line 832
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 833
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "jp.co.nttdocomo.carriermail"

    const-string v4, "jp.co.nttdocomo.carriermail.activity.EulaViewer"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 834
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 835
    const-string v3, "folderType"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 836
    return-object v1
.end method

.method private getMissedCallCount()V
    .locals 10

    .prologue
    .line 664
    new-instance v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$QueryHandler;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$QueryHandler;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;Landroid/content/ContentResolver;)V

    .line 666
    .local v0, "queryHanlder":Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$QueryHandler;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v1, "type="

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 667
    .local v9, "where":Ljava/lang/StringBuilder;
    const/4 v1, 0x3

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 668
    const-string v1, " AND new=1"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    const/4 v1, -0x1

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "date DESC"

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    :goto_0
    return-void

    .line 673
    :catch_0
    move-exception v8

    .line 674
    .local v8, "e":Ljava/lang/Exception;
    const-string v1, "DcmKeyguardBottomAreaShortcutView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeyguardBottomAreaView.getMissedCallCount(): missedcall query exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getNotificationShowingState()I
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 935
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 936
    .local v2, "resolver":Landroid/content/ContentResolver;
    const/4 v3, -0x1

    .line 937
    .local v3, "showNotification":I
    const/4 v0, -0x1

    .line 940
    .local v0, "allowPrivate":I
    :try_start_0
    const-string v5, "lock_screen_show_notifications"

    const/4 v6, -0x2

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 942
    const-string v5, "lock_screen_allow_private_notifications"

    const/4 v6, -0x2

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 948
    :goto_0
    if-ne v3, v4, :cond_1

    if-ne v0, v4, :cond_1

    .line 949
    const/4 v4, 0x2

    .line 955
    :cond_0
    :goto_1
    return v4

    .line 944
    :catch_0
    move-exception v1

    .line 945
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "DcmKeyguardBottomAreaShortcutView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getNotificationShowingState e : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 950
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    if-ne v3, v4, :cond_2

    if-eqz v0, :cond_0

    .line 952
    :cond_2
    if-nez v3, :cond_3

    if-nez v0, :cond_3

    .line 953
    const/4 v4, 0x0

    goto :goto_1

    .line 955
    :cond_3
    const/4 v4, -0x1

    goto :goto_1
.end method

.method private initAccessibility()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mLockIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 251
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mPhoneImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 252
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCameraImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 254
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCallTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 255
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mEmailTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 257
    return-void
.end method

.method private isCameraDisabledByDpm()Z
    .locals 3

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 325
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    .line 326
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v1

    .line 328
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isPhoneVisible()Z
    .locals 4

    .prologue
    .line 313
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 315
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v2, "com.nttdocomo.android.mascot"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    const/4 v2, 0x1

    .line 318
    :goto_0
    return v2

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSuccessfulLaunch(I)Z
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 969
    if-eqz p1, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchActivity(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 963
    const/high16 v0, 0x14000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 964
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mDcmManager:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->getActivityStarter()Lcom/android/systemui/statusbar/phone/ActivityStarter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 965
    return-void
.end method

.method private registerContentObserver()V
    .locals 4

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 741
    new-instance v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$12;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$12;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mContentObserver:Landroid/database/ContentObserver;

    .line 772
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 775
    :cond_0
    return-void
.end method

.method private registerReceiver()V
    .locals 5

    .prologue
    .line 698
    sget-object v1, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 699
    new-instance v1, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$11;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)V

    sput-object v1, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 718
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 719
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "jp.co.nttdocomo.carriermail.APP_LINK_RECEIVED_MESSAGE_LOCAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 720
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 721
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.nttdocomo.android.screenlockservice.DCM_SCREEN"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 724
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private setIconsInvisible()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x4

    .line 924
    const-string v0, "DcmKeyguardBottomAreaShortcutView"

    const-string v3, "setIconsInvisible()"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mLockIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 926
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCameraImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 927
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mPhoneImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 928
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCallTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mIsCallViewVisible:Z

    .line 929
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCallTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 930
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mEmailTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mIsEmailViewVisible:Z

    .line 931
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mEmailTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 932
    return-void

    :cond_0
    move v0, v2

    .line 928
    goto :goto_0

    :cond_1
    move v1, v2

    .line 930
    goto :goto_1
.end method

.method private setMissedCallCount(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mHandlerTel:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$9;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$9;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 686
    return-void
.end method

.method private setSPModeMailUnreadCount(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 689
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mHandlerSp:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$10;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$10;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 695
    return-void
.end method

.method private unregisterReceiver()V
    .locals 4

    .prologue
    .line 728
    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 729
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 730
    const/4 v1, 0x0

    sput-object v1, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 732
    const-string v1, "DcmKeyguardBottomAreaShortcutView"

    const-string v2, "KeyguardBottomAreaView.unregisterReceiver(): unregist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    :cond_0
    :goto_0
    return-void

    .line 734
    :catch_0
    move-exception v0

    .line 735
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DcmKeyguardBottomAreaShortcutView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeyguardBottomAreaView.unregisterReceiver(): exception: "

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

.method private updateCallVisibility(I)V
    .locals 5
    .param p1, "count"    # I

    .prologue
    const/4 v2, 0x0

    .line 840
    const-string v0, ""

    .line 841
    .local v0, "countStr":Ljava/lang/String;
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mIsCallViewVisible:Z

    .line 843
    if-lez p1, :cond_1

    .line 844
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getNotificationShowingState()I

    move-result v1

    .line 845
    .local v1, "showingState":I
    if-eqz v1, :cond_0

    .line 846
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mIsCallViewVisible:Z

    .line 849
    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 850
    const/16 v3, 0x32

    if-le p1, v3, :cond_2

    const-string v0, "50+"

    .line 854
    .end local v1    # "showingState":I
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCallTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 855
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCallTextView:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mIsCallViewVisible:Z

    if-eqz v4, :cond_3

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 856
    return-void

    .line 850
    .restart local v1    # "showingState":I
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 855
    .end local v1    # "showingState":I
    :cond_3
    const/4 v2, 0x4

    goto :goto_1
.end method

.method private updateEmailVisibility(I)V
    .locals 5
    .param p1, "count"    # I

    .prologue
    const/4 v2, 0x0

    .line 859
    const-string v0, ""

    .line 860
    .local v0, "countStr":Ljava/lang/String;
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mIsEmailViewVisible:Z

    .line 862
    if-lez p1, :cond_1

    .line 863
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getNotificationShowingState()I

    move-result v1

    .line 864
    .local v1, "showingState":I
    if-eqz v1, :cond_0

    .line 865
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mIsEmailViewVisible:Z

    .line 868
    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 869
    const/16 v3, 0x32

    if-le p1, v3, :cond_2

    const-string v0, "50+"

    .line 873
    .end local v1    # "showingState":I
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mEmailTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 874
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mEmailTextView:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mIsEmailViewVisible:Z

    if-eqz v4, :cond_3

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 875
    return-void

    .line 869
    .restart local v1    # "showingState":I
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 874
    .end local v1    # "showingState":I
    :cond_3
    const/4 v2, 0x4

    goto :goto_1
.end method

.method private updateLockIcon()V
    .locals 4

    .prologue
    .line 553
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mScreenOn:Z

    if-nez v2, :cond_1

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    const v1, 0x7f02022f

    .line 557
    .local v1, "iconRes":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 558
    const v1, 0x7f020224

    .line 560
    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mLastUnlockIconRes:I

    if-eq v2, v1, :cond_3

    .line 561
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 562
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mLockIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 564
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->updateLockIconClickability()V

    goto :goto_0
.end method

.method private updateLockIconClickability()V
    .locals 3

    .prologue
    .line 339
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    .line 341
    .local v0, "canSkipBouncer":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mLockIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLongClickable(Z)V

    .line 342
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mLockIcon:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 343
    return-void
.end method

.method private updateOrientation()V
    .locals 2

    .prologue
    .line 281
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mDisplay:Landroid/view/Display;

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 283
    .local v0, "ori":I
    iget v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCurrentOrientation:I

    if-eq v0, v1, :cond_0

    .line 284
    iput v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCurrentOrientation:I

    .line 285
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->updateLockIcon()V

    .line 288
    .end local v0    # "ori":I
    :cond_0
    return-void
.end method

.method private updatePhoneVisibility()V
    .locals 4

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->isPhoneVisible()Z

    move-result v0

    .line 308
    .local v0, "visible":Z
    const-string v1, "DcmKeyguardBottomAreaShortcutView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePhoneVisibility(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mPhoneImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 310
    return-void

    .line 309
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private declared-synchronized vibrate()V
    .locals 4

    .prologue
    .line 916
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 917
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mVibrator:Landroid/os/Vibrator;

    .line 920
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 921
    monitor-exit p0

    return-void

    .line 916
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private watchForCameraPolicyChanges()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 332
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 333
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mDevicePolicyReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 336
    return-void
.end method


# virtual methods
.method public getCameraView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCameraImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getIndicationView()Landroid/view/View;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mIndicationText:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    return-object v0
.end method

.method public getLockIcon()Landroid/view/View;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mLockIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPhoneView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mPhoneImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 593
    const/4 v0, 0x0

    return v0
.end method

.method public launchCall()V
    .locals 1

    .prologue
    .line 878
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getCallIntent()Landroid/content/Intent;

    move-result-object v0

    .line 879
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->launchActivity(Landroid/content/Intent;)V

    .line 880
    return-void
.end method

.method public launchCamera()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 384
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getCameraIntent()Landroid/content/Intent;

    move-result-object v0

    .line 385
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v1

    .line 387
    .local v1, "wouldLaunchResolverActivity":Z
    sget-object v2, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    if-ne v0, v2, :cond_0

    if-nez v1, :cond_0

    .line 388
    const-string v2, "DcmKeyguardBottomAreaShortcutView"

    const-string v3, "launchCamera() SECURE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    new-instance v2, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$3;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$3;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;Landroid/content/Intent;)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 449
    :goto_0
    return-void

    .line 429
    :cond_0
    const-string v2, "DcmKeyguardBottomAreaShortcutView"

    const-string v3, "launchCamera() InSecure"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    const-string v2, "isSecure"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 434
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    const v2, 0x34011000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 441
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mDcmManager:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->getActivityStarter()Lcom/android/systemui/statusbar/phone/ActivityStarter;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$4;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)V

    invoke-interface {v2, v0, v4, v3}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startCameraActivity(Landroid/content/Intent;ZLcom/android/systemui/statusbar/phone/ActivityStarter$Callback;)V

    goto :goto_0
.end method

.method public launchEmail()V
    .locals 1

    .prologue
    .line 883
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getEmailIntent()Landroid/content/Intent;

    move-result-object v0

    .line 884
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->launchActivity(Landroid/content/Intent;)V

    .line 885
    return-void
.end method

.method public launchPhone()V
    .locals 4

    .prologue
    .line 452
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->isPhoneVisible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 474
    :goto_0
    return-void

    .line 454
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v1

    .line 455
    .local v1, "tm":Landroid/telecom/TelecomManager;
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 456
    const-string v2, "DcmKeyguardBottomAreaShortcutView"

    const-string v3, "return to call - "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    new-instance v2, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$5;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$5;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;Landroid/telecom/TelecomManager;)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 464
    :cond_1
    const-string v2, "DcmKeyguardBottomAreaShortcutView"

    const-string v3, "launch phone - "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 466
    .local v0, "sendIntent":Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    const-string v2, "LOCK_CLICK_MASCOT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    const-string v2, "com.nttdocomo.android.mascot"

    const-string v3, "com.nttdocomo.android.mascot.application.MascotApplicationProxy"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    const/high16 v2, 0x10200000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 472
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mDcmManager:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->getActivityStarter()Lcom/android/systemui/statusbar/phone/ActivityStarter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 535
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 536
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 537
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 540
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 347
    const-string v0, "DcmKeyguardBottomAreaShortcutView"

    const-string v1, "onClick()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCameraImageView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 349
    const-string v0, "DcmKeyguardBottomAreaShortcutView"

    const-string v1, "onClick() : launchCamera()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->vibrate()V

    .line 351
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->launchCamera()V

    .line 352
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->setIconsInvisible()V

    .line 358
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mLockIcon:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_3

    .line 359
    const-string v0, "DcmKeyguardBottomAreaShortcutView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick() : unlock!() mPhoneStatusBar : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mDcmManager:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->vibrate()V

    .line 361
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mDcmManager:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedInvisible()V

    .line 373
    :cond_1
    :goto_1
    return-void

    .line 353
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mPhoneImageView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 354
    const-string v0, "DcmKeyguardBottomAreaShortcutView"

    const-string v1, "onClick() : launchPhone()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->vibrate()V

    .line 356
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->launchPhone()V

    goto :goto_0

    .line 364
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mEmailTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_4

    .line 365
    const-string v0, "DcmKeyguardBottomAreaShortcutView"

    const-string v1, "onClick() : launchEmail()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->vibrate()V

    .line 367
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->launchEmail()V

    goto :goto_1

    .line 368
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCallTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 369
    const-string v0, "DcmKeyguardBottomAreaShortcutView"

    const-string v1, "onClick() : launchCall()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->vibrate()V

    .line 371
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->launchCall()V

    goto :goto_1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 261
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 262
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0305

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 264
    .local v0, "indicationBottomMargin":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mIndicationText:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 265
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v2, v0, :cond_0

    .line 266
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 267
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mIndicationText:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mIndicationText:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0306

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setTextSize(IF)V

    .line 278
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 544
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 545
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 546
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 548
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 550
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 187
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 188
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 189
    const v4, 0x7f0e0063

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCameraImageView:Landroid/widget/ImageView;

    .line 190
    const v4, 0x7f0e0064

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mPhoneImageView:Landroid/widget/ImageView;

    .line 191
    const v4, 0x7f0e0065

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mLockIcon:Landroid/widget/ImageView;

    .line 192
    const v4, 0x7f0e0066

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mIndicationText:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 193
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->watchForCameraPolicyChanges()V

    .line 194
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->updateCameraVisibility()V

    .line 195
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->updatePhoneVisibility()V

    .line 196
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->updateLockIcon()V

    .line 197
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->setClipChildren(Z)V

    .line 198
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->setClipToPadding(Z)V

    .line 199
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mLockIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mLockIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 201
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCameraImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mPhoneImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    const v4, 0x7f0e0067

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCallTextView:Landroid/widget/TextView;

    .line 204
    const v4, 0x7f0e0068

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mEmailTextView:Landroid/widget/TextView;

    .line 205
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->onShowKeyguard()V

    .line 208
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCallTextView:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mEmailTextView:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->initAccessibility()V

    .line 211
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mIndicationText:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    sget-object v5, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->FONT_REGULAR:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 212
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mIndicationText:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->startShortcutHintAnimation()V

    .line 213
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCallTextView:Landroid/widget/TextView;

    sget-object v5, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->FONT_REGULAR:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 214
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mEmailTextView:Landroid/widget/TextView;

    sget-object v5, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->FONT_REGULAR:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 215
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mLockIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 216
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCameraImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 217
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mPhoneImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 218
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCallTextView:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 219
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mEmailTextView:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 220
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->unregisterReceiver()V

    .line 221
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->registerReceiver()V

    .line 222
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mDisplay:Landroid/view/Display;

    .line 223
    new-instance v4, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$2;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    const/4 v6, 0x2

    invoke-direct {v4, p0, v5, v6}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$2;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 228
    const-string v4, "1"

    const-string v5, "sys.boot_completed"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 230
    .local v2, "isBootCompleted":Z
    if-eqz v2, :cond_0

    .line 232
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.internal.policy.impl.CARRIERMAIL_COUNT_UPDATE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 235
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.internal.policy.impl.keyguard.ACTION_SCREEN_DISPLAY"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    .local v3, "screenIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.nttdocomo.android.screenlockservice.DCM_SCREEN"

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "screenIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mDcmManager:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    .line 247
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v4, "DcmKeyguardBottomAreaShortcutView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KeyguardBottomAreaView.onFinishInflate(): IllegalStateException Occurred: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onHideKeyguard()V
    .locals 2

    .prologue
    .line 790
    const-string v0, "DcmKeyguardBottomAreaShortcutView"

    const-string v1, "onHideKeyguard()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 792
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 793
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mContentObserver:Landroid/database/ContentObserver;

    .line 795
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 799
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 800
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->arrangeIcons()V

    .line 801
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mLockIcon:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    .line 380
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onShowKeyguard()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 778
    const-string v0, "DcmKeyguardBottomAreaShortcutView"

    const-string v3, "onShowKeyguard()"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->registerContentObserver()V

    .line 780
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getMissedCallCount()V

    .line 781
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mLockIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 782
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCallTextView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mIsCallViewVisible:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 783
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mEmailTextView:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mIsEmailViewVisible:Z

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 784
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->updatePhoneVisibility()V

    .line 785
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->updateLockIcon()V

    .line 786
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->updateCameraVisibility()V

    .line 787
    return-void

    :cond_0
    move v0, v2

    .line 782
    goto :goto_0

    :cond_1
    move v1, v2

    .line 783
    goto :goto_1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 905
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 912
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 907
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->vibrate()V

    goto :goto_0

    .line 905
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public unbindCameraPrewarmService(Z)V
    .locals 4
    .param p1, "launched"    # Z

    .prologue
    .line 519
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mPrewarmBound:Z

    if-eqz v1, :cond_1

    .line 520
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mPrewarmMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 522
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mPrewarmMessenger:Landroid/os/Messenger;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mPrewarmConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 529
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mPrewarmBound:Z

    .line 531
    :cond_1
    return-void

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DcmKeyguardBottomAreaShortcutView"

    const-string v2, "Error sending camera fired message"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected updateCameraVisibility()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 298
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getCameraIntent()Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 301
    .local v0, "resolved":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->isCameraDisabledByDpm()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 302
    .local v1, "visible":Z
    :goto_0
    const-string v3, "DcmKeyguardBottomAreaShortcutView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCameraVisibility(), visible:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",   resolved:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCameraImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 304
    return-void

    .end local v1    # "visible":Z
    :cond_0
    move v1, v2

    .line 301
    goto :goto_0

    .line 303
    .restart local v1    # "visible":Z
    :cond_1
    const/16 v2, 0x8

    goto :goto_1
.end method
