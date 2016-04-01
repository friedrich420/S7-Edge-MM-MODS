.class Lcom/android/server/LockSettingsService$SdpHandler;
.super Ljava/lang/Object;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdpHandler"
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/LockSettingsService;


# direct methods
.method private constructor <init>(Lcom/android/server/LockSettingsService;)V
    .registers 3

    .prologue
    .line 2869
    iput-object p1, p0, this$0:Lcom/android/server/LockSettingsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2870
    const-string v0, "LockSettingsService.SdpHandler"

    iput-object v0, p0, LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LockSettingsService;Lcom/android/server/LockSettingsService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/LockSettingsService;
    .param p2, "x1"    # Lcom/android/server/LockSettingsService$1;

    .prologue
    .line 2869
    invoke-direct {p0, p1}, <init>(Lcom/android/server/LockSettingsService;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/LockSettingsService$SdpHandler;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LockSettingsService$SdpHandler;

    .prologue
    .line 2869
    invoke-direct {p0}, isPwdChangeRequested()Z

    move-result v0

    return v0
.end method

.method private isPwdChangeRequested()Z
    .registers 7

    .prologue
    .line 3069
    iget-object v3, p0, this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/LockSettingsService;->access$900(Lcom/android/server/LockSettingsService;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "enterprise_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 3071
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v2

    .line 3073
    .local v2, "mPwdPolicy":Landroid/app/enterprise/PasswordPolicy;
    const/4 v1, 0x0

    .line 3074
    .local v1, "isPwdChangeRequested":Z
    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v3

    if-lez v3, :cond_1d

    .line 3076
    const/4 v1, 0x1

    .line 3078
    :cond_1d
    const-string v3, "LockSettingsService.SdpHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isPwdChangeRequested :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3079
    return v1
.end method


# virtual methods
.method enroll(ILjava/lang/String;I)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "credential"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 2984
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/LockSettingsService$SdpHandler$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/LockSettingsService$SdpHandler$5;-><init>(Lcom/android/server/LockSettingsService$SdpHandler;ILjava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2991
    return-void
.end method

.method enrollInternal(ILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "userId"    # I
    .param p2, "credential"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 2994
    const-string v2, "LockSettingsService.SdpHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enroll :: enrolling user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2995
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    invoke-static {p1}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->isKnoxWorkspace(I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 3008
    :cond_25
    :goto_25
    return-void

    .line 2998
    :cond_26
    const/4 v0, 0x0

    .line 3000
    .local v0, "alias":Ljava/lang/String;
    :try_start_27
    invoke-static {}, Lcom/sec/sdp/internal/SdpAuthenticator;->getInstance()Lcom/sec/sdp/internal/SdpAuthenticator;

    move-result-object v2

    invoke-virtual {v2, v0, p2, p3}, Lcom/sec/sdp/internal/SdpAuthenticator;->enroll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException; {:try_start_27 .. :try_end_2e} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2e} :catch_4d

    goto :goto_25

    .line 3001
    :catch_2f
    move-exception v1

    .line 3002
    .local v1, "e":Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;
    const-string v2, "LockSettingsService.SdpHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enroll :: Failed to enroll sdp user... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3003
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;->printStackTrace()V

    goto :goto_25

    .line 3004
    .end local v1    # "e":Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;
    :catch_4d
    move-exception v1

    .line 3005
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "LockSettingsService.SdpHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enroll :: Failed to enroll sdp user... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3006
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_25
.end method

.method lock(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 2958
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/LockSettingsService$SdpHandler$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/LockSettingsService$SdpHandler$4;-><init>(Lcom/android/server/LockSettingsService$SdpHandler;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2981
    return-void
.end method

.method migrateCredential(ILjava/lang/String;I)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "credential"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 3025
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/LockSettingsService$SdpHandler$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/LockSettingsService$SdpHandler$6;-><init>(Lcom/android/server/LockSettingsService$SdpHandler;ILjava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3032
    return-void
.end method

.method migrateCredentialInternal(ILjava/lang/String;I)Z
    .registers 12
    .param p1, "userId"    # I
    .param p2, "credential"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 3035
    const-string v5, "LockSettingsService.SdpHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "migrateCredential :: migrating for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3036
    const/4 v3, 0x0

    .line 3037
    .local v3, "result":Z
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2c

    move v4, v3

    .line 3055
    .end local v3    # "result":Z
    .local v4, "result":I
    :goto_2b
    return v4

    .line 3040
    .end local v4    # "result":I
    .restart local v3    # "result":Z
    :cond_2c
    const/4 v0, 0x0

    .line 3042
    .local v0, "alias":Ljava/lang/String;
    :try_start_2d
    invoke-static {}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getInstance()Lcom/sec/enterprise/knox/sdp/SdpUtil;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getEngineInfo(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v2

    .line 3043
    .local v2, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-eqz v2, :cond_60

    .line 3044
    invoke-virtual {v2}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getState()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_46

    .line 3045
    invoke-static {}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->getInstance()Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->unlock(Ljava/lang/String;Ljava/lang/String;)V

    .line 3047
    :cond_46
    invoke-static {}, Lcom/sec/sdp/internal/SdpAuthenticator;->getInstance()Lcom/sec/sdp/internal/SdpAuthenticator;

    move-result-object v5

    iget-object v6, p0, this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;
    invoke-static {v6}, Lcom/android/server/LockSettingsService;->access$1700(Lcom/android/server/LockSettingsService;)Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/sec/knox/container/util/KeyManagementUtil;->convType(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, p2, v6}, Lcom/sec/sdp/internal/SdpAuthenticator;->enroll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3048
    const/4 v3, 0x1

    .line 3049
    const-string v5, "LockSettingsService"

    const-string/jumbo v6, "migrateCredential :: Successful..!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_60} :catch_62

    .end local v2    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_60
    :goto_60
    move v4, v3

    .line 3055
    .restart local v4    # "result":I
    goto :goto_2b

    .line 3051
    .end local v4    # "result":I
    :catch_62
    move-exception v1

    .line 3052
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "LockSettingsService"

    const-string/jumbo v6, "migrateCredential :: Failed to migrate backup pin... "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3053
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_60
.end method

.method notifyVerified(II)V
    .registers 3
    .param p1, "userId"    # I
    .param p2, "type"    # I

    .prologue
    .line 3015
    packed-switch p2, :pswitch_data_8

    .line 3022
    :goto_3
    return-void

    .line 3017
    :pswitch_4
    invoke-virtual {p0, p1, p2}, removeKeyPair(II)V

    goto :goto_3

    .line 3015
    :pswitch_data_8
    .packed-switch 0x5
        :pswitch_4
    .end packed-switch
.end method

.method notifyVerified(ILjava/lang/String;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 3011
    iget-object v0, p0, this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;
    invoke-static {v0}, Lcom/android/server/LockSettingsService;->access$1700(Lcom/android/server/LockSettingsService;)Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/knox/container/util/KeyManagementUtil;->convType(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, notifyVerified(II)V

    .line 3012
    return-void
.end method

.method removeKeyPair(II)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "type"    # I

    .prologue
    .line 3059
    const/4 v0, 0x0

    .line 3060
    .local v0, "res":Z
    iget-object v1, p0, this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;
    invoke-static {v1}, Lcom/android/server/LockSettingsService;->access$1700(Lcom/android/server/LockSettingsService;)Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 3061
    const-string v1, "LockSettingsService.SdpHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeKeyPair :: User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3062
    iget-object v1, p0, this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;
    invoke-static {v1}, Lcom/android/server/LockSettingsService;->access$1700(Lcom/android/server/LockSettingsService;)Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/util/KeyManagementUtil;->removeECMK(II)Z

    move-result v1

    if-eqz v1, :cond_5f

    iget-object v1, p0, this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;
    invoke-static {v1}, Lcom/android/server/LockSettingsService;->access$1700(Lcom/android/server/LockSettingsService;)Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/util/KeyManagementUtil;->removeKEK(II)Z

    move-result v1

    if-eqz v1, :cond_5f

    const/4 v0, 0x1

    .line 3065
    :cond_45
    :goto_45
    const-string v1, "LockSettingsService.SdpHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeKeyPair :: Result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3066
    return-void

    .line 3062
    :cond_5f
    const/4 v0, 0x0

    goto :goto_45
.end method

.method setPassword(Ljava/lang/String;I)V
    .registers 5
    .param p1, "newPassword"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2873
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/LockSettingsService$SdpHandler$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/LockSettingsService$SdpHandler$1;-><init>(Lcom/android/server/LockSettingsService$SdpHandler;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2880
    return-void
.end method

.method setPasswordInternal(Ljava/lang/String;I)V
    .registers 9
    .param p1, "newPassword"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2883
    const-string v3, "LockSettingsService.SdpHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPassword :: Set new credential for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2884
    invoke-static {p2}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->isKnoxWorkspace(I)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 2901
    :cond_1f
    :goto_1f
    return-void

    .line 2887
    :cond_20
    const/4 v0, 0x0

    .line 2889
    .local v0, "alias":Ljava/lang/String;
    :try_start_21
    invoke-static {}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getInstance()Lcom/sec/enterprise/knox/sdp/SdpUtil;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getEngineInfo(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v2

    .line 2890
    .local v2, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-eqz v2, :cond_1f

    .line 2891
    invoke-static {}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->getInstance()Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;

    move-result-object v3

    invoke-virtual {v3, v0, p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->setPassword(Ljava/lang/String;Ljava/lang/String;)V

    .line 2892
    const-string v3, "LockSettingsService.SdpHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPassword :: SUCCESS!!! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException; {:try_start_21 .. :try_end_4b} :catch_4c
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_4b} :catch_6a

    goto :goto_1f

    .line 2894
    .end local v2    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catch_4c
    move-exception v1

    .line 2895
    .local v1, "e":Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;
    const-string v3, "LockSettingsService.SdpHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPassword :: Failed to set new password... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2896
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;->printStackTrace()V

    goto :goto_1f

    .line 2897
    .end local v1    # "e":Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;
    :catch_6a
    move-exception v1

    .line 2898
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "LockSettingsService.SdpHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPassword :: Failed to set new password... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2899
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f
.end method

.method unlock(ILjava/lang/String;I)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "credential"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 2904
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/LockSettingsService$SdpHandler$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/LockSettingsService$SdpHandler$2;-><init>(Lcom/android/server/LockSettingsService$SdpHandler;ILjava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2911
    return-void
.end method

.method unlock(Ljava/lang/String;I)V
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2932
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/LockSettingsService$SdpHandler$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/LockSettingsService$SdpHandler$3;-><init>(Lcom/android/server/LockSettingsService$SdpHandler;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2955
    return-void
.end method

.method verifyInternal(ILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "userId"    # I
    .param p2, "credential"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 2914
    const-string v2, "LockSettingsService.SdpHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unlock :: Unlocking user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2915
    invoke-direct {p0}, isPwdChangeRequested()Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-static {p1}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->isKnoxWorkspace(I)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 2929
    :cond_2f
    :goto_2f
    return-void

    .line 2918
    :cond_30
    const/4 v0, 0x0

    .line 2920
    .local v0, "alias":Ljava/lang/String;
    :try_start_31
    invoke-static {}, Lcom/sec/sdp/internal/SdpAuthenticator;->getInstance()Lcom/sec/sdp/internal/SdpAuthenticator;

    move-result-object v2

    invoke-virtual {v2, v0, p2, p3}, Lcom/sec/sdp/internal/SdpAuthenticator;->verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2921
    invoke-virtual {p0, p1, p3}, notifyVerified(ILjava/lang/String;)V
    :try_end_3b
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException; {:try_start_31 .. :try_end_3b} :catch_3c
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3b} :catch_5a

    goto :goto_2f

    .line 2922
    :catch_3c
    move-exception v1

    .line 2923
    .local v1, "e":Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;
    const-string v2, "LockSettingsService.SdpHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unlock :: Failed to unlock engine... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2924
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;->printStackTrace()V

    goto :goto_2f

    .line 2925
    .end local v1    # "e":Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;
    :catch_5a
    move-exception v1

    .line 2926
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "LockSettingsService.SdpHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unlock :: Failed to unlock engine... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2927
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2f
.end method
