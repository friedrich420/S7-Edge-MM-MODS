.class Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$USADaTouchHandler;
.super Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;
.source "KeyguardCircleAffordanceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "USADaTouchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 1

    .prologue
    .line 1127
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$USADaTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$1;

    .prologue
    .line 1127
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$USADaTouchHandler;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 1129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1131
    .local v0, "action":I
    const/4 v1, 0x0

    .line 1133
    .local v1, "isUp":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1134
    .local v3, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 1135
    .local v2, "x":F
    packed-switch v0, :pswitch_data_0

    .line 1192
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    :goto_0
    return v4

    .line 1137
    :pswitch_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$USADaTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3200(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$USADaTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3200(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    .line 1138
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$USADaTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->bringToFront()V

    .line 1140
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$USADaTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # setter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTouchCancelled:Z
    invoke-static {v4, v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3302(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    .line 1142
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$USADaTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # setter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mInitialTouchX:F
    invoke-static {v4, v2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3402(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    .line 1143
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$USADaTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # setter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mInitialTouchY:F
    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3502(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    .line 1145
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$USADaTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v4, v4, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$USADaTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShortcutForCamera:Z
    invoke-static {v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3600(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v6

    invoke-interface {v4, v6}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onSwipingStarted(Z)V

    .line 1147
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$USADaTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # invokes: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->initVelocityTracker()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    .line 1148
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$USADaTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # invokes: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->trackMovement(Landroid/view/MotionEvent;)V
    invoke-static {v4, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/view/MotionEvent;)V

    move v4, v5

    .line 1150
    goto :goto_0

    .line 1156
    :pswitch_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$USADaTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTouchCancelled:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3300(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    .line 1157
    goto :goto_0

    .line 1159
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$USADaTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # invokes: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->endMotion(FF)V
    invoke-static {v4, v2, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3900(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FF)V

    .line 1163
    :pswitch_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$USADaTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # setter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTouchCancelled:Z
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3302(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    .line 1165
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$USADaTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # invokes: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->trackMovement(Landroid/view/MotionEvent;)V
    invoke-static {v4, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/view/MotionEvent;)V

    .line 1167
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$USADaTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mReveal:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4000(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1168
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$USADaTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFling:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$900(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1169
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$USADaTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # invokes: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewShrinker(Z)V
    invoke-static {v4, v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4100(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V

    .line 1170
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$USADaTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # invokes: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewAlphaShrinker()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4200(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    .line 1171
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$USADaTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinker:Landroid/animation/ValueAnimator;
    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 1172
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$USADaTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinkerAlpha:Landroid/animation/ValueAnimator;
    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1100(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    :goto_1
    move v4, v5

    .line 1189
    goto/16 :goto_0

    .line 1175
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$USADaTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # invokes: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->isNormalAppInSecure()Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4300(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1176
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$USADaTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZ)V

    .line 1178
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$USADaTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # invokes: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewShrinker(Z)V
    invoke-static {v4, v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4100(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V

    .line 1179
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$USADaTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinker:Landroid/animation/ValueAnimator;
    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 1180
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$USADaTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # invokes: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewAlphaShrinker()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4200(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    .line 1181
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$USADaTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinkerAlpha:Landroid/animation/ValueAnimator;
    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1100(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 1183
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$USADaTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShaderPreview:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1200(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1184
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$USADaTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # invokes: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->initAnimatedValues()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1300(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    .line 1185
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$USADaTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->invalidate()V

    goto :goto_1

    .line 1135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
