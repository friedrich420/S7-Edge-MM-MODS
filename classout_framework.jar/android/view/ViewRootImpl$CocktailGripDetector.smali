.class final Landroid/view/ViewRootImpl$CocktailGripDetector;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CocktailGripDetector"
.end annotation


# instance fields
.field private final DEADZONE_THRESHOLD:I

.field private final TAG:Ljava/lang/String;

.field private mDeadSize:I

.field private mDeadZone:Landroid/graphics/Rect;

.field private mbTouchBlock:Z

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 9048
    iput-object p1, p0, this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9041
    const-string v1, "CocktailGripDetector"

    iput-object v1, p0, TAG:Ljava/lang/String;

    .line 9043
    const/4 v1, 0x3

    iput v1, p0, DEADZONE_THRESHOLD:I

    .line 9044
    iput-boolean v2, p0, mbTouchBlock:Z

    .line 9045
    iput v2, p0, mDeadSize:I

    .line 9046
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, mDeadZone:Landroid/graphics/Rect;

    .line 9049
    iget-object v1, p1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 9050
    .local v0, "dm":Landroid/util/DisplayMetrics;
    const/high16 v1, 0x40400000    # 3.0f

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, mDeadSize:I

    .line 9051
    return-void
.end method


# virtual methods
.method public checkBlock()Z
    .registers 2

    .prologue
    .line 9104
    iget-boolean v0, p0, mbTouchBlock:Z

    return v0
.end method

.method public checkGrip(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 9054
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_c6

    :cond_b
    move v0, v1

    .line 9100
    :goto_c
    return v0

    .line 9056
    :pswitch_d
    iget-object v2, p0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x62

    if-ne v2, v3, :cond_b

    .line 9057
    iput-boolean v1, p0, mbTouchBlock:Z

    .line 9058
    iget-object v2, p0, mDeadZone:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 9060
    iget-object v2, p0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_47

    .line 9061
    iget-object v2, p0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v0, :cond_78

    .line 9062
    iget-object v2, p0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-nez v2, :cond_63

    .line 9063
    iget-object v2, p0, mDeadZone:Landroid/graphics/Rect;

    iget-object v3, p0, this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 9064
    iget-object v2, p0, mDeadZone:Landroid/graphics/Rect;

    iget v3, p0, mDeadSize:I

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 9077
    :cond_47
    :goto_47
    iget-object v2, p0, mDeadZone:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 9078
    const-string v1, "CocktailGripDetector"

    const-string v2, "Touch Block : Dead Zone (DOWN) !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 9079
    iput-boolean v0, p0, mbTouchBlock:Z

    goto :goto_c

    .line 9066
    :cond_63
    iget-object v2, p0, mDeadZone:Landroid/graphics/Rect;

    iget-object v3, p0, this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 9067
    iget-object v2, p0, mDeadZone:Landroid/graphics/Rect;

    iget-object v3, p0, mDeadZone:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p0, mDeadSize:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    goto :goto_47

    .line 9070
    :cond_78
    iget-object v2, p0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-eqz v2, :cond_47

    .line 9071
    iget-object v2, p0, mDeadZone:Landroid/graphics/Rect;

    iget-object v3, p0, this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 9072
    iget-object v2, p0, mDeadZone:Landroid/graphics/Rect;

    iget-object v3, p0, mDeadZone:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, mDeadSize:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    goto :goto_47

    .line 9085
    :pswitch_95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    if-ne v2, v0, :cond_b7

    .line 9086
    const/16 v2, 0x31

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_b7

    .line 9087
    const-string v1, "CocktailGripDetector"

    const-string v2, "Touch Block : Grip Flag !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 9092
    :cond_b7
    iget-boolean v2, p0, mbTouchBlock:Z

    if-eqz v2, :cond_b

    .line 9093
    iput-boolean v1, p0, mbTouchBlock:Z

    .line 9094
    const-string v1, "CocktailGripDetector"

    const-string v2, "Touch Block : Dead Zone !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 9054
    :pswitch_data_c6
    .packed-switch 0x0
        :pswitch_d
        :pswitch_95
    .end packed-switch
.end method
