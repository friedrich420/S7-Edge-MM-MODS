.class Lcom/android/settings/search/DynamicIndexableContentMonitor$1;
.super Landroid/os/Handler;
.source "DynamicIndexableContentMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/DynamicIndexableContentMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/search/DynamicIndexableContentMonitor;


# direct methods
.method constructor <init>(Lcom/android/settings/search/DynamicIndexableContentMonitor;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$1;->this$0:Lcom/android/settings/search/DynamicIndexableContentMonitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 65
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 76
    :goto_0
    return-void

    .line 67
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 68
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$1;->this$0:Lcom/android/settings/search/DynamicIndexableContentMonitor;

    # invokes: Lcom/android/settings/search/DynamicIndexableContentMonitor;->handlePackageAvailable(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/settings/search/DynamicIndexableContentMonitor;->access$000(Lcom/android/settings/search/DynamicIndexableContentMonitor;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    .end local v0    # "packageName":Ljava/lang/String;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 73
    .restart local v0    # "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$1;->this$0:Lcom/android/settings/search/DynamicIndexableContentMonitor;

    # invokes: Lcom/android/settings/search/DynamicIndexableContentMonitor;->handlePackageUnavailable(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/settings/search/DynamicIndexableContentMonitor;->access$100(Lcom/android/settings/search/DynamicIndexableContentMonitor;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
