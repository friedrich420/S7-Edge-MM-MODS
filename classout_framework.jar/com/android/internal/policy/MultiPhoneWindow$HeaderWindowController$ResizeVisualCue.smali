.class Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;
.super Landroid/widget/FrameLayout;
.source "MultiPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResizeVisualCue"
.end annotation


# static fields
.field private static final CUE_COUNT:I = 0x4


# instance fields
.field private mCueViews:[Landroid/widget/ImageView;

.field mEndAnimation:Landroid/view/animation/Animation;

.field mIsAttached:Z

.field mStartAnimation:Landroid/view/animation/Animation;

.field mThicknessBorer:I

.field mWindowManager:Landroid/view/WindowManager;

.field final synthetic this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;Landroid/content/Context;)V
    .registers 9
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x4

    const/4 v4, -0x2

    .line 3894
    iput-object p1, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    .line 3895
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3888
    new-array v2, v5, [Landroid/widget/ImageView;

    iput-object v2, p0, mCueViews:[Landroid/widget/ImageView;

    .line 3896
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, mWindowManager:Landroid/view/WindowManager;

    .line 3897
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10502e8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, mThicknessBorer:I

    .line 3898
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_28
    if-ge v0, v5, :cond_47

    .line 3899
    iget-object v2, p0, mCueViews:[Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v0

    .line 3900
    iget-object v2, p0, mCueViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    const v3, 0x10805c4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3901
    iget-object v2, p0, mCueViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3898
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 3905
    :cond_47
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x35

    invoke-direct {v1, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 3906
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, mCueViews:[Landroid/widget/ImageView;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3907
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x55

    invoke-direct {v1, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 3908
    .restart local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, mCueViews:[Landroid/widget/ImageView;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3909
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x53

    invoke-direct {v1, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 3910
    .restart local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, mCueViews:[Landroid/widget/ImageView;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3911
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x33

    invoke-direct {v1, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 3912
    .restart local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, mCueViews:[Landroid/widget/ImageView;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3913
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;Landroid/content/Context;Lcom/android/internal/policy/MultiPhoneWindow$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lcom/android/internal/policy/MultiPhoneWindow$1;

    .prologue
    .line 3879
    invoke-direct {p0, p1, p2}, <init>(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;Landroid/content/Context;)V

    return-void
.end method

.method private generateLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 3916
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 3917
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 3918
    iget-object v1, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/android/internal/policy/MultiPhoneWindow;->access$6900(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, mCueViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, mThicknessBorer:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 3919
    iget-object v1, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/android/internal/policy/MultiPhoneWindow;->access$6900(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, mCueViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, mThicknessBorer:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 3920
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, mCueViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, mThicknessBorer:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 3921
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, mCueViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, mThicknessBorer:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 3922
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 3923
    const/16 v1, 0x3ef

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3924
    const-string v1, "PenWindow ResizeVisualCue"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 3925
    iget-object v1, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 3926
    const/16 v1, 0x218

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3929
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 3930
    return-object v0
.end method


# virtual methods
.method addWindow()V
    .registers 5

    .prologue
    .line 3934
    iget-object v2, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/internal/policy/MultiPhoneWindow;->access$1500(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_33

    iget-boolean v2, p0, mIsAttached:Z

    if-nez v2, :cond_33

    .line 3935
    sget-boolean v2, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_RESIZE_VISUAL_CUE:Z

    if-eqz v2, :cond_19

    const-string v2, "MultiPhoneWindow"

    const-string v3, "addWindow ResizeVisualCue"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3936
    :cond_19
    invoke-direct {p0}, generateLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 3937
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3938
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_23
    const/4 v2, 0x4

    if-ge v0, v2, :cond_30

    .line 3939
    iget-object v2, p0, mCueViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, addView(Landroid/view/View;)V

    .line 3938
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 3941
    :cond_30
    const/4 v2, 0x1

    iput-boolean v2, p0, mIsAttached:Z

    .line 3943
    .end local v0    # "i":I
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_33
    return-void
.end method

.method cancelAnimation()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 4016
    iget-object v0, p0, mStartAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_17

    .line 4017
    iget-object v0, p0, mStartAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 4018
    iput-object v2, p0, mStartAnimation:Landroid/view/animation/Animation;

    .line 4019
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_RESIZE_VISUAL_CUE:Z

    if-eqz v0, :cond_17

    const-string v0, "MultiPhoneWindow"

    const-string v1, "Cancel mStartAnimation of ResizeVisualCue"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4021
    :cond_17
    iget-object v0, p0, mEndAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_2d

    .line 4022
    iget-object v0, p0, mEndAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 4023
    iput-object v2, p0, mEndAnimation:Landroid/view/animation/Animation;

    .line 4024
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_RESIZE_VISUAL_CUE:Z

    if-eqz v0, :cond_2d

    const-string v0, "MultiPhoneWindow"

    const-string v1, "Cancel mEndAnimation of ResizeVisualCue"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4026
    :cond_2d
    return-void
.end method

.method hide()V
    .registers 4

    .prologue
    const/4 v2, 0x4

    .line 3970
    iget-boolean v1, p0, mIsAttached:Z

    if-eqz v1, :cond_12

    .line 3971
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    if-ge v0, v2, :cond_12

    .line 3972
    iget-object v1, p0, mCueViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3971
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 3975
    .end local v0    # "i":I
    :cond_12
    return-void
.end method

.method playAnimation(Z)V
    .registers 6
    .param p1, "startAnimation"    # Z

    .prologue
    const/4 v3, 0x4

    .line 4029
    if-eqz p1, :cond_25

    .line 4030
    iget-object v1, p0, mStartAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_24

    .line 4031
    invoke-virtual {p0}, show()V

    .line 4032
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    if-ge v0, v3, :cond_19

    .line 4033
    iget-object v1, p0, mCueViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    iget-object v2, p0, mStartAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4032
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 4035
    :cond_19
    sget-boolean v1, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_RESIZE_VISUAL_CUE:Z

    if-eqz v1, :cond_24

    .line 4036
    const-string v1, "MultiPhoneWindow"

    const-string v2, "Play mStartAnimation of ResizeVisualCue"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4047
    .end local v0    # "i":I
    :cond_24
    :goto_24
    return-void

    .line 4039
    :cond_25
    iget-object v1, p0, mEndAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_24

    .line 4040
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2a
    if-ge v0, v3, :cond_38

    .line 4041
    iget-object v1, p0, mCueViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    iget-object v2, p0, mEndAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4040
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 4043
    :cond_38
    sget-boolean v1, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_RESIZE_VISUAL_CUE:Z

    if-eqz v1, :cond_24

    .line 4044
    const-string v1, "MultiPhoneWindow"

    const-string v2, "Play mEndAnimation of ResizeVisualCue"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method

.method removeWindow()V
    .registers 4

    .prologue
    .line 3946
    iget-boolean v1, p0, mIsAttached:Z

    if-eqz v1, :cond_28

    .line 3947
    iget-object v1, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue$1;-><init>(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3953
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    const/4 v1, 0x4

    if-ge v0, v1, :cond_20

    .line 3954
    iget-object v1, p0, mCueViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, removeView(Landroid/view/View;)V

    .line 3953
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 3956
    :cond_20
    iget-object v1, p0, mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 3957
    const/4 v1, 0x0

    iput-boolean v1, p0, mIsAttached:Z

    .line 3959
    .end local v0    # "i":I
    :cond_28
    return-void
.end method

.method setAnimation()V
    .registers 7

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 3978
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, mStartAnimation:Landroid/view/animation/Animation;

    .line 3979
    iget-object v0, p0, mStartAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3980
    iget-object v0, p0, mStartAnimation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3981
    iget-object v0, p0, mStartAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 3982
    iget-object v0, p0, mStartAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue$2;-><init>(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3995
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, mEndAnimation:Landroid/view/animation/Animation;

    .line 3996
    iget-object v0, p0, mEndAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3997
    iget-object v0, p0, mEndAnimation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3998
    iget-object v0, p0, mEndAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue$3;-><init>(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4012
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_RESIZE_VISUAL_CUE:Z

    if-eqz v0, :cond_59

    const-string v0, "MultiPhoneWindow"

    const-string/jumbo v1, "setAnimation for ResizeVisualCue"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4013
    :cond_59
    return-void
.end method

.method show()V
    .registers 4

    .prologue
    .line 3962
    iget-boolean v1, p0, mIsAttached:Z

    if-eqz v1, :cond_13

    .line 3963
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    const/4 v1, 0x4

    if-ge v0, v1, :cond_13

    .line 3964
    iget-object v1, p0, mCueViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3963
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3967
    .end local v0    # "i":I
    :cond_13
    return-void
.end method
