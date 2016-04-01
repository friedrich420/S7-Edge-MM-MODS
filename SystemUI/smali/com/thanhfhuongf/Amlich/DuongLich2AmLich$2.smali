.class Lcom/thanhfhuongf/Amlich/DuongLich2AmLich$2;
.super Landroid/content/BroadcastReceiver;
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
    iput-object p1, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich$2;->this$0:Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;

    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "paramAnonymousContext"    # Landroid/content/Context;
    .param p2, "paramAnonymousIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "str":Ljava/lang/String;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich$2;->this$0:Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;

    # getter for: Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->access$1(Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 34
    :cond_1
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 37
    :goto_0
    return-void

    .line 36
    :cond_2
    iget-object v1, p0, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich$2;->this$0:Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;

    # getter for: Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;->access$1(Lcom/thanhfhuongf/Amlich/DuongLich2AmLich;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
