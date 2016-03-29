.class Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;
.super Ljava/lang/Object;
.source "KeyguardBouncer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBouncer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->access$200(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Lcom/android/keyguard/KeyguardHostView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->onResume()V

    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mBouncerPromptReason:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->access$000(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->showPromptReason(I)V

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Lcom/android/keyguard/KeyguardHostView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->startAppearAnimation()V

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    # setter for: Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z
    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->access$402(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;Z)Z

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Lcom/android/keyguard/KeyguardHostView;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardHostView;->sendAccessibilityEvent(I)V

    .line 109
    return-void
.end method
