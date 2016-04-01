.class public final Lcom/samsung/android/quickconnect/QuickConnectManager;
.super Ljava/lang/Object;
.source "QuickConnectManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;,
        Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    }
.end annotation


# static fields
.field public static final DO_QUICK_CONNECT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "QuickConnectManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mListenerDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field mQuickConnectService:Lcom/samsung/android/quickconnect/IQuickConnectManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/quickconnect/IQuickConnectManager;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quickconnectservice"    # Lcom/samsung/android/quickconnect/IQuickConnectManager;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, mContext:Landroid/content/Context;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mListenerDelegates:Ljava/util/ArrayList;

    .line 49
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, mQuickConnectService:Lcom/samsung/android/quickconnect/IQuickConnectManager;

    .line 51
    return-void
.end method


# virtual methods
.method public registerListener(Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;)V
    .registers 12
    .param p1, "listener"    # Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 67
    if-nez p1, :cond_b

    .line 68
    const-string v5, "QuickConnectManager"

    const-string/jumbo v6, "registerListener : listener is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_a
    return-void

    .line 72
    :cond_b
    const-string v5, "QuickConnectManager"

    const-string/jumbo v6, "registerListener"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v6, p0, mListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v6

    .line 75
    const/4 v3, 0x0

    .line 76
    .local v3, "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    :try_start_17
    iget-object v5, p0, mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 77
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;>;"
    :cond_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 78
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;

    .line 79
    .local v0, "delegate":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    invoke-virtual {v0}, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;->getListener()Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

    move-result-object v5

    if-eq v5, p1, :cond_39

    invoke-virtual {v0}, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;->getListener()Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_36
    .catchall {:try_start_17 .. :try_end_36} :catchall_6d

    move-result v5

    if-eqz v5, :cond_1d

    .line 80
    :cond_39
    move-object v3, v0

    move-object v4, v3

    .line 85
    .end local v0    # "delegate":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    .end local v3    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    .local v4, "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    :goto_3b
    if-nez v4, :cond_8d

    .line 86
    :try_start_3d
    new-instance v3, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, p1, v5}, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;-><init>(Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;Landroid/os/Looper;)V
    :try_end_48
    .catchall {:try_start_3d .. :try_end_48} :catchall_8a

    .line 87
    .end local v4    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    .restart local v3    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    :try_start_48
    iget-object v5, p0, mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4d
    .catchall {:try_start_48 .. :try_end_4d} :catchall_6d

    .line 91
    :goto_4d
    :try_start_4d
    iget-object v5, p0, mQuickConnectService:Lcom/samsung/android/quickconnect/IQuickConnectManager;

    if-eqz v5, :cond_6b

    .line 92
    iget-object v5, p0, mQuickConnectService:Lcom/samsung/android/quickconnect/IQuickConnectManager;

    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v3, v7}, Lcom/samsung/android/quickconnect/IQuickConnectManager;->registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_6b} :catch_70
    .catchall {:try_start_4d .. :try_end_6b} :catchall_6d

    .line 99
    :cond_6b
    :goto_6b
    :try_start_6b
    monitor-exit v6

    goto :goto_a

    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;>;"
    :catchall_6d
    move-exception v5

    :goto_6e
    monitor-exit v6
    :try_end_6f
    .catchall {:try_start_6b .. :try_end_6f} :catchall_6d

    throw v5

    .line 96
    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;>;"
    :catch_70
    move-exception v1

    .line 97
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_71
    const-string v5, "QuickConnectManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RemoteException in registerListener: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catchall {:try_start_71 .. :try_end_89} :catchall_6d

    goto :goto_6b

    .line 99
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    .restart local v4    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    :catchall_8a
    move-exception v5

    move-object v3, v4

    .end local v4    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    .restart local v3    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    goto :goto_6e

    .end local v3    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    .restart local v4    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    :cond_8d
    move-object v3, v4

    .end local v4    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    .restart local v3    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    goto :goto_4d

    :cond_8f
    move-object v4, v3

    .end local v3    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    .restart local v4    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    goto :goto_3b
.end method

.method public registerListener(Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;Landroid/content/Context;)V
    .registers 13
    .param p1, "listener"    # Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    if-nez p1, :cond_b

    .line 117
    const-string v5, "QuickConnectManager"

    const-string/jumbo v6, "registerListener : listener is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :goto_a
    return-void

    .line 121
    :cond_b
    iput-object p2, p0, mContext:Landroid/content/Context;

    .line 124
    :try_start_d
    const-string v5, "QuickConnectManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "registerListener with context  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_30} :catch_8d

    .line 129
    :goto_30
    iget-object v6, p0, mListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v6

    .line 130
    const/4 v3, 0x0

    .line 131
    .local v3, "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    :try_start_34
    iget-object v5, p0, mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 132
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;>;"
    :cond_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b6

    .line 133
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;

    .line 134
    .local v0, "delegate":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    invoke-virtual {v0}, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;->getListener()Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

    move-result-object v5

    if-eq v5, p1, :cond_56

    invoke-virtual {v0}, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;->getListener()Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_53
    .catchall {:try_start_34 .. :try_end_53} :catchall_8a

    move-result v5

    if-eqz v5, :cond_3a

    .line 135
    :cond_56
    move-object v3, v0

    move-object v4, v3

    .line 140
    .end local v0    # "delegate":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    .end local v3    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    .local v4, "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    :goto_58
    if-nez v4, :cond_b4

    .line 141
    :try_start_5a
    new-instance v3, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, p1, v5}, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;-><init>(Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;Landroid/os/Looper;)V
    :try_end_65
    .catchall {:try_start_5a .. :try_end_65} :catchall_b1

    .line 142
    .end local v4    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    .restart local v3    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    :try_start_65
    iget-object v5, p0, mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6a
    .catchall {:try_start_65 .. :try_end_6a} :catchall_8a

    .line 146
    :goto_6a
    :try_start_6a
    iget-object v5, p0, mQuickConnectService:Lcom/samsung/android/quickconnect/IQuickConnectManager;

    if-eqz v5, :cond_88

    .line 147
    iget-object v5, p0, mQuickConnectService:Lcom/samsung/android/quickconnect/IQuickConnectManager;

    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v3, v7}, Lcom/samsung/android/quickconnect/IQuickConnectManager;->registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_88} :catch_97
    .catchall {:try_start_6a .. :try_end_88} :catchall_8a

    .line 154
    :cond_88
    :goto_88
    :try_start_88
    monitor-exit v6

    goto :goto_a

    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;>;"
    :catchall_8a
    move-exception v5

    :goto_8b
    monitor-exit v6
    :try_end_8c
    .catchall {:try_start_88 .. :try_end_8c} :catchall_8a

    throw v5

    .line 125
    .end local v3    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    :catch_8d
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v5, "QuickConnectManager"

    const-string/jumbo v6, "registerListener with context, context is null "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 151
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;>;"
    .restart local v3    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    :catch_97
    move-exception v1

    .line 152
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_98
    const-string v5, "QuickConnectManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RemoteException in registerListener: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b0
    .catchall {:try_start_98 .. :try_end_b0} :catchall_8a

    goto :goto_88

    .line 154
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    .restart local v4    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    :catchall_b1
    move-exception v5

    move-object v3, v4

    .end local v4    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    .restart local v3    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    goto :goto_8b

    .end local v3    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    .restart local v4    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    :cond_b4
    move-object v3, v4

    .end local v4    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    .restart local v3    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    goto :goto_6a

    :cond_b6
    move-object v4, v3

    .end local v3    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    .restart local v4    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    goto :goto_58
.end method

.method public terminate()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 60
    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;)V
    .registers 10
    .param p1, "listener"    # Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

    .prologue
    .line 164
    if-nez p1, :cond_b

    .line 165
    const-string v4, "QuickConnectManager"

    const-string/jumbo v5, "unregisterListener : listener is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :goto_a
    return-void

    .line 169
    :cond_b
    iget-object v5, p0, mListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v5

    .line 170
    const/4 v3, 0x0

    .line 171
    .local v3, "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    :try_start_f
    iget-object v4, p0, mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 172
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;>;"
    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 173
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;

    .line 174
    .local v0, "delegate":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    invoke-virtual {v0}, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;->getListener()Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

    move-result-object v4

    if-eq v4, p1, :cond_31

    invoke-virtual {v0}, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;->getListener()Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 175
    :cond_31
    move-object v3, v0

    .line 176
    const-string v4, "QuickConnectManager"

    const-string/jumbo v6, "unregisterListener- found"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .end local v0    # "delegate":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    :cond_3a
    if-nez v3, :cond_49

    .line 182
    const-string v4, "QuickConnectManager"

    const-string/jumbo v6, "quickconnectListener is null"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    monitor-exit v5

    goto :goto_a

    .line 200
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;>;"
    :catchall_46
    move-exception v4

    monitor-exit v5
    :try_end_48
    .catchall {:try_start_f .. :try_end_48} :catchall_46

    throw v4

    .line 187
    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;>;"
    :cond_49
    :try_start_49
    iget-object v4, p0, mQuickConnectService:Lcom/samsung/android/quickconnect/IQuickConnectManager;

    if-eqz v4, :cond_69

    .line 188
    const-string v4, "QuickConnectManager"

    const-string/jumbo v6, "mQuickConnectService != null"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v4, p0, mQuickConnectService:Lcom/samsung/android/quickconnect/IQuickConnectManager;

    invoke-interface {v4, v3}, Lcom/samsung/android/quickconnect/IQuickConnectManager;->unregisterCallback(Landroid/os/IBinder;)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 190
    iget-object v4, p0, mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 191
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 192
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;->mListener:Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_68} :catch_6b
    .catchall {:try_start_49 .. :try_end_68} :catchall_46

    .line 193
    const/4 v3, 0x0

    .line 200
    :cond_69
    :goto_69
    :try_start_69
    monitor-exit v5

    goto :goto_a

    .line 197
    :catch_6b
    move-exception v1

    .line 198
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "QuickConnectManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RemoteException in unregisterListener: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catchall {:try_start_69 .. :try_end_84} :catchall_46

    goto :goto_69
.end method
