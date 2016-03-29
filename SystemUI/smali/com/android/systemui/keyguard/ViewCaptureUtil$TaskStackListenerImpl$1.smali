.class Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;
.super Landroid/os/AsyncTask;
.source "ViewCaptureUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->onTaskStackChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

.field final synthetic val$topActivity:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->this$1:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->val$topActivity:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 247
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 250
    iget-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->this$1:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    iget-object v2, v2, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    const/4 v3, 0x0

    # setter for: Lcom/android/systemui/keyguard/ViewCaptureUtil;->mNewCapture:Z
    invoke-static {v2, v3}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->access$102(Lcom/android/systemui/keyguard/ViewCaptureUtil;Z)Z

    .line 251
    const-string v2, "ViewCaptureUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Top: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->this$1:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    iget-object v5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->val$topActivity:Ljava/lang/String;

    # invokes: Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->encrypt(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->access$200(Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->this$1:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    iget-object v2, v2, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    iget-object v3, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->this$1:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    iget-object v3, v3, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    # getter for: Lcom/android/systemui/keyguard/ViewCaptureUtil;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->access$300(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->this$1:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    iget-object v4, v4, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    # getter for: Lcom/android/systemui/keyguard/ViewCaptureUtil;->mClockBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->access$400(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->this$1:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    iget-object v5, v5, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    # getter for: Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLeftBitmap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->access$500(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->this$1:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    iget-object v6, v6, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    # getter for: Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRightBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->access$600(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Landroid/graphics/Bitmap;

    move-result-object v6

    # invokes: Lcom/android/systemui/keyguard/ViewCaptureUtil;->arrangeComponents(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->access$700(Lcom/android/systemui/keyguard/ViewCaptureUtil;Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 261
    .local v0, "captured":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v0, :cond_0

    .line 262
    iget-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->this$1:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    iget-object v2, v2, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    # invokes: Lcom/android/systemui/keyguard/ViewCaptureUtil;->getSavePath()Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->access$800()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->this$1:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    iget-object v4, v4, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    # getter for: Lcom/android/systemui/keyguard/ViewCaptureUtil;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->access$300(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    # invokes: Lcom/android/systemui/keyguard/ViewCaptureUtil;->saveScreenshot(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/content/res/Configuration;)V
    invoke-static {v2, v0, v3, v4}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->access$900(Lcom/android/systemui/keyguard/ViewCaptureUtil;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/content/res/Configuration;)V

    .line 264
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 267
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->this$1:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    iget-object v2, v2, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    # invokes: Lcom/android/systemui/keyguard/ViewCaptureUtil;->clearCaptures()V
    invoke-static {v2}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->access$1000(Lcom/android/systemui/keyguard/ViewCaptureUtil;)V

    .line 269
    const/4 v2, 0x0

    return-object v2

    .line 256
    .end local v0    # "captured":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 257
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "ViewCaptureUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OutOfMemoryError: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v0, 0x0

    .restart local v0    # "captured":Landroid/graphics/Bitmap;
    goto :goto_0
.end method
