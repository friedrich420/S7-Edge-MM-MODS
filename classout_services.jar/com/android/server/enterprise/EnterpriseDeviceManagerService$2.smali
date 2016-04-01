.class Lcom/android/server/enterprise/EnterpriseDeviceManagerService$2;
.super Ljava/lang/Object;
.source "EnterpriseDeviceManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V
    .registers 2

    .prologue
    .line 1577
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1580
    :try_start_0
    const-string/jumbo v1, "edmnativehelperservice"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_6} :catch_c

    .line 1586
    :goto_6
    return-void

    .line 1581
    :catch_7
    move-exception v0

    .line 1582
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 1583
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_c
    move-exception v0

    .line 1584
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_6
.end method
