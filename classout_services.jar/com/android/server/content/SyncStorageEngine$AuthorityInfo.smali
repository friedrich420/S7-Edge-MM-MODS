.class public Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
.super Ljava/lang/Object;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncStorageEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthorityInfo"
.end annotation


# static fields
.field public static final NOT_INITIALIZED:I = -0x1

.field public static final NOT_SYNCABLE:I = 0x0

.field public static final SYNCABLE:I = 0x1

.field public static final SYNCABLE_NOT_INITIALIZED:I = 0x2


# instance fields
.field backoffDelay:J

.field backoffTime:J

.field delayUntil:J

.field enabled:Z

.field final ident:I

.field final periodicSyncs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/PeriodicSync;",
            ">;"
        }
    .end annotation
.end field

.field syncable:I

.field final target:Lcom/android/server/content/SyncStorageEngine$EndPoint;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)V
    .registers 6
    .param p1, "toCopy"    # Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .prologue
    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    iget-object v2, p1, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iput-object v2, p0, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 350
    iget v2, p1, ident:I

    iput v2, p0, ident:I

    .line 351
    iget-boolean v2, p1, enabled:Z

    iput-boolean v2, p0, enabled:Z

    .line 352
    iget v2, p1, syncable:I

    iput v2, p0, syncable:I

    .line 353
    iget-wide v2, p1, backoffTime:J

    iput-wide v2, p0, backoffTime:J

    .line 354
    iget-wide v2, p1, backoffDelay:J

    iput-wide v2, p0, backoffDelay:J

    .line 355
    iget-wide v2, p1, delayUntil:J

    iput-wide v2, p0, delayUntil:J

    .line 356
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, periodicSyncs:Ljava/util/ArrayList;

    .line 357
    iget-object v2, p1, periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/PeriodicSync;

    .line 359
    .local v1, "sync":Landroid/content/PeriodicSync;
    iget-object v2, p0, periodicSyncs:Ljava/util/ArrayList;

    new-instance v3, Landroid/content/PeriodicSync;

    invoke-direct {v3, v1}, Landroid/content/PeriodicSync;-><init>(Landroid/content/PeriodicSync;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 361
    .end local v1    # "sync":Landroid/content/PeriodicSync;
    :cond_43
    return-void
.end method

.method constructor <init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;I)V
    .registers 5
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "id"    # I

    .prologue
    const/4 v1, 0x1

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    iput-object p1, p0, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 365
    iput p2, p0, ident:I

    .line 366
    iget-boolean v0, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    :goto_d
    iput-boolean v0, p0, enabled:Z

    .line 369
    iget-boolean v0, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    if-eqz v0, :cond_15

    .line 370
    iput v1, p0, syncable:I

    .line 372
    :cond_15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, periodicSyncs:Ljava/util/ArrayList;

    .line 373
    invoke-direct {p0}, defaultInitialisation()V

    .line 374
    return-void

    :cond_20
    move v0, v1

    .line 366
    goto :goto_d
.end method

.method private defaultInitialisation()V
    .registers 9

    .prologue
    const-wide/32 v4, 0x15180

    const-wide/16 v2, -0x1

    .line 377
    const/4 v1, -0x1

    iput v1, p0, syncable:I

    .line 378
    iput-wide v2, p0, backoffTime:J

    .line 379
    iput-wide v2, p0, backoffDelay:J

    .line 382
    iget-object v1, p0, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-boolean v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v1, :cond_2d

    .line 383
    new-instance v0, Landroid/content/PeriodicSync;

    iget-object v1, p0, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, p0, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-static {v4, v5}, Lcom/android/server/content/SyncStorageEngine;->calculateDefaultFlexTime(J)J

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Landroid/content/PeriodicSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JJ)V

    .line 388
    .local v0, "defaultSync":Landroid/content/PeriodicSync;
    iget-object v1, p0, periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    .end local v0    # "defaultSync":Landroid/content/PeriodicSync;
    :cond_2d
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", syncable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, syncable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", backoff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, backoffTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, delayUntil:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
