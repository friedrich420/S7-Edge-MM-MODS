.class Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView$1;
.super Ljava/lang/Object;
.source "KeyguardCarrierPasswordView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->access$000(Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 126
    return-void
.end method
