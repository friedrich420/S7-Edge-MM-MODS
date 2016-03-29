.class Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;
.super Ljava/lang/Object;
.source "KeyguardCircleAffordanceView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$TouchHandlePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GeneralTouchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 0

    .prologue
    .line 1238
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$1;

    .prologue
    .line 1238
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1241
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    .line 1242
    const-string v7, "KeyguardCircleAffordanceView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onTouchEvent: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    const-string v7, "KeyguardCircleAffordanceView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onTouchEvent: mHintAnimation="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHintAnimation:Z
    invoke-static {v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3000(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",mRight="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRight:Z
    invoke-static {v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$2700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    :cond_0
    const/4 v2, 0x0

    .line 1258
    .local v2, "isUp":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1260
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 1261
    .local v5, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 1262
    .local v3, "x":F
    packed-switch v0, :pswitch_data_0

    .line 1407
    :cond_1
    :goto_0
    :pswitch_0
    const/4 v7, 0x1

    return v7

    .line 1264
    :pswitch_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;
    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3200(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;
    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3200(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_3

    .line 1265
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->bringToFront()V

    .line 1267
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x0

    # setter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTouchCancelled:Z
    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3302(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    .line 1268
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x1

    # setter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mJustClicked:Z
    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4402(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    .line 1270
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # setter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mInitialTouchX:F
    invoke-static {v7, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3402(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    .line 1271
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # setter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mInitialTouchY:F
    invoke-static {v7, v5}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3502(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    .line 1273
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # invokes: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAllAnimators()V
    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4500(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    .line 1275
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v7, v7, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShortcutForCamera:Z
    invoke-static {v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3600(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v8

    invoke-interface {v7, v8}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onSwipingStarted(Z)V

    .line 1277
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x1

    # invokes: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setDCircleAnimator(Z)V
    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4600(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V

    .line 1278
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x1

    # invokes: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setDCircleAlphaAnimator(Z)V
    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V

    .line 1279
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x1

    # invokes: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setCArrowAnimator(Z)V
    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V

    .line 1280
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # invokes: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setCArrowBlinker()V
    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4900(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    .line 1282
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$300(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 1283
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$400(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 1284
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScaleAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$600(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 1285
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowAlphaAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 1286
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mBlinkAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1600(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 1288
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # invokes: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->initVelocityTracker()V
    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    .line 1289
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # invokes: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->trackMovement(Landroid/view/MotionEvent;)V
    invoke-static {v7, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1293
    :pswitch_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTouchCancelled:Z
    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3300(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1296
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v7, v7, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->userActivity()V

    .line 1297
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # invokes: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->trackMovement(Landroid/view/MotionEvent;)V
    invoke-static {v7, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/view/MotionEvent;)V

    .line 1299
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mInitialTouchX:F
    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3400(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)F

    move-result v7

    sub-float v4, v3, v7

    .line 1300
    .local v4, "xDist":F
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mInitialTouchY:F
    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3500(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)F

    move-result v7

    sub-float v6, v5, v7

    .line 1301
    .local v6, "yDist":F
    float-to-double v8, v4

    float-to-double v10, v6

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v1, v8

    .line 1303
    .local v1, "distance":F
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # setter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mClipDistance:F
    invoke-static {v7, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5002(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    .line 1304
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F
    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5100(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)F

    move-result v7

    cmpl-float v7, v1, v7

    if-lez v7, :cond_5

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # invokes: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->isNormalAppInSecure()Z
    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4300(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1305
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F
    invoke-static {v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5100(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)F

    move-result v8

    # setter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mClipDistance:F
    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5002(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    .line 1306
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F
    invoke-static {v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5100(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)F

    move-result v8

    # invokes: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewClipRect(F)V
    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$2400(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)V

    .line 1308
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->invalidate()V

    .line 1319
    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isLatestUSAShortCutVI()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1320
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # invokes: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->showHideCArrow(F)V
    invoke-static {v7, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5300(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)V

    .line 1321
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # setter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mOldDistance:F
    invoke-static {v7, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5402(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    goto/16 :goto_0

    .line 1309
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5200(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v7, v1, v7

    if-lez v7, :cond_4

    .line 1310
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # invokes: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewClipRect(F)V
    invoke-static {v7, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$2400(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)V

    .line 1312
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # invokes: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewColor(F)V
    invoke-static {v7, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$2600(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)V

    .line 1313
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x0

    # setter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mJustClicked:Z
    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4402(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    .line 1315
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v7, v7, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->cancelDAAffordance()V

    .line 1316
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->invalidate()V

    goto :goto_1

    .line 1326
    .end local v1    # "distance":F
    .end local v4    # "xDist":F
    .end local v6    # "yDist":F
    :pswitch_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTouchCancelled:Z
    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3300(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1329
    const/4 v2, 0x1

    .line 1330
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # invokes: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->endMotion(FF)V
    invoke-static {v7, v3, v5}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3900(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FF)V

    .line 1331
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mJustClicked:Z
    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4400(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1333
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    int-to-long v10, v7

    cmp-long v7, v8, v10

    if-lez v7, :cond_8

    .line 1334
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x0

    # setter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mJustClicked:Z
    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4402(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    .line 1344
    :cond_6
    :goto_2
    :pswitch_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x1

    # setter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTouchCancelled:Z
    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3302(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    .line 1346
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mBlinkAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1600(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v8

    const-string v9, "mBlinkAnimator"

    # invokes: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V
    invoke-static {v7, v8, v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5500(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/Animator;Ljava/lang/String;)V

    .line 1347
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # invokes: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->trackMovement(Landroid/view/MotionEvent;)V
    invoke-static {v7, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/view/MotionEvent;)V

    .line 1349
    const-string v7, "KeyguardCircleAffordanceView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onTouchEvent: mJustClicked="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mJustClicked:Z
    invoke-static {v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4400(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",mReveal="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mReveal:Z
    invoke-static {v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4000(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",isUp="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",mFling="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFling:Z
    invoke-static {v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$900(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mJustClicked:Z
    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4400(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-nez v2, :cond_c

    .line 1352
    :cond_7
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/16 v8, 0x59

    # setter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlpha:I
    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$2102(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;I)I

    .line 1353
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mReveal:Z
    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4000(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 1354
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFling:Z
    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$900(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1355
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # invokes: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAllAnimators()V
    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4500(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    .line 1357
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x0

    # invokes: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewShrinker(Z)V
    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4100(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V

    .line 1358
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x0

    # invokes: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setDCircleAnimator(Z)V
    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4600(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V

    .line 1359
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x0

    # invokes: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setDCircleAlphaAnimator(Z)V
    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V

    .line 1360
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # invokes: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewAlphaShrinker()V
    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4200(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    .line 1362
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinker:Landroid/animation/ValueAnimator;
    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 1363
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$300(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 1364
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$400(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 1365
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinkerAlpha:Landroid/animation/ValueAnimator;
    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1100(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 1367
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowPaint:Landroid/graphics/Paint;
    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Paint;->getAlpha()I

    move-result v7

    if-eqz v7, :cond_9

    .line 1368
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x0

    # invokes: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setCArrowAnimator(Z)V
    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V

    .line 1369
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScaleAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$600(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0

    .line 1336
    :cond_8
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipRect:Landroid/graphics/RectF;
    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1000(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/graphics/RectF;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1338
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v7, v7, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRight:Z
    invoke-static {v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$2700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v8

    invoke-interface {v7, v8}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onIconClicked(Z)Z

    goto/16 :goto_2

    .line 1371
    :cond_9
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x0

    # setter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScale:F
    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$2202(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    goto/16 :goto_0

    .line 1375
    :cond_a
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # invokes: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->isNormalAppInSecure()Z
    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4300(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1376
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # invokes: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAllAnimators()V
    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4500(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    .line 1378
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x0

    # setter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleRadius:F
    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$2002(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    .line 1379
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x0

    # setter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScale:F
    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$2202(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    .line 1380
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowPaint:Landroid/graphics/Paint;
    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/graphics/Paint;

    move-result-object v7

    const/16 v8, 0xff

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1381
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZ)V

    .line 1383
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x0

    # invokes: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewShrinker(Z)V
    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4100(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V

    .line 1384
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # invokes: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewAlphaShrinker()V
    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4200(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    .line 1386
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinker:Landroid/animation/ValueAnimator;
    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 1387
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinkerAlpha:Landroid/animation/ValueAnimator;
    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1100(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0

    .line 1389
    :cond_b
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShaderPreview:Z
    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1200(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1390
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # invokes: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->initAnimatedValues()V
    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1300(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    .line 1391
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->invalidate()V

    goto/16 :goto_0

    .line 1396
    :cond_c
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->releaseShader()V

    goto/16 :goto_0

    .line 1401
    :pswitch_5
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x0

    # setter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mJustClicked:Z
    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4402(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    .line 1402
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # invokes: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->dispatchCancelEvent(Landroid/view/MotionEvent;)V
    invoke-static {v7, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5600(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/view/MotionEvent;)V

    .line 1403
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v7, v7, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onSwipingAborted()V

    goto/16 :goto_0

    .line 1262
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
