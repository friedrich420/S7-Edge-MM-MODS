.class Lcom/android/keyguard/securityview/KeyguardAccountView$4;
.super Ljava/lang/Object;
.source "KeyguardAccountView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/securityview/KeyguardAccountView;->postOnCheckPasswordResult(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/keyguard/securityview/KeyguardAccountView;Z)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$4;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    iput-boolean p2, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$4;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 284
    iget-boolean v1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$4;->val$success:Z

    if-eqz v1, :cond_1

    .line 286
    invoke-static {}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isGSIMLog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$4;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$200(Lcom/android/keyguard/securityview/KeyguardAccountView;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "LSAN"

    sget-object v4, Lcom/android/keyguard/util/KeyguardStatusUtils;->REPORT_APP_STATUS_SURVEY:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/android/keyguard/util/KeyguardStatusUtils;->insertGSIMLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Unlock account screen succeeded."

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$4;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v1}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$300(Lcom/android/keyguard/securityview/KeyguardAccountView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    invoke-interface {v1, v0, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(ZI)V

    .line 297
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$4;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v1}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$300(Lcom/android/keyguard/securityview/KeyguardAccountView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 319
    :goto_0
    return-void

    .line 299
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$4;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->isNetworkConnected:Z
    invoke-static {v1}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$400(Lcom/android/keyguard/securityview/KeyguardAccountView;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 300
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$4;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v1}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$500(Lcom/android/keyguard/securityview/KeyguardAccountView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v1

    sget v3, Lcom/android/keyguard/R$string;->kg_login_invalid_input:I

    invoke-interface {v1, v3, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 303
    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$4;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$600(Lcom/android/keyguard/securityview/KeyguardAccountView;)Landroid/widget/EditText;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$4;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v1}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$300(Lcom/android/keyguard/securityview/KeyguardAccountView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(ZI)V

    .line 305
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$4;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-static {v1}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$700(Lcom/android/keyguard/securityview/KeyguardAccountView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v6

    .line 306
    .local v6, "attempts":I
    const/4 v1, 0x5

    if-eq v6, v1, :cond_2

    const/16 v1, 0x9

    if-le v6, v1, :cond_3

    .line 307
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$4;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$800(Lcom/android/keyguard/securityview/KeyguardAccountView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(I)J

    move-result-wide v8

    .line 309
    .local v8, "deadline":J
    const-string v1, "KeyguardAccountView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "postOnCheckPasswordResult() deadline: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$4;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # invokes: Lcom/android/keyguard/securityview/KeyguardAccountView;->handleAttemptLockout(J)V
    invoke-static {v1, v8, v9}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$900(Lcom/android/keyguard/securityview/KeyguardAccountView;J)V

    .line 312
    .end local v8    # "deadline":J
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$4;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # setter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->isNetworkConnected:Z
    invoke-static {v1, v0}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$402(Lcom/android/keyguard/securityview/KeyguardAccountView;Z)Z

    .line 314
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Unlock account screen failed."

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 302
    .end local v6    # "attempts":I
    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$4;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v1}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$500(Lcom/android/keyguard/securityview/KeyguardAccountView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v1

    sget v3, Lcom/android/keyguard/R$string;->no_network_connection:I

    invoke-interface {v1, v3, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_1
.end method
