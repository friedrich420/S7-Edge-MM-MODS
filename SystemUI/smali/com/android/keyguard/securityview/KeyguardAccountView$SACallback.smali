.class public Lcom/android/keyguard/securityview/KeyguardAccountView$SACallback;
.super Lcom/msc/sa/aidl/ISACallback$Stub;
.source "KeyguardAccountView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/securityview/KeyguardAccountView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SACallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/securityview/KeyguardAccountView;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$SACallback;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    invoke-direct {p0}, Lcom/msc/sa/aidl/ISACallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveAccessToken(IZLandroid/os/Bundle;)V
    .locals 0
    .param p1, "requestID"    # I
    .param p2, "isSuccess"    # Z
    .param p3, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 437
    return-void
.end method

.method public onReceiveAuthCode(IZLandroid/os/Bundle;)V
    .locals 0
    .param p1, "requestID"    # I
    .param p2, "isSuccess"    # Z
    .param p3, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 452
    return-void
.end method

.method public onReceiveChecklistValidation(IZLandroid/os/Bundle;)V
    .locals 0
    .param p1, "requestID"    # I
    .param p2, "isSuccess"    # Z
    .param p3, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 442
    return-void
.end method

.method public onReceiveDisclaimerAgreement(IZLandroid/os/Bundle;)V
    .locals 0
    .param p1, "requestID"    # I
    .param p2, "isSuccess"    # Z
    .param p3, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 447
    return-void
.end method

.method public onReceivePasswordConfirmation(IZLandroid/os/Bundle;)V
    .locals 6
    .param p1, "requestID"    # I
    .param p2, "isSuccess"    # Z
    .param p3, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 462
    if-ne p2, v3, :cond_0

    .line 463
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$SACallback;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # invokes: Lcom/android/keyguard/securityview/KeyguardAccountView;->postOnCheckPasswordResult(Z)V
    invoke-static {v2, v3}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$1900(Lcom/android/keyguard/securityview/KeyguardAccountView;Z)V

    .line 477
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$SACallback;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # invokes: Lcom/android/keyguard/securityview/KeyguardAccountView;->destroySAConnect()V
    invoke-static {v2}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$2000(Lcom/android/keyguard/securityview/KeyguardAccountView;)V

    .line 478
    return-void

    .line 466
    :cond_0
    const-string v2, "error_code"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, "errorCode":Ljava/lang/String;
    const-string v2, "error_message"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 468
    .local v1, "errorMessage":Ljava/lang/String;
    const-string v2, "KeyguardAccountView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceivePasswordConfirmation fail errorCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " errorMessage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const-string v2, "SAC_0401"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "SAC_0301"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 473
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$SACallback;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # setter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->isNetworkConnected:Z
    invoke-static {v2, v5}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$402(Lcom/android/keyguard/securityview/KeyguardAccountView;Z)Z

    .line 475
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$SACallback;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # invokes: Lcom/android/keyguard/securityview/KeyguardAccountView;->postOnCheckPasswordResult(Z)V
    invoke-static {v2, v5}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$1900(Lcom/android/keyguard/securityview/KeyguardAccountView;Z)V

    goto :goto_0
.end method

.method public onReceiveSCloudAccessToken(IZLandroid/os/Bundle;)V
    .locals 0
    .param p1, "requestID"    # I
    .param p2, "isSuccess"    # Z
    .param p3, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 457
    return-void
.end method
