.class Lcom/android/settings/RingtoneRecommender$1;
.super Ljava/lang/Thread;
.source "RingtoneRecommender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/RingtoneRecommender;->extract()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RingtoneRecommender;


# direct methods
.method constructor <init>(Lcom/android/settings/RingtoneRecommender;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/settings/RingtoneRecommender$1;->this$0:Lcom/android/settings/RingtoneRecommender;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 256
    const/4 v2, -0x1

    .line 257
    .local v2, "oldstatus":I
    const/4 v3, -0x1

    .line 258
    .local v3, "status":I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings/RingtoneRecommender$1;->this$0:Lcom/android/settings/RingtoneRecommender;

    iget-boolean v4, v4, Lcom/android/settings/RingtoneRecommender;->mIsOpen:Z

    if-eqz v4, :cond_1

    .line 260
    const-wide/16 v4, 0xc8

    :try_start_0
    invoke-static {v4, v5}, Lcom/android/settings/RingtoneRecommender$1;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_1
    iget-object v4, p0, Lcom/android/settings/RingtoneRecommender$1;->this$0:Lcom/android/settings/RingtoneRecommender;

    # getter for: Lcom/android/settings/RingtoneRecommender;->mSmat:Lcom/samsung/audio/Smat;
    invoke-static {v4}, Lcom/android/settings/RingtoneRecommender;->access$000(Lcom/android/settings/RingtoneRecommender;)Lcom/samsung/audio/Smat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/audio/Smat;->get_stat()I

    move-result v3

    .line 265
    const-string v4, "RingtoneRecommender"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "extract() and background thread\'s run() status : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    if-eq v2, v3, :cond_0

    .line 268
    move v2, v3

    .line 269
    iget-object v4, p0, Lcom/android/settings/RingtoneRecommender$1;->this$0:Lcom/android/settings/RingtoneRecommender;

    # getter for: Lcom/android/settings/RingtoneRecommender;->mListener:Lcom/android/settings/RingtoneRecommender$OnHighlightResultListener;
    invoke-static {v4}, Lcom/android/settings/RingtoneRecommender;->access$100(Lcom/android/settings/RingtoneRecommender;)Lcom/android/settings/RingtoneRecommender$OnHighlightResultListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 270
    const/4 v1, 0x0

    .line 271
    .local v1, "offset":I
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 273
    :pswitch_0
    iget-object v4, p0, Lcom/android/settings/RingtoneRecommender$1;->this$0:Lcom/android/settings/RingtoneRecommender;

    # getter for: Lcom/android/settings/RingtoneRecommender;->mSmat:Lcom/samsung/audio/Smat;
    invoke-static {v4}, Lcom/android/settings/RingtoneRecommender;->access$000(Lcom/android/settings/RingtoneRecommender;)Lcom/samsung/audio/Smat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/audio/Smat;->get_info()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    mul-int/lit16 v1, v4, 0x3e8

    .line 277
    :pswitch_1
    const-string v4, "RingtoneRecommender"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "extract()  status :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " position : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v4, p0, Lcom/android/settings/RingtoneRecommender$1;->this$0:Lcom/android/settings/RingtoneRecommender;

    # getter for: Lcom/android/settings/RingtoneRecommender;->mListener:Lcom/android/settings/RingtoneRecommender$OnHighlightResultListener;
    invoke-static {v4}, Lcom/android/settings/RingtoneRecommender;->access$100(Lcom/android/settings/RingtoneRecommender;)Lcom/android/settings/RingtoneRecommender$OnHighlightResultListener;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Lcom/android/settings/RingtoneRecommender$OnHighlightResultListener;->onResult(II)V

    .line 280
    iget-object v4, p0, Lcom/android/settings/RingtoneRecommender$1;->this$0:Lcom/android/settings/RingtoneRecommender;

    invoke-virtual {v4}, Lcom/android/settings/RingtoneRecommender;->close()Z

    goto :goto_0

    .line 261
    .end local v1    # "offset":I
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 288
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    return-void

    .line 271
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
