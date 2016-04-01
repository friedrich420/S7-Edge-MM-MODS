.class public Lcom/android/internal/policy/SubPhoneWindow;
.super Lcom/android/internal/policy/PhoneWindow;
.source "SubPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;,
        Lcom/android/internal/policy/SubPhoneWindow$SubPhoneWindowListener;,
        Lcom/android/internal/policy/SubPhoneWindow$SubPhoneDecorView;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final SAFE_DEBUG:Z = true

.field static final TAG:Ljava/lang/String; = "SubPhoneWindow"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBorder:Lcom/android/internal/policy/multiwindow/Border;

.field private mContext:Landroid/content/Context;

.field private mHasStackFocus:Z

.field private mIsBorder:Z

.field private mIvt:[B

.field private mMinStackBoundForLand:Landroid/graphics/Rect;

.field private mMinStackBoundForPort:Landroid/graphics/Rect;

.field private final mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field private mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScaleX:F

.field private mScaleY:F

.field private mStackBound:Landroid/graphics/Rect;

.field private mStatusBarHeight:I

.field private mSubPhoneWindowListener:Lcom/android/internal/policy/SubPhoneWindow$SubPhoneWindowListener;

.field private mToken:Landroid/os/IBinder;

.field private mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

.field private mVibrator:Landroid/os/SystemVibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    const/high16 v8, 0x447a0000    # 1000.0f

    const/4 v7, 0x0

    .line 95
    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 65
    iput-object v6, p0, mActivity:Landroid/app/Activity;

    .line 70
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v5, p0, mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

    .line 73
    iput-boolean v7, p0, mHasStackFocus:Z

    .line 74
    iput-boolean v7, p0, mIsBorder:Z

    .line 77
    iput-object v6, p0, mToken:Landroid/os/IBinder;

    .line 82
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, mMinStackBoundForPort:Landroid/graphics/Rect;

    .line 83
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, mMinStackBoundForLand:Landroid/graphics/Rect;

    .line 85
    const/16 v5, 0x1a

    new-array v5, v5, [B

    fill-array-data v5, :array_120

    iput-object v5, p0, mIvt:[B

    .line 96
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 97
    iget-object v5, p0, mContext:Landroid/content/Context;

    instance-of v5, v5, Landroid/app/Activity;

    if-eqz v5, :cond_3c

    .line 98
    iget-object v5, p0, mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    iput-object v5, p0, mActivity:Landroid/app/Activity;

    .line 100
    :cond_3c
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string/jumbo v6, "vibrator"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/SystemVibrator;

    iput-object v5, p0, mVibrator:Landroid/os/SystemVibrator;

    .line 101
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string/jumbo v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, p0, mPowerManager:Landroid/os/PowerManager;

    .line 102
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string/jumbo v6, "multiwindow_facade"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object v5, p0, mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 104
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050017

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, mStatusBarHeight:I

    .line 106
    iget-object v5, p0, mActivity:Landroid/app/Activity;

    if-eqz v5, :cond_fa

    .line 107
    iget-object v5, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    .line 108
    .local v4, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    new-instance v5, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v5, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    iput-object v5, p0, mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 109
    iget-object v5, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, p0, mToken:Landroid/os/IBinder;

    .line 113
    .end local v4    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :goto_8b
    iget-object v5, p0, mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v5

    if-eqz v5, :cond_9f

    iget-object v5, p0, mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v6, 0x800

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_9f

    .line 114
    iput-boolean v9, p0, mIsBorder:Z

    .line 118
    :cond_9f
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 119
    .local v1, "displaySize":Landroid/graphics/Point;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 120
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_b1

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 121
    :cond_b1
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e010b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 123
    .local v2, "floatingMinimumSizeRatioPercentage":I
    new-instance v3, Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Point;->x:I

    mul-int/2addr v5, v2

    int-to-float v5, v5

    div-float/2addr v5, v8

    float-to-int v5, v5

    iget v6, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v6, v2

    int-to-float v6, v6

    div-float/2addr v6, v8

    float-to-int v6, v6

    invoke-direct {v3, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 125
    .local v3, "minSize":Landroid/graphics/Rect;
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v9, :cond_102

    .line 126
    iget-object v5, p0, mMinStackBoundForPort:Landroid/graphics/Rect;

    invoke-virtual {v5, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 127
    iget-object v5, p0, mMinStackBoundForLand:Landroid/graphics/Rect;

    iget v6, v3, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    iget v8, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 134
    :goto_f9
    return-void

    .line 111
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "displaySize":Landroid/graphics/Point;
    .end local v2    # "floatingMinimumSizeRatioPercentage":I
    .end local v3    # "minSize":Landroid/graphics/Rect;
    :cond_fa
    new-instance v5, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    iput-object v5, p0, mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    goto :goto_8b

    .line 130
    .restart local v0    # "display":Landroid/view/Display;
    .restart local v1    # "displaySize":Landroid/graphics/Point;
    .restart local v2    # "floatingMinimumSizeRatioPercentage":I
    .restart local v3    # "minSize":Landroid/graphics/Rect;
    :cond_102
    iget-object v5, p0, mMinStackBoundForPort:Landroid/graphics/Rect;

    iget v6, v3, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    iget v8, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 132
    iget-object v5, p0, mMinStackBoundForLand:Landroid/graphics/Rect;

    invoke-virtual {v5, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_f9

    .line 85
    nop

    :array_120
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0x12t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x30t
        0x0t
        0x0t
        0xat
        0x0t
        0x0t
        0x0t
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        -0x5et
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/policy/SubPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/SubPhoneWindow;

    .prologue
    .line 58
    iget-object v0, p0, mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/SubPhoneWindow;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/SubPhoneWindow;

    .prologue
    .line 58
    invoke-direct {p0}, forceHideInputMethod()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/SubPhoneWindow;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/SubPhoneWindow;

    .prologue
    .line 58
    iget-boolean v0, p0, mIsBorder:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/SubPhoneWindow;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/SubPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, mIsBorder:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/SubPhoneWindow;)Lcom/android/internal/policy/multiwindow/Border;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/SubPhoneWindow;

    .prologue
    .line 58
    iget-object v0, p0, mBorder:Lcom/android/internal/policy/multiwindow/Border;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/SubPhoneWindow;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/SubPhoneWindow;

    .prologue
    .line 58
    invoke-direct {p0}, getStackBoxBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/SubPhoneWindow;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/SubPhoneWindow;

    .prologue
    .line 58
    iget-object v0, p0, mMinStackBoundForPort:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/SubPhoneWindow;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/SubPhoneWindow;

    .prologue
    .line 58
    iget-object v0, p0, mMinStackBoundForLand:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/SubPhoneWindow;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/SubPhoneWindow;

    .prologue
    .line 58
    iget-object v0, p0, mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/SubPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/SubPhoneWindow;

    .prologue
    .line 58
    iget-object v0, p0, mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    return-object v0
.end method

.method private forceHideInputMethod()Z
    .registers 3

    .prologue
    .line 397
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 398
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_b

    .line 399
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    move-result v1

    .line 401
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private getStackBoxBounds()Landroid/graphics/Rect;
    .registers 3

    .prologue
    .line 319
    iget-object v0, p0, mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v1, p0, mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private isCascadeScaledWindow()Z
    .registers 3

    .prologue
    .line 346
    iget-object v0, p0, mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private setStackFocus(Z)V
    .registers 4
    .param p1, "focus"    # Z

    .prologue
    .line 350
    iget-boolean v0, p0, mHasStackFocus:Z

    if-ne v0, p1, :cond_5

    .line 361
    :cond_4
    :goto_4
    return-void

    .line 353
    :cond_5
    iput-boolean p1, p0, mHasStackFocus:Z

    .line 354
    iget-object v0, p0, mBorder:Lcom/android/internal/policy/multiwindow/Border;

    if-eqz v0, :cond_4

    .line 355
    iget-object v0, p0, mBorder:Lcom/android/internal/policy/multiwindow/Border;

    iget-boolean v1, p0, mHasStackFocus:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/multiwindow/Border;->setFocus(Z)V

    .line 356
    invoke-virtual {p0}, peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 357
    invoke-virtual {p0}, peekDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 358
    invoke-virtual {p0}, peekDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_4
.end method


# virtual methods
.method public changeStackFocus(Z)V
    .registers 2
    .param p1, "focus"    # Z

    .prologue
    .line 342
    invoke-direct {p0, p1}, setStackFocus(Z)V

    .line 343
    return-void
.end method

.method protected generateDecor()Lcom/android/internal/policy/PhoneWindow$DecorView;
    .registers 5

    .prologue
    .line 138
    iget-object v1, p0, mBorder:Lcom/android/internal/policy/multiwindow/Border;

    if-nez v1, :cond_1a

    .line 139
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 141
    .local v0, "wm":Landroid/view/WindowManager;
    if-eqz v0, :cond_1a

    .line 142
    new-instance v1, Lcom/android/internal/policy/multiwindow/Border;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/android/internal/policy/multiwindow/Border;-><init>(Landroid/content/Context;Landroid/view/WindowManager;)V

    iput-object v1, p0, mBorder:Lcom/android/internal/policy/multiwindow/Border;

    .line 146
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_1a
    new-instance v1, Lcom/android/internal/policy/SubPhoneWindow$SubPhoneDecorView;

    iget-object v2, p0, mContext:Landroid/content/Context;

    const/4 v3, -0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/android/internal/policy/SubPhoneWindow$SubPhoneDecorView;-><init>(Lcom/android/internal/policy/SubPhoneWindow;Landroid/content/Context;I)V

    return-object v1
.end method

.method public onMultiWindowStyleChanged(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    .registers 6
    .param p1, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p2, "notifyReason"    # I

    .prologue
    .line 324
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/PhoneWindow;->onMultiWindowStyleChanged(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V

    .line 325
    const/4 v0, 0x0

    .line 326
    .local v0, "doInvalidate":Z
    iget-object v1, p0, mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    if-eq v1, v2, :cond_11

    .line 327
    const/4 v0, 0x1

    .line 329
    :cond_11
    iget-object v1, p0, mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 330
    invoke-direct {p0}, isCascadeScaledWindow()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 331
    const/4 v1, 0x1

    iput-boolean v1, p0, mIsBorder:Z

    .line 335
    :goto_1f
    if-eqz v0, :cond_2e

    invoke-virtual {p0}, peekDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 336
    invoke-virtual {p0}, peekDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 338
    :cond_2e
    return-void

    .line 333
    :cond_2f
    const/4 v1, 0x0

    iput-boolean v1, p0, mIsBorder:Z

    goto :goto_1f
.end method
