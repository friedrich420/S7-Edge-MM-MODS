.class Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView$8;
.super Ljava/lang/Object;
.source "KeyguardCarrierLockPlusView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->updateButtonVisibility(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView$8;->this$0:Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView$8;->this$0:Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;

    # invokes: Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->resumeCall()V
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->access$1000(Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;)V

    .line 381
    return-void
.end method
