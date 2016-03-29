.class Lcom/android/systemui/BlockSwipeAction$2;
.super Ljava/lang/Object;
.source "BlockSwipeAction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/BlockSwipeAction;->setSwipeClickListeners(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/BlockSwipeAction;


# direct methods
.method constructor <init>(Lcom/android/systemui/BlockSwipeAction;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/systemui/BlockSwipeAction$2;->this$0:Lcom/android/systemui/BlockSwipeAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 76
    move-object v6, p1

    .line 78
    .local v6, "view":Landroid/view/View;
    iget-object v0, p0, Lcom/android/systemui/BlockSwipeAction$2;->this$0:Lcom/android/systemui/BlockSwipeAction;

    iget-object v0, v0, Lcom/android/systemui/BlockSwipeAction;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/systemui/BlockSwipeAction$2;->this$0:Lcom/android/systemui/BlockSwipeAction;

    iget-object v0, v0, Lcom/android/systemui/BlockSwipeAction;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    new-instance v1, Lcom/android/systemui/BlockSwipeAction$2$1;

    invoke-direct {v1, p0, v6}, Lcom/android/systemui/BlockSwipeAction$2$1;-><init>(Lcom/android/systemui/BlockSwipeAction$2;Landroid/view/View;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Ljava/lang/Runnable;ZZZ)V

    .line 87
    :cond_0
    return-void
.end method
