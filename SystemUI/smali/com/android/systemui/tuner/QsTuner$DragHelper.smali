.class Lcom/android/systemui/tuner/QsTuner$DragHelper;
.super Ljava/lang/Object;
.source "QsTuner.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tuner/QsTuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragHelper"
.end annotation


# instance fields
.field private final mListener:Lcom/android/systemui/tuner/QsTuner$DropListener;

.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/systemui/tuner/QsTuner;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tuner/QsTuner;Landroid/view/View;Lcom/android/systemui/tuner/QsTuner$DropListener;)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "dropListener"    # Lcom/android/systemui/tuner/QsTuner$DropListener;

    .prologue
    .line 473
    iput-object p1, p0, Lcom/android/systemui/tuner/QsTuner$DragHelper;->this$0:Lcom/android/systemui/tuner/QsTuner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    iput-object p2, p0, Lcom/android/systemui/tuner/QsTuner$DragHelper;->mView:Landroid/view/View;

    .line 475
    iput-object p3, p0, Lcom/android/systemui/tuner/QsTuner$DragHelper;->mListener:Lcom/android/systemui/tuner/QsTuner$DropListener;

    .line 476
    iget-object v0, p0, Lcom/android/systemui/tuner/QsTuner$DragHelper;->mView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 477
    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v2, 0x0

    .line 481
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 496
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 483
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/tuner/QsTuner$DragHelper;->mView:Landroid/view/View;

    const v2, 0x77ffffff

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 486
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/tuner/QsTuner$DragHelper;->this$0:Lcom/android/systemui/tuner/QsTuner;

    invoke-virtual {v1}, Lcom/android/systemui/tuner/QsTuner;->stopDrag()V

    .line 488
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/tuner/QsTuner$DragHelper;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 491
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/tuner/QsTuner$DragHelper;->this$0:Lcom/android/systemui/tuner/QsTuner;

    invoke-virtual {v1}, Lcom/android/systemui/tuner/QsTuner;->stopDrag()V

    .line 492
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/tuner/QsTuner$DragHelper;->mListener:Lcom/android/systemui/tuner/QsTuner$DropListener;

    invoke-interface {v1, v0}, Lcom/android/systemui/tuner/QsTuner$DropListener;->onDrop(Ljava/lang/String;)V

    goto :goto_0

    .line 481
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
