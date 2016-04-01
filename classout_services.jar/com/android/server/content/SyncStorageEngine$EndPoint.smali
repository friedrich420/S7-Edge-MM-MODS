.class public Lcom/android/server/content/SyncStorageEngine$EndPoint;
.super Ljava/lang/Object;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncStorageEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EndPoint"
.end annotation


# static fields
.field public static final USER_ALL_PROVIDER_ALL_ACCOUNTS_ALL:Lcom/android/server/content/SyncStorageEngine$EndPoint;


# instance fields
.field final account:Landroid/accounts/Account;

.field final provider:Ljava/lang/String;

.field final service:Landroid/content/ComponentName;

.field final target_provider:Z

.field final target_service:Z

.field final userId:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 228
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const/4 v1, -0x1

    invoke-direct {v0, v2, v2, v1}, <init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    sput-object v0, USER_ALL_PROVIDER_ALL_ACCOUNTS_ALL:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;Ljava/lang/String;I)V
    .registers 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "provider"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput-object p1, p0, account:Landroid/accounts/Account;

    .line 248
    iput-object p2, p0, provider:Ljava/lang/String;

    .line 249
    iput p3, p0, userId:I

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, service:Landroid/content/ComponentName;

    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, target_service:Z

    .line 252
    const/4 v0, 0x1

    iput-boolean v0, p0, target_provider:Z

    .line 253
    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;I)V
    .registers 4
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-object p1, p0, service:Landroid/content/ComponentName;

    .line 239
    iput p2, p0, userId:I

    .line 240
    iput-object v0, p0, account:Landroid/accounts/Account;

    .line 241
    iput-object v0, p0, provider:Ljava/lang/String;

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, target_service:Z

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, target_provider:Z

    .line 244
    return-void
.end method


# virtual methods
.method public matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .registers 8
    .param p1, "spec"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 262
    iget v3, p0, userId:I

    iget v4, p1, userId:I

    if-eq v3, v4, :cond_11

    iget v3, p0, userId:I

    if-eq v3, v5, :cond_11

    iget v3, p1, userId:I

    if-eq v3, v5, :cond_11

    .line 284
    :cond_10
    :goto_10
    return v2

    .line 267
    :cond_11
    iget-boolean v3, p0, target_service:Z

    if-eqz v3, :cond_22

    iget-boolean v3, p1, target_service:Z

    if-eqz v3, :cond_22

    .line 268
    iget-object v2, p0, service:Landroid/content/ComponentName;

    iget-object v3, p1, service:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_10

    .line 269
    :cond_22
    iget-boolean v3, p0, target_provider:Z

    if-eqz v3, :cond_10

    iget-boolean v3, p1, target_provider:Z

    if-eqz v3, :cond_10

    .line 271
    iget-object v3, p1, account:Landroid/accounts/Account;

    if-nez v3, :cond_3a

    .line 272
    const/4 v0, 0x1

    .line 277
    .local v0, "accountsMatch":Z
    :goto_2f
    iget-object v3, p1, provider:Ljava/lang/String;

    if-nez v3, :cond_43

    .line 278
    const/4 v1, 0x1

    .line 282
    .local v1, "providersMatch":Z
    :goto_34
    if-eqz v0, :cond_10

    if-eqz v1, :cond_10

    const/4 v2, 0x1

    goto :goto_10

    .line 274
    .end local v0    # "accountsMatch":Z
    .end local v1    # "providersMatch":Z
    :cond_3a
    iget-object v3, p0, account:Landroid/accounts/Account;

    iget-object v4, p1, account:Landroid/accounts/Account;

    invoke-virtual {v3, v4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    .restart local v0    # "accountsMatch":Z
    goto :goto_2f

    .line 280
    :cond_43
    iget-object v3, p0, provider:Ljava/lang/String;

    iget-object v4, p1, provider:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .restart local v1    # "providersMatch":Z
    goto :goto_34
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, target_provider:Z

    if-eqz v1, :cond_47

    .line 290
    iget-object v1, p0, account:Landroid/accounts/Account;

    if-nez v1, :cond_3f

    const-string v1, "ALL ACCS"

    :goto_f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, provider:Ljava/lang/String;

    if-nez v1, :cond_44

    const-string v1, "ALL PDRS"

    :goto_1f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :goto_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 290
    :cond_3f
    iget-object v1, p0, account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_f

    :cond_44
    iget-object v1, p0, provider:Ljava/lang/String;

    goto :goto_1f

    .line 293
    :cond_47
    iget-boolean v1, p0, target_service:Z

    if-eqz v1, :cond_72

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, service:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, service:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 297
    :cond_72
    const-string/jumbo v1, "invalid target"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22
.end method
