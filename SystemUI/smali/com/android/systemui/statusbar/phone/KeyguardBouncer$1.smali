.class Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardBouncer.java"


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
    .line 55
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStrongAuthStateChanged(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mCallback:Lcom/android/keyguard/ViewMediatorCallback;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->access$100(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/keyguard/ViewMediatorCallback;->getBouncerPromptReason()I

    move-result v1

    # setter for: Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mBouncerPromptReason:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->access$002(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;I)I

    .line 59
    return-void
.end method
