.class Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;
.super Ljava/lang/Object;
.source "SmartClipDragDrop.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->getSmartClipData(Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

.field final synthetic val$repository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 830
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    iput-object p2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->val$repository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    iput-object p3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 834
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->val$repository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->val$view:Landroid/view/View;

    if-eqz v6, :cond_9

    .line 837
    const-string v6, "true"

    const-string v7, "dev.knoxapp.running"

    const-string v8, "false"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 838
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mAppContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$700(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mAppContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$700(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x1040b37

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 894
    :goto_0
    return-void

    .line 843
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->val$repository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {v6, v10}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->dump(Z)Z

    .line 844
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->val$repository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    # invokes: Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->getTextMetaData(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$800(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Ljava/lang/String;

    move-result-object v2

    .line 845
    .local v2, "textData":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->val$repository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    # invokes: Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->getUrlMetaData(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$900(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Ljava/lang/String;

    move-result-object v4

    .line 846
    .local v4, "urlData":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->val$repository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    # invokes: Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->getTextSelectionMetaData(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$1000(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Ljava/lang/String;

    move-result-object v3

    .line 847
    .local v3, "textSelectionData":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->val$repository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {v6}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getContentRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 848
    .local v0, "croppedRect":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->val$repository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {v6}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getWindowLayer()I

    move-result v1

    .line 850
    .local v1, "layerToCapture":I
    const-string v6, "SmartClipDragDrop"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onTouch : The target layer of dragging is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    if-eqz v0, :cond_1

    .line 853
    new-instance v5, Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v6, v6, -0xa

    iget v7, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v7, v7, -0xa

    iget v8, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v8, v8, 0xa

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v9, v9, 0xa

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 855
    .local v5, "validRect":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    iget v6, v6, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mLastTouchX:I

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    iget v7, v7, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mLastTouchY:I

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_1

    .line 856
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    invoke-virtual {v6}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->stopService()V

    goto :goto_0

    .line 861
    .end local v5    # "validRect":Landroid/graphics/Rect;
    :cond_1
    if-eqz v3, :cond_2

    .line 862
    const-string v6, "SmartClipDragDrop"

    const-string v7, "onTouch : text selection is extracted"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->val$view:Landroid/view/View;

    const/4 v8, 0x0

    # invokes: Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->startTextDrag(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Rect;I)V
    invoke-static {v6, v7, v3, v8, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$1100(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;Landroid/view/View;Ljava/lang/String;Landroid/graphics/Rect;I)V

    .line 892
    .end local v0    # "croppedRect":Landroid/graphics/Rect;
    .end local v1    # "layerToCapture":I
    .end local v2    # "textData":Ljava/lang/String;
    .end local v3    # "textSelectionData":Ljava/lang/String;
    .end local v4    # "urlData":Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    # invokes: Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->stopSmartClipDragDropThread()V
    invoke-static {v6}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$1300(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)V

    goto/16 :goto_0

    .line 864
    .restart local v0    # "croppedRect":Landroid/graphics/Rect;
    .restart local v1    # "layerToCapture":I
    .restart local v2    # "textData":Ljava/lang/String;
    .restart local v3    # "textSelectionData":Ljava/lang/String;
    .restart local v4    # "urlData":Ljava/lang/String;
    :cond_2
    if-eqz v2, :cond_3

    .line 865
    const-string v6, "SmartClipDragDrop"

    const-string v7, "onTouch : text is extracted"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->val$view:Landroid/view/View;

    # invokes: Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->startTextDrag(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Rect;I)V
    invoke-static {v6, v7, v2, v0, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$1100(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;Landroid/view/View;Ljava/lang/String;Landroid/graphics/Rect;I)V

    goto :goto_1

    .line 867
    :cond_3
    if-eqz v4, :cond_4

    const-string v6, "youtube"

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->val$repository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {v7}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v10, :cond_4

    .line 868
    const-string v6, "SmartClipDragDrop"

    const-string v7, "onTouch : youtube url will be pasted"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->val$view:Landroid/view/View;

    # invokes: Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->startTextDrag(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Rect;I)V
    invoke-static {v6, v7, v4, v0, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$1100(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;Landroid/view/View;Ljava/lang/String;Landroid/graphics/Rect;I)V

    goto :goto_1

    .line 870
    :cond_4
    const-string v6, "com.android.chrome"

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->val$repository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {v7}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getAppPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v10, :cond_6

    .line 871
    if-eqz v4, :cond_5

    .line 872
    const-string v6, "SmartClipDragDrop"

    const-string v7, "onTouch : google chrome url will be pasted"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->val$view:Landroid/view/View;

    # invokes: Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->startTextDrag(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Rect;I)V
    invoke-static {v6, v7, v4, v0, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$1100(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;Landroid/view/View;Ljava/lang/String;Landroid/graphics/Rect;I)V

    goto :goto_1

    .line 875
    :cond_5
    const-string v6, "SmartClipDragDrop"

    const-string v7, "onTouch : google chrome url is empty. stop the service"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    invoke-virtual {v6}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->stopService()V

    goto :goto_1

    .line 878
    :cond_6
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-lez v6, :cond_7

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-lez v6, :cond_7

    .line 879
    const-string v6, "SmartClipDragDrop"

    const-string v7, "onTouch : no text meta data -> image will be pasted"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->val$view:Landroid/view/View;

    # invokes: Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->startImageDrag(Landroid/view/View;Landroid/graphics/Rect;I)V
    invoke-static {v6, v7, v0, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$1200(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;Landroid/view/View;Landroid/graphics/Rect;I)V

    goto :goto_1

    .line 881
    :cond_7
    if-eqz v4, :cond_8

    .line 882
    const-string v6, "SmartClipDragDrop"

    const-string v7, "onTouch : url will be pasted"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->val$view:Landroid/view/View;

    # invokes: Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->startTextDrag(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Rect;I)V
    invoke-static {v6, v7, v4, v0, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$1100(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;Landroid/view/View;Ljava/lang/String;Landroid/graphics/Rect;I)V

    goto/16 :goto_1

    .line 885
    :cond_8
    const-string v6, "SmartClipDragDrop"

    const-string v7, "onTouch : there is no data to drag&drop"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    invoke-virtual {v6}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->stopService()V

    goto/16 :goto_1

    .line 889
    .end local v0    # "croppedRect":Landroid/graphics/Rect;
    .end local v1    # "layerToCapture":I
    .end local v2    # "textData":Ljava/lang/String;
    .end local v3    # "textSelectionData":Ljava/lang/String;
    .end local v4    # "urlData":Ljava/lang/String;
    :cond_9
    const-string v6, "SmartClipDragDrop"

    const-string v7, "onTouch : repository is null!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    invoke-virtual {v6}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->stopService()V

    goto/16 :goto_1
.end method
