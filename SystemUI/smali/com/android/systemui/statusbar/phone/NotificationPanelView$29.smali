.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$29;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationPanelView.java"


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

.field final synthetic val$scrollView:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/widget/ScrollView;)V
    .locals 0

    .prologue
    .line 4639
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$29;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$29;->val$scrollView:Landroid/widget/ScrollView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 4655
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$29;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->disableTouches(Z)V

    .line 4656
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$29;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->setClickable(Z)V

    .line 4658
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$29;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isQsEditPanelOpened()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4659
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$29;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/stack/AmbientState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4660
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$29;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/stack/AmbientState;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->setQsEditOpen(Z)V

    .line 4662
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$29;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsQConnectSupported:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$29;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSBottomArea:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4663
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$29;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSBottomArea:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4665
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$29;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$1300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/qs/QSContainer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4666
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$29;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$1300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/qs/QSContainer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/QSContainer;->setVisibility(I)V

    .line 4668
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$29;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4669
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$29;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->setVisibility(I)V

    .line 4670
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$29;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSEditDoneButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 4672
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$29;->val$scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 4674
    :cond_4
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/16 v1, 0x8

    .line 4643
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$29;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabelAndClearButtonLayout:Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4644
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$29;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabelAndClearButtonLayout:Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->setClearButtonVisibility(I)V

    .line 4646
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$29;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabelAndClearButtonLayout:Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->getNotiSettingButtonVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 4647
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$29;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabelAndClearButtonLayout:Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->setNotiSettingButtonVisibility(I)V

    .line 4650
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$29;->val$scrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 4651
    return-void
.end method
