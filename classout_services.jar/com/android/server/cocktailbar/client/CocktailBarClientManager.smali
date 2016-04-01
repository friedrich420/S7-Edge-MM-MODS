.class public Lcom/android/server/cocktailbar/client/CocktailBarClientManager;
.super Ljava/lang/Object;
.source "CocktailBarClientManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/client/CocktailBarClientManager$ClientInfo;
    }
.end annotation


# static fields
.field private static final ACTION_COCKTAILBAR_SETTING_CHANGED:Ljava/lang/String; = "com.samsung.android.edge.intent.action.SETTING_CHANGED"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mClientInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cocktailbar/client/CocktailBarClientManager$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/android/server/cocktailbar/client/CocktailBarClientManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mClientInfos:Ljava/util/ArrayList;

    .line 26
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 16
    sget-object v0, TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/cocktailbar/client/CocktailBarClientManager;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cocktailbar/client/CocktailBarClientManager;

    .prologue
    .line 16
    iget-object v0, p0, mClientInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/cocktailbar/client/CocktailBarClientManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cocktailbar/client/CocktailBarClientManager;

    .prologue
    .line 16
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public dump()Ljava/lang/String;
    .registers 7

    .prologue
    .line 140
    const-string v2, "[CocktailBarClientManager]"

    .line 141
    .local v2, "result":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 142
    iget-object v4, p0, mClientInfos:Ljava/util/ArrayList;

    monitor-enter v4

    .line 143
    :try_start_18
    iget-object v3, p0, mClientInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/client/CocktailBarClientManager$ClientInfo;

    .line 144
    .local v1, "info":Lcom/android/server/cocktailbar/client/CocktailBarClientManager$ClientInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/client/CocktailBarClientManager$ClientInfo;->dump()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 146
    goto :goto_1e

    .line 147
    .end local v1    # "info":Lcom/android/server/cocktailbar/client/CocktailBarClientManager$ClientInfo;
    :cond_53
    monitor-exit v4

    .line 148
    return-object v2

    .line 147
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_55
    move-exception v3

    monitor-exit v4
    :try_end_57
    .catchall {:try_start_18 .. :try_end_57} :catchall_55

    throw v3
.end method

.method public registerClient(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .registers 12
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v1, 0x0

    .line 30
    if-nez p1, :cond_c

    .line 31
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "registerClient : binder is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :goto_b
    return v1

    .line 34
    :cond_c
    iget-object v8, p0, mClientInfos:Ljava/util/ArrayList;

    monitor-enter v8

    .line 35
    :try_start_f
    iget-object v2, p0, mClientInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_15
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/client/CocktailBarClientManager$ClientInfo;

    .line 36
    .local v0, "info":Lcom/android/server/cocktailbar/client/CocktailBarClientManager$ClientInfo;
    if-eqz v0, :cond_15

    .line 37
    iget-object v2, v0, Lcom/android/server/cocktailbar/client/CocktailBarClientManager$ClientInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 38
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "registerClient : the client was already registered"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    monitor-exit v8

    goto :goto_b

    .line 63
    .end local v0    # "info":Lcom/android/server/cocktailbar/client/CocktailBarClientManager$ClientInfo;
    .end local v7    # "i$":Ljava/util/Iterator;
    :catchall_35
    move-exception v1

    monitor-exit v8
    :try_end_37
    .catchall {:try_start_f .. :try_end_37} :catchall_35

    throw v1

    .line 43
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_38
    :try_start_38
    iget-object v1, p0, mClientInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/client/CocktailBarClientManager$ClientInfo;

    .line 44
    .restart local v0    # "info":Lcom/android/server/cocktailbar/client/CocktailBarClientManager$ClientInfo;
    if-eqz v0, :cond_3e

    .line 45
    iget-object v1, v0, Lcom/android/server/cocktailbar/client/CocktailBarClientManager$ClientInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p2, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 46
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerClient : found another clientInfo"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v1, p0, mClientInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_69

    .line 48
    iget-object v1, p0, mClientInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 50
    :cond_69
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 51
    iget-object v1, p0, mClientInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 56
    .end local v0    # "info":Lcom/android/server/cocktailbar/client/CocktailBarClientManager$ClientInfo;
    :cond_72
    new-instance v0, Lcom/android/server/cocktailbar/client/CocktailBarClientManager$ClientInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/cocktailbar/client/CocktailBarClientManager$ClientInfo;-><init>(Lcom/android/server/cocktailbar/client/CocktailBarClientManager;Landroid/os/IBinder;Landroid/content/ComponentName;II)V
    :try_end_82
    .catchall {:try_start_38 .. :try_end_82} :catchall_35

    .line 58
    .restart local v0    # "info":Lcom/android/server/cocktailbar/client/CocktailBarClientManager$ClientInfo;
    const/4 v1, 0x0

    :try_start_83
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_86
    .catch Landroid/os/RemoteException; {:try_start_83 .. :try_end_86} :catch_8f
    .catchall {:try_start_83 .. :try_end_86} :catchall_35

    .line 62
    :goto_86
    :try_start_86
    iget-object v1, p0, mClientInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    monitor-exit v8

    .line 64
    const/4 v1, 0x1

    goto/16 :goto_b

    .line 59
    :catch_8f
    move-exception v6

    .line 60
    .local v6, "e":Landroid/os/RemoteException;
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerClient : exception in linkToDeath "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a9
    .catchall {:try_start_86 .. :try_end_a9} :catchall_35

    goto :goto_86
.end method

.method public unregisterClient(Landroid/os/IBinder;)V
    .registers 8
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 68
    if-nez p1, :cond_b

    .line 69
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "unregisterClient : binder is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_a
    return-void

    .line 72
    :cond_b
    iget-object v4, p0, mClientInfos:Ljava/util/ArrayList;

    monitor-enter v4

    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, "clientInfo":Lcom/android/server/cocktailbar/client/CocktailBarClientManager$ClientInfo;
    :try_start_f
    iget-object v3, p0, mClientInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/client/CocktailBarClientManager$ClientInfo;

    .line 75
    .local v2, "info":Lcom/android/server/cocktailbar/client/CocktailBarClientManager$ClientInfo;
    if-eqz v2, :cond_15

    .line 76
    iget-object v3, v2, Lcom/android/server/cocktailbar/client/CocktailBarClientManager$ClientInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 77
    move-object v0, v2

    goto :goto_15

    .line 81
    .end local v2    # "info":Lcom/android/server/cocktailbar/client/CocktailBarClientManager$ClientInfo;
    :cond_2d
    if-nez v0, :cond_3c

    .line 82
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v5, "unregisterClient : cannot find the matched client"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    monitor-exit v4

    goto :goto_a

    .line 92
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_39
    move-exception v3

    monitor-exit v4
    :try_end_3b
    .catchall {:try_start_f .. :try_end_3b} :catchall_39

    throw v3

    .line 85
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3c
    :try_start_3c
    iget-object v3, p0, mClientInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_49

    .line 86
    iget-object v3, p0, mClientInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 88
    :cond_49
    if-eqz v0, :cond_4f

    .line 89
    const/4 v3, 0x0

    invoke-interface {p1, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 91
    :cond_4f
    iget-object v3, p0, mClientInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 92
    monitor-exit v4
    :try_end_55
    .catchall {:try_start_3c .. :try_end_55} :catchall_39

    goto :goto_a
.end method
