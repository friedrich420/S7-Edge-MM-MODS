.class public Lcom/android/server/content/SyncStorageEngine$PendingOperation;
.super Ljava/lang/Object;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncStorageEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingOperation"
.end annotation


# instance fields
.field final authorityId:I

.field final expedited:Z

.field final extras:Landroid/os/Bundle;

.field flatExtras:[B

.field final reason:I

.field final syncSource:I

.field final target:Lcom/android/server/content/SyncStorageEngine$EndPoint;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;IILandroid/os/Bundle;Z)V
    .registers 7
    .param p1, "authority"    # Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .param p2, "reason"    # I
    .param p3, "source"    # I
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "expedited"    # Z

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iput-object v0, p0, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 179
    iput p3, p0, syncSource:I

    .line 180
    iput p2, p0, reason:I

    .line 181
    if-eqz p4, :cond_13

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p4, v0

    .end local p4    # "extras":Landroid/os/Bundle;
    :cond_13
    iput-object p4, p0, extras:Landroid/os/Bundle;

    .line 182
    iput-boolean p5, p0, expedited:Z

    .line 183
    iget v0, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    iput v0, p0, authorityId:I

    .line 184
    return-void
.end method

.method constructor <init>(Lcom/android/server/content/SyncStorageEngine$PendingOperation;)V
    .registers 3
    .param p1, "other"    # Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iget v0, p1, reason:I

    iput v0, p0, reason:I

    .line 188
    iget v0, p1, syncSource:I

    iput v0, p0, syncSource:I

    .line 189
    iget-object v0, p1, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iput-object v0, p0, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 190
    iget-object v0, p1, extras:Landroid/os/Bundle;

    iput-object v0, p0, extras:Landroid/os/Bundle;

    .line 191
    iget v0, p1, authorityId:I

    iput v0, p0, authorityId:I

    .line 192
    iget-boolean v0, p1, expedited:Z

    iput-boolean v0, p0, expedited:Z

    .line 193
    return-void
.end method


# virtual methods
.method public equals(Lcom/android/server/content/SyncStorageEngine$PendingOperation;)Z
    .registers 4
    .param p1, "other"    # Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    .prologue
    .line 203
    iget-object v0, p0, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, p1, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " auth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " src="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, syncSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
