.class Lcom/samsung/android/share/SShareSimpleSharing$1;
.super Landroid/os/Handler;
.source "SShareSimpleSharing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/share/SShareSimpleSharing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/share/SShareSimpleSharing;


# direct methods
.method constructor <init>(Lcom/samsung/android/share/SShareSimpleSharing;)V
    .registers 2

    .prologue
    .line 123
    iput-object p1, p0, this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 126
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    .line 145
    :goto_5
    return-void

    .line 141
    :pswitch_6
    iget-object v0, p0, this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    # invokes: Lcom/samsung/android/share/SShareSimpleSharing;->initRecentHistoryList()V
    invoke-static {v0}, Lcom/samsung/android/share/SShareSimpleSharing;->access$000(Lcom/samsung/android/share/SShareSimpleSharing;)V

    goto :goto_5

    .line 126
    :pswitch_data_c
    .packed-switch 0x7d0
        :pswitch_6
    .end packed-switch
.end method
