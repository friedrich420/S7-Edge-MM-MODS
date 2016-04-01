.class Landroid/widget/TextView$TextViewClipboardEventListener$1;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView$TextViewClipboardEventListener;->onPaste(Landroid/sec/clipboard/data/ClipboardData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TextView$TextViewClipboardEventListener;

.field final synthetic val$dataInner:Landroid/sec/clipboard/data/ClipboardData;


# direct methods
.method constructor <init>(Landroid/widget/TextView$TextViewClipboardEventListener;Landroid/sec/clipboard/data/ClipboardData;)V
    .registers 3

    .prologue
    .line 483
    iput-object p1, p0, this$1:Landroid/widget/TextView$TextViewClipboardEventListener;

    iput-object p2, p0, val$dataInner:Landroid/sec/clipboard/data/ClipboardData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 485
    iget-object v0, p0, this$1:Landroid/widget/TextView$TextViewClipboardEventListener;

    iget-object v0, v0, Landroid/widget/TextView$TextViewClipboardEventListener;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, val$dataInner:Landroid/sec/clipboard/data/ClipboardData;

    # invokes: Landroid/widget/TextView;->pasteClipBoardData(Landroid/sec/clipboard/data/ClipboardData;)V
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$000(Landroid/widget/TextView;Landroid/sec/clipboard/data/ClipboardData;)V

    .line 486
    return-void
.end method
