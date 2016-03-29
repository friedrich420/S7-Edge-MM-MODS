.class Lcom/android/keyguard/securityview/KeyguardUniversalLockView$1;
.super Ljava/lang/Object;
.source "KeyguardUniversalLockView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/securityview/KeyguardUniversalLockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$000(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    .line 173
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$000(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    .line 175
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # invokes: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->resetmTimer()V
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$100(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)V

    .line 176
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # invokes: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->clearDots()V
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$200(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)V

    .line 177
    return-void
.end method
