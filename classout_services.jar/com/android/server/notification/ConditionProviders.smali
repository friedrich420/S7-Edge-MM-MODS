.class public Lcom/android/server/notification/ConditionProviders;
.super Lcom/android/server/notification/ManagedServices;
.source "ConditionProviders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ConditionProviders$1;,
        Lcom/android/server/notification/ConditionProviders$Callback;,
        Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

.field private final mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/service/notification/IConditionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/ConditionProviders$ConditionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemConditionProviderNames:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemConditionProviders:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/notification/SystemConditionProviderService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/notification/ManagedServices$UserProfiles;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "userProfiles"    # Lcom/android/server/notification/ManagedServices$UserProfiles;

    .prologue
    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/notification/ManagedServices;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mRecords:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mListeners:Landroid/util/ArrayMap;

    .line 48
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, mSystemConditionProviders:Landroid/util/ArraySet;

    .line 61
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "twschedule"

    aput-object v2, v0, v1

    invoke-static {v0}, safeSet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, mSystemConditionProviderNames:Landroid/util/ArraySet;

    .line 62
    return-void
.end method

.method private getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    .registers 9
    .param p1, "id"    # Landroid/net/Uri;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "create"    # Z

    .prologue
    const/4 v3, 0x0

    .line 218
    if-eqz p1, :cond_5

    if-nez p2, :cond_7

    :cond_5
    move-object v2, v3

    .line 231
    :cond_6
    :goto_6
    return-object v2

    .line 219
    :cond_7
    iget-object v4, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 220
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_2b

    .line 221
    iget-object v4, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 222
    .local v2, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v4, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    iget-object v4, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {v4, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 220
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 226
    .end local v2    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_2b
    if-eqz p3, :cond_38

    .line 227
    new-instance v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    invoke-direct {v2, p1, p2, v3}, Lcom/android/server/notification/ConditionProviders$ConditionRecord;-><init>(Landroid/net/Uri;Landroid/content/ComponentName;Lcom/android/server/notification/ConditionProviders$1;)V

    .line 228
    .restart local v2    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v3, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .end local v2    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_38
    move-object v2, v3

    .line 231
    goto :goto_6
.end method

.method private static provider(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)Landroid/service/notification/IConditionProvider;
    .registers 2
    .param p0, "r"    # Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .prologue
    .line 361
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    invoke-static {v0}, provider(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/IConditionProvider;

    move-result-object v0

    goto :goto_3
.end method

.method private static provider(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/IConditionProvider;
    .registers 2
    .param p0, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 365
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/IConditionProvider;

    goto :goto_3
.end method

.method private requestConditionsLocked(I)V
    .registers 11
    .param p1, "flags"    # I

    .prologue
    .line 369
    iget-object v6, p0, mServices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 370
    .local v3, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    invoke-static {v3}, provider(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/IConditionProvider;

    move-result-object v4

    .line 371
    .local v4, "provider":Landroid/service/notification/IConditionProvider;
    if-eqz v4, :cond_6

    .line 373
    iget-object v6, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_20
    if-ltz v1, :cond_3b

    .line 374
    iget-object v6, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 375
    .local v5, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v6, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-eq v6, v3, :cond_31

    .line 373
    :cond_2e
    :goto_2e
    add-int/lit8 v1, v1, -0x1

    goto :goto_20

    .line 376
    :cond_31
    iget-boolean v6, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->subscribed:Z

    if-nez v6, :cond_2e

    .line 377
    iget-object v6, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2e

    .line 380
    .end local v5    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_3b
    :try_start_3b
    invoke-interface {v4, p1}, Landroid/service/notification/IConditionProvider;->onRequestConditions(I)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_6

    .line 381
    :catch_3f
    move-exception v0

    .line 382
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v6, p0, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error requesting conditions from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 385
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v3    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v4    # "provider":Landroid/service/notification/IConditionProvider;
    :cond_5b
    return-void
.end method

.method private static varargs safeSet([Ljava/lang/Object;)Landroid/util/ArraySet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Landroid/util/ArraySet",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 332
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 333
    .local v3, "rt":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    if-eqz p0, :cond_a

    array-length v4, p0

    if-nez v4, :cond_b

    .line 341
    :cond_a
    return-object v3

    .line 334
    :cond_b
    array-length v0, p0

    .line 335
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_a

    .line 336
    aget-object v2, p0, v1

    .line 337
    .local v2, "item":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_16

    .line 338
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 335
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_d
.end method

.method private subscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V
    .registers 8
    .param p1, "r"    # Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .prologue
    .line 314
    iget-boolean v3, p0, DEBUG:Z

    if-eqz v3, :cond_1d

    iget-object v3, p0, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "subscribeLocked "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_1d
    invoke-static {p1}, provider(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)Landroid/service/notification/IConditionProvider;

    move-result-object v1

    .line 316
    .local v1, "provider":Landroid/service/notification/IConditionProvider;
    const/4 v2, 0x0

    .line 317
    .local v2, "re":Landroid/os/RemoteException;
    if-eqz v1, :cond_52

    .line 319
    :try_start_24
    iget-object v3, p0, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Subscribing to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v3, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-interface {v1, v3}, Landroid/service/notification/IConditionProvider;->onSubscribe(Landroid/net/Uri;)V

    .line 321
    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->subscribed:Z
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_52} :catch_5a

    .line 327
    :cond_52
    :goto_52
    if-eqz p1, :cond_75

    iget-object v3, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    :goto_56
    invoke-static {v3, v1, v2}, Lcom/android/server/notification/ZenLog;->traceSubscribe(Landroid/net/Uri;Landroid/service/notification/IConditionProvider;Landroid/os/RemoteException;)V

    .line 328
    return-void

    .line 322
    :catch_5a
    move-exception v0

    .line 323
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, p0, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error subscribing to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    move-object v2, v0

    goto :goto_52

    .line 327
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_75
    const/4 v3, 0x0

    goto :goto_56
.end method

.method private unsubscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V
    .registers 8
    .param p1, "r"    # Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .prologue
    .line 345
    iget-boolean v3, p0, DEBUG:Z

    if-eqz v3, :cond_1d

    iget-object v3, p0, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unsubscribeLocked "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_1d
    invoke-static {p1}, provider(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)Landroid/service/notification/IConditionProvider;

    move-result-object v1

    .line 347
    .local v1, "provider":Landroid/service/notification/IConditionProvider;
    const/4 v2, 0x0

    .line 348
    .local v2, "re":Landroid/os/RemoteException;
    if-eqz v1, :cond_2c

    .line 350
    :try_start_24
    iget-object v3, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-interface {v1, v3}, Landroid/service/notification/IConditionProvider;->onUnsubscribe(Landroid/net/Uri;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_29} :catch_34

    .line 355
    :goto_29
    const/4 v3, 0x0

    iput-boolean v3, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->subscribed:Z

    .line 357
    :cond_2c
    if-eqz p1, :cond_4f

    iget-object v3, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    :goto_30
    invoke-static {v3, v1, v2}, Lcom/android/server/notification/ZenLog;->traceUnsubscribe(Landroid/net/Uri;Landroid/service/notification/IConditionProvider;Landroid/os/RemoteException;)V

    .line 358
    return-void

    .line 351
    :catch_34
    move-exception v0

    .line 352
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, p0, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error unsubscribing to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 353
    move-object v2, v0

    goto :goto_29

    .line 357
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4f
    const/4 v3, 0x0

    goto :goto_30
.end method

.method private validateConditions(Ljava/lang/String;[Landroid/service/notification/Condition;)[Landroid/service/notification/Condition;
    .registers 11
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "conditions"    # [Landroid/service/notification/Condition;

    .prologue
    const/4 v3, 0x0

    .line 193
    if-eqz p2, :cond_6

    array-length v5, p2

    if-nez v5, :cond_8

    :cond_6
    move-object p2, v3

    .line 214
    .end local p2    # "conditions":[Landroid/service/notification/Condition;
    :cond_7
    :goto_7
    return-object p2

    .line 194
    .restart local p2    # "conditions":[Landroid/service/notification/Condition;
    :cond_8
    array-length v0, p2

    .line 195
    .local v0, "N":I
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 196
    .local v4, "valid":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/net/Uri;Landroid/service/notification/Condition;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_6f

    .line 197
    aget-object v5, p2, v1

    iget-object v2, v5, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    .line 198
    .local v2, "id":Landroid/net/Uri;
    invoke-static {v2, p1}, Landroid/service/notification/Condition;->isValidId(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_40

    .line 199
    iget-object v5, p0, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring condition from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for invalid id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :goto_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 202
    :cond_40
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 203
    iget-object v5, p0, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring condition from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for duplicate id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 206
    :cond_69
    aget-object v5, p2, v1

    invoke-virtual {v4, v2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d

    .line 208
    .end local v2    # "id":Landroid/net/Uri;
    :cond_6f
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-nez v5, :cond_77

    move-object p2, v3

    goto :goto_7

    .line 209
    :cond_77
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-eq v5, v0, :cond_7

    .line 210
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    new-array v3, v5, [Landroid/service/notification/Condition;

    .line 211
    .local v3, "rt":[Landroid/service/notification/Condition;
    const/4 v1, 0x0

    :goto_84
    array-length v5, v3

    if-ge v1, v5, :cond_92

    .line 212
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/Condition;

    aput-object v5, v3, v1

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_84

    :cond_92
    move-object p2, v3

    .line 214
    goto/16 :goto_7
.end method


# virtual methods
.method public addSystemProvider(Lcom/android/server/notification/SystemConditionProviderService;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/notification/SystemConditionProviderService;

    .prologue
    .line 73
    iget-object v0, p0, mSystemConditionProviders:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/server/notification/SystemConditionProviderService;->attachBase(Landroid/content/Context;)V

    .line 75
    invoke-virtual {p1}, Lcom/android/server/notification/SystemConditionProviderService;->asInterface()Landroid/service/notification/IConditionProvider;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/notification/SystemConditionProviderService;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, registerService(Landroid/os/IInterface;Landroid/content/ComponentName;I)V

    .line 76
    return-void
.end method

.method protected asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 123
    invoke-static {p1}, Landroid/service/notification/IConditionProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IConditionProvider;

    move-result-object v0

    return-object v0
.end method

.method public checkServiceToken(Landroid/service/notification/IConditionProvider;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 4
    .param p1, "provider"    # Landroid/service/notification/IConditionProvider;

    .prologue
    .line 169
    iget-object v1, p0, mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 170
    :try_start_3
    invoke-virtual {p0, p1}, checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 171
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 97
    iget-object v4, p0, mMutex:Ljava/lang/Object;

    monitor-enter v4

    .line 98
    :try_start_6
    const-string v3, "    mRecords("

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, "):"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    iget-object v3, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_58

    .line 100
    iget-object v3, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 101
    .local v2, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    if-eqz p2, :cond_37

    iget-object v3, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {p2, v3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_37

    .line 99
    :cond_34
    :goto_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 102
    :cond_37
    const-string v3, "      "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 103
    iget-object v3, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/server/notification/CountdownConditionProvider;->tryParseDescription(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "countdownDesc":Ljava/lang/String;
    if-eqz v0, :cond_34

    .line 105
    const-string v3, "        ("

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ")"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_34

    .line 108
    .end local v0    # "countdownDesc":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :catchall_55
    move-exception v3

    monitor-exit v4
    :try_end_57
    .catchall {:try_start_6 .. :try_end_57} :catchall_55

    throw v3

    .restart local v1    # "i":I
    :cond_58
    :try_start_58
    monitor-exit v4
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_55

    .line 109
    if-nez p2, :cond_88

    .line 110
    const-string v3, "    mListeners("

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, "):"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    const/4 v1, 0x0

    :goto_6f
    iget-object v3, p0, mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_88

    .line 112
    const-string v3, "      "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_6f

    .line 115
    :cond_88
    const-string v3, "    mSystemConditionProviders: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, mSystemConditionProviderNames:Landroid/util/ArraySet;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 116
    const/4 v1, 0x0

    :goto_93
    iget-object v3, p0, mSystemConditionProviders:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v1, v3, :cond_a9

    .line 117
    iget-object v3, p0, mSystemConditionProviders:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/SystemConditionProviderService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/SystemConditionProviderService;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_93

    .line 119
    :cond_a9
    return-void
.end method

.method public ensureRecordExists(Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/IConditionProvider;)V
    .registers 6
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "conditionId"    # Landroid/net/Uri;
    .param p3, "provider"    # Landroid/service/notification/IConditionProvider;

    .prologue
    .line 281
    const/4 v1, 0x1

    invoke-direct {p0, p2, p1, v1}, getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object v0

    .line 282
    .local v0, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v1, v0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-nez v1, :cond_f

    .line 284
    invoke-virtual {p0, p3}, checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 286
    :cond_f
    return-void
.end method

.method public findCondition(Landroid/content/ComponentName;Landroid/net/Uri;)Landroid/service/notification/Condition;
    .registers 7
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "conditionId"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 271
    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    .line 274
    :cond_5
    :goto_5
    return-object v1

    .line 272
    :cond_6
    iget-object v2, p0, mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 273
    const/4 v3, 0x0

    :try_start_a
    invoke-direct {p0, p2, p1, v3}, getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object v0

    .line 274
    .local v0, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    if-eqz v0, :cond_12

    iget-object v1, v0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->condition:Landroid/service/notification/Condition;

    :cond_12
    monitor-exit v2

    goto :goto_5

    .line 275
    .end local v0    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :catchall_14
    move-exception v1

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_14

    throw v1
.end method

.method public findConditionProvider(Landroid/content/ComponentName;)Landroid/service/notification/IConditionProvider;
    .registers 6
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 261
    if-nez p1, :cond_4

    .line 267
    :cond_3
    :goto_3
    return-object v2

    .line 262
    :cond_4
    iget-object v3, p0, mServices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 263
    .local v1, "service":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v3, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 264
    invoke-static {v1}, provider(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/IConditionProvider;

    move-result-object v2

    goto :goto_3
.end method

.method protected getConfig()Lcom/android/server/notification/ManagedServices$Config;
    .registers 3

    .prologue
    .line 84
    new-instance v0, Lcom/android/server/notification/ManagedServices$Config;

    invoke-direct {v0}, Lcom/android/server/notification/ManagedServices$Config;-><init>()V

    .line 85
    .local v0, "c":Lcom/android/server/notification/ManagedServices$Config;
    const-string v1, "condition provider"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    .line 86
    const-string v1, "android.service.notification.ConditionProviderService"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    .line 87
    const-string/jumbo v1, "enabled_condition_providers"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    .line 88
    const-string v1, "android.permission.BIND_CONDITION_PROVIDER_SERVICE"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    .line 89
    const-string v1, "android.settings.ACTION_CONDITION_PROVIDER_SETTINGS"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->settingsAction:Ljava/lang/String;

    .line 90
    const v1, 0x1040445

    iput v1, v0, Lcom/android/server/notification/ManagedServices$Config;->clientLabel:I

    .line 91
    return-object v0
.end method

.method public getSystemProviders()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/server/notification/SystemConditionProviderService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, mSystemConditionProviders:Landroid/util/ArraySet;

    return-object v0
.end method

.method public isSystemProviderEnabled(Ljava/lang/String;)Z
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v0, p0, mSystemConditionProviderNames:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public notifyConditions(Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;[Landroid/service/notification/Condition;)V
    .registers 15
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p3, "conditions"    # [Landroid/service/notification/Condition;

    .prologue
    .line 235
    iget-object v8, p0, mMutex:Ljava/lang/Object;

    monitor-enter v8

    .line 236
    :try_start_3
    iget-boolean v7, p0, DEBUG:Z

    if-eqz v7, :cond_37

    iget-object v9, p0, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "notifyConditions pkg="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " info="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " conditions="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez p3, :cond_42

    const/4 v7, 0x0

    :goto_2c
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_37
    invoke-direct {p0, p1, p3}, validateConditions(Ljava/lang/String;[Landroid/service/notification/Condition;)[Landroid/service/notification/Condition;

    move-result-object p3

    .line 239
    if-eqz p3, :cond_40

    array-length v7, p3

    if-nez v7, :cond_47

    :cond_40
    monitor-exit v8

    .line 258
    :goto_41
    return-void

    .line 236
    :cond_42
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    goto :goto_2c

    .line 240
    :cond_47
    array-length v0, p3

    .line 241
    .local v0, "N":I
    iget-object v7, p0, mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_52
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/IConditionListener;
    :try_end_5e
    .catchall {:try_start_3 .. :try_end_5e} :catchall_7c

    .line 243
    .local v5, "listener":Landroid/service/notification/IConditionListener;
    :try_start_5e
    invoke-interface {v5, p3}, Landroid/service/notification/IConditionListener;->onConditionsReceived([Landroid/service/notification/Condition;)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_61} :catch_62
    .catchall {:try_start_5e .. :try_end_61} :catchall_7c

    goto :goto_52

    .line 244
    :catch_62
    move-exception v2

    .line 245
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_63
    iget-object v7, p0, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error sending conditions to listener "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_52

    .line 257
    .end local v0    # "N":I
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "listener":Landroid/service/notification/IConditionListener;
    :catchall_7c
    move-exception v7

    monitor-exit v8
    :try_end_7e
    .catchall {:try_start_63 .. :try_end_7e} :catchall_7c

    throw v7

    .line 248
    .restart local v0    # "N":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_7f
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_80
    if-ge v3, v0, :cond_9f

    .line 249
    :try_start_82
    aget-object v1, p3, v3

    .line 250
    .local v1, "c":Landroid/service/notification/Condition;
    iget-object v7, v1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    iget-object v9, p2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    const/4 v10, 0x1

    invoke-direct {p0, v7, v9, v10}, getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object v6

    .line 251
    .local v6, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iput-object p2, v6, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 252
    iput-object v1, v6, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->condition:Landroid/service/notification/Condition;

    .line 253
    iget-object v7, p0, mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    if-eqz v7, :cond_9c

    .line 254
    iget-object v7, p0, mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    iget-object v9, v1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-interface {v7, v9, v1}, Lcom/android/server/notification/ConditionProviders$Callback;->onConditionChanged(Landroid/net/Uri;Landroid/service/notification/Condition;)V

    .line 248
    :cond_9c
    add-int/lit8 v3, v3, 0x1

    goto :goto_80

    .line 257
    .end local v1    # "c":Landroid/service/notification/Condition;
    .end local v6    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_9f
    monitor-exit v8
    :try_end_a0
    .catchall {:try_start_82 .. :try_end_a0} :catchall_7c

    goto :goto_41
.end method

.method public onBootPhaseAppsCanStart()V
    .registers 3

    .prologue
    .line 128
    invoke-super {p0}, Lcom/android/server/notification/ManagedServices;->onBootPhaseAppsCanStart()V

    .line 129
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v1, p0, mSystemConditionProviders:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 130
    iget-object v1, p0, mSystemConditionProviders:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/SystemConditionProviderService;

    invoke-virtual {v1}, Lcom/android/server/notification/SystemConditionProviderService;->onBootComplete()V

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 132
    :cond_1a
    iget-object v1, p0, mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    if-eqz v1, :cond_23

    .line 133
    iget-object v1, p0, mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    invoke-interface {v1}, Lcom/android/server/notification/ConditionProviders$Callback;->onBootComplete()V

    .line 135
    :cond_23
    return-void
.end method

.method protected onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 5
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 147
    invoke-static {p1}, provider(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/IConditionProvider;

    move-result-object v0

    .line 149
    .local v0, "provider":Landroid/service/notification/IConditionProvider;
    :try_start_4
    invoke-interface {v0}, Landroid/service/notification/IConditionProvider;->onConnected()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_13

    .line 153
    :goto_7
    iget-object v1, p0, mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    if-eqz v1, :cond_12

    .line 154
    iget-object v1, p0, mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    iget-object v2, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-interface {v1, v2}, Lcom/android/server/notification/ConditionProviders$Callback;->onServiceAdded(Landroid/content/ComponentName;)V

    .line 156
    :cond_12
    return-void

    .line 150
    :catch_13
    move-exception v1

    goto :goto_7
.end method

.method protected onServiceRemovedLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 6
    .param p1, "removed"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 160
    if-nez p1, :cond_3

    .line 166
    :cond_2
    return-void

    .line 161
    :cond_3
    iget-object v2, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_2

    .line 162
    iget-object v2, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 163
    .local v1, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v2, v1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 161
    :goto_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 164
    :cond_22
    iget-object v2, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1f
.end method

.method public onUserSwitched(I)V
    .registers 3
    .param p1, "user"    # I

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/android/server/notification/ManagedServices;->onUserSwitched(I)V

    .line 140
    iget-object v0, p0, mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    if-eqz v0, :cond_c

    .line 141
    iget-object v0, p0, mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    invoke-interface {v0}, Lcom/android/server/notification/ConditionProviders$Callback;->onUserSwitched()V

    .line 143
    :cond_c
    return-void
.end method

.method public requestConditions(Landroid/service/notification/IConditionListener;I)V
    .registers 7
    .param p1, "callback"    # Landroid/service/notification/IConditionListener;
    .param p2, "relevance"    # I

    .prologue
    .line 175
    iget-object v1, p0, mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 176
    :try_start_3
    iget-boolean v0, p0, DEBUG:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestConditions callback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " relevance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/service/notification/Condition;->relevanceToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_2e
    if-nez p1, :cond_32

    monitor-exit v1

    .line 190
    :goto_31
    return-void

    .line 179
    :cond_32
    and-int/lit8 p2, p2, 0x3

    .line 180
    if-eqz p2, :cond_47

    .line 181
    iget-object v0, p0, mListeners:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/service/notification/IConditionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-direct {p0, p2}, requestConditionsLocked(I)V

    .line 189
    :cond_42
    :goto_42
    monitor-exit v1

    goto :goto_31

    :catchall_44
    move-exception v0

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_44

    throw v0

    .line 184
    :cond_47
    :try_start_47
    iget-object v0, p0, mListeners:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/service/notification/IConditionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v0, p0, mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, v0}, requestConditionsLocked(I)V
    :try_end_5c
    .catchall {:try_start_47 .. :try_end_5c} :catchall_44

    goto :goto_42
.end method

.method public setCallback(Lcom/android/server/notification/ConditionProviders$Callback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/server/notification/ConditionProviders$Callback;

    .prologue
    .line 65
    iput-object p1, p0, mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    .line 66
    return-void
.end method

.method public subscribeIfNecessary(Landroid/content/ComponentName;Landroid/net/Uri;)Z
    .registers 9
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "conditionId"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 289
    iget-object v2, p0, mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 290
    const/4 v3, 0x0

    :try_start_5
    invoke-direct {p0, p2, p1, v3}, getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object v0

    .line 291
    .local v0, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    if-nez v0, :cond_2f

    .line 292
    iget-object v3, p0, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to subscribe to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    monitor-exit v2

    .line 297
    :goto_2e
    return v1

    .line 295
    :cond_2f
    iget-boolean v1, v0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->subscribed:Z

    if-eqz v1, :cond_39

    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_2e

    .line 298
    .end local v0    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :catchall_36
    move-exception v1

    monitor-exit v2
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_36

    throw v1

    .line 296
    .restart local v0    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_39
    :try_start_39
    invoke-direct {p0, v0}, subscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V

    .line 297
    iget-boolean v1, v0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->subscribed:Z

    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_36

    goto :goto_2e
.end method

.method public unsubscribeIfNecessary(Landroid/content/ComponentName;Landroid/net/Uri;)V
    .registers 8
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 302
    iget-object v2, p0, mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 303
    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0, p2, p1, v1}, getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object v0

    .line 304
    .local v0, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    if-nez v0, :cond_2e

    .line 305
    iget-object v1, p0, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to unsubscribe to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    monitor-exit v2

    .line 311
    :goto_2d
    return-void

    .line 308
    :cond_2e
    iget-boolean v1, v0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->subscribed:Z

    if-nez v1, :cond_37

    monitor-exit v2

    goto :goto_2d

    .line 310
    .end local v0    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :catchall_34
    move-exception v1

    monitor-exit v2
    :try_end_36
    .catchall {:try_start_4 .. :try_end_36} :catchall_34

    throw v1

    .line 309
    .restart local v0    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_37
    :try_start_37
    invoke-direct {p0, v0}, unsubscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V

    .line 310
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_34

    goto :goto_2d
.end method
