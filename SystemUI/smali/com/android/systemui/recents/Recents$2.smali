.class Lcom/android/systemui/recents/Recents$2;
.super Landroid/os/AsyncTask;
.source "Recents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/Recents;->preCacheThumbnailTransitionBitmapAsync(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/views/TaskStackView;Z)V
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
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/Recents;

.field final synthetic val$toTask:Lcom/android/systemui/recents/model/Task;

.field final synthetic val$toTransform:Lcom/android/systemui/recents/views/TaskViewTransform;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/Recents;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;)V
    .locals 0

    .prologue
    .line 1225
    iput-object p1, p0, Lcom/android/systemui/recents/Recents$2;->this$0:Lcom/android/systemui/recents/Recents;

    iput-object p2, p0, Lcom/android/systemui/recents/Recents$2;->val$toTask:Lcom/android/systemui/recents/model/Task;

    iput-object p3, p0, Lcom/android/systemui/recents/Recents$2;->val$toTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/android/systemui/recents/Recents$2;->this$0:Lcom/android/systemui/recents/Recents;

    iget-object v1, p0, Lcom/android/systemui/recents/Recents$2;->val$toTask:Lcom/android/systemui/recents/model/Task;

    iget-object v2, p0, Lcom/android/systemui/recents/Recents$2;->val$toTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/Recents;->drawThumbnailTransitionBitmap(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1225
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/Recents$2;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/android/systemui/recents/Recents$2;->this$0:Lcom/android/systemui/recents/Recents;

    iput-object p1, v0, Lcom/android/systemui/recents/Recents;->mThumbnailTransitionBitmapCache:Landroid/graphics/Bitmap;

    .line 1234
    iget-object v0, p0, Lcom/android/systemui/recents/Recents$2;->this$0:Lcom/android/systemui/recents/Recents;

    iget-object v1, p0, Lcom/android/systemui/recents/Recents$2;->val$toTask:Lcom/android/systemui/recents/model/Task;

    iput-object v1, v0, Lcom/android/systemui/recents/Recents;->mThumbnailTransitionBitmapCacheKey:Lcom/android/systemui/recents/model/Task;

    .line 1235
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1225
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/Recents$2;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
