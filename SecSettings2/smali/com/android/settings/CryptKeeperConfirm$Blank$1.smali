.class Lcom/android/settings/CryptKeeperConfirm$Blank$1;
.super Ljava/lang/Object;
.source "CryptKeeperConfirm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CryptKeeperConfirm$Blank;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptKeeperConfirm$Blank;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeperConfirm$Blank;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/settings/CryptKeeperConfirm$Blank$1;->this$0:Lcom/android/settings/CryptKeeperConfirm$Blank;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 131
    const-string v6, "mount"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 132
    .local v3, "service":Landroid/os/IBinder;
    if-nez v3, :cond_0

    .line 133
    const-string v6, "CryptKeeper"

    const-string v7, "Failed to find the mount service"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v6, p0, Lcom/android/settings/CryptKeeperConfirm$Blank$1;->this$0:Lcom/android/settings/CryptKeeperConfirm$Blank;

    invoke-virtual {v6}, Lcom/android/settings/CryptKeeperConfirm$Blank;->finish()V

    .line 165
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 140
    .local v2, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/CryptKeeperConfirm$Blank$1;->this$0:Lcom/android/settings/CryptKeeperConfirm$Blank;

    invoke-virtual {v6}, Lcom/android/settings/CryptKeeperConfirm$Blank;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 143
    .local v0, "args":Landroid/os/Bundle;
    const-string v6, "ro.boot.ucs_mode"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 144
    .local v4, "ucsFlag":Ljava/lang/String;
    const-string v6, "security.knox_ucs_mode"

    const-string v7, "false"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 145
    .local v5, "ucsProperty":Ljava/lang/String;
    const-string v6, "1"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "2"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "true"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 146
    :cond_1
    const-string v6, "security.knox_ucs_mode"

    const-string v7, "false"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_2
    # getter for: Lcom/android/settings/CryptKeeperConfirm;->utils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Lcom/android/settings/CryptKeeperConfirm;->access$000()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 152
    const-string v6, "type"

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v8, :cond_4

    .line 153
    # getter for: Lcom/android/settings/CryptKeeperConfirm;->utils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Lcom/android/settings/CryptKeeperConfirm;->access$000()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V

    .line 158
    :cond_3
    :goto_1
    const-string v6, "security.ode.trustedboot"

    # getter for: Lcom/android/settings/CryptKeeperConfirm;->mTrustedboot:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/CryptKeeperConfirm;->access$100()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Landroid/os/storage/IMountService;->setPropertyIntoFooter(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string v6, "security.ode.encrypting"

    const-string v7, "true"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v6, "type"

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "password"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Landroid/os/storage/IMountService;->encryptStorage(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v4    # "ucsFlag":Ljava/lang/String;
    .end local v5    # "ucsProperty":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "CryptKeeper"

    const-string v7, "Error while encrypting..."

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 155
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "args":Landroid/os/Bundle;
    .restart local v4    # "ucsFlag":Ljava/lang/String;
    .restart local v5    # "ucsProperty":Ljava/lang/String;
    :cond_4
    :try_start_1
    # getter for: Lcom/android/settings/CryptKeeperConfirm;->utils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Lcom/android/settings/CryptKeeperConfirm;->access$000()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
