.class Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView$2;
.super Ljava/lang/Object;
.source "KeyguardCarrierPasswordView.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 129
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->access$000(Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->access$000(Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 140
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 134
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 131
    return-void
.end method
