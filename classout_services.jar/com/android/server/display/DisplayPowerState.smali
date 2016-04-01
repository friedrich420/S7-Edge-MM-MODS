.class final Lcom/android/server/display/DisplayPowerState;
.super Ljava/lang/Object;
.source "DisplayPowerState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayPowerState$PhotonicModulator;
    }
.end annotation


# static fields
.field public static final COLOR_FADE_LEVEL:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty",
            "<",
            "Lcom/android/server/display/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field private static DEBUG:Z = false

.field public static final SCREEN_BRIGHTNESS:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty",
            "<",
            "Lcom/android/server/display/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DisplayPowerState"

.field private static mGlobalScreenStateHint:I


# instance fields
.field private final mBacklight:Lcom/android/server/lights/Light;

.field private final mBlanker:Lcom/android/server/display/DisplayBlanker;

.field private mBrightByColorFadeExit:Z

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mCleanListener:Ljava/lang/Runnable;

.field private final mColorFade:Lcom/android/server/display/ColorFade;

.field private mColorFadeDrawPending:Z

.field private final mColorFadeDrawRunnable:Ljava/lang/Runnable;

.field private mColorFadeLevel:F

.field private mColorFadePrepared:Z

.field private mColorFadeReady:Z

.field private mColorFadeStateRunnable:Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;

.field private final mContext:Landroid/content/Context;

.field private final mDisplayId:I

.field public mFinalBrightnessDiff:I

.field private final mHandler:Landroid/os/Handler;

.field private final mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

.field private mScreenBrightness:I

.field private mScreenReady:Z

.field private mScreenState:I

.field private mScreenUpdatePending:Z

.field private final mScreenUpdateRunnable:Ljava/lang/Runnable;

.field public mUseMarkTracker:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 70
    const/4 v0, 0x0

    sput-boolean v0, DEBUG:Z

    .line 72
    const/4 v0, 0x2

    sput v0, mGlobalScreenStateHint:I

    .line 148
    new-instance v0, Lcom/android/server/display/DisplayPowerState$1;

    const-string/jumbo v1, "electronBeamLevel"

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayPowerState$1;-><init>(Ljava/lang/String;)V

    sput-object v0, COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    .line 161
    new-instance v0, Lcom/android/server/display/DisplayPowerState$2;

    const-string/jumbo v1, "screenBrightness"

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayPowerState$2;-><init>(Ljava/lang/String;)V

    sput-object v0, SCREEN_BRIGHTNESS:Landroid/util/IntProperty;

    return-void
.end method

.method public constructor <init>(ILcom/android/server/display/DisplayBlanker;Lcom/android/server/display/ColorFade;Landroid/content/Context;)V
    .registers 9
    .param p1, "displayId"    # I
    .param p2, "blanker"    # Lcom/android/server/display/DisplayBlanker;
    .param p3, "colorFade"    # Lcom/android/server/display/ColorFade;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-boolean v2, p0, mBrightByColorFadeExit:Z

    .line 394
    new-instance v1, Lcom/android/server/display/DisplayPowerState$3;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayPowerState$3;-><init>(Lcom/android/server/display/DisplayPowerState;)V

    iput-object v1, p0, mScreenUpdateRunnable:Ljava/lang/Runnable;

    .line 415
    new-instance v1, Lcom/android/server/display/DisplayPowerState$4;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayPowerState$4;-><init>(Lcom/android/server/display/DisplayPowerState;)V

    iput-object v1, p0, mColorFadeDrawRunnable:Ljava/lang/Runnable;

    .line 110
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Z)V

    iput-object v1, p0, mHandler:Landroid/os/Handler;

    .line 111
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    iput-object v1, p0, mChoreographer:Landroid/view/Choreographer;

    .line 112
    iput p1, p0, mDisplayId:I

    .line 113
    iput-object p2, p0, mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 115
    iget v1, p0, mDisplayId:I

    if-nez v1, :cond_5d

    .line 116
    const-class v1, Lcom/android/server/lights/LightsManager;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/lights/LightsManager;

    .line 117
    .local v0, "lights":Lcom/android/server/lights/LightsManager;
    invoke-virtual {v0, v2}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v1

    iput-object v1, p0, mBacklight:Lcom/android/server/lights/Light;

    .line 125
    .end local v0    # "lights":Lcom/android/server/lights/LightsManager;
    :goto_38
    iput-object p3, p0, mColorFade:Lcom/android/server/display/ColorFade;

    .line 126
    new-instance v1, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;-><init>(Lcom/android/server/display/DisplayPowerState;)V

    iput-object v1, p0, mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    .line 127
    iget-object v1, p0, mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->start()V

    .line 135
    const/4 v1, 0x2

    iput v1, p0, mScreenState:I

    .line 136
    const/16 v1, 0xff

    iput v1, p0, mScreenBrightness:I

    .line 137
    invoke-direct {p0}, scheduleScreenUpdate()V

    .line 139
    iput-boolean v2, p0, mColorFadePrepared:Z

    .line 140
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, mColorFadeLevel:F

    .line 141
    iput-boolean v3, p0, mColorFadeReady:Z

    .line 143
    iput-object p4, p0, mContext:Landroid/content/Context;

    .line 144
    iput v2, p0, mFinalBrightnessDiff:I

    .line 146
    return-void

    .line 118
    :cond_5d
    iget v1, p0, mDisplayId:I

    if-ne v1, v3, :cond_70

    .line 119
    const-class v1, Lcom/android/server/lights/LightsManager;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/lights/LightsManager;

    .line 120
    .restart local v0    # "lights":Lcom/android/server/lights/LightsManager;
    invoke-virtual {v0, v3}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v1

    iput-object v1, p0, mBacklight:Lcom/android/server/lights/Light;

    goto :goto_38

    .line 122
    .end local v0    # "lights":Lcom/android/server/lights/LightsManager;
    :cond_70
    const/4 v1, 0x0

    iput-object v1, p0, mBacklight:Lcom/android/server/lights/Light;

    goto :goto_38
.end method

.method static synthetic access$002(Lcom/android/server/display/DisplayPowerState;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, mScreenUpdatePending:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/display/DisplayPowerState;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;

    .prologue
    .line 67
    iget v0, p0, mScreenState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/ColorFade;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;

    .prologue
    .line 67
    iget-object v0, p0, mColorFade:Lcom/android/server/display/ColorFade;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/display/DisplayPowerState;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, mColorFadeReady:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/DisplayBlanker;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;

    .prologue
    .line 67
    iget-object v0, p0, mBlanker:Lcom/android/server/display/DisplayBlanker;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/display/DisplayPowerState;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;

    .prologue
    .line 67
    iget-boolean v0, p0, mBrightByColorFadeExit:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/display/DisplayPowerState;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, mBrightByColorFadeExit:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/display/DisplayPowerState;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;

    .prologue
    .line 67
    iget v0, p0, mDisplayId:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/display/DisplayPowerState;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;

    .prologue
    .line 67
    invoke-direct {p0}, postScreenUpdateThreadSafe()V

    return-void
.end method

.method static synthetic access$1600()I
    .registers 1

    .prologue
    .line 67
    sget v0, mGlobalScreenStateHint:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/display/DisplayPowerState;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;

    .prologue
    .line 67
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/lights/Light;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;

    .prologue
    .line 67
    iget-object v0, p0, mBacklight:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/display/DisplayPowerState;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;

    .prologue
    .line 67
    iget v0, p0, mColorFadeLevel:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/display/DisplayPowerState;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;

    .prologue
    .line 67
    iget v0, p0, mScreenBrightness:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/DisplayPowerState$PhotonicModulator;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;

    .prologue
    .line 67
    iget-object v0, p0, mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    return-object v0
.end method

.method static synthetic access$500()Z
    .registers 1

    .prologue
    .line 67
    sget-boolean v0, DEBUG:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/display/DisplayPowerState;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, mScreenReady:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/display/DisplayPowerState;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;

    .prologue
    .line 67
    invoke-direct {p0}, invokeCleanListenerIfNeeded()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/server/display/DisplayPowerState;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, mColorFadeDrawPending:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/display/DisplayPowerState;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;

    .prologue
    .line 67
    iget-boolean v0, p0, mColorFadePrepared:Z

    return v0
.end method

.method protected static getGlobalScreenStateHint()I
    .registers 1

    .prologue
    .line 195
    sget v0, mGlobalScreenStateHint:I

    return v0
.end method

.method private invokeCleanListenerIfNeeded()V
    .registers 3

    .prologue
    .line 387
    iget-object v0, p0, mCleanListener:Ljava/lang/Runnable;

    .line 388
    .local v0, "listener":Ljava/lang/Runnable;
    if-eqz v0, :cond_12

    iget-boolean v1, p0, mScreenReady:Z

    if-eqz v1, :cond_12

    iget-boolean v1, p0, mColorFadeReady:Z

    if-eqz v1, :cond_12

    .line 389
    const/4 v1, 0x0

    iput-object v1, p0, mCleanListener:Ljava/lang/Runnable;

    .line 390
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 392
    :cond_12
    return-void
.end method

.method private postScreenUpdateThreadSafe()V
    .registers 3

    .prologue
    .line 374
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mScreenUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 375
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mScreenUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 376
    return-void
.end method

.method private scheduleColorFadeDraw()V
    .registers 5

    .prologue
    .line 379
    iget-boolean v0, p0, mColorFadeDrawPending:Z

    if-nez v0, :cond_10

    .line 380
    const/4 v0, 0x1

    iput-boolean v0, p0, mColorFadeDrawPending:Z

    .line 381
    iget-object v0, p0, mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x2

    iget-object v2, p0, mColorFadeDrawRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 384
    :cond_10
    return-void
.end method

.method private scheduleScreenUpdate()V
    .registers 2

    .prologue
    .line 367
    iget-boolean v0, p0, mScreenUpdatePending:Z

    if-nez v0, :cond_a

    .line 368
    const/4 v0, 0x1

    iput-boolean v0, p0, mScreenUpdatePending:Z

    .line 369
    invoke-direct {p0}, postScreenUpdateThreadSafe()V

    .line 371
    :cond_a
    return-void
.end method

.method protected static setGlobalScreenStateHint(I)V
    .registers 1
    .param p0, "state"    # I

    .prologue
    .line 191
    sput p0, mGlobalScreenStateHint:I

    .line 192
    return-void
.end method


# virtual methods
.method public dismissColorFade()V
    .registers 2

    .prologue
    .line 257
    iget-object v0, p0, mColorFade:Lcom/android/server/display/ColorFade;

    invoke-virtual {v0}, Lcom/android/server/display/ColorFade;->dismiss()V

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, mColorFadePrepared:Z

    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, mColorFadeReady:Z

    .line 260
    return-void
.end method

.method public dismissColorFadeResources()V
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, mColorFade:Lcom/android/server/display/ColorFade;

    invoke-virtual {v0}, Lcom/android/server/display/ColorFade;->dismissResources()V

    .line 267
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 351
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 352
    const-string v0, "Display Power State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mScreenState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mScreenBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, mScreenReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenUpdatePending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, mScreenUpdatePending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadePrepared="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, mColorFadePrepared:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mColorFadeLevel:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, mColorFadeReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeDrawPending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, mColorFadeDrawPending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->dump(Ljava/io/PrintWriter;)V

    .line 363
    iget-object v0, p0, mColorFade:Lcom/android/server/display/ColorFade;

    invoke-virtual {v0, p1}, Lcom/android/server/display/ColorFade;->dump(Ljava/io/PrintWriter;)V

    .line 364
    return-void
.end method

.method public getColorFadeLevel()F
    .registers 2

    .prologue
    .line 325
    iget v0, p0, mColorFadeLevel:F

    return v0
.end method

.method public getScreenBrightness()I
    .registers 2

    .prologue
    .line 229
    iget v0, p0, mScreenBrightness:I

    return v0
.end method

.method public getScreenState()I
    .registers 2

    .prologue
    .line 203
    iget v0, p0, mScreenState:I

    return v0
.end method

.method public prepareColorFade(Landroid/content/Context;I)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 241
    iget-object v2, p0, mColorFade:Lcom/android/server/display/ColorFade;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/display/ColorFade;->prepare(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_f

    .line 242
    iput-boolean v0, p0, mColorFadePrepared:Z

    .line 243
    iput-boolean v1, p0, mColorFadeReady:Z

    .line 250
    :goto_e
    return v0

    .line 247
    :cond_f
    iput-boolean v1, p0, mColorFadePrepared:Z

    .line 248
    iput-boolean v0, p0, mColorFadeReady:Z

    .line 249
    invoke-direct {p0}, scheduleColorFadeDraw()V

    move v0, v1

    .line 250
    goto :goto_e
.end method

.method public setColorFadeLevel(F)V
    .registers 10
    .param p1, "level"    # F

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 283
    iget v0, p0, mColorFadeLevel:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_6f

    .line 284
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_27

    .line 285
    const-string v0, "DisplayPowerState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setColorFadeLevel: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_27
    iget v0, p0, mColorFadeLevel:F

    float-to-double v0, v0

    cmpl-double v0, v0, v6

    if-nez v0, :cond_70

    .line 290
    const-string v0, "DisplayPowerState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@ ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ColorFade exit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iput-boolean v4, p0, mBrightByColorFadeExit:Z

    .line 295
    iget-object v0, p0, mColorFadeStateRunnable:Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;->setState(Z)V

    .line 309
    :cond_5b
    :goto_5b
    iput p1, p0, mColorFadeLevel:F

    .line 310
    iget v0, p0, mScreenState:I

    if-eq v0, v4, :cond_66

    .line 311
    iput-boolean v3, p0, mScreenReady:Z

    .line 312
    invoke-direct {p0}, scheduleScreenUpdate()V

    .line 314
    :cond_66
    iget-boolean v0, p0, mColorFadePrepared:Z

    if-eqz v0, :cond_6f

    .line 315
    iput-boolean v3, p0, mColorFadeReady:Z

    .line 316
    invoke-direct {p0}, scheduleColorFadeDraw()V

    .line 319
    :cond_6f
    return-void

    .line 298
    :cond_70
    float-to-double v0, p1

    cmpl-double v0, v0, v6

    if-nez v0, :cond_5b

    .line 299
    const-string v0, "DisplayPowerState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@ ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ColorFade entry"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iput-boolean v3, p0, mBrightByColorFadeExit:Z

    .line 304
    iget-object v0, p0, mColorFadeStateRunnable:Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;

    invoke-virtual {v0, v3}, Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;->setState(Z)V

    goto :goto_5b
.end method

.method public setColorFadeStateRunnable(Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;)V
    .registers 2
    .param p1, "runnable"    # Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;

    .prologue
    .line 346
    iput-object p1, p0, mColorFadeStateRunnable:Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;

    .line 347
    return-void
.end method

.method public setScreenBrightness(I)V
    .registers 5
    .param p1, "brightness"    # I

    .prologue
    .line 212
    iget v0, p0, mScreenBrightness:I

    if-eq v0, p1, :cond_2e

    .line 213
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_21

    .line 214
    const-string v0, "DisplayPowerState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScreenBrightness: brightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_21
    iput p1, p0, mScreenBrightness:I

    .line 218
    iget v0, p0, mScreenState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2e

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, mScreenReady:Z

    .line 220
    invoke-direct {p0}, scheduleScreenUpdate()V

    .line 223
    :cond_2e
    return-void
.end method

.method public setScreenState(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    .line 178
    iget v0, p0, mScreenState:I

    if-eq v0, p1, :cond_29

    .line 179
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_21

    .line 180
    const-string v0, "DisplayPowerState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScreenState: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_21
    iput p1, p0, mScreenState:I

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, mScreenReady:Z

    .line 185
    invoke-direct {p0}, scheduleScreenUpdate()V

    .line 187
    :cond_29
    return-void
.end method

.method public waitUntilClean(Ljava/lang/Runnable;)Z
    .registers 3
    .param p1, "listener"    # Ljava/lang/Runnable;

    .prologue
    .line 335
    iget-boolean v0, p0, mScreenReady:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, mColorFadeReady:Z

    if-nez v0, :cond_c

    .line 336
    :cond_8
    iput-object p1, p0, mCleanListener:Ljava/lang/Runnable;

    .line 337
    const/4 v0, 0x0

    .line 340
    :goto_b
    return v0

    .line 339
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, mCleanListener:Ljava/lang/Runnable;

    .line 340
    const/4 v0, 0x1

    goto :goto_b
.end method
