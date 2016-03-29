.class Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationStackScrollLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clampScrollPosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0

    .prologue
    .line 575
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$5;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 578
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$5;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    # getter for: Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$700(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsPanelDownAnimating(Z)V

    .line 579
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$5;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    # getter for: Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$800(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)I

    move-result v0

    if-lez v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$5;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x1

    # setter for: Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopOverScrolled:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$502(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Z)Z

    .line 584
    :goto_0
    return-void

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$5;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    # setter for: Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopOverScrolled:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$502(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Z)Z

    goto :goto_0
.end method
