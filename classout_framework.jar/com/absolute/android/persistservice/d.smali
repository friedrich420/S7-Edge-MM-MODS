.class Lcom/absolute/android/persistservice/d;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/absolute/android/persistservice/ABTPersistenceService;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/absolute/android/persistservice/ABTPersistenceService;)V
    .registers 2

    .prologue
    .line 3943
    iput-object p1, p0, a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/a;)V
    .registers 3

    .prologue
    .line 3943
    invoke-direct {p0, p1}, <init>(Lcom/absolute/android/persistservice/ABTPersistenceService;)V

    return-void
.end method

.method private a()V
    .registers 3

    .prologue
    .line 3949
    iget-boolean v0, p0, b:Z

    if-nez v0, :cond_1a

    .line 3951
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3952
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3954
    iget-object v1, p0, a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(Lcom/absolute/android/persistservice/ABTPersistenceService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3955
    const/4 v0, 0x1

    iput-boolean v0, p0, b:Z

    .line 3957
    :cond_1a
    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/d;)V
    .registers 1

    .prologue
    .line 3943
    invoke-direct {p0}, a()V

    return-void
.end method

.method private b()V
    .registers 2

    .prologue
    .line 3960
    iget-boolean v0, p0, b:Z

    if-eqz v0, :cond_10

    .line 3961
    iget-object v0, p0, a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(Lcom/absolute/android/persistservice/ABTPersistenceService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3962
    const/4 v0, 0x0

    iput-boolean v0, p0, b:Z

    .line 3964
    :cond_10
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .prologue
    .line 3973
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 3974
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3976
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 3977
    if-eqz v0, :cond_56

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 3978
    iget-object v0, p0, a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g(Lcom/absolute/android/persistservice/ABTPersistenceService;)Ljava/util/HashSet;

    move-result-object v1

    monitor-enter v1

    .line 3979
    :try_start_27
    iget-object v0, p0, a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g(Lcom/absolute/android/persistservice/ABTPersistenceService;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3980
    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 3981
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3987
    iget-object v3, p0, a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    const/4 v4, 0x0

    const/16 v5, 0x14

    invoke-static {v3, v0, v4, v5}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;I)V

    goto :goto_31

    .line 3991
    :catchall_46
    move-exception v0

    monitor-exit v1
    :try_end_48
    .catchall {:try_start_27 .. :try_end_48} :catchall_46

    throw v0

    .line 3989
    :cond_49
    :try_start_49
    iget-object v0, p0, a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g(Lcom/absolute/android/persistservice/ABTPersistenceService;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 3990
    invoke-direct {p0}, b()V

    .line 3991
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_49 .. :try_end_56} :catchall_46

    .line 3994
    :cond_56
    return-void
.end method
