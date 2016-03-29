.class Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$SaveImageFileTask;
.super Landroid/os/AsyncTask;
.source "SmartClipDragDrop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveImageFileTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/content/ClipData;",
        ">;"
    }
.end annotation


# instance fields
.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mRectToCrop:Landroid/graphics/Rect;

.field private mView:Landroid/view/View;

.field private mlayerToCaptuer:I

.field final synthetic this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;


# direct methods
.method public constructor <init>(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;Landroid/view/View;Landroid/graphics/Rect;I)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "rectToCrop"    # Landroid/graphics/Rect;
    .param p4, "layerToCapture"    # I

    .prologue
    .line 916
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$SaveImageFileTask;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 914
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$SaveImageFileTask;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 917
    iput-object p2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$SaveImageFileTask;->mView:Landroid/view/View;

    .line 918
    iput-object p3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$SaveImageFileTask;->mRectToCrop:Landroid/graphics/Rect;

    .line 919
    iput p4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$SaveImageFileTask;->mlayerToCaptuer:I

    .line 920
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/content/ClipData;
    .locals 5
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 923
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$SaveImageFileTask;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$SaveImageFileTask;->mRectToCrop:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$SaveImageFileTask;->mlayerToCaptuer:I

    # invokes: Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->cropScreen(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;
    invoke-static {v2, v3, v4}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$1400(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$SaveImageFileTask;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 924
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$SaveImageFileTask;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 925
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$SaveImageFileTask;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$SaveImageFileTask;->mDragBitmap:Landroid/graphics/Bitmap;

    # invokes: Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->saveImageFile(Landroid/graphics/Bitmap;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$1500(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v1

    .line 927
    .local v1, "imageFilePath":Ljava/lang/String;
    const-string v2, "Multiwindow drag and drop image"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v0

    .line 930
    .end local v1    # "imageFilePath":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 909
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$SaveImageFileTask;->doInBackground([Ljava/lang/Void;)Landroid/content/ClipData;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/content/ClipData;)V
    .locals 6
    .param p1, "dragData"    # Landroid/content/ClipData;

    .prologue
    const/4 v5, 0x0

    .line 934
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$SaveImageFileTask;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mServiceRunning:Z
    invoke-static {v0}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$1600(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 945
    :goto_0
    return-void

    .line 937
    :cond_0
    if-eqz p1, :cond_1

    .line 938
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$SaveImageFileTask;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 939
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$SaveImageFileTask;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    # invokes: Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->minimize()V
    invoke-static {v0}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$1700(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)V

    .line 941
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$SaveImageFileTask;->mView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$ShadowBuilder;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$SaveImageFileTask;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$SaveImageFileTask;->mView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$SaveImageFileTask;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$ShadowBuilder;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;Landroid/view/View;Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$SaveImageFileTask;->mView:Landroid/view/View;

    invoke-virtual {v0, p1, v1, v2, v5}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    goto :goto_0

    .line 943
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$SaveImageFileTask;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mAppContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$700(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d048d

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 909
    check-cast p1, Landroid/content/ClipData;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$SaveImageFileTask;->onPostExecute(Landroid/content/ClipData;)V

    return-void
.end method
