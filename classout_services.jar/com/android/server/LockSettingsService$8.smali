.class Lcom/android/server/LockSettingsService$8;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Lcom/android/server/LockSettingsService$CredentialUtil;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LockSettingsService;->doVerifyBackupPassword(Ljava/lang/String;ZJIZ)Lcom/android/internal/widget/VerifyCredentialResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LockSettingsService;


# direct methods
.method constructor <init>(Lcom/android/server/LockSettingsService;)V
    .registers 2

    .prologue
    .line 2326
    iput-object p1, p0, this$0:Lcom/android/server/LockSettingsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustForKeystore(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 2340
    return-object p1
.end method

.method public getLockType()I
    .registers 2

    .prologue
    .line 2346
    const/4 v0, 0x4

    return v0
.end method

.method public setCredential(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "oldPassword"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2330
    iget-object v0, p0, this$0:Lcom/android/server/LockSettingsService;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/LockSettingsService;->setLockBackupPassword(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 2331
    return-void
.end method

.method public toHash(Ljava/lang/String;I)[B
    .registers 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2335
    iget-object v0, p0, this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/server/LockSettingsService;->access$200(Lcom/android/server/LockSettingsService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method
