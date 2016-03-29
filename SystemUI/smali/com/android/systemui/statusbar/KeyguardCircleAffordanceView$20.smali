.class Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$20;
.super Ljava/lang/Object;
.source "KeyguardCircleAffordanceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->revealOrVeil(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 0

    .prologue
    .line 780
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$20;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 783
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$20;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$20;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRight:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$2700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v3, v3, v2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onAnimationToSideStarted(ZFFZ)V

    .line 784
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$20;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onAnimationToSideEnded()V

    .line 785
    return-void
.end method
