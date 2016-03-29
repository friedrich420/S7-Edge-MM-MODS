.class Lcom/android/systemui/statusbar/ExpandableNotificationRow$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExpandableNotificationRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateChildrenVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0

    .prologue
    .line 544
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$8;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$8;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildExpandAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->access$1802(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 548
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$8;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    # getter for: Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenExpanded:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->access$100(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$8;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    # getter for: Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;
    invoke-static {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->access$900(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setVisibility(I)V

    .line 551
    :cond_0
    return-void
.end method
