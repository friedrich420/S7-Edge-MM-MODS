.class Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;
.super Landroid/os/Handler;
.source "KnoxCustomManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KioskHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;


# direct methods
.method public constructor <init>(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 586
    iput-object p1, p0, this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .line 587
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 588
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 592
    return-void
.end method
