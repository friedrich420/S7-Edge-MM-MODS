.class public abstract Landroid/service/notification/ConditionProviderService;
.super Landroid/app/Service;
.source "ConditionProviderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/ConditionProviderService$1;,
        Landroid/service/notification/ConditionProviderService$H;,
        Landroid/service/notification/ConditionProviderService$Provider;
    }
.end annotation


# static fields
.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.notification.ConditionProviderService"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mHandler:Landroid/service/notification/ConditionProviderService$H;

.field private mNoMan:Landroid/app/INotificationManager;

.field private mProvider:Landroid/service/notification/ConditionProviderService$Provider;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/service/notification/ConditionProviderService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, TAG:Ljava/lang/String;

    .line 53
    new-instance v0, Landroid/service/notification/ConditionProviderService$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/notification/ConditionProviderService$H;-><init>(Landroid/service/notification/ConditionProviderService;Landroid/service/notification/ConditionProviderService$1;)V

    iput-object v0, p0, mHandler:Landroid/service/notification/ConditionProviderService$H;

    .line 130
    return-void
.end method

.method static synthetic access$200(Landroid/service/notification/ConditionProviderService;)Landroid/service/notification/ConditionProviderService$H;
    .registers 2
    .param p0, "x0"    # Landroid/service/notification/ConditionProviderService;

    .prologue
    .line 49
    iget-object v0, p0, mHandler:Landroid/service/notification/ConditionProviderService$H;

    return-object v0
.end method

.method static synthetic access$300(Landroid/service/notification/ConditionProviderService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/service/notification/ConditionProviderService;

    .prologue
    .line 49
    iget-object v0, p0, TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final getNotificationInterface()Landroid/app/INotificationManager;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, mNoMan:Landroid/app/INotificationManager;

    if-nez v0, :cond_11

    .line 72
    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, mNoMan:Landroid/app/INotificationManager;

    .line 75
    :cond_11
    iget-object v0, p0, mNoMan:Landroid/app/INotificationManager;

    return-object v0
.end method

.method private isBound()Z
    .registers 3

    .prologue
    .line 101
    iget-object v0, p0, mProvider:Landroid/service/notification/ConditionProviderService$Provider;

    if-nez v0, :cond_d

    .line 102
    iget-object v0, p0, TAG:Ljava/lang/String;

    const-string v1, "Condition provider service not yet bound."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v0, 0x0

    .line 105
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_c
.end method


# virtual methods
.method public final notifyCondition(Landroid/service/notification/Condition;)V
    .registers 4
    .param p1, "condition"    # Landroid/service/notification/Condition;

    .prologue
    .line 79
    if-nez p1, :cond_3

    .line 81
    :goto_2
    return-void

    .line 80
    :cond_3
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/service/notification/Condition;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, notifyConditions([Landroid/service/notification/Condition;)V

    goto :goto_2
.end method

.method public final varargs notifyConditions([Landroid/service/notification/Condition;)V
    .registers 6
    .param p1, "conditions"    # [Landroid/service/notification/Condition;

    .prologue
    .line 84
    invoke-direct {p0}, isBound()Z

    move-result v1

    if-eqz v1, :cond_8

    if-nez p1, :cond_9

    .line 90
    :cond_8
    :goto_8
    return-void

    .line 86
    :cond_9
    :try_start_9
    invoke-direct {p0}, getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v1

    invoke-virtual {p0}, getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, mProvider:Landroid/service/notification/ConditionProviderService$Provider;

    invoke-interface {v1, v2, v3, p1}, Landroid/app/INotificationManager;->notifyConditions(Ljava/lang/String;Landroid/service/notification/IConditionProvider;[Landroid/service/notification/Condition;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_16} :catch_17

    goto :goto_8

    .line 87
    :catch_17
    move-exception v0

    .line 88
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 94
    iget-object v0, p0, mProvider:Landroid/service/notification/ConditionProviderService$Provider;

    if-nez v0, :cond_c

    .line 95
    new-instance v0, Landroid/service/notification/ConditionProviderService$Provider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/notification/ConditionProviderService$Provider;-><init>(Landroid/service/notification/ConditionProviderService;Landroid/service/notification/ConditionProviderService$1;)V

    iput-object v0, p0, mProvider:Landroid/service/notification/ConditionProviderService$Provider;

    .line 97
    :cond_c
    iget-object v0, p0, mProvider:Landroid/service/notification/ConditionProviderService$Provider;

    return-object v0
.end method

.method public abstract onConnected()V
.end method

.method public abstract onRequestConditions(I)V
.end method

.method public abstract onSubscribe(Landroid/net/Uri;)V
.end method

.method public abstract onUnsubscribe(Landroid/net/Uri;)V
.end method
