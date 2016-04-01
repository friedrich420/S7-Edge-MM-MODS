.class Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;
.super Ljava/lang/Object;
.source "ClipboardExManager.java"

# interfaces
.implements Landroid/sec/clipboard/IClipboardDataPasteEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/ClipboardExManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IClipboardDataPasteEventImpl"
.end annotation


# instance fields
.field private final mBinder:Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;

.field final synthetic this$0:Landroid/sec/clipboard/ClipboardExManager;


# direct methods
.method private constructor <init>(Landroid/sec/clipboard/ClipboardExManager;)V
    .registers 3

    .prologue
    .line 162
    iput-object p1, p0, this$0:Landroid/sec/clipboard/ClipboardExManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl$1;

    invoke-direct {v0, p0}, Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl$1;-><init>(Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;)V

    iput-object v0, p0, mBinder:Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;

    return-void
.end method

.method synthetic constructor <init>(Landroid/sec/clipboard/ClipboardExManager;Landroid/sec/clipboard/ClipboardExManager$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/sec/clipboard/ClipboardExManager;
    .param p2, "x1"    # Landroid/sec/clipboard/ClipboardExManager$1;

    .prologue
    .line 162
    invoke-direct {p0, p1}, <init>(Landroid/sec/clipboard/ClipboardExManager;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, mBinder:Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;

    return-object v0
.end method

.method public onClipboardDataPaste(Landroid/sec/clipboard/data/ClipboardData;)V
    .registers 4
    .param p1, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 177
    iget-object v0, p0, this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;
    invoke-static {v0}, Landroid/sec/clipboard/ClipboardExManager;->access$100(Landroid/sec/clipboard/ClipboardExManager;)Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 178
    iget-object v0, p0, this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;
    invoke-static {v0}, Landroid/sec/clipboard/ClipboardExManager;->access$100(Landroid/sec/clipboard/ClipboardExManager;)Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;->onPaste(Landroid/sec/clipboard/data/ClipboardData;)V

    .line 182
    :goto_11
    return-void

    .line 180
    :cond_12
    const-string v0, "ClipboardExManager"

    const-string v1, "mClipboardEventListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method
