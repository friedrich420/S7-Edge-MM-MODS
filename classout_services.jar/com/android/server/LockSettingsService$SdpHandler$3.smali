.class Lcom/android/server/LockSettingsService$SdpHandler$3;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LockSettingsService$SdpHandler;->unlock(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/LockSettingsService$SdpHandler;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/LockSettingsService$SdpHandler;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 2932
    iput-object p1, p0, this$1:Lcom/android/server/LockSettingsService$SdpHandler;

    iput p2, p0, val$userId:I

    iput-object p3, p0, val$password:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 2935
    const-string v3, "LockSettingsService.SdpHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unlock :: Unlocking user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, val$userId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2936
    iget-object v3, p0, this$1:Lcom/android/server/LockSettingsService$SdpHandler;

    # invokes: Lcom/android/server/LockSettingsService$SdpHandler;->isPwdChangeRequested()Z
    invoke-static {v3}, Lcom/android/server/LockSettingsService$SdpHandler;->access$1800(Lcom/android/server/LockSettingsService$SdpHandler;)Z

    move-result v3

    if-nez v3, :cond_2b

    iget v3, p0, val$userId:I

    invoke-static {v3}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->isKnoxWorkspace(I)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 2953
    :cond_2b
    :goto_2b
    return-void

    .line 2939
    :cond_2c
    const/4 v0, 0x0

    .line 2941
    .local v0, "alias":Ljava/lang/String;
    :try_start_2d
    invoke-static {}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getInstance()Lcom/sec/enterprise/knox/sdp/SdpUtil;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getEngineInfo(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v2

    .line 2942
    .local v2, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-eqz v2, :cond_2b

    .line 2943
    invoke-static {}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->getInstance()Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;

    move-result-object v3

    iget-object v4, p0, val$password:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->unlock(Ljava/lang/String;Ljava/lang/String;)V

    .line 2944
    const-string v3, "LockSettingsService.SdpHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unlock :: SUCCESS!!! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, val$userId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException; {:try_start_2d .. :try_end_5b} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_5b} :catch_7c

    goto :goto_2b

    .line 2946
    .end local v2    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catch_5c
    move-exception v1

    .line 2947
    .local v1, "e":Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;
    const-string v3, "LockSettingsService.SdpHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unlock :: Failed to unlock engine... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, val$userId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2948
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;->printStackTrace()V

    goto :goto_2b

    .line 2949
    .end local v1    # "e":Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;
    :catch_7c
    move-exception v1

    .line 2950
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "LockSettingsService.SdpHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unlock :: Failed to unlock engine... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, val$userId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2951
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2b
.end method
