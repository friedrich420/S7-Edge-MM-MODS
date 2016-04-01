.class Lcom/android/server/cocktailbar/client/CocktailBarClientManager$ClientInfo;
.super Ljava/lang/Object;
.source "CocktailBarClientManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/client/CocktailBarClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientInfo"
.end annotation


# instance fields
.field final component:Landroid/content/ComponentName;

.field final pid:I

.field final synthetic this$0:Lcom/android/server/cocktailbar/client/CocktailBarClientManager;

.field final token:Landroid/os/IBinder;

.field final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/client/CocktailBarClientManager;Landroid/os/IBinder;Landroid/content/ComponentName;II)V
    .registers 6
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "pid"    # I
    .param p5, "uid"    # I

    .prologue
    .line 104
    iput-object p1, p0, this$0:Lcom/android/server/cocktailbar/client/CocktailBarClientManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p2, p0, token:Landroid/os/IBinder;

    .line 106
    iput-object p3, p0, component:Landroid/content/ComponentName;

    .line 107
    iput p4, p0, pid:I

    .line 108
    iput p5, p0, uid:I

    .line 109
    return-void
.end method

.method private startService(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 122
    # getter for: Lcom/android/server/cocktailbar/client/CocktailBarClientManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/client/CocktailBarClientManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startService : pkgName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", className = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.edge.intent.action.SETTING_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v1, "i":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 126
    :try_start_34
    iget-object v2, p0, this$0:Lcom/android/server/cocktailbar/client/CocktailBarClientManager;

    # getter for: Lcom/android/server/cocktailbar/client/CocktailBarClientManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/cocktailbar/client/CocktailBarClientManager;->access$200(Lcom/android/server/cocktailbar/client/CocktailBarClientManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3d} :catch_3e

    .line 131
    :goto_3d
    return-void

    .line 127
    :catch_3e
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 129
    # getter for: Lcom/android/server/cocktailbar/client/CocktailBarClientManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/client/CocktailBarClientManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .prologue
    .line 113
    # getter for: Lcom/android/server/cocktailbar/client/CocktailBarClientManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/client/CocktailBarClientManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied : binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, this$0:Lcom/android/server/cocktailbar/client/CocktailBarClientManager;

    # getter for: Lcom/android/server/cocktailbar/client/CocktailBarClientManager;->mClientInfos:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/cocktailbar/client/CocktailBarClientManager;->access$100(Lcom/android/server/cocktailbar/client/CocktailBarClientManager;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 115
    :try_start_23
    iget-object v0, p0, this$0:Lcom/android/server/cocktailbar/client/CocktailBarClientManager;

    # getter for: Lcom/android/server/cocktailbar/client/CocktailBarClientManager;->mClientInfos:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/cocktailbar/client/CocktailBarClientManager;->access$100(Lcom/android/server/cocktailbar/client/CocktailBarClientManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 116
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_43

    .line 117
    iget-object v0, p0, token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 118
    iget-object v0, p0, component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, startService(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void

    .line 116
    :catchall_43
    move-exception v0

    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v0
.end method

.method public dump()Ljava/lang/String;
    .registers 4

    .prologue
    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CocktailBarClientManager: component:("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") pid:("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") uid:("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "dumpResult":Ljava/lang/String;
    return-object v0
.end method
