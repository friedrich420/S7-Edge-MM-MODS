.class Lcom/android/keyguard/securityview/KeyguardSimPersoView$2$1;
.super Ljava/lang/Object;
.source "KeyguardSimPersoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/securityview/KeyguardSimPersoView$2;->onSimCheckResponse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/securityview/KeyguardSimPersoView$2;

.field final synthetic val$verifySucceed:Z


# direct methods
.method constructor <init>(Lcom/android/keyguard/securityview/KeyguardSimPersoView$2;Z)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView$2$1;->this$1:Lcom/android/keyguard/securityview/KeyguardSimPersoView$2;

    iput-boolean p2, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView$2$1;->val$verifySucceed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 218
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView$2$1;->this$1:Lcom/android/keyguard/securityview/KeyguardSimPersoView$2;

    iget-object v0, v0, Lcom/android/keyguard/securityview/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardSimPersoView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->access$000(Lcom/android/keyguard/securityview/KeyguardSimPersoView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView$2$1;->this$1:Lcom/android/keyguard/securityview/KeyguardSimPersoView$2;

    iget-object v0, v0, Lcom/android/keyguard/securityview/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardSimPersoView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->access$000(Lcom/android/keyguard/securityview/KeyguardSimPersoView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView$2$1;->this$1:Lcom/android/keyguard/securityview/KeyguardSimPersoView$2;

    iget-object v0, v0, Lcom/android/keyguard/securityview/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardSimPersoView;

    # invokes: Lcom/android/keyguard/securityview/KeyguardSimPersoView;->resetPasswordText(Z)V
    invoke-static {v0, v3}, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->access$100(Lcom/android/keyguard/securityview/KeyguardSimPersoView;Z)V

    .line 222
    iget-boolean v0, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView$2$1;->val$verifySucceed:Z

    if-eqz v0, :cond_5

    .line 223
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isUseKTTSimText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    # setter for: Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mNumRetry:I
    invoke-static {v4}, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->access$202(I)I

    .line 226
    :cond_1
    const-string v0, "ril.simtype"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ril.simtype"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_3

    const-string v0, "ril.simtype"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_3

    :cond_2
    const-string v0, "ril.domesticOtaStart"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ril.domesticOtaStart"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 236
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView$2$1;->this$1:Lcom/android/keyguard/securityview/KeyguardSimPersoView$2;

    iget-object v0, v0, Lcom/android/keyguard/securityview/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardSimPersoView;

    invoke-virtual {v0}, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView$2$1;->this$1:Lcom/android/keyguard/securityview/KeyguardSimPersoView$2;

    iget-object v1, v1, Lcom/android/keyguard/securityview/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardSimPersoView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mSubId:I
    invoke-static {v1}, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->access$300(Lcom/android/keyguard/securityview/KeyguardSimPersoView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    .line 237
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView$2$1;->this$1:Lcom/android/keyguard/securityview/KeyguardSimPersoView$2;

    iget-object v0, v0, Lcom/android/keyguard/securityview/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardSimPersoView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->access$400(Lcom/android/keyguard/securityview/KeyguardSimPersoView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 239
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView$2$1;->this$1:Lcom/android/keyguard/securityview/KeyguardSimPersoView$2;

    iget-object v0, v0, Lcom/android/keyguard/securityview/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardSimPersoView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->access$500(Lcom/android/keyguard/securityview/KeyguardSimPersoView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 257
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView$2$1;->this$1:Lcom/android/keyguard/securityview/KeyguardSimPersoView$2;

    iget-object v0, v0, Lcom/android/keyguard/securityview/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardSimPersoView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->access$900(Lcom/android/keyguard/securityview/KeyguardSimPersoView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 258
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView$2$1;->this$1:Lcom/android/keyguard/securityview/KeyguardSimPersoView$2;

    iget-object v0, v0, Lcom/android/keyguard/securityview/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardSimPersoView;

    # setter for: Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mSimCheckInProgress:Z
    invoke-static {v0, v4}, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->access$1002(Lcom/android/keyguard/securityview/KeyguardSimPersoView;Z)Z

    .line 259
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView$2$1;->this$1:Lcom/android/keyguard/securityview/KeyguardSimPersoView$2;

    iget-object v0, v0, Lcom/android/keyguard/securityview/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardSimPersoView;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mCheckSimPersoThread:Lcom/android/keyguard/securityview/KeyguardSimPersoView$CheckSimPerso;
    invoke-static {v0, v1}, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->access$1102(Lcom/android/keyguard/securityview/KeyguardSimPersoView;Lcom/android/keyguard/securityview/KeyguardSimPersoView$CheckSimPerso;)Lcom/android/keyguard/securityview/KeyguardSimPersoView$CheckSimPerso;

    .line 260
    return-void

    .line 241
    :cond_5
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isUseKTTSimText()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 242
    # ++operator for: Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mNumRetry:I
    invoke-static {}, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->access$204()I

    .line 244
    :cond_6
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isUseSKTSimText()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 245
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView$2$1;->this$1:Lcom/android/keyguard/securityview/KeyguardSimPersoView$2;

    iget-object v0, v0, Lcom/android/keyguard/securityview/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardSimPersoView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->access$600(Lcom/android/keyguard/securityview/KeyguardSimPersoView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView$2$1;->this$1:Lcom/android/keyguard/securityview/KeyguardSimPersoView$2;

    iget-object v1, v1, Lcom/android/keyguard/securityview/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardSimPersoView;

    invoke-virtual {v1}, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_password_perso_failed:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 248
    :cond_7
    # getter for: Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mNumRetry:I
    invoke-static {}, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->access$200()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_8

    .line 249
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView$2$1;->this$1:Lcom/android/keyguard/securityview/KeyguardSimPersoView$2;

    iget-object v0, v0, Lcom/android/keyguard/securityview/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardSimPersoView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->access$700(Lcom/android/keyguard/securityview/KeyguardSimPersoView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView$2$1;->this$1:Lcom/android/keyguard/securityview/KeyguardSimPersoView$2;

    iget-object v1, v1, Lcom/android/keyguard/securityview/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardSimPersoView;

    invoke-virtual {v1}, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_password_perso_failed:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 252
    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView$2$1;->this$1:Lcom/android/keyguard/securityview/KeyguardSimPersoView$2;

    iget-object v0, v0, Lcom/android/keyguard/securityview/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardSimPersoView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->access$800(Lcom/android/keyguard/securityview/KeyguardSimPersoView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView$2$1;->this$1:Lcom/android/keyguard/securityview/KeyguardSimPersoView$2;

    iget-object v1, v1, Lcom/android/keyguard/securityview/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardSimPersoView;

    invoke-virtual {v1}, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_password_perso_max_failed:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method
