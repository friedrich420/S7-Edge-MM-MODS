.class Lcom/android/server/LockSettingsService$3;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Lcom/android/server/LockSettingsService$IKeystoreUtil;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LockSettingsService;->doVerifyPattern(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;
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
    .line 1618
    iput-object p1, p0, this$0:Lcom/android/server/LockSettingsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doHardHashAdjustment(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1629
    iget-object v0, p0, this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;
    invoke-static {v0}, Lcom/android/server/LockSettingsService;->access$1300(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsService$KeystoreUtil;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->adjustPatternHash(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public doHardHashMigration(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1623
    iget-object v0, p0, this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;
    invoke-static {v0}, Lcom/android/server/LockSettingsService;->access$1300(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsService$KeystoreUtil;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->migratePatternHash(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public doHardKeyAdjustment(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1626
    iget-object v0, p0, this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;
    invoke-static {v0}, Lcom/android/server/LockSettingsService;->access$1300(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsService$KeystoreUtil;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->adjustPattern(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public doHardKeyMigration(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1620
    iget-object v0, p0, this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;
    invoke-static {v0}, Lcom/android/server/LockSettingsService;->access$1300(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsService$KeystoreUtil;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->migratePattern(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getLockType()I
    .registers 2

    .prologue
    .line 1632
    const/4 v0, 0x1

    return v0
.end method
