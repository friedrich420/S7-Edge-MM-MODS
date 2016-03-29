.class Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7$1;
.super Ljava/lang/Object;
.source "SmartClipDragDrop.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;

.field final synthetic val$getView:Landroid/view/View;

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;Landroid/view/View;II)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7$1;->this$1:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;

    iput-object p2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7$1;->val$getView:Landroid/view/View;

    iput p3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7$1;->val$x:I

    iput p4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7$1;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7$1;->this$1:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7$1;->val$getView:Landroid/view/View;

    iget v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7$1;->val$x:I

    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7$1;->val$y:I

    # invokes: Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->getSmartClipData(Landroid/view/View;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$600(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;Landroid/view/View;II)V

    .line 424
    return-void
.end method
