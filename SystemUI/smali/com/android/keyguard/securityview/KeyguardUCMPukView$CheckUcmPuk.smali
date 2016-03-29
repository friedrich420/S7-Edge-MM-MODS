.class abstract Lcom/android/keyguard/securityview/KeyguardUCMPukView$CheckUcmPuk;
.super Ljava/lang/Thread;
.source "KeyguardUCMPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/securityview/KeyguardUCMPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckUcmPuk"
.end annotation


# instance fields
.field private final mPin:Ljava/lang/String;

.field private final mPuk:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/keyguard/securityview/KeyguardUCMPukView;


# direct methods
.method protected constructor <init>(Lcom/android/keyguard/securityview/KeyguardUCMPukView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$CheckUcmPuk;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 369
    iput-object p2, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$CheckUcmPuk;->mPuk:Ljava/lang/String;

    .line 370
    iput-object p3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$CheckUcmPuk;->mPin:Ljava/lang/String;

    .line 371
    return-void
.end method


# virtual methods
.method abstract onSimLockChangedResponse(III)V
.end method

.method public run()V
    .locals 5

    .prologue
    .line 378
    :try_start_0
    const-string v2, "KeyguardUCMPukView"

    const-string v3, "call supplyPukReportResult()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$CheckUcmPuk;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$CheckUcmPuk;->mPuk:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$CheckUcmPuk;->mPin:Ljava/lang/String;

    # invokes: Lcom/android/keyguard/securityview/KeyguardUCMPukView;->verifyPUK(Ljava/lang/String;Ljava/lang/String;)[I
    invoke-static {v2, v3, v4}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->access$1100(Lcom/android/keyguard/securityview/KeyguardUCMPukView;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    .line 381
    .local v1, "result":[I
    const-string v2, "KeyguardUCMPukView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "supplyPukReportResult returned: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$CheckUcmPuk;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    new-instance v3, Lcom/android/keyguard/securityview/KeyguardUCMPukView$CheckUcmPuk$1;

    invoke-direct {v3, p0, v1}, Lcom/android/keyguard/securityview/KeyguardUCMPukView$CheckUcmPuk$1;-><init>(Lcom/android/keyguard/securityview/KeyguardUCMPukView$CheckUcmPuk;[I)V

    invoke-virtual {v2, v3}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    .end local v1    # "result":[I
    :goto_0
    return-void

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KeyguardUCMPukView"

    const-string v3, "RemoteException for supplyPukReportResult:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 390
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$CheckUcmPuk;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    new-instance v3, Lcom/android/keyguard/securityview/KeyguardUCMPukView$CheckUcmPuk$2;

    invoke-direct {v3, p0}, Lcom/android/keyguard/securityview/KeyguardUCMPukView$CheckUcmPuk$2;-><init>(Lcom/android/keyguard/securityview/KeyguardUCMPukView$CheckUcmPuk;)V

    invoke-virtual {v2, v3}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
