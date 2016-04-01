.class Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;
.super Lcom/android/internal/widget/IRemoteViewsFactory$Stub;
.source "RemoteViewsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteViewsFactoryAdapter"
.end annotation


# instance fields
.field private mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

.field private mIsCreated:Z


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViewsService$RemoteViewsFactory;Z)V
    .registers 3
    .param p1, "factory"    # Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .param p2, "isCreated"    # Z

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;-><init>()V

    .line 141
    iput-object p1, p0, mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    .line 142
    iput-boolean p2, p0, mIsCreated:Z

    .line 143
    return-void
.end method


# virtual methods
.method public declared-synchronized getCount()I
    .registers 6

    .prologue
    .line 159
    monitor-enter p0

    const/4 v0, 0x0

    .line 161
    .local v0, "count":I
    :try_start_2
    iget-object v3, p0, mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v3}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getCount()I

    move-result v0

    .line 162
    if-nez v0, :cond_1d

    # getter for: Landroid/widget/RemoteViewsService;->mNoProductShip:Z
    invoke-static {}, Landroid/widget/RemoteViewsService;->access$000()Z

    move-result v3

    if-nez v3, :cond_16

    # invokes: Landroid/widget/RemoteViewsService;->getDebugLevel()I
    invoke-static {}, Landroid/widget/RemoteViewsService;->access$100()I

    move-result v3

    if-lez v3, :cond_1d

    .line 163
    :cond_16
    const-string v3, "RemoteViewsService"

    const-string v4, "getCount = 0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1d} :catch_1f
    .catchall {:try_start_2 .. :try_end_1d} :catchall_2c

    .line 169
    :cond_1d
    :goto_1d
    monitor-exit p0

    return v0

    .line 165
    :catch_1f
    move-exception v1

    .line 166
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 167
    .local v2, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_2b
    .catchall {:try_start_20 .. :try_end_2b} :catchall_2c

    goto :goto_1d

    .line 159
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "t":Ljava/lang/Thread;
    :catchall_2c
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getItemId(I)J
    .registers 7
    .param p1, "position"    # I

    .prologue
    .line 208
    monitor-enter p0

    const-wide/16 v2, 0x0

    .line 210
    .local v2, "id":J
    :try_start_3
    iget-object v4, p0, mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v4, p1}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getItemId(I)J
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_b
    .catchall {:try_start_3 .. :try_end_8} :catchall_18

    move-result-wide v2

    .line 215
    :goto_9
    monitor-exit p0

    return-wide v2

    .line 211
    :catch_b
    move-exception v0

    .line 212
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 213
    .local v1, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v4

    invoke-interface {v4, v1, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_18

    goto :goto_9

    .line 208
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "t":Ljava/lang/Thread;
    :catchall_18
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getLoadingView()Landroid/widget/RemoteViews;
    .registers 5

    .prologue
    .line 185
    monitor-enter p0

    const/4 v1, 0x0

    .line 187
    .local v1, "rv":Landroid/widget/RemoteViews;
    :try_start_2
    iget-object v3, p0, mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v3}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getLoadingView()Landroid/widget/RemoteViews;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_a
    .catchall {:try_start_2 .. :try_end_7} :catchall_17

    move-result-object v1

    .line 192
    :goto_8
    monitor-exit p0

    return-object v1

    .line 188
    :catch_a
    move-exception v0

    .line 189
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 190
    .local v2, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_17

    goto :goto_8

    .line 185
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "t":Ljava/lang/Thread;
    :catchall_17
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getViewAt(I)Landroid/widget/RemoteViews;
    .registers 6
    .param p1, "position"    # I

    .prologue
    .line 172
    monitor-enter p0

    const/4 v1, 0x0

    .line 174
    .local v1, "rv":Landroid/widget/RemoteViews;
    :try_start_2
    iget-object v3, p0, mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v3, p1}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getViewAt(I)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 175
    if-eqz v1, :cond_e

    .line 176
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/RemoteViews;->setIsWidgetCollectionChild(Z)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_10
    .catchall {:try_start_2 .. :try_end_e} :catchall_1d

    .line 182
    :cond_e
    :goto_e
    monitor-exit p0

    return-object v1

    .line 178
    :catch_10
    move-exception v0

    .line 179
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 180
    .local v2, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_1d

    goto :goto_e

    .line 172
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "t":Ljava/lang/Thread;
    :catchall_1d
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getViewTypeCount()I
    .registers 6

    .prologue
    .line 195
    monitor-enter p0

    const/4 v0, 0x0

    .line 197
    .local v0, "count":I
    :try_start_2
    iget-object v3, p0, mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v3}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getViewTypeCount()I

    move-result v0

    .line 198
    if-nez v0, :cond_1d

    # getter for: Landroid/widget/RemoteViewsService;->mNoProductShip:Z
    invoke-static {}, Landroid/widget/RemoteViewsService;->access$000()Z

    move-result v3

    if-nez v3, :cond_16

    # invokes: Landroid/widget/RemoteViewsService;->getDebugLevel()I
    invoke-static {}, Landroid/widget/RemoteViewsService;->access$100()I

    move-result v3

    if-lez v3, :cond_1d

    .line 199
    :cond_16
    const-string v3, "RemoteViewsService"

    const-string v4, "getViewTypeCount = 0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1d} :catch_1f
    .catchall {:try_start_2 .. :try_end_1d} :catchall_2c

    .line 205
    :cond_1d
    :goto_1d
    monitor-exit p0

    return v0

    .line 201
    :catch_1f
    move-exception v1

    .line 202
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 203
    .local v2, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_2b
    .catchall {:try_start_20 .. :try_end_2b} :catchall_2c

    goto :goto_1d

    .line 195
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "t":Ljava/lang/Thread;
    :catchall_2c
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized hasStableIds()Z
    .registers 5

    .prologue
    .line 218
    monitor-enter p0

    const/4 v1, 0x0

    .line 220
    .local v1, "hasStableIds":Z
    :try_start_2
    iget-object v3, p0, mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v3}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->hasStableIds()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_a
    .catchall {:try_start_2 .. :try_end_7} :catchall_17

    move-result v1

    .line 225
    :goto_8
    monitor-exit p0

    return v1

    .line 221
    :catch_a
    move-exception v0

    .line 222
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 223
    .local v2, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_17

    goto :goto_8

    .line 218
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "t":Ljava/lang/Thread;
    :catchall_17
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized isCreated()Z
    .registers 2

    .prologue
    .line 145
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, mIsCreated:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDataSetChanged()V
    .registers 4

    .prologue
    .line 149
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v2}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->onDataSetChanged()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_8
    .catchall {:try_start_1 .. :try_end_6} :catchall_15

    .line 154
    :goto_6
    monitor-exit p0

    return-void

    .line 150
    :catch_8
    move-exception v0

    .line 151
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 152
    .local v1, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_15

    goto :goto_6

    .line 149
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "t":Ljava/lang/Thread;
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onDataSetChangedAsync()V
    .registers 2

    .prologue
    .line 156
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, onDataSetChanged()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 157
    monitor-exit p0

    return-void

    .line 156
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDestroy(Landroid/content/Intent;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 228
    # getter for: Landroid/widget/RemoteViewsService;->sLock:Ljava/lang/Object;
    invoke-static {}, Landroid/widget/RemoteViewsService;->access$200()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 229
    :try_start_5
    new-instance v2, Landroid/content/Intent$FilterComparison;

    invoke-direct {v2, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 230
    .local v2, "fc":Landroid/content/Intent$FilterComparison;
    # getter for: Landroid/widget/RemoteViewsService;->sRemoteViewFactories:Ljava/util/HashMap;
    invoke-static {}, Landroid/widget/RemoteViewsService;->access$300()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 231
    # getter for: Landroid/widget/RemoteViewsService;->sRemoteViewFactories:Ljava/util/HashMap;
    invoke-static {}, Landroid/widget/RemoteViewsService;->access$300()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_37

    .line 233
    .local v1, "factory":Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    :try_start_1e
    invoke-interface {v1}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->onDestroy()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_2a
    .catchall {:try_start_1e .. :try_end_21} :catchall_37

    .line 238
    :goto_21
    :try_start_21
    # getter for: Landroid/widget/RemoteViewsService;->sRemoteViewFactories:Ljava/util/HashMap;
    invoke-static {}, Landroid/widget/RemoteViewsService;->access$300()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .end local v1    # "factory":Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    :cond_28
    monitor-exit v5

    .line 241
    return-void

    .line 234
    .restart local v1    # "factory":Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    :catch_2a
    move-exception v0

    .line 235
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 236
    .local v3, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v4

    invoke-interface {v4, v3, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_21

    .line 240
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "factory":Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .end local v2    # "fc":Landroid/content/Intent$FilterComparison;
    .end local v3    # "t":Ljava/lang/Thread;
    :catchall_37
    move-exception v4

    monitor-exit v5
    :try_end_39
    .catchall {:try_start_21 .. :try_end_39} :catchall_37

    throw v4
.end method
