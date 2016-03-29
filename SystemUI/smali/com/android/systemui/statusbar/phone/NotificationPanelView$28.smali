.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$28;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateExpandQsEditPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field final synthetic val$startStackTranslation:F


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;F)V
    .locals 0

    .prologue
    .line 4629
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$28;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$28;->val$startStackTranslation:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 4632
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 4633
    .local v0, "value":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$28;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    if-eqz v1, :cond_0

    .line 4634
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$28;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QSEditPanel;->animateQsEditPanelOpen(F)V

    .line 4635
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$28;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$28;->val$startStackTranslation:F

    add-float/2addr v2, v0

    # invokes: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateExpandQsEditPanelStackScroller(F)V
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3800(Lcom/android/systemui/statusbar/phone/NotificationPanelView;F)V

    .line 4637
    :cond_0
    return-void
.end method
