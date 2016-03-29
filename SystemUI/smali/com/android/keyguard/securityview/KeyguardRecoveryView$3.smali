.class Lcom/android/keyguard/securityview/KeyguardRecoveryView$3;
.super Ljava/lang/Object;
.source "KeyguardRecoveryView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/securityview/KeyguardRecoveryView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/securityview/KeyguardRecoveryView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/securityview/KeyguardRecoveryView;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardRecoveryView$3;->this$0:Lcom/android/keyguard/securityview/KeyguardRecoveryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardRecoveryView$3;->this$0:Lcom/android/keyguard/securityview/KeyguardRecoveryView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardRecoveryView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardRecoveryView;->access$300(Lcom/android/keyguard/securityview/KeyguardRecoveryView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 191
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardRecoveryView$3;->this$0:Lcom/android/keyguard/securityview/KeyguardRecoveryView;

    iget-object v0, v0, Lcom/android/keyguard/securityview/KeyguardRecoveryView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker(Z)V

    .line 192
    return-void
.end method
