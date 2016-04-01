.class Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher$5;
.super Ljava/lang/Object;
.source "SmartClipRemoteRequestDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;->dispatchInputEventInjection(Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;

.field final synthetic val$event:Landroid/view/InputEvent;

.field final synthetic val$events:[Landroid/os/Parcelable;

.field final synthetic val$request:Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;

.field final synthetic val$waitUntilConsume:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;Landroid/view/InputEvent;[Landroid/os/Parcelable;ZLcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;)V
    .registers 6

    .prologue
    .line 210
    iput-object p1, p0, this$0:Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;

    iput-object p2, p0, val$event:Landroid/view/InputEvent;

    iput-object p3, p0, val$events:[Landroid/os/Parcelable;

    iput-boolean p4, p0, val$waitUntilConsume:Z

    iput-object p5, p0, val$request:Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 214
    .local v0, "startTime":J
    iget-object v2, p0, this$0:Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;

    # getter for: Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;->DEBUG:Z
    invoke-static {v2}, Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;->access$400(Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 215
    const-string v2, "SmartClipRemoteRequestDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchInputEventInjection : injecting.. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, val$event:Landroid/view/InputEvent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_27
    iget-object v2, p0, this$0:Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;

    iget-object v3, p0, val$event:Landroid/view/InputEvent;

    # invokes: Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;->enqueueInputEvent(Landroid/view/InputEvent;Z)V
    invoke-static {v2, v3, v5}, Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;->access$500(Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;Landroid/view/InputEvent;Z)V

    .line 219
    iget-object v2, p0, val$event:Landroid/view/InputEvent;

    iget-object v3, p0, val$events:[Landroid/os/Parcelable;

    iget-object v4, p0, val$events:[Landroid/os/Parcelable;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    if-ne v2, v3, :cond_64

    .line 220
    iget-boolean v2, p0, val$waitUntilConsume:Z

    if-ne v2, v5, :cond_47

    .line 221
    iget-object v2, p0, this$0:Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;

    iget-object v3, p0, val$request:Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;

    const/4 v4, 0x0

    # invokes: Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;->sendResult(Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;Landroid/os/Parcelable;)V
    invoke-static {v2, v3, v4}, Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;->access$600(Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;Landroid/os/Parcelable;)V

    .line 223
    :cond_47
    const-string v2, "SmartClipRemoteRequestDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchInputEventInjection : injection finished. Elapsed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_64
    return-void
.end method
