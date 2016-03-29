.class public Lcom/android/systemui/power/ChargerAnimationView;
.super Landroid/widget/RelativeLayout;
.source "ChargerAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;
    }
.end annotation


# static fields
.field private static final RESOURCE_ID_ARRAY_CABLE:[I

.field private static final RESOURCE_ID_ARRAY_WIRELESS:[I


# instance fields
.field private mAnimListenerRecursiveCount:I

.field private mAnimationListener:Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;

.field private mAnimationPlaying:Z

.field private mBackGroundAnim:Landroid/animation/AnimatorSet;

.field private mBackGroundView:Landroid/widget/LinearLayout;

.field private mBatteryChangeLevel:I

.field private mBatteryLevelTextView:Landroid/widget/TextView;

.field private mBatteryTextAnim:Landroid/animation/AnimatorSet;

.field private mChargerAnimationView:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mCurrentBatteryLevel:I

.field private mCurrentChargerType:I

.field private mCurrentOrientation:I

.field private mDVFSHelper:Landroid/os/DVFSHelper;

.field private mDisplay:Landroid/view/Display;

.field private mDisplayDensity:F

.field private mFrameAnimation_Cable:Landroid/graphics/drawable/AnimationDrawable;

.field private mFrameAnimation_Wireless:Landroid/graphics/drawable/AnimationDrawable;

.field private mHandler:Landroid/os/Handler;

.field private mIsScreenOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x4f

    .line 93
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/power/ChargerAnimationView;->RESOURCE_ID_ARRAY_CABLE:[I

    .line 174
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/power/ChargerAnimationView;->RESOURCE_ID_ARRAY_WIRELESS:[I

    return-void

    .line 93
    nop

    :array_0
    .array-data 4
        0x7f020083
        0x7f020084
        0x7f020085
        0x7f020086
        0x7f020087
        0x7f020088
        0x7f020089
        0x7f02008a
        0x7f02008b
        0x7f02008c
        0x7f02008d
        0x7f02008e
        0x7f02008f
        0x7f020090
        0x7f020091
        0x7f020092
        0x7f020093
        0x7f020094
        0x7f020095
        0x7f020096
        0x7f020097
        0x7f020098
        0x7f020099
        0x7f02009a
        0x7f02009b
        0x7f02009c
        0x7f02009d
        0x7f02009e
        0x7f02009f
        0x7f0200a0
        0x7f0200a1
        0x7f0200a2
        0x7f0200a3
        0x7f0200a4
        0x7f0200a5
        0x7f0200a6
        0x7f0200a7
        0x7f0200a8
        0x7f0200a9
        0x7f0200aa
        0x7f0200ab
        0x7f0200ac
        0x7f0200ad
        0x7f0200ae
        0x7f0200af
        0x7f0200b0
        0x7f0200b1
        0x7f0200b2
        0x7f0200b3
        0x7f0200b4
        0x7f0200b5
        0x7f0200b6
        0x7f0200b7
        0x7f0200b8
        0x7f0200b9
        0x7f0200ba
        0x7f0200bb
        0x7f0200bc
        0x7f0200bd
        0x7f0200be
        0x7f0200bf
        0x7f0200c0
        0x7f0200c1
        0x7f0200c2
        0x7f0200c3
        0x7f0200c4
        0x7f0200c5
        0x7f0200c6
        0x7f0200c7
        0x7f0200c8
        0x7f0200c9
        0x7f0200ca
        0x7f0200cb
        0x7f0200cc
        0x7f0200cd
        0x7f0200ce
        0x7f0200cf
        0x7f0200d0
        0x7f0200d1
    .end array-data

    .line 174
    :array_1
    .array-data 4
        0x7f0200d2
        0x7f0200d3
        0x7f0200d4
        0x7f0200d5
        0x7f0200d6
        0x7f0200d7
        0x7f0200d8
        0x7f0200d9
        0x7f0200da
        0x7f0200db
        0x7f0200dc
        0x7f0200dd
        0x7f0200de
        0x7f0200df
        0x7f0200e0
        0x7f0200e1
        0x7f0200e2
        0x7f0200e3
        0x7f0200e4
        0x7f0200e5
        0x7f0200e6
        0x7f0200e7
        0x7f0200e8
        0x7f0200e9
        0x7f0200ea
        0x7f0200eb
        0x7f0200ec
        0x7f0200ed
        0x7f0200ee
        0x7f0200ef
        0x7f0200f0
        0x7f0200f1
        0x7f0200f2
        0x7f0200f3
        0x7f0200f4
        0x7f0200f5
        0x7f0200f6
        0x7f0200f7
        0x7f0200f8
        0x7f0200f9
        0x7f0200fa
        0x7f0200fb
        0x7f0200fc
        0x7f0200fd
        0x7f0200fe
        0x7f0200ff
        0x7f020100
        0x7f020101
        0x7f020102
        0x7f020103
        0x7f020104
        0x7f020105
        0x7f020106
        0x7f020107
        0x7f020108
        0x7f020109
        0x7f02010a
        0x7f02010b
        0x7f02010c
        0x7f02010d
        0x7f02010e
        0x7f02010f
        0x7f020110
        0x7f020111
        0x7f020112
        0x7f020113
        0x7f020114
        0x7f020115
        0x7f020116
        0x7f020117
        0x7f020118
        0x7f020119
        0x7f02011a
        0x7f02011b
        0x7f02011c
        0x7f02011d
        0x7f02011e
        0x7f02011f
        0x7f020120
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 257
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/power/ChargerAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 258
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/power/ChargerAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 262
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 265
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    iput-boolean v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationPlaying:Z

    .line 83
    iput-boolean v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mIsScreenOn:Z

    .line 87
    iput v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimListenerRecursiveCount:I

    .line 88
    iput v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentBatteryLevel:I

    .line 89
    iput v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentOrientation:I

    .line 90
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryChangeLevel:I

    .line 91
    iput v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentChargerType:I

    .line 266
    iput-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mContext:Landroid/content/Context;

    .line 267
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/ChargerAnimationView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryLevelTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/power/ChargerAnimationView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/ChargerAnimationView;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentBatteryLevel:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/power/ChargerAnimationView;)Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/ChargerAnimationView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationListener:Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/ChargerAnimationView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Cable:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/power/ChargerAnimationView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/ChargerAnimationView;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryChangeLevel:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/power/ChargerAnimationView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/ChargerAnimationView;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/systemui/power/ChargerAnimationView;->changeBatteryLevelText()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/ChargerAnimationView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Wireless:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/power/ChargerAnimationView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/ChargerAnimationView;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimListenerRecursiveCount:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/power/ChargerAnimationView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/ChargerAnimationView;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimListenerRecursiveCount:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/power/ChargerAnimationView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/ChargerAnimationView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/power/ChargerAnimationView;->checkChargerAnimationEnd(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/ChargerAnimationView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryTextAnim:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/os/DVFSHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/ChargerAnimationView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDVFSHelper:Landroid/os/DVFSHelper;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/ChargerAnimationView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private changeBatteryLevelText()V
    .locals 6

    .prologue
    .line 359
    iget v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentBatteryLevel:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_0

    .line 360
    iget v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentBatteryLevel:I

    iget v3, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryChangeLevel:I

    sub-int v1, v2, v3

    .line 364
    .local v1, "displayBatteryLevel":I
    :goto_0
    const-string v2, "%s%%"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "batteryLevel":Ljava/lang/String;
    iget v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryChangeLevel:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryChangeLevel:I

    .line 369
    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/power/ChargerAnimationView$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/systemui/power/ChargerAnimationView$1;-><init>(Lcom/android/systemui/power/ChargerAnimationView;Ljava/lang/String;I)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 378
    return-void

    .line 362
    .end local v0    # "batteryLevel":Ljava/lang/String;
    .end local v1    # "displayBatteryLevel":I
    :cond_0
    iget v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentBatteryLevel:I

    .restart local v1    # "displayBatteryLevel":I
    goto :goto_0
.end method

.method private checkChargerAnimationEnd(II)V
    .locals 6
    .param p1, "delayTime"    # I
    .param p2, "chargerType"    # I

    .prologue
    .line 499
    move v0, p2

    .line 501
    .local v0, "currentChargerType":I
    iget v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimListenerRecursiveCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimListenerRecursiveCount:I

    .line 503
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/power/ChargerAnimationView$2;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/power/ChargerAnimationView$2;-><init>(Lcom/android/systemui/power/ChargerAnimationView;I)V

    int-to-long v4, p1

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 540
    return-void
.end method

.method private dp2px(F)F
    .locals 1
    .param p1, "dp"    # F

    .prologue
    .line 555
    iget v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDisplayDensity:F

    mul-float/2addr v0, p1

    return v0
.end method

.method private makeChargerAnimationDrawable(I)V
    .locals 8
    .param p1, "chargerType"    # I

    .prologue
    const/4 v7, 0x3

    .line 439
    if-ne p1, v7, :cond_0

    .line 440
    const/16 v1, 0x4f

    .line 445
    .local v1, "frameCount":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 447
    if-ne p1, v7, :cond_1

    .line 448
    :try_start_0
    sget-object v4, Lcom/android/systemui/power/ChargerAnimationView;->RESOURCE_ID_ARRAY_WIRELESS:[I

    aget v3, v4, v2

    .line 453
    .local v3, "resId":I
    :goto_2
    if-ne p1, v7, :cond_2

    .line 454
    iget-object v4, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Wireless:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/power/ChargerAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/16 v6, 0x11

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 445
    .end local v3    # "resId":I
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 442
    .end local v1    # "frameCount":I
    .end local v2    # "i":I
    :cond_0
    const/16 v1, 0x4f

    .restart local v1    # "frameCount":I
    goto :goto_0

    .line 450
    .restart local v2    # "i":I
    :cond_1
    sget-object v4, Lcom/android/systemui/power/ChargerAnimationView;->RESOURCE_ID_ARRAY_CABLE:[I

    aget v3, v4, v2

    .restart local v3    # "resId":I
    goto :goto_2

    .line 456
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Cable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/power/ChargerAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/16 v6, 0x11

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 457
    .end local v3    # "resId":I
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3

    .line 461
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    return-void
.end method

.method private setBackGroundAnimation()V
    .locals 4

    .prologue
    .line 335
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundView:Landroid/widget/LinearLayout;

    const-string v2, "alpha"

    const/4 v3, 0x7

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 336
    .local v0, "alpha":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 338
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundAnim:Landroid/animation/AnimatorSet;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 339
    return-void

    .line 335
    nop

    :array_0
    .array-data 4
        0x0
        0x3e4ccccd    # 0.2f
        0x3e4ccccd    # 0.2f
        0x3e4ccccd    # 0.2f
        0x3e4ccccd    # 0.2f
        0x3e4ccccd    # 0.2f
        0x0
    .end array-data
.end method

.method private setBatteryLevelTextAnimation()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x320

    const/4 v6, 0x2

    .line 346
    iget-object v3, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryLevelTextView:Landroid/widget/TextView;

    const-string v4, "alpha"

    const/4 v5, 0x7

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 347
    .local v0, "alpha":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x640

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 349
    iget-object v3, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryLevelTextView:Landroid/widget/TextView;

    const-string v4, "scaleX"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 350
    .local v1, "scaleX":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 351
    iget-object v3, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryLevelTextView:Landroid/widget/TextView;

    const-string v4, "scaleY"

    new-array v5, v6, [F

    fill-array-data v5, :array_2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 352
    .local v2, "scaleY":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 354
    iget-object v3, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryTextAnim:Landroid/animation/AnimatorSet;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    aput-object v2, v4, v6

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 355
    return-void

    .line 346
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3ecccccd    # 0.4f
        0x0
    .end array-data

    .line 349
    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    .line 351
    :array_2
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setCableChargerAnimation()V
    .locals 8

    .prologue
    const/16 v7, 0xe

    const/4 v6, 0x1

    const/4 v3, -0x2

    const v5, 0x3fa66666    # 1.3f

    const/high16 v4, -0x3eb00000    # -13.0f

    .line 394
    new-instance v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Cable:Landroid/graphics/drawable/AnimationDrawable;

    .line 395
    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Cable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 396
    invoke-direct {p0, v6}, Lcom/android/systemui/power/ChargerAnimationView;->makeChargerAnimationDrawable(I)V

    .line 398
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 399
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 401
    .local v0, "currentOrientaion":I
    packed-switch v0, :pswitch_data_0

    .line 424
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 425
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 426
    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setRotation(F)V

    .line 427
    const/high16 v2, 0x40e00000    # 7.0f

    invoke-direct {p0, v2}, Lcom/android/systemui/power/ChargerAnimationView;->dp2px(F)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 430
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 432
    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 433
    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Cable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 434
    return-void

    .line 403
    :pswitch_0
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 404
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 405
    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setRotation(F)V

    .line 406
    invoke-direct {p0, v4}, Lcom/android/systemui/power/ChargerAnimationView;->dp2px(F)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 410
    :pswitch_1
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 411
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 412
    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setRotation(F)V

    .line 413
    const/high16 v2, 0x41000000    # 8.0f

    invoke-direct {p0, v2}, Lcom/android/systemui/power/ChargerAnimationView;->dp2px(F)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 417
    :pswitch_2
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 418
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 419
    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setRotation(F)V

    .line 420
    invoke-direct {p0, v4}, Lcom/android/systemui/power/ChargerAnimationView;->dp2px(F)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 401
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setWirelessChargerAnimation()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    const/high16 v3, 0x40600000    # 3.5f

    .line 381
    new-instance v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Wireless:Landroid/graphics/drawable/AnimationDrawable;

    .line 382
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Wireless:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 383
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/systemui/power/ChargerAnimationView;->makeChargerAnimationDrawable(I)V

    .line 385
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 386
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 387
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 389
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 390
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Wireless:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 391
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 6

    .prologue
    .line 271
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 273
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mHandler:Landroid/os/Handler;

    .line 275
    invoke-virtual {p0}, Lcom/android/systemui/power/ChargerAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDisplayDensity:F

    .line 277
    const v0, 0x7f0e0081

    invoke-virtual {p0, v0}, Lcom/android/systemui/power/ChargerAnimationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    .line 289
    const v0, 0x7f0e0080

    invoke-virtual {p0, v0}, Lcom/android/systemui/power/ChargerAnimationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundView:Landroid/widget/LinearLayout;

    .line 290
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundAnim:Landroid/animation/AnimatorSet;

    .line 291
    invoke-direct {p0}, Lcom/android/systemui/power/ChargerAnimationView;->setBackGroundAnimation()V

    .line 293
    const v0, 0x7f0e0082

    invoke-virtual {p0, v0}, Lcom/android/systemui/power/ChargerAnimationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryLevelTextView:Landroid/widget/TextView;

    .line 294
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryTextAnim:Landroid/animation/AnimatorSet;

    .line 295
    invoke-direct {p0}, Lcom/android/systemui/power/ChargerAnimationView;->setBatteryLevelTextAnimation()V

    .line 297
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mContext:Landroid/content/Context;

    const-string v2, "CHARGER_ANIMATION_BOOSTER"

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDVFSHelper:Landroid/os/DVFSHelper;

    .line 298
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDVFSHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDVFSHelper:Landroid/os/DVFSHelper;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v4, v5}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyByPercentOfMaximum(D)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 299
    return-void
.end method

.method protected setChargerAnimationViewVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 306
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationPlaying:Z

    .line 307
    invoke-virtual {p0, p1}, Lcom/android/systemui/power/ChargerAnimationView;->setVisibility(I)V

    .line 308
    return-void

    .line 306
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChargingAnimationListner(Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationListener:Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;

    .line 303
    return-void
.end method

.method protected setWindowDisplay(Landroid/view/Display;)V
    .locals 0
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDisplay:Landroid/view/Display;

    .line 321
    return-void
.end method

.method protected startChargerAnimation(IIZ)V
    .locals 3
    .param p1, "chargerType"    # I
    .param p2, "currentBatteryLevel"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    .line 464
    iput p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentChargerType:I

    .line 466
    iget-boolean v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationPlaying:Z

    if-eqz v1, :cond_0

    .line 467
    const-string v1, "PowerUI.ChargerAnimationView"

    const-string v2, "Animation is playing, return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :goto_0
    return-void

    .line 470
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->acquire()V

    .line 472
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/power/ChargerAnimationView;->setChargerAnimationViewVisibility(I)V

    .line 476
    iput p2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentBatteryLevel:I

    .line 479
    iget v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentChargerType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 480
    if-eqz p3, :cond_1

    .line 481
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 483
    :cond_1
    const/16 v0, 0x53f

    .line 484
    .local v0, "animDuration":I
    invoke-direct {p0}, Lcom/android/systemui/power/ChargerAnimationView;->setWirelessChargerAnimation()V

    .line 485
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Wireless:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 486
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryTextAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 487
    invoke-direct {p0}, Lcom/android/systemui/power/ChargerAnimationView;->changeBatteryLevelText()V

    .line 494
    :goto_1
    const-string v1, "PowerUI.ChargerAnimationView"

    const-string v2, "Animation Started"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentChargerType:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/power/ChargerAnimationView;->checkChargerAnimationEnd(II)V

    goto :goto_0

    .line 489
    .end local v0    # "animDuration":I
    :cond_2
    const/16 v0, 0x53f

    .line 490
    .restart local v0    # "animDuration":I
    invoke-direct {p0}, Lcom/android/systemui/power/ChargerAnimationView;->setCableChargerAnimation()V

    .line 491
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Cable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_1
.end method

.method protected stopChargerAnimation()V
    .locals 2

    .prologue
    .line 543
    iget-boolean v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationPlaying:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentChargerType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 544
    const-string v0, "PowerUI.ChargerAnimationView"

    const-string v1, "Orientation change so stop annimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Cable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 547
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/power/ChargerAnimationView;->setChargerAnimationViewVisibility(I)V

    .line 548
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 550
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimListenerRecursiveCount:I

    .line 552
    :cond_0
    return-void
.end method
