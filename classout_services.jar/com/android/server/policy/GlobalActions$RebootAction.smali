.class final Lcom/android/server/policy/GlobalActions$RebootAction;
.super Lcom/android/server/policy/GlobalActions$SinglePressAction;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions$99;->onPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RebootAction"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/GlobalActions$99;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions$99;)V
    .registers 4

    iput-object p1, p0, this$1:Lcom/android/server/policy/GlobalActions$99;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 18

    :try_start_0
    sget v5, Lcom/android/server/policy/GlobalActions$SinglePressAction;->rebootMode:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_28

    const/4 v6, 0x1

    if-eq v5, v6, :cond_31

    const-string/jumbo v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    sget-object v3, Lcom/android/server/policy/GlobalActions$SinglePressAction;->rebootOptions:[Ljava/lang/String;

    sget v0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->rebootMode:I

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v4}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V

    const-string v2, "GlobalActions$RebootAction"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    :cond_28
    const-string/jumbo v13, "persist.sys.safemode"

    const-string v14, "1"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31

    :cond_31
    :goto_31
    const/4 v7, 0x3

    new-array v9, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v10, "setprop"

    aput-object v10, v9, v8

    const/4 v8, 0x1

    const-string/jumbo v10, "ctl.restart"

    aput-object v10, v9, v8

    const/4 v8, 0x2

    const-string/jumbo v10, "zygote"

    aput-object v10, v9, v8

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    const-string v2, "GlobalActions$RebootAction"

    const-string/jumbo v3, "hot reboot"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_56} :catch_57
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_56} :catch_57

    :goto_56
    return-void

    :catch_57
    move-exception v0

    const-string v2, "GlobalActions"

    const-string v3, "PowerManager service died!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_56
.end method

.method public showBeforeProvisioning()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public showConditional()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method