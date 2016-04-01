.class Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;
.super Landroid/os/AsyncTask;
.source "SecurityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/security/SecurityPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetKeyChain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/security/SecurityPolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/security/SecurityPolicy;)V
    .registers 2

    .prologue
    .line 1481
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/security/SecurityPolicy;Lcom/android/server/enterprise/security/SecurityPolicy$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/enterprise/security/SecurityPolicy;
    .param p2, "x1"    # Lcom/android/server/enterprise/security/SecurityPolicy$1;

    .prologue
    .line 1481
    invoke-direct {p0, p1}, <init>(Lcom/android/server/enterprise/security/SecurityPolicy;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;
    .registers 9
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    const/4 v6, 0x0

    .line 1483
    aget-object v3, p1, v6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1487
    .local v2, "userId":I
    :try_start_7
    iget-object v3, p0, this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    # getter for: Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/enterprise/security/SecurityPolicy;->access$200(Lcom/android/server/enterprise/security/SecurityPolicy;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v3, v4}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_15} :catch_30
    .catch Ljava/lang/AssertionError; {:try_start_7 .. :try_end_15} :catch_3b

    move-result-object v1

    .line 1489
    .local v1, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_16
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v3

    invoke-interface {v3}, Landroid/security/IKeyChainService;->reset()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_21} :catch_26
    .catchall {:try_start_16 .. :try_end_21} :catchall_36

    move-result-object v3

    .line 1493
    :try_start_22
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_25} :catch_30
    .catch Ljava/lang/AssertionError; {:try_start_22 .. :try_end_25} :catch_3b

    .line 1499
    .end local v1    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :goto_25
    return-object v3

    .line 1490
    .restart local v1    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_26
    move-exception v0

    .line 1491
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    :try_start_28
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_36

    move-result-object v3

    .line 1493
    :try_start_2c
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_2f} :catch_30
    .catch Ljava/lang/AssertionError; {:try_start_2c .. :try_end_2f} :catch_3b

    goto :goto_25

    .line 1495
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_30
    move-exception v0

    .line 1496
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_25

    .line 1493
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catchall_36
    move-exception v3

    :try_start_37
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v3
    :try_end_3b
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_3b} :catch_30
    .catch Ljava/lang/AssertionError; {:try_start_37 .. :try_end_3b} :catch_3b

    .line 1497
    .end local v1    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_3b
    move-exception v0

    .line 1498
    .local v0, "e":Ljava/lang/AssertionError;
    const-string v3, "SecurityPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ResetKeyChain - is KeyChainService running for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_25
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1481
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
