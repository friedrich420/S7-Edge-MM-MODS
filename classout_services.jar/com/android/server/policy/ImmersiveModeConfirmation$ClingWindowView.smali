.class Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;
.super Landroid/widget/FrameLayout;
.source "ImmersiveModeConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/ImmersiveModeConfirmation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClingWindowView"
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0xfa

.field private static final BGCOLOR:I = -0x80000000

.field private static final OFFSET_DP:I = 0x60


# instance fields
.field private mClingLayout:Landroid/view/ViewGroup;

.field private final mColor:Landroid/graphics/drawable/ColorDrawable;

.field private mColorAnim:Landroid/animation/ValueAnimator;

.field private final mConfirm:Ljava/lang/Runnable;

.field private mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mUpdateLayoutRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/ImmersiveModeConfirmation;Landroid/content/Context;Ljava/lang/Runnable;)V
    .registers 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "confirm"    # Ljava/lang/Runnable;

    .prologue
    .line 232
    iput-object p1, p0, this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    .line 233
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 190
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, mColor:Landroid/graphics/drawable/ColorDrawable;

    .line 195
    new-instance v0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$1;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)V

    iput-object v0, p0, mUpdateLayoutRunnable:Ljava/lang/Runnable;

    .line 204
    new-instance v0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$2;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)V

    iput-object v0, p0, mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 223
    new-instance v0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$3;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)V

    iput-object v0, p0, mReceiver:Landroid/content/BroadcastReceiver;

    .line 234
    iput-object p3, p0, mConfirm:Ljava/lang/Runnable;

    .line 235
    iget-object v0, p0, mColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0, v0}, setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 236
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, setImportantForAccessibility(I)V

    .line 237
    iget-object v0, p0, mContext:Landroid/content/Context;

    const v1, 0x10c000e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, mInterpolator:Landroid/view/animation/Interpolator;

    .line 239
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Landroid/view/ViewGroup;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    .prologue
    .line 184
    iget-object v0, p0, mClingLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    .prologue
    .line 184
    iget-object v0, p0, mUpdateLayoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    .prologue
    .line 184
    iget-object v0, p0, mConfirm:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Landroid/view/animation/Interpolator;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    .prologue
    .line 184
    iget-object v0, p0, mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Landroid/animation/ValueAnimator;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    .prologue
    .line 184
    iget-object v0, p0, mColorAnim:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 184
    iput-object p1, p0, mColorAnim:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Landroid/graphics/drawable/ColorDrawable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    .prologue
    .line 184
    iget-object v0, p0, mColor:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .registers 9

    .prologue
    .line 243
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 245
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 246
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    iget-object v4, p0, this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    # getter for: Lcom/android/server/policy/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v4}, Lcom/android/server/policy/ImmersiveModeConfirmation;->access$300(Lcom/android/server/policy/ImmersiveModeConfirmation;)Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 247
    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 249
    .local v1, "density":F
    invoke-virtual {p0}, getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iget-object v5, p0, mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 252
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x109007b

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, mClingLayout:Landroid/view/ViewGroup;

    .line 255
    iget-object v4, p0, mClingLayout:Landroid/view/ViewGroup;

    const v5, 0x10203d7

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 256
    .local v3, "ok":Landroid/widget/Button;
    new-instance v4, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$4;

    invoke-direct {v4, p0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$4;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    iget-object v4, p0, mClingLayout:Landroid/view/ViewGroup;

    iget-object v5, p0, this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-virtual {v5}, Lcom/android/server/policy/ImmersiveModeConfirmation;->getBubbleLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v4

    if-eqz v4, :cond_77

    .line 265
    iget-object v0, p0, mClingLayout:Landroid/view/ViewGroup;

    .line 266
    .local v0, "cling":Landroid/view/View;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 267
    const/high16 v4, -0x3d400000    # -96.0f

    mul-float/2addr v4, v1

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 269
    new-instance v4, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5;

    invoke-direct {v4, p0, v0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;Landroid/view/View;)V

    invoke-virtual {p0, v4}, postOnAnimation(Ljava/lang/Runnable;)V

    .line 297
    .end local v0    # "cling":Landroid/view/View;
    :goto_68
    iget-object v4, p0, mContext:Landroid/content/Context;

    iget-object v5, p0, mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 299
    return-void

    .line 294
    :cond_77
    iget-object v4, p0, mColor:Landroid/graphics/drawable/ColorDrawable;

    const/high16 v5, -0x80000000

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    goto :goto_68
.end method

.method public onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 303
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 304
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "motion"    # Landroid/view/MotionEvent;

    .prologue
    .line 308
    const/4 v0, 0x1

    return v0
.end method
