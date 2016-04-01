.class Lcom/android/server/smartclip/SpenGestureManagerService$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/smartclip/SpenGestureManagerService;->initSpenGesture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .registers 2

    .prologue
    .line 404
    iput-object p1, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 10
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 407
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v3, "Pen DoubleTap"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const-string v0, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 410
    .local v1, "uri":Landroid/net/Uri;
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "getSealedState"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 412
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_4b

    .line 414
    :try_start_22
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 415
    const-string/jumbo v0, "getSealedState"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 416
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "now KNOX state : can\'t excute Double Tap"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_44
    .catchall {:try_start_22 .. :try_end_44} :catchall_59

    .line 421
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 433
    :goto_47
    return v7

    .line 421
    :cond_48
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 425
    :cond_4b
    iget-object v0, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1500(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iget-object v2, v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDoubleTap:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_47

    .line 421
    :catchall_59
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method
