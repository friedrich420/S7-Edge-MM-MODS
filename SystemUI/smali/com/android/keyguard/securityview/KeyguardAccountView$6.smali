.class Lcom/android/keyguard/securityview/KeyguardAccountView$6;
.super Ljava/lang/Object;
.source "KeyguardAccountView.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/securityview/KeyguardAccountView;->asyncCheckSAPassword()V
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
    .line 497
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$6;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 11
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 500
    const-string v1, "2kbfdax337"

    .line 501
    .local v1, "client_id":Ljava/lang/String;
    const-string v2, "BB8A5C25AE13720FCBC1806F16D961F6"

    .line 502
    .local v2, "client_secret":Ljava/lang/String;
    const-string v3, "com.android.systemui"

    .line 503
    .local v3, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$6;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mPassword:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$600(Lcom/android/keyguard/securityview/KeyguardAccountView;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 505
    .local v4, "password":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$6;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    invoke-static {p2}, Lcom/msc/sa/aidl/ISAService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/msc/sa/aidl/ISAService;

    move-result-object v6

    # setter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mISaService:Lcom/msc/sa/aidl/ISAService;
    invoke-static {v5, v6}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$2102(Lcom/android/keyguard/securityview/KeyguardAccountView;Lcom/msc/sa/aidl/ISAService;)Lcom/msc/sa/aidl/ISAService;

    .line 506
    iget-object v5, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$6;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    const/16 v6, 0x64

    # setter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mRequestID:I
    invoke-static {v5, v6}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$2202(Lcom/android/keyguard/securityview/KeyguardAccountView;I)I

    .line 508
    :try_start_0
    iget-object v5, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$6;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    iget-object v6, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$6;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mISaService:Lcom/msc/sa/aidl/ISAService;
    invoke-static {v6}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$2100(Lcom/android/keyguard/securityview/KeyguardAccountView;)Lcom/msc/sa/aidl/ISAService;

    move-result-object v6

    const-string v7, "2kbfdax337"

    const-string v8, "BB8A5C25AE13720FCBC1806F16D961F6"

    const-string v9, "com.android.systemui"

    iget-object v10, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$6;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mSACallback:Lcom/android/keyguard/securityview/KeyguardAccountView$SACallback;
    invoke-static {v10}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$2400(Lcom/android/keyguard/securityview/KeyguardAccountView;)Lcom/android/keyguard/securityview/KeyguardAccountView$SACallback;

    move-result-object v10

    invoke-interface {v6, v7, v8, v9, v10}, Lcom/msc/sa/aidl/ISAService;->registerCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/msc/sa/aidl/ISACallback;)Ljava/lang/String;

    move-result-object v6

    # setter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mRegistertCode:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$2302(Lcom/android/keyguard/securityview/KeyguardAccountView;Ljava/lang/String;)Ljava/lang/String;

    .line 510
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 511
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "password"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget-object v5, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$6;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mISaService:Lcom/msc/sa/aidl/ISAService;
    invoke-static {v5}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$2100(Lcom/android/keyguard/securityview/KeyguardAccountView;)Lcom/msc/sa/aidl/ISAService;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$6;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mRequestID:I
    invoke-static {v6}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$2200(Lcom/android/keyguard/securityview/KeyguardAccountView;)I

    move-result v6

    iget-object v7, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$6;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mRegistertCode:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$2300(Lcom/android/keyguard/securityview/KeyguardAccountView;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7, v0}, Lcom/msc/sa/aidl/ISAService;->requestPasswordConfirmation(ILjava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 513
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$6;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mISaService:Lcom/msc/sa/aidl/ISAService;
    invoke-static {v0, v1}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$2102(Lcom/android/keyguard/securityview/KeyguardAccountView;Lcom/msc/sa/aidl/ISAService;)Lcom/msc/sa/aidl/ISAService;

    .line 520
    return-void
.end method
