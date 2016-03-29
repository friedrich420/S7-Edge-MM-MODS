.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    .prologue
    .line 2210
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 2214
    sub-int v3, p9, p7

    .line 2215
    .local v3, "oldHeight":I
    sub-int v0, p5, p3

    .line 2216
    .local v0, "height":I
    if-eq v0, v3, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainerAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 2217
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainerAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 2219
    .local v4, "values":[Landroid/animation/PropertyValuesHolder;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->getMeasuredHeight()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v5, v0

    sub-int/2addr v5, p3

    int-to-float v1, v5

    .line 2221
    .local v1, "newEndValue":F
    neg-int v5, v0

    sub-int/2addr v5, p3

    int-to-float v2, v5

    .line 2222
    .local v2, "newStartValue":F
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v2, v6, v7

    const/4 v7, 0x1

    aput v1, v6, v7

    invoke-virtual {v5, v6}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 2223
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainerAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainerAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 2225
    .end local v1    # "newEndValue":F
    .end local v2    # "newStartValue":F
    .end local v4    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_0
    return-void
.end method
