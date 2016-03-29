.class Lcom/android/keyguard/securityview/KeyguardAccountView$3;
.super Ljava/lang/Object;
.source "KeyguardAccountView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/securityview/KeyguardAccountView;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/securityview/KeyguardAccountView;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$3;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$3;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mLogin:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$000(Lcom/android/keyguard/securityview/KeyguardAccountView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 243
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$3;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    iget-object v0, v0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$3;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mShowImeAtScreenOn:Z
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$100(Lcom/android/keyguard/securityview/KeyguardAccountView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$3;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    iget-object v0, v0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$3;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mLogin:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$000(Lcom/android/keyguard/securityview/KeyguardAccountView;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 246
    :cond_0
    return-void
.end method
