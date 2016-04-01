.class Lcom/thanhfhuongf/Amlich/DateView$2;
.super Landroid/os/Handler;
.source "DateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/thanhfhuongf/Amlich/DateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/thanhfhuongf/Amlich/DateView;


# direct methods
.method constructor <init>(Lcom/thanhfhuongf/Amlich/DateView;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/thanhfhuongf/Amlich/DateView$2;->this$0:Lcom/thanhfhuongf/Amlich/DateView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/thanhfhuongf/Amlich/DateView$2;->this$0:Lcom/thanhfhuongf/Amlich/DateView;

    # invokes: Lcom/thanhfhuongf/Amlich/DateView;->updateClock()V
    invoke-static {v0}, Lcom/thanhfhuongf/Amlich/DateView;->access$100(Lcom/thanhfhuongf/Amlich/DateView;)V

    .line 76
    return-void
.end method
