.class Lcom/android/keyguard/securityview/KeyguardRecoveryView$1;
.super Ljava/lang/Object;
.source "KeyguardRecoveryView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/securityview/KeyguardRecoveryView;->onResume(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/securityview/KeyguardRecoveryView;

.field final synthetic val$reason:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/securityview/KeyguardRecoveryView;I)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardRecoveryView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardRecoveryView;

    iput p2, p0, Lcom/android/keyguard/securityview/KeyguardRecoveryView$1;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 121
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardRecoveryView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardRecoveryView;

    invoke-virtual {v0}, Lcom/android/keyguard/securityview/KeyguardRecoveryView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardRecoveryView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardRecoveryView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardRecoveryView;->access$000(Lcom/android/keyguard/securityview/KeyguardRecoveryView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardRecoveryView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardRecoveryView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardRecoveryView;->access$000(Lcom/android/keyguard/securityview/KeyguardRecoveryView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 123
    iget v0, p0, Lcom/android/keyguard/securityview/KeyguardRecoveryView$1;->val$reason:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardRecoveryView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardRecoveryView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardRecoveryView;->mShowImeAtScreenOn:Z
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardRecoveryView;->access$100(Lcom/android/keyguard/securityview/KeyguardRecoveryView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardRecoveryView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardRecoveryView;

    iget-object v0, v0, Lcom/android/keyguard/securityview/KeyguardRecoveryView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardRecoveryView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardRecoveryView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/keyguard/securityview/KeyguardRecoveryView;->access$000(Lcom/android/keyguard/securityview/KeyguardRecoveryView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 127
    :cond_1
    return-void
.end method
