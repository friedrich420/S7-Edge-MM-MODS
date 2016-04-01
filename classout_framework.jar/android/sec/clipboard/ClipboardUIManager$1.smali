.class Landroid/sec/clipboard/ClipboardUIManager$1;
.super Ljava/lang/Object;
.source "ClipboardUIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/ClipboardUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/sec/clipboard/ClipboardUIManager;


# direct methods
.method constructor <init>(Landroid/sec/clipboard/ClipboardUIManager;)V
    .registers 2

    .prologue
    .line 44
    iput-object p1, p0, this$0:Landroid/sec/clipboard/ClipboardUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 48
    iget-object v0, p0, this$0:Landroid/sec/clipboard/ClipboardUIManager;

    # getter for: Landroid/sec/clipboard/ClipboardUIManager;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v0}, Landroid/sec/clipboard/ClipboardUIManager;->access$000(Landroid/sec/clipboard/ClipboardUIManager;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 49
    iget-object v1, p0, this$0:Landroid/sec/clipboard/ClipboardUIManager;

    iget-object v0, p0, this$0:Landroid/sec/clipboard/ClipboardUIManager;

    # getter for: Landroid/sec/clipboard/ClipboardUIManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/sec/clipboard/ClipboardUIManager;->access$100(Landroid/sec/clipboard/ClipboardUIManager;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "clipboardEx"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    # setter for: Landroid/sec/clipboard/ClipboardUIManager;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v1, v0}, Landroid/sec/clipboard/ClipboardUIManager;->access$002(Landroid/sec/clipboard/ClipboardUIManager;Landroid/sec/clipboard/ClipboardExManager;)Landroid/sec/clipboard/ClipboardExManager;

    .line 51
    :cond_1b
    iget-object v0, p0, this$0:Landroid/sec/clipboard/ClipboardUIManager;

    # getter for: Landroid/sec/clipboard/ClipboardUIManager;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v0}, Landroid/sec/clipboard/ClipboardUIManager;->access$000(Landroid/sec/clipboard/ClipboardUIManager;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->showUIDataDialog()V

    .line 52
    return-void
.end method
