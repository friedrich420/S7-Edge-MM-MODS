.class Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;
.super Lcom/android/internal/widget/IRemoteViewsAdapterConnection$Stub;
.source "RemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteViewsAdapterServiceConnection"
.end annotation


# instance fields
.field private mAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/RemoteViewsAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mIsConnected:Z

.field private mIsConnecting:Z

.field private mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViewsAdapter;)V
    .registers 3
    .param p1, "adapter"    # Landroid/widget/RemoteViewsAdapter;

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/android/internal/widget/IRemoteViewsAdapterConnection$Stub;-><init>()V

    .line 154
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, mAdapter:Ljava/lang/ref/WeakReference;

    .line 155
    return-void
.end method

.method static synthetic access$802(Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;
    .param p1, "x1"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, mIsConnected:Z

    return p1
.end method

.method static synthetic access$902(Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;
    .param p1, "x1"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, mIsConnecting:Z

    return p1
.end method


# virtual methods
.method public declared-synchronized bind(Landroid/content/Context;ILandroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    .line 158
    monitor-enter p0

    :try_start_2
    iget-boolean v4, p0, mIsConnecting:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_5a

    if-nez v4, :cond_2c

    .line 163
    :try_start_6
    const-string/jumbo v4, "remoteAdapterCocktail"

    const/4 v5, -0x1

    invoke-virtual {p3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 164
    .local v1, "cocktail":I
    if-ne v1, v6, :cond_5d

    .line 165
    invoke-static {p1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v3

    .line 166
    .local v3, "mgr":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    iget-object v4, p0, mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViewsAdapter;

    .local v0, "adapter":Landroid/widget/RemoteViewsAdapter;
    if-eqz v0, :cond_2e

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v4, p2, p3, v5}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/os/IBinder;)V

    .line 191
    .end local v3    # "mgr":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    :goto_29
    const/4 v4, 0x1

    iput-boolean v4, p0, mIsConnecting:Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2c} :catch_36
    .catchall {:try_start_6 .. :try_end_2c} :catchall_5a

    .line 198
    .end local v0    # "adapter":Landroid/widget/RemoteViewsAdapter;
    .end local v1    # "cocktail":I
    :cond_2c
    :goto_2c
    monitor-exit p0

    return-void

    .line 170
    .restart local v0    # "adapter":Landroid/widget/RemoteViewsAdapter;
    .restart local v1    # "cocktail":I
    .restart local v3    # "mgr":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    :cond_2e
    :try_start_2e
    const-string v4, "RemoteViewsAdapter"

    const-string v5, "bind: adapter was null"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_35} :catch_36
    .catchall {:try_start_2e .. :try_end_35} :catchall_5a

    goto :goto_29

    .line 192
    .end local v0    # "adapter":Landroid/widget/RemoteViewsAdapter;
    .end local v1    # "cocktail":I
    .end local v3    # "mgr":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    :catch_36
    move-exception v2

    .line 193
    .local v2, "e":Ljava/lang/Exception;
    :try_start_37
    const-string v4, "RemoteViewsAdapterServiceConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bind(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v4, 0x0

    iput-boolean v4, p0, mIsConnecting:Z

    .line 195
    const/4 v4, 0x0

    iput-boolean v4, p0, mIsConnected:Z
    :try_end_59
    .catchall {:try_start_37 .. :try_end_59} :catchall_5a

    goto :goto_2c

    .line 158
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_5a
    move-exception v4

    monitor-exit p0

    throw v4

    .line 173
    .restart local v1    # "cocktail":I
    :cond_5d
    :try_start_5d
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    .line 174
    .local v3, "mgr":Landroid/appwidget/AppWidgetManager;
    iget-object v4, p0, mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViewsAdapter;

    .restart local v0    # "adapter":Landroid/widget/RemoteViewsAdapter;
    if-eqz v0, :cond_77

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v4, p2, p3, v5}, Landroid/appwidget/AppWidgetManager;->bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/os/IBinder;)V

    goto :goto_29

    .line 178
    :cond_77
    const-string v4, "RemoteViewsAdapter"

    const-string v5, "bind: adapter was null"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_7e} :catch_36
    .catchall {:try_start_5d .. :try_end_7e} :catchall_5a

    goto :goto_29
.end method

.method public declared-synchronized getRemoteViewsFactory()Lcom/android/internal/widget/IRemoteViewsFactory;
    .registers 2

    .prologue
    .line 326
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isConnected()Z
    .registers 2

    .prologue
    .line 330
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, mIsConnected:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceConnected(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    .line 239
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IRemoteViewsFactory;

    move-result-object v1

    iput-object v1, p0, mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;

    .line 242
    iget-object v1, p0, mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViewsAdapter;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_20

    .line 243
    .local v0, "adapter":Landroid/widget/RemoteViewsAdapter;
    if-nez v0, :cond_13

    .line 300
    :goto_11
    monitor-exit p0

    return-void

    .line 246
    :cond_13
    :try_start_13
    # getter for: Landroid/widget/RemoteViewsAdapter;->mWorkerQueue:Landroid/os/Handler;
    invoke-static {v0}, Landroid/widget/RemoteViewsAdapter;->access$1000(Landroid/widget/RemoteViewsAdapter;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;

    invoke-direct {v2, p0, v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;-><init>(Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;Landroid/widget/RemoteViewsAdapter;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_20

    goto :goto_11

    .line 239
    .end local v0    # "adapter":Landroid/widget/RemoteViewsAdapter;
    :catchall_20
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onServiceDisconnected()V
    .registers 4

    .prologue
    .line 303
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, mIsConnected:Z

    .line 304
    const/4 v1, 0x0

    iput-boolean v1, p0, mIsConnecting:Z

    .line 305
    const/4 v1, 0x0

    iput-object v1, p0, mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;

    .line 308
    iget-object v1, p0, mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViewsAdapter;
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_23

    .line 309
    .local v0, "adapter":Landroid/widget/RemoteViewsAdapter;
    if-nez v0, :cond_16

    .line 323
    :goto_14
    monitor-exit p0

    return-void

    .line 311
    :cond_16
    :try_start_16
    # getter for: Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;
    invoke-static {v0}, Landroid/widget/RemoteViewsAdapter;->access$600(Landroid/widget/RemoteViewsAdapter;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$2;

    invoke-direct {v2, p0, v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$2;-><init>(Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;Landroid/widget/RemoteViewsAdapter;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_23

    goto :goto_14

    .line 303
    .end local v0    # "adapter":Landroid/widget/RemoteViewsAdapter;
    :catchall_23
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized unbind(Landroid/content/Context;ILandroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 205
    monitor-enter p0

    :try_start_1
    const-string/jumbo v4, "remoteAdapterCocktail"

    const/4 v5, -0x1

    invoke-virtual {p3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 206
    .local v1, "cocktail":I
    const/4 v4, 0x1

    if-ne v1, v4, :cond_57

    .line 207
    invoke-static {p1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v3

    .line 208
    .local v3, "mgr":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    iget-object v4, p0, mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViewsAdapter;

    .local v0, "adapter":Landroid/widget/RemoteViewsAdapter;
    if-eqz v0, :cond_26

    .line 209
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->unbindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;)V

    .line 230
    .end local v3    # "mgr":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    :goto_21
    const/4 v4, 0x0

    iput-boolean v4, p0, mIsConnecting:Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24} :catch_2f
    .catchall {:try_start_1 .. :try_end_24} :catchall_54

    .line 236
    .end local v0    # "adapter":Landroid/widget/RemoteViewsAdapter;
    .end local v1    # "cocktail":I
    :goto_24
    monitor-exit p0

    return-void

    .line 211
    .restart local v0    # "adapter":Landroid/widget/RemoteViewsAdapter;
    .restart local v1    # "cocktail":I
    .restart local v3    # "mgr":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    :cond_26
    :try_start_26
    const-string v4, "RemoteViewsAdapter"

    const-string/jumbo v5, "unbind: adapter was null"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2e} :catch_2f
    .catchall {:try_start_26 .. :try_end_2e} :catchall_54

    goto :goto_21

    .line 231
    .end local v0    # "adapter":Landroid/widget/RemoteViewsAdapter;
    .end local v1    # "cocktail":I
    .end local v3    # "mgr":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    :catch_2f
    move-exception v2

    .line 232
    .local v2, "e":Ljava/lang/Exception;
    :try_start_30
    const-string v4, "RemoteViewsAdapterServiceConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unbind(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v4, 0x0

    iput-boolean v4, p0, mIsConnecting:Z

    .line 234
    const/4 v4, 0x0

    iput-boolean v4, p0, mIsConnected:Z
    :try_end_53
    .catchall {:try_start_30 .. :try_end_53} :catchall_54

    goto :goto_24

    .line 205
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_54
    move-exception v4

    monitor-exit p0

    throw v4

    .line 214
    .restart local v1    # "cocktail":I
    :cond_57
    :try_start_57
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    .line 215
    .local v3, "mgr":Landroid/appwidget/AppWidgetManager;
    iget-object v4, p0, mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViewsAdapter;

    .restart local v0    # "adapter":Landroid/widget/RemoteViewsAdapter;
    if-eqz v0, :cond_6d

    .line 216
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2, p3}, Landroid/appwidget/AppWidgetManager;->unbindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;)V

    goto :goto_21

    .line 218
    :cond_6d
    const-string v4, "RemoteViewsAdapter"

    const-string/jumbo v5, "unbind: adapter was null"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_75} :catch_2f
    .catchall {:try_start_57 .. :try_end_75} :catchall_54

    goto :goto_21
.end method
