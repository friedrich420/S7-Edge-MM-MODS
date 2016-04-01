.class public Lcom/android/server/DcmNextiPlayReadyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DcmNextiPlayReadyReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DcmNextiPlayReadyReceiver"

.field static final mStartingServiceSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, mStartingServiceSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 57
    const-string v0, "DcmNextiPlayReadyReceiver"

    const-string v1, "DcmNextiPlayReadyReceiver : before start service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "start Service"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 62
    const-string v0, "DcmNextiPlayReadyReceiver"

    const-string v1, "DcmNextiPlayReadyReceiver : after start service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method

.method public static finishStartingService(Landroid/app/Service;I)V
    .registers 4
    .param p0, "service"    # Landroid/app/Service;
    .param p1, "startId"    # I

    .prologue
    .line 71
    const-string v0, "DcmNextiPlayReadyReceiver"

    const-string v1, "DcmNextiPlayReadyReceiver : finishStartingService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 37
    const-string v0, "DCM"

    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 38
    const-string v0, "DcmNextiPlayReadyReceiver"

    const-string v1, "DcmNextiPlayReadyReceiver : onReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, onReceiveWithPrivilege(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 41
    :cond_1a
    return-void
.end method

.method protected onReceiveWithPrivilege(Landroid/content/Context;Landroid/content/Intent;Z)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "privileged"    # Z

    .prologue
    .line 46
    const-string v0, "DcmNextiPlayReadyReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DcmNextiPlayReadyReceiver : onReceiveWithPrivilege intent.getType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const-class v0, Lcom/android/server/DcmNextiPlayReadyService;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 48
    invoke-static {p1, p2}, beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 49
    return-void
.end method
