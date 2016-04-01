.class Lcom/thanhfhuongf/Amlich/DayOfWeek$1;
.super Landroid/os/Handler;
.source "DayOfWeek.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thanhfhuongf/Amlich/DayOfWeek;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/thanhfhuongf/Amlich/DayOfWeek;


# direct methods
.method constructor <init>(Lcom/thanhfhuongf/Amlich/DayOfWeek;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/thanhfhuongf/Amlich/DayOfWeek$1;->this$0:Lcom/thanhfhuongf/Amlich/DayOfWeek;

    .line 17
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "paramAnonymousMessage"    # Landroid/os/Message;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/thanhfhuongf/Amlich/DayOfWeek$1;->this$0:Lcom/thanhfhuongf/Amlich/DayOfWeek;

    # invokes: Lcom/thanhfhuongf/Amlich/DayOfWeek;->updateDayOfWeek()V
    invoke-static {v0}, Lcom/thanhfhuongf/Amlich/DayOfWeek;->access$0(Lcom/thanhfhuongf/Amlich/DayOfWeek;)V

    .line 22
    return-void
.end method
