.class final Lcom/samsung/accessory/manager/SAccessoryManager$AuthHandler;
.super Landroid/os/Handler;
.source "SAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/SAccessoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AuthHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/SAccessoryManager;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/SAccessoryManager;Landroid/os/Looper;)V
    .registers 5
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 264
    iput-object p1, p0, this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 265
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 266
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 269
    iget-object v0, p0, this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    # invokes: Lcom/samsung/accessory/manager/SAccessoryManager;->processAuthMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$200(Lcom/samsung/accessory/manager/SAccessoryManager;Landroid/os/Message;)V

    .line 270
    return-void
.end method
