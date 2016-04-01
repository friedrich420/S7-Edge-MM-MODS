.class Landroid/telecom/Call$8;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/Call;->fireCallDestroyed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/Call;

.field final synthetic val$call:Landroid/telecom/Call;

.field final synthetic val$callback:Landroid/telecom/Call$Callback;

.field final synthetic val$record:Landroid/telecom/CallbackRecord;


# direct methods
.method constructor <init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Landroid/telecom/CallbackRecord;)V
    .registers 5

    .prologue
    .line 1285
    iput-object p1, p0, this$0:Landroid/telecom/Call;

    iput-object p2, p0, val$callback:Landroid/telecom/Call$Callback;

    iput-object p3, p0, val$call:Landroid/telecom/Call;

    iput-object p4, p0, val$record:Landroid/telecom/CallbackRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 1288
    const/4 v1, 0x0

    .line 1289
    .local v1, "isFinalRemoval":Z
    const/4 v2, 0x0

    .line 1291
    .local v2, "toThrow":Ljava/lang/RuntimeException;
    :try_start_2
    iget-object v3, p0, val$callback:Landroid/telecom/Call$Callback;

    iget-object v4, p0, val$call:Landroid/telecom/Call;

    invoke-virtual {v3, v4}, Landroid/telecom/Call$Callback;->onCallDestroyed(Landroid/telecom/Call;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_9} :catch_35

    .line 1295
    :goto_9
    iget-object v4, p0, this$0:Landroid/telecom/Call;

    monitor-enter v4

    .line 1296
    :try_start_c
    iget-object v3, p0, this$0:Landroid/telecom/Call;

    # getter for: Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;
    invoke-static {v3}, Landroid/telecom/Call;->access$000(Landroid/telecom/Call;)Ljava/util/List;

    move-result-object v3

    iget-object v5, p0, val$record:Landroid/telecom/CallbackRecord;

    invoke-interface {v3, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1297
    iget-object v3, p0, this$0:Landroid/telecom/Call;

    # getter for: Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;
    invoke-static {v3}, Landroid/telecom/Call;->access$000(Landroid/telecom/Call;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1298
    const/4 v1, 0x1

    .line 1300
    :cond_24
    monitor-exit v4
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_38

    .line 1301
    if-eqz v1, :cond_32

    .line 1302
    iget-object v3, p0, this$0:Landroid/telecom/Call;

    # getter for: Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;
    invoke-static {v3}, Landroid/telecom/Call;->access$100(Landroid/telecom/Call;)Landroid/telecom/Phone;

    move-result-object v3

    iget-object v4, p0, val$call:Landroid/telecom/Call;

    invoke-virtual {v3, v4}, Landroid/telecom/Phone;->internalRemoveCall(Landroid/telecom/Call;)V

    .line 1304
    :cond_32
    if-eqz v2, :cond_3b

    .line 1305
    throw v2

    .line 1292
    :catch_35
    move-exception v0

    .line 1293
    .local v0, "e":Ljava/lang/RuntimeException;
    move-object v2, v0

    goto :goto_9

    .line 1300
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_38
    move-exception v3

    :try_start_39
    monitor-exit v4
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v3

    .line 1307
    :cond_3b
    return-void
.end method
