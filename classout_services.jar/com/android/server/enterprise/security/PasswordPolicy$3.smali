.class Lcom/android/server/enterprise/security/PasswordPolicy$3;
.super Ljava/lang/Object;
.source "PasswordPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/security/PasswordPolicy;->unlockSdp(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;I)V
    .registers 3

    .prologue
    .line 2735
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iput p2, p0, val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 2744
    :try_start_0
    iget v2, p0, val$userId:I

    invoke-static {v2}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->isKnoxWorkspace(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2757
    :cond_8
    :goto_8
    return-void

    .line 2747
    :cond_9
    invoke-static {}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getInstance()Lcom/sec/enterprise/knox/sdp/SdpUtil;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getEngineInfo(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v1

    .line 2748
    .local v1, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-eqz v1, :cond_8

    .line 2749
    invoke-static {}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->getInstance()Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->unlock(Ljava/lang/String;Ljava/lang/String;)V

    .line 2750
    const-string v2, "PasswordPolicy"

    const-string/jumbo v3, "setPwdChangeRequested SDP_USER_0 calling SDP UNLOCK successful. "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_8

    .line 2752
    .end local v1    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catch_26
    move-exception v0

    .line 2753
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PasswordPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDP_USER_0 in setPwdChangeRequested failed to unlock "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, val$userId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2754
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method
