.class Lcom/samsung/android/app/CustomBootMsgDialog$1;
.super Ljava/lang/Object;
.source "CustomBootMsgDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/CustomBootMsgDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/CustomBootMsgDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/CustomBootMsgDialog;)V
    .registers 2

    .prologue
    .line 42
    iput-object p1, p0, this$0:Lcom/samsung/android/app/CustomBootMsgDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/high16 v9, 0x447a0000    # 1000.0f

    const/4 v8, 0x0

    .line 45
    iget-object v6, p0, this$0:Lcom/samsung/android/app/CustomBootMsgDialog;

    # getter for: Lcom/samsung/android/app/CustomBootMsgDialog;->mBigGear:Landroid/view/View;
    invoke-static {v6}, Lcom/samsung/android/app/CustomBootMsgDialog;->access$000(Lcom/samsung/android/app/CustomBootMsgDialog;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_13

    iget-object v6, p0, this$0:Lcom/samsung/android/app/CustomBootMsgDialog;

    # getter for: Lcom/samsung/android/app/CustomBootMsgDialog;->mSmallGear:Landroid/view/View;
    invoke-static {v6}, Lcom/samsung/android/app/CustomBootMsgDialog;->access$100(Lcom/samsung/android/app/CustomBootMsgDialog;)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_14

    .line 68
    :cond_13
    :goto_13
    return-void

    .line 47
    :cond_14
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 48
    .local v2, "currentTime":J
    iget-object v6, p0, this$0:Lcom/samsung/android/app/CustomBootMsgDialog;

    # getter for: Lcom/samsung/android/app/CustomBootMsgDialog;->mPreviousTime:J
    invoke-static {v6}, Lcom/samsung/android/app/CustomBootMsgDialog;->access$200(Lcom/samsung/android/app/CustomBootMsgDialog;)J

    move-result-wide v6

    sub-long v4, v2, v6

    .line 50
    .local v4, "timeGap":J
    iget-object v6, p0, this$0:Lcom/samsung/android/app/CustomBootMsgDialog;

    # setter for: Lcom/samsung/android/app/CustomBootMsgDialog;->mPreviousTime:J
    invoke-static {v6, v2, v3}, Lcom/samsung/android/app/CustomBootMsgDialog;->access$202(Lcom/samsung/android/app/CustomBootMsgDialog;J)J

    .line 52
    cmp-long v6, v4, v2

    if-eqz v6, :cond_55

    .line 53
    iget-object v6, p0, this$0:Lcom/samsung/android/app/CustomBootMsgDialog;

    # getter for: Lcom/samsung/android/app/CustomBootMsgDialog;->mBigGear:Landroid/view/View;
    invoke-static {v6}, Lcom/samsung/android/app/CustomBootMsgDialog;->access$000(Lcom/samsung/android/app/CustomBootMsgDialog;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRotation()F

    move-result v0

    .line 54
    .local v0, "bigGearRotation":F
    iget-object v6, p0, this$0:Lcom/samsung/android/app/CustomBootMsgDialog;

    # getter for: Lcom/samsung/android/app/CustomBootMsgDialog;->mSmallGear:Landroid/view/View;
    invoke-static {v6}, Lcom/samsung/android/app/CustomBootMsgDialog;->access$100(Lcom/samsung/android/app/CustomBootMsgDialog;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRotation()F

    move-result v1

    .line 56
    .local v1, "smallGearRotation":F
    const/high16 v6, 0x44610000    # 900.0f

    cmpl-float v6, v0, v6

    if-ltz v6, :cond_67

    .line 57
    iget-object v6, p0, this$0:Lcom/samsung/android/app/CustomBootMsgDialog;

    # getter for: Lcom/samsung/android/app/CustomBootMsgDialog;->mBigGear:Landroid/view/View;
    invoke-static {v6}, Lcom/samsung/android/app/CustomBootMsgDialog;->access$000(Lcom/samsung/android/app/CustomBootMsgDialog;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setRotation(F)V

    .line 58
    iget-object v6, p0, this$0:Lcom/samsung/android/app/CustomBootMsgDialog;

    # getter for: Lcom/samsung/android/app/CustomBootMsgDialog;->mSmallGear:Landroid/view/View;
    invoke-static {v6}, Lcom/samsung/android/app/CustomBootMsgDialog;->access$100(Lcom/samsung/android/app/CustomBootMsgDialog;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setRotation(F)V

    .line 65
    .end local v0    # "bigGearRotation":F
    .end local v1    # "smallGearRotation":F
    :cond_55
    :goto_55
    iget-object v6, p0, this$0:Lcom/samsung/android/app/CustomBootMsgDialog;

    # getter for: Lcom/samsung/android/app/CustomBootMsgDialog;->mAnimationRunning:Z
    invoke-static {v6}, Lcom/samsung/android/app/CustomBootMsgDialog;->access$300(Lcom/samsung/android/app/CustomBootMsgDialog;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 66
    iget-object v6, p0, this$0:Lcom/samsung/android/app/CustomBootMsgDialog;

    # getter for: Lcom/samsung/android/app/CustomBootMsgDialog;->mBigGear:Landroid/view/View;
    invoke-static {v6}, Lcom/samsung/android/app/CustomBootMsgDialog;->access$000(Lcom/samsung/android/app/CustomBootMsgDialog;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_13

    .line 60
    .restart local v0    # "bigGearRotation":F
    .restart local v1    # "smallGearRotation":F
    :cond_67
    iget-object v6, p0, this$0:Lcom/samsung/android/app/CustomBootMsgDialog;

    # getter for: Lcom/samsung/android/app/CustomBootMsgDialog;->mBigGear:Landroid/view/View;
    invoke-static {v6}, Lcom/samsung/android/app/CustomBootMsgDialog;->access$000(Lcom/samsung/android/app/CustomBootMsgDialog;)Landroid/view/View;

    move-result-object v6

    long-to-float v7, v4

    const/high16 v8, 0x41f00000    # 30.0f

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    add-float/2addr v7, v0

    invoke-virtual {v6, v7}, Landroid/view/View;->setRotation(F)V

    .line 61
    iget-object v6, p0, this$0:Lcom/samsung/android/app/CustomBootMsgDialog;

    # getter for: Lcom/samsung/android/app/CustomBootMsgDialog;->mSmallGear:Landroid/view/View;
    invoke-static {v6}, Lcom/samsung/android/app/CustomBootMsgDialog;->access$100(Lcom/samsung/android/app/CustomBootMsgDialog;)Landroid/view/View;

    move-result-object v6

    long-to-float v7, v4

    const/high16 v8, -0x3dcc0000    # -45.0f

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    add-float/2addr v7, v1

    invoke-virtual {v6, v7}, Landroid/view/View;->setRotation(F)V

    goto :goto_55
.end method
