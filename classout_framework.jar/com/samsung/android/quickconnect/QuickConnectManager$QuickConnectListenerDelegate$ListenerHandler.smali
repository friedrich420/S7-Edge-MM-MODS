.class Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate$ListenerHandler;
.super Landroid/os/Handler;
.source "QuickConnectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ListenerHandler"
.end annotation


# instance fields
.field public mListener:Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;)V
    .registers 4
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "listener"    # Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

    .prologue
    .line 214
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, mListener:Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

    .line 215
    iput-object p2, p0, mListener:Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

    .line 216
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 220
    iget-object v0, p0, mListener:Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

    if-eqz v0, :cond_9

    .line 221
    iget-object v0, p0, mListener:Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

    invoke-interface {v0}, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;->onItemSelected()V

    .line 223
    :cond_9
    return-void
.end method
