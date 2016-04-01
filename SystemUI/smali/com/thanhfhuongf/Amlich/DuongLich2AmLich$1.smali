.class Lcom/thanhfhuongf/Amlich/DuongLich2AmLich$1;
.super Landroid/os/Handler;
.source "DuongLich2AmLich.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;


# direct methods
.method constructor <init>(Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich$1;->this$0:Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;

    .line 20
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "paramAnonymousMessage"    # Landroid/os/Message;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich$1;->this$0:Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;

    # invokes: Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->updateAmLich()V
    invoke-static {v0}, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->access$0(Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;)V

    .line 25
    return-void
.end method
