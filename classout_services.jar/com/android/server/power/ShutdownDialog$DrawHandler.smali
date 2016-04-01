.class Lcom/android/server/power/ShutdownDialog$DrawHandler;
.super Landroid/os/Handler;
.source "ShutdownDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawHandler"
.end annotation


# instance fields
.field private finished:Z

.field private maxSleep:I

.field final synthetic this$0:Lcom/android/server/power/ShutdownDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ShutdownDialog;)V
    .registers 2

    .prologue
    .line 591
    iput-object p1, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 592
    invoke-virtual {p0}, init()V

    .line 593
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 601
    const-string v0, "ShutdownDialog"

    const-string v1, "DrawHandler.handleMessage"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_15

    .line 603
    iget v0, p1, Landroid/os/Message;->what:I

    add-int/lit8 v0, v0, -0x64

    iput v0, p0, maxSleep:I

    .line 629
    :goto_14
    return-void

    .line 605
    :cond_15
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_26

    .line 606
    const-string v0, "ShutdownDialog"

    const-string/jumbo v1, "frame load finish"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const/4 v0, 0x1

    iput-boolean v0, p0, finished:Z

    goto :goto_14

    .line 612
    :cond_26
    iget-object v0, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$2600(Lcom/android/server/power/ShutdownDialog;)I

    move-result v0

    iget-object v1, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I
    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->access$2400(Lcom/android/server/power/ShutdownDialog;)I

    move-result v1

    if-eq v0, v1, :cond_7b

    .line 613
    iget-object v0, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->mDrawHandler:Lcom/android/server/power/ShutdownDialog$DrawHandler;
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$1400(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$DrawHandler;

    move-result-object v0

    iget v1, p0, maxSleep:I

    int-to-long v2, v1

    invoke-virtual {v0, v4, v2, v3}, sendEmptyMessageDelayed(IJ)Z

    .line 614
    iget-object v0, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$2700(Lcom/android/server/power/ShutdownDialog;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQ:[Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->access$500(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I
    invoke-static {v2}, Lcom/android/server/power/ShutdownDialog;->access$2600(Lcom/android/server/power/ShutdownDialog;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 615
    iget-object v0, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->drawBufferLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$2500(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 616
    :try_start_5e
    iget-object v0, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    iget-object v2, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I
    invoke-static {v2}, Lcom/android/server/power/ShutdownDialog;->access$2600(Lcom/android/server/power/ShutdownDialog;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x3

    # setter for: Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I
    invoke-static {v0, v2}, Lcom/android/server/power/ShutdownDialog;->access$2602(Lcom/android/server/power/ShutdownDialog;I)I

    .line 617
    iget-object v0, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->drawBufferLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$2500(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 618
    monitor-exit v1

    goto :goto_14

    :catchall_78
    move-exception v0

    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_5e .. :try_end_7a} :catchall_78

    throw v0

    .line 621
    :cond_7b
    iget-boolean v0, p0, finished:Z

    if-eqz v0, :cond_88

    .line 622
    const-string v0, "ShutdownDialog"

    const-string/jumbo v1, "image draw finish"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 625
    :cond_88
    const-string v0, "ShutdownDialog"

    const-string/jumbo v1, "image buffer not ready"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object v0, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->mDrawHandler:Lcom/android/server/power/ShutdownDialog$DrawHandler;
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$1400(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$DrawHandler;

    move-result-object v0

    iget v1, p0, maxSleep:I

    div-int/lit8 v1, v1, 0x2

    int-to-long v2, v1

    invoke-virtual {v0, v4, v2, v3}, sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_14
.end method

.method public init()V
    .registers 2

    .prologue
    .line 596
    const/4 v0, 0x0

    iput-boolean v0, p0, finished:Z

    .line 597
    return-void
.end method
