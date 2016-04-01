.class public Lcom/android/server/wm/MultiWindowTransition;
.super Ljava/lang/Object;
.source "MultiWindowTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final MW_TRANSIT_CASCADE_TO_NORMAL:I = 0x4

.field public static final MW_TRANSIT_CASCADE_TO_SPLIT:I = 0x5

.field public static final MW_TRANSIT_MAXIMIZE:I = 0x15

.field public static final MW_TRANSIT_MINIMIZE:I = 0x14

.field public static final MW_TRANSIT_MINIMIZED_TO_NORMAL:I = 0xa

.field public static final MW_TRANSIT_NONE:I = 0x0

.field public static final MW_TRANSIT_NORMAL_TO_CASCADE:I = 0x7

.field public static final MW_TRANSIT_NORMAL_TO_MINIMIZED:I = 0x9

.field public static final MW_TRANSIT_NORMAL_TO_SPLIT:I = 0x8

.field public static final MW_TRANSIT_RESIZE:I = 0x1

.field public static final MW_TRANSIT_ROTATION:I = 0xb

.field public static final MW_TRANSIT_SPLIT_FINISHED:I = 0x2

.field public static final MW_TRANSIT_SPLIT_SWITCHED:I = 0x3

.field public static final MW_TRANSIT_SPLIT_TO_CASCADE:I = 0x6

.field public static final MW_TRANSIT_UNSET:I = -0x1

.field static final NOTIFY_MULTIWINDOW_MINIMIZED_TIMEOUT_DURATION:I = 0x7d0

.field private static final STATE_FREEZING_SCREEN:I = 0x0

.field private static final STATE_INITIALIZING:I = -0x1

.field private static final STATE_TRANSITION_TIMEOUT:I = 0x3

.field private static final STATE_TRANSIT_READY:I = 0x1

.field private static final STATE_TRANSIT_RUNNING:I = 0x2

.field static final TAG:Ljava/lang/String; = "MultiWindowTransition"


# instance fields
.field mAnimRunning:Z

.field mAnimation:Landroid/view/animation/Animation;

.field final mContext:Landroid/content/Context;

.field final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

.field mHasDefferedRot:Z

.field mMaximizeAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mMinimizeAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiWindowTransitionState:I

.field mNextAppTransition:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field final mSession:Landroid/view/SurfaceSession;

.field mStartTime:J

.field mTargetAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mTransformation:Landroid/view/animation/Transformation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/DisplayContent;Landroid/view/SurfaceSession;Lcom/android/server/wm/WindowManagerService;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "session"    # Landroid/view/SurfaceSession;
    .param p4, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput v0, p0, mNextAppTransition:I

    .line 85
    iput v0, p0, mMultiWindowTransitionState:I

    .line 99
    iput-boolean v1, p0, mAnimRunning:Z

    .line 100
    iput-object v2, p0, mAnimation:Landroid/view/animation/Animation;

    .line 101
    iput-object v2, p0, mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    .line 102
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, mTransformation:Landroid/view/animation/Transformation;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mTargetAppList:Ljava/util/ArrayList;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mMaximizeAppList:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mMinimizeAppList:Ljava/util/ArrayList;

    .line 108
    iput-boolean v1, p0, mHasDefferedRot:Z

    .line 119
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 120
    iput-object p3, p0, mSession:Landroid/view/SurfaceSession;

    .line 121
    iput-object p2, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 122
    iput-object p4, p0, mService:Lcom/android/server/wm/WindowManagerService;

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/MultiWindowTransition;)Lcom/android/server/wm/WindowManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MultiWindowTransition;

    .prologue
    .line 50
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method public static convertDisplayIdToBuiltInDisplayId(I)I
    .registers 2
    .param p0, "displayId"    # I

    .prologue
    .line 816
    packed-switch p0, :pswitch_data_10

    .line 826
    :pswitch_3
    const/4 v0, -0x1

    :goto_4
    return v0

    .line 818
    :pswitch_5
    const/4 v0, 0x0

    goto :goto_4

    .line 820
    :pswitch_7
    sget v0, Landroid/view/SurfaceControl;->BUILT_IN_DISPLAY_ID_SUB:I

    goto :goto_4

    .line 822
    :pswitch_a
    sget v0, Landroid/view/SurfaceControl;->BUILT_IN_DISPLAY_ID_EXPANDED:I

    goto :goto_4

    .line 824
    :pswitch_d
    sget v0, Landroid/view/SurfaceControl;->BUILT_IN_DISPLAY_ID_HDMI:I

    goto :goto_4

    .line 816
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_5
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_d
    .end packed-switch
.end method

.method private setDrawFinishedAnimation(Lcom/android/server/wm/AppWindowToken;)Z
    .registers 8
    .param p1, "wtoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 601
    const/4 v0, 0x0

    .line 602
    .local v0, "a":Landroid/view/animation/Animation;
    if-eqz p1, :cond_32

    .line 603
    iget-object v2, p1, Lcom/android/server/wm/AppWindowToken;->appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 604
    .local v1, "stackBounds":Landroid/graphics/Rect;
    if-eqz v1, :cond_2b

    .line 605
    iget-object v2, p0, mContext:Landroid/content/Context;

    const v3, 0x10a005a

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 606
    iget-object v2, p1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v5}, Lcom/android/server/wm/AppTransition;->canSkipFirstFrame()Z

    move-result v5

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/android/server/wm/AppWindowAnimator;->setAnimation(Landroid/view/animation/Animation;IIZ)V

    .line 607
    const/4 v2, 0x1

    .line 612
    .end local v1    # "stackBounds":Landroid/graphics/Rect;
    :goto_2a
    return v2

    .line 609
    .restart local v1    # "stackBounds":Landroid/graphics/Rect;
    :cond_2b
    const-string v2, "MultiWindowTransition"

    const-string v3, "StackBounds is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    .end local v1    # "stackBounds":Landroid/graphics/Rect;
    :cond_32
    const/4 v2, 0x0

    goto :goto_2a
.end method

.method private setMaximizeAnimation(Lcom/android/server/wm/AppWindowToken;)Z
    .registers 9
    .param p1, "wtoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 166
    if-eqz p1, :cond_52

    iget-object v5, p1, Lcom/android/server/wm/AppWindowToken;->appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    if-eqz v5, :cond_52

    iget-object v5, p1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v5, :cond_18

    iget-object v5, p1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v6, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-ne v5, v6, :cond_52

    .line 170
    :cond_18
    iget-object v5, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->getMinimizeSize()I

    move-result v2

    .line 171
    .local v2, "minimizedIconSize":I
    iget-object v5, p1, Lcom/android/server/wm/AppWindowToken;->appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 172
    .local v3, "stackBounds":Landroid/graphics/Rect;
    iget v5, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int v4, v5, v6

    .line 173
    .local v4, "width":I
    iget v1, v3, Landroid/graphics/Rect;->top:I

    .line 174
    .local v1, "height":I
    iget-object v5, p0, mContext:Landroid/content/Context;

    const v6, 0x10a0057

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 175
    .local v0, "a":Landroid/view/animation/Animation;
    new-instance v5, Lcom/android/server/wm/MultiWindowTransition$2;

    invoke-direct {v5, p0, p1}, Lcom/android/server/wm/MultiWindowTransition$2;-><init>(Lcom/android/server/wm/MultiWindowTransition;Lcom/android/server/wm/AppWindowToken;)V

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 189
    iget-object v5, p1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v6, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v6}, Lcom/android/server/wm/AppTransition;->canSkipFirstFrame()Z

    move-result v6

    invoke-virtual {v5, v0, v4, v1, v6}, Lcom/android/server/wm/AppWindowAnimator;->setAnimation(Landroid/view/animation/Animation;IIZ)V

    .line 190
    const/4 v5, 0x1

    .line 192
    .end local v0    # "a":Landroid/view/animation/Animation;
    .end local v1    # "height":I
    .end local v2    # "minimizedIconSize":I
    .end local v3    # "stackBounds":Landroid/graphics/Rect;
    .end local v4    # "width":I
    :goto_51
    return v5

    :cond_52
    const/4 v5, 0x0

    goto :goto_51
.end method

.method private setMinimizeAnimation(Lcom/android/server/wm/AppWindowToken;)Z
    .registers 12
    .param p1, "wtoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 128
    iget-object v6, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v7, 0x67

    iget-object v8, p1, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v6, v7, v8}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 129
    .local v2, "m":Landroid/os/Message;
    iget-object v6, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v6, v2, v8, v9}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 131
    iget-object v6, p1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v6, v6, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v6, :cond_55

    .line 132
    iget-object v6, p0, mContext:Landroid/content/Context;

    const v7, 0x10a0051

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 134
    .local v0, "a":Landroid/view/animation/Animation;
    new-instance v6, Lcom/android/server/wm/MultiWindowTransition$1;

    invoke-direct {v6, p0, p1}, Lcom/android/server/wm/MultiWindowTransition$1;-><init>(Lcom/android/server/wm/MultiWindowTransition;Lcom/android/server/wm/AppWindowToken;)V

    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 155
    iget-object v6, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy;->getMinimizeSize()I

    move-result v3

    .line 156
    .local v3, "minimizedIconSize":I
    iget-object v6, p1, Lcom/android/server/wm/AppWindowToken;->appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 157
    .local v4, "stackBounds":Landroid/graphics/Rect;
    iget v6, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 158
    .local v5, "width":I
    iget v1, v4, Landroid/graphics/Rect;->top:I

    .line 159
    .local v1, "height":I
    iget-object v6, p1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v7, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v7}, Lcom/android/server/wm/AppTransition;->canSkipFirstFrame()Z

    move-result v7

    invoke-virtual {v6, v0, v5, v1, v7}, Lcom/android/server/wm/AppWindowAnimator;->setAnimation(Landroid/view/animation/Animation;IIZ)V

    .line 160
    const/4 v6, 0x1

    .line 162
    .end local v0    # "a":Landroid/view/animation/Animation;
    .end local v1    # "height":I
    .end local v3    # "minimizedIconSize":I
    .end local v4    # "stackBounds":Landroid/graphics/Rect;
    .end local v5    # "width":I
    :goto_54
    return v6

    :cond_55
    const/4 v6, 0x0

    goto :goto_54
.end method

.method private setMultiWindowTransitionAnimation(I)Z
    .registers 10
    .param p1, "transit"    # I

    .prologue
    .line 497
    iget-object v3, p0, mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    if-nez v3, :cond_6

    .line 498
    const/4 v3, 0x0

    .line 533
    :goto_5
    return v3

    .line 500
    :cond_6
    const/16 v3, 0x9

    if-ne p1, v3, :cond_5a

    .line 501
    iget-object v3, p0, mContext:Landroid/content/Context;

    const v4, 0x10a0051

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, mAnimation:Landroid/view/animation/Animation;

    .line 503
    iget-object v3, p0, mMinimizeAppList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 504
    .local v2, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-object v3, p0, mAnimation:Landroid/view/animation/Animation;

    new-instance v4, Lcom/android/server/wm/MultiWindowTransition$3;

    invoke-direct {v4, p0, v2}, Lcom/android/server/wm/MultiWindowTransition$3;-><init>(Lcom/android/server/wm/MultiWindowTransition;Lcom/android/server/wm/AppWindowToken;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 521
    iget-object v3, v2, Lcom/android/server/wm/AppWindowToken;->appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 522
    .local v1, "stackBounds":Landroid/graphics/Rect;
    iget-object v3, p0, mAnimation:Landroid/view/animation/Animation;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget v7, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto :goto_1b

    .line 525
    .end local v1    # "stackBounds":Landroid/graphics/Rect;
    .end local v2    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_53
    iget-object v3, p0, mMinimizeAppList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 533
    .end local v0    # "i$":Ljava/util/Iterator;
    :goto_58
    const/4 v3, 0x1

    goto :goto_5

    .line 527
    :cond_5a
    iget-object v3, p0, mContext:Landroid/content/Context;

    const v4, 0x10a005b

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, mAnimation:Landroid/view/animation/Animation;

    .line 530
    iget-object v3, p0, mAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    iget-object v4, v4, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    iget-object v5, p0, mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    iget-object v5, v5, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    iget-object v6, p0, mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    iget-object v6, v6, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    iget-object v7, p0, mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    iget-object v7, v7, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto :goto_58
.end method


# virtual methods
.method public addMultiWindowTransitionTarget(Lcom/android/server/wm/AppWindowToken;)Z
    .registers 3
    .param p1, "wtoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 271
    iget-object v0, p0, mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 272
    iget-object v0, p0, mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    const/4 v0, 0x1

    .line 275
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public clearMultiWindowTransitionAnimation()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 563
    iget-object v2, p0, mService:Lcom/android/server/wm/WindowManagerService;

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v2, :cond_5f

    .line 564
    const-string v2, "MultiWindowTransition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clear multi window transition animation : mAnimation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mFreezeSurface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "here"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 566
    const-string v3, "MultiWindowTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "target remain >>> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_74

    const-string/jumbo v2, "null"

    :goto_54
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_5f
    iget-object v2, p0, mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_65
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_77

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 569
    .local v1, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iput-boolean v6, v1, Lcom/android/server/wm/AppWindowToken;->mWaitingForMaximizeAnim:Z

    goto :goto_65

    .line 566
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_74
    iget-object v2, p0, mTargetAppList:Ljava/util/ArrayList;

    goto :goto_54

    .line 571
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_77
    iget-object v2, p0, mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 573
    iget-object v2, p0, mMaximizeAppList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_82
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_91

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 574
    .restart local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    iput-boolean v6, v1, Lcom/android/server/wm/AppWindowToken;->mWaitingForMaximizeAnim:Z

    goto :goto_82

    .line 576
    .end local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_91
    iget-object v2, p0, mMaximizeAppList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 578
    iget-object v2, p0, mMinimizeAppList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 579
    .restart local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-object v2, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x67

    iget-object v4, v1, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    goto :goto_9c

    .line 581
    .end local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_b4
    iget-object v2, p0, mMinimizeAppList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 583
    iget-object v2, p0, mAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_c4

    .line 584
    iget-object v2, p0, mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->cancel()V

    .line 585
    iput-object v8, p0, mAnimation:Landroid/view/animation/Animation;

    .line 587
    :cond_c4
    iget-object v2, p0, mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    if-eqz v2, :cond_da

    .line 588
    iget-object v2, p0, mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    invoke-virtual {v2}, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->kill()V

    .line 589
    iput-object v8, p0, mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    .line 590
    iget-boolean v2, p0, mHasDefferedRot:Z

    if-eqz v2, :cond_da

    .line 591
    iget-object v2, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->resumeRotationLocked()V

    .line 592
    iput-boolean v6, p0, mHasDefferedRot:Z

    .line 595
    :cond_da
    iput-boolean v6, p0, mAnimRunning:Z

    .line 596
    iput v7, p0, mNextAppTransition:I

    .line 597
    iput v7, p0, mMultiWindowTransitionState:I

    .line 598
    return-void
.end method

.method public createFreezeSurface(Z)V
    .registers 3
    .param p1, "needBGSurface"    # Z

    .prologue
    .line 279
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, createFreezeSurface(ZI)V

    .line 280
    return-void
.end method

.method public createFreezeSurface(ZI)V
    .registers 22
    .param p1, "needBGSurface"    # Z
    .param p2, "maxLayer"    # I

    .prologue
    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v2, :cond_37

    .line 284
    const-string v2, "MultiWindowTransition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "create a freeze surface for a multi window transition animation (mFreezeSurface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "here"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 287
    :cond_37
    move-object/from16 v0, p0

    iget-object v2, v0, mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    if-nez v2, :cond_d8

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v15

    .line 292
    .local v15, "displayInfo":Landroid/view/DisplayInfo;
    iget v2, v15, Landroid/view/DisplayInfo;->rotation:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4f

    iget v2, v15, Landroid/view/DisplayInfo;->rotation:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_d9

    .line 294
    :cond_4f
    iget v6, v15, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 295
    .local v6, "width":I
    iget v7, v15, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 301
    .local v7, "height":I
    :goto_53
    const/16 v18, 0x0

    .line 303
    .local v18, "screenShotMaxLayer":I
    if-lez p2, :cond_df

    .line 304
    add-int/lit8 v18, p2, 0x1

    .line 311
    :goto_59
    :try_start_59
    new-instance v2, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    move-object/from16 v0, p0

    iget-object v3, v0, mSession:Landroid/view/SurfaceSession;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v8, v15, Landroid/view/DisplayInfo;->layerStack:I

    iget v9, v15, Landroid/view/DisplayInfo;->rotation:I

    const/4 v11, 0x0

    add-int/lit8 v12, v18, -0x1

    move-object/from16 v0, p0

    iget-object v10, v0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v13

    move/from16 v10, p1

    invoke-direct/range {v2 .. v13}, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;-><init>(Landroid/view/SurfaceSession;IIIIIIZIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;
    :try_end_79
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_59 .. :try_end_79} :catch_f3

    .line 316
    :goto_79
    move-object/from16 v0, p0

    iget-object v2, v0, mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    if-eqz v2, :cond_d8

    .line 317
    move-object/from16 v0, p0

    iget v2, v0, mNextAppTransition:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_92

    .line 318
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->pauseRotationLocked()V

    .line 319
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, mHasDefferedRot:Z

    .line 322
    :cond_92
    if-lez p2, :cond_9d

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->setLayerForSurface(I)V

    .line 325
    :cond_9d
    move-object/from16 v0, p0

    iget-object v2, v0, mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    invoke-virtual {v2}, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->show()V

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v14

    .line 329
    .local v14, "displayId":I
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x65

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    .line 330
    .local v17, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x65

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v4, 0x7d0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 336
    .end local v6    # "width":I
    .end local v7    # "height":I
    .end local v14    # "displayId":I
    .end local v15    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v17    # "msg":Landroid/os/Message;
    .end local v18    # "screenShotMaxLayer":I
    :cond_d8
    return-void

    .line 297
    .restart local v15    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_d9
    iget v6, v15, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 298
    .restart local v6    # "width":I
    iget v7, v15, Landroid/view/DisplayInfo;->logicalHeight:I

    .restart local v7    # "height":I
    goto/16 :goto_53

    .line 306
    .restart local v18    # "screenShotMaxLayer":I
    :cond_df
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v3, 0x8b6

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x2710

    add-int/lit16 v0, v2, 0x3e8

    move/from16 v18, v0

    goto/16 :goto_59

    .line 313
    :catch_f3
    move-exception v16

    .line 314
    .local v16, "e":Landroid/view/Surface$OutOfResourcesException;
    const-string v2, "MultiWindowTransition"

    const-string v3, "Unable to allocate screen freeze surface"

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_79
.end method

.method public executeMultiWindowTransition()V
    .registers 5

    .prologue
    .line 431
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v0, :cond_3c

    .line 432
    const-string v0, "MultiWindowTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Execute multi window transition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (mNextAppTransition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mNextAppTransition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "here"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 436
    :cond_3c
    invoke-virtual {p0}, isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 437
    invoke-virtual {p0}, setTransitReady()V

    .line 438
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 440
    :cond_4a
    return-void
.end method

.method getMultiWindowTransition()I
    .registers 2

    .prologue
    .line 347
    iget v0, p0, mNextAppTransition:I

    return v0
.end method

.method goodToGo()V
    .registers 2

    .prologue
    .line 393
    const/4 v0, -0x1

    iput v0, p0, mNextAppTransition:I

    .line 394
    const/4 v0, 0x2

    iput v0, p0, mMultiWindowTransitionState:I

    .line 395
    return-void
.end method

.method public handleMultiWindowTransitionReady()I
    .registers 11

    .prologue
    const/4 v7, 0x1

    .line 444
    const/4 v1, 0x0

    .line 446
    .local v1, "changes":I
    iget-object v6, p0, mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 447
    .local v0, "NN":I
    const/4 v2, 0x1

    .line 448
    .local v2, "goodToGo":Z
    iget-object v6, p0, mService:Lcom/android/server/wm/WindowManagerService;

    sget-boolean v6, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v6, :cond_4a

    const-string v8, "MultiWindowTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Checking "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " multi window transition target apps (frozen="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v6, p0, mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    if-eqz v6, :cond_b3

    move v6, v7

    :goto_2b
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " timeout="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, isTimeout()Z

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ")..."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_4a
    iget-object v6, p0, mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    if-nez v6, :cond_b6

    invoke-virtual {p0}, isTimeout()Z

    move-result v6

    if-nez v6, :cond_b6

    .line 454
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_55
    if-ge v3, v0, :cond_b6

    if-eqz v2, :cond_b6

    .line 455
    iget-object v6, p0, mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    .line 456
    .local v5, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-object v6, p0, mService:Lcom/android/server/wm/WindowManagerService;

    sget-boolean v6, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v6, :cond_a3

    const-string v6, "MultiWindowTransition"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Check multi window transition target apps="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": allDrawn="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, v5, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " startingDisplayed="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, v5, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " startingMoved="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, v5, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_a3
    iget-boolean v6, v5, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v6, :cond_b0

    iget-boolean v6, v5, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-nez v6, :cond_b0

    iget-boolean v6, v5, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    if-nez v6, :cond_b0

    .line 460
    const/4 v2, 0x0

    .line 454
    :cond_b0
    add-int/lit8 v3, v3, 0x1

    goto :goto_55

    .line 448
    .end local v3    # "i":I
    .end local v5    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_b3
    const/4 v6, 0x0

    goto/16 :goto_2b

    .line 465
    :cond_b6
    if-eqz v2, :cond_110

    .line 466
    iget-object v6, p0, mService:Lcom/android/server/wm/WindowManagerService;

    sget-boolean v6, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v6, :cond_c5

    const-string v6, "MultiWindowTransition"

    const-string v8, "**** GOOD TO GO"

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_c5
    invoke-virtual {p0}, getMultiWindowTransition()I

    move-result v4

    .line 469
    .local v4, "transit":I
    invoke-virtual {p0}, goodToGo()V

    .line 470
    iget-object v6, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0x65

    iget-object v9, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    .line 472
    const/4 v6, -0x1

    if-eq v4, v6, :cond_111

    iget-object v6, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/android/server/wm/WindowManagerService;->okToDisplay(I)Z

    move-result v6

    if-eqz v6, :cond_111

    .line 477
    iget-object v6, p0, mService:Lcom/android/server/wm/WindowManagerService;

    sget-boolean v6, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v6, :cond_fe

    const-string v6, "MultiWindowTransition"

    const-string/jumbo v8, "set an animation for multi window transition"

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_fe
    invoke-direct {p0, v4}, setMultiWindowTransitionAnimation(I)Z

    .line 484
    :goto_101
    iget-object v6, p0, mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 488
    or-int/lit8 v1, v1, 0x3

    .line 490
    iget-object v6, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    iput-boolean v7, v6, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 492
    .end local v4    # "transit":I
    :cond_110
    return v1

    .line 481
    .restart local v4    # "transit":I
    :cond_111
    invoke-virtual {p0}, clearMultiWindowTransitionAnimation()V

    goto :goto_101
.end method

.method public isAnimating()Z
    .registers 2

    .prologue
    .line 537
    iget-object v0, p0, mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    if-eqz v0, :cond_a

    iget-object v0, p0, mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method isFreezingScreen()Z
    .registers 2

    .prologue
    .line 351
    iget v0, p0, mMultiWindowTransitionState:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isTimeout()Z
    .registers 3

    .prologue
    .line 369
    iget v0, p0, mMultiWindowTransitionState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method isTranitRunning()Z
    .registers 3

    .prologue
    .line 365
    iget v0, p0, mMultiWindowTransitionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method isTransitReady()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 355
    iget v1, p0, mMultiWindowTransitionState:I

    if-eq v1, v0, :cond_a

    iget v1, p0, mMultiWindowTransitionState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method isTransitionNone()Z
    .registers 2

    .prologue
    .line 343
    iget v0, p0, mNextAppTransition:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isTransitionSet()Z
    .registers 3

    .prologue
    .line 339
    iget v0, p0, mNextAppTransition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method prepare()V
    .registers 2

    .prologue
    .line 387
    invoke-virtual {p0}, isTranitRunning()Z

    move-result v0

    if-nez v0, :cond_9

    .line 388
    const/4 v0, 0x0

    iput v0, p0, mMultiWindowTransitionState:I

    .line 390
    :cond_9
    return-void
.end method

.method setApplicationDrawn(Lcom/android/server/wm/AppWindowToken;)V
    .registers 8
    .param p1, "wtoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    const/4 v5, 0x2

    .line 400
    iget-object v2, p0, mService:Lcom/android/server/wm/WindowManagerService;

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v2, :cond_50

    .line 401
    const-string v2, "MultiWindowTransition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setApplicationDrawn (transit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, mNextAppTransition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const-string v3, "MultiWindowTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "target remain >>> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8a

    const-string/jumbo v2, "no more target.."

    :goto_45
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_50
    iget v2, p0, mNextAppTransition:I

    const/16 v3, 0x15

    if-eq v2, v3, :cond_5c

    iget v2, p0, mNextAppTransition:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_98

    :cond_5c
    iget-object v2, p0, mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 406
    iget-object v2, p0, mMaximizeAppList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    iget-object v2, p0, mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_97

    .line 409
    iget-object v2, p0, mMaximizeAppList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_77
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 410
    .local v1, "token":Lcom/android/server/wm/AppWindowToken;
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/wm/AppWindowToken;->mWaitingForMaximizeAnim:Z

    .line 411
    invoke-direct {p0, v1}, setMaximizeAnimation(Lcom/android/server/wm/AppWindowToken;)Z

    goto :goto_77

    .line 402
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_8a
    iget-object v2, p0, mTargetAppList:Ljava/util/ArrayList;

    goto :goto_45

    .line 413
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_8d
    iget-object v2, p0, mMaximizeAppList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 414
    iget-object v2, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 427
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_97
    :goto_97
    return-void

    .line 416
    :cond_98
    iget-object v2, p0, mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_be

    .line 417
    iget-object v2, p0, mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_97

    .line 418
    iget-object v2, p0, mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    if-eqz v2, :cond_ba

    iget v2, p0, mNextAppTransition:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_b5

    iget v2, p0, mNextAppTransition:I

    if-ne v2, v5, :cond_ba

    .line 420
    :cond_b5
    iget-object v2, p0, mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    invoke-virtual {v2}, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->hideBG()V

    .line 422
    :cond_ba
    invoke-virtual {p0}, executeMultiWindowTransition()V

    goto :goto_97

    .line 424
    :cond_be
    iget-object v2, p0, mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    if-eqz v2, :cond_97

    iget v2, p0, mNextAppTransition:I

    if-ne v2, v5, :cond_97

    .line 425
    iget-object v2, p0, mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    invoke-virtual {v2}, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->hideBG()V

    goto :goto_97
.end method

.method public setMultiWindowTransition(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .registers 15
    .param p2, "transit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, "wtokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 199
    :cond_8
    const/4 v6, 0x0

    .line 267
    :goto_9
    return-object v6

    .line 201
    :cond_a
    iget-object v9, p0, mService:Lcom/android/server/wm/WindowManagerService;

    sget-boolean v9, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v9, :cond_4b

    .line 202
    const-string v9, "MultiWindowTransition"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "set multi window transition : transit="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const-string v10, "MultiWindowTransition"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "targets >>> "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_57

    const-string/jumbo v9, "null"

    :goto_40
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_4b
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v6, "targetTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    packed-switch p2, :pswitch_data_11e

    :pswitch_53
    goto :goto_9

    .line 208
    :pswitch_54
    iput p2, p0, mNextAppTransition:I

    goto :goto_9

    .end local v6    # "targetTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    :cond_57
    move-object v9, p1

    .line 203
    goto :goto_40

    .line 211
    .restart local v6    # "targetTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    :pswitch_59
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_5d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    .line 212
    .local v8, "wtoken":Lcom/android/server/wm/AppWindowToken;
    invoke-direct {p0, v8}, setMinimizeAnimation(Lcom/android/server/wm/AppWindowToken;)Z

    goto :goto_5d

    .line 214
    .end local v8    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_6d
    iget-object v9, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    goto :goto_9

    .line 227
    .end local v1    # "i$":Ljava/util/Iterator;
    :pswitch_73
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_77
    :goto_77
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    .line 228
    .restart local v8    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {p0, v8}, addMultiWindowTransitionTarget(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v9

    if-eqz v9, :cond_77

    .line 229
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_77

    .line 232
    .end local v8    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_8d
    iput p2, p0, mNextAppTransition:I

    .line 233
    const/16 v9, 0x15

    if-eq p2, v9, :cond_97

    const/16 v9, 0xa

    if-ne p2, v9, :cond_c3

    .line 235
    :cond_97
    iget-object v9, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    .line 236
    .local v0, "displayId":I
    iget-object v9, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v10, 0x65

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 237
    .local v5, "msg":Landroid/os/Message;
    iget-object v9, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v10, 0x65

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    .line 239
    iget-object v9, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v10, 0x7d0

    invoke-virtual {v9, v5, v10, v11}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_9

    .line 242
    .end local v0    # "displayId":I
    .end local v5    # "msg":Landroid/os/Message;
    :cond_c3
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, createFreezeSurface(Z)V

    goto/16 :goto_9

    .line 246
    .end local v1    # "i$":Ljava/util/Iterator;
    :pswitch_c9
    const/4 v4, 0x0

    .line 248
    .local v4, "maxLayer":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_ce
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_116

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    .line 249
    .restart local v8    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {p0, v8}, addMultiWindowTransitionTarget(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v9

    if-eqz v9, :cond_fd

    .line 250
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v9, p0, mMinimizeAppList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v9, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v10, 0x67

    iget-object v11, v8, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v9, v10, v11}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 253
    .local v3, "m":Landroid/os/Message;
    iget-object v9, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v10, 0x7d0

    invoke-virtual {v9, v3, v10, v11}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 256
    .end local v3    # "m":Landroid/os/Message;
    :cond_fd
    iget-object v9, v8, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_103
    :goto_103
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_ce

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    .line 257
    .local v7, "win":Lcom/android/server/wm/WindowState;
    iget v9, v7, Lcom/android/server/wm/WindowState;->mLayer:I

    if-gt v4, v9, :cond_103

    .line 258
    iget v4, v7, Lcom/android/server/wm/WindowState;->mLayer:I

    goto :goto_103

    .line 263
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v7    # "win":Lcom/android/server/wm/WindowState;
    .end local v8    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_116
    iput p2, p0, mNextAppTransition:I

    .line 264
    const/4 v9, 0x1

    invoke-virtual {p0, v9, v4}, createFreezeSurface(ZI)V

    goto/16 :goto_9

    .line 206
    :pswitch_data_11e
    .packed-switch -0x1
        :pswitch_54
        :pswitch_53
        :pswitch_73
        :pswitch_73
        :pswitch_73
        :pswitch_73
        :pswitch_73
        :pswitch_73
        :pswitch_73
        :pswitch_73
        :pswitch_c9
        :pswitch_73
        :pswitch_73
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_59
        :pswitch_73
    .end packed-switch
.end method

.method setTimeout()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 373
    const/4 v3, 0x3

    iput v3, p0, mMultiWindowTransitionState:I

    .line 374
    iget-object v3, p0, mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 375
    .local v2, "token":Lcom/android/server/wm/AppWindowToken;
    iput-boolean v4, v2, Lcom/android/server/wm/AppWindowToken;->mWaitingForMaximizeAnim:Z

    goto :goto_a

    .line 377
    .end local v2    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_19
    iget-object v3, p0, mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 379
    iget-object v3, p0, mMaximizeAppList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 380
    .local v1, "mtoken":Lcom/android/server/wm/AppWindowToken;
    iput-boolean v4, v1, Lcom/android/server/wm/AppWindowToken;->mWaitingForMaximizeAnim:Z

    goto :goto_24

    .line 382
    .end local v1    # "mtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_33
    iget-object v3, p0, mMaximizeAppList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 383
    return-void
.end method

.method setTransitReady()V
    .registers 2

    .prologue
    .line 361
    const/4 v0, 0x1

    iput v0, p0, mMultiWindowTransitionState:I

    .line 362
    return-void
.end method

.method public stepAnimationLocked(J)Z
    .registers 8
    .param p1, "now"    # J

    .prologue
    .line 542
    iget-object v1, p0, mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    if-eqz v1, :cond_8

    iget-object v1, p0, mAnimation:Landroid/view/animation/Animation;

    if-nez v1, :cond_a

    .line 543
    :cond_8
    const/4 v0, 0x0

    .line 558
    :cond_9
    :goto_9
    return v0

    .line 546
    :cond_a
    iget-boolean v1, p0, mAnimRunning:Z

    if-nez v1, :cond_34

    .line 547
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v1, :cond_2a

    const-string v1, "MultiWindowTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting multi window transition animation @"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_2a
    const/4 v1, 0x1

    iput-boolean v1, p0, mAnimRunning:Z

    .line 549
    iput-wide p1, p0, mStartTime:J

    .line 550
    iget-object v1, p0, mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 553
    :cond_34
    iget-object v1, p0, mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    .line 554
    iget-object v1, p0, mAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p1, p2, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    .line 555
    .local v0, "moreAnim":Z
    iget-object v1, p0, mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    iget-object v2, p0, mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->setAnimationTransform(Landroid/view/animation/Transformation;)V

    .line 557
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v1, :cond_9

    if-nez v0, :cond_9

    const-string v1, "MultiWindowTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multi window transition animation done @"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 617
    const-string v0, "ScreenFreezeSurface"

    return-object v0
.end method
