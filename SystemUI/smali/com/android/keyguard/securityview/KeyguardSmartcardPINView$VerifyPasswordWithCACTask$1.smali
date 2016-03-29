.class Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask$1;
.super Ljava/lang/Object;
.source "KeyguardSmartcardPINView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->onPostExecute(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;


# direct methods
.method constructor <init>(Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask$1;->this$1:Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 288
    # getter for: Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VerifyPasswordWithCACTask : run()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask$1;->this$1:Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;

    iget-object v0, v0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->this$0:Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;

    const/4 v1, 0x1

    # invokes: Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->setPasswordEntryEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->access$700(Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;Z)V

    .line 290
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask$1;->this$1:Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;

    iget-object v0, v0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->this$0:Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;

    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask$1;->this$1:Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;

    iget-boolean v1, v1, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->status:Z

    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask$1;->this$1:Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;

    iget-object v2, v2, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->password:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask$1;->this$1:Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;

    iget v3, v3, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    # invokes: Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->verifyPasswordAndUnlock(ZLjava/lang/String;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->access$800(Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;ZLjava/lang/String;I)V

    .line 291
    return-void
.end method
