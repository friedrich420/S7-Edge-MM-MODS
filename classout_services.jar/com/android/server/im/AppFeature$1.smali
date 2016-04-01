.class Lcom/android/server/im/AppFeature$1;
.super Landroid/os/Handler;
.source "AppFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/im/AppFeature;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/im/AppFeature;


# direct methods
.method constructor <init>(Lcom/android/server/im/AppFeature;)V
    .registers 2

    .prologue
    .line 230
    iput-object p1, p0, this$0:Lcom/android/server/im/AppFeature;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 233
    # getter for: Lcom/android/server/im/AppFeature;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/im/AppFeature;->access$000()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Handle Msg thread id ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->getId()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_114

    .line 270
    :cond_27
    :goto_27
    return-void

    .line 237
    :pswitch_28
    # getter for: Lcom/android/server/im/AppFeature;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/im/AppFeature;->access$000()Ljava/lang/String;

    move-result-object v9

    const-string v10, "CONSTRUCT DATA"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 239
    .local v6, "start":J
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "FEATURE_INFO"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/server/im/InjectionFeatureInfo;

    .line 242
    .local v2, "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    # getter for: Lcom/android/server/im/AppFeature;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/im/AppFeature;->access$000()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Have to construct Data obtained ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/android/server/im/InjectionFeatureInfo;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v9, p0, this$0:Lcom/android/server/im/AppFeature;

    # invokes: Lcom/android/server/im/AppFeature;->addToTargetSpecificMap(Lcom/android/server/im/InjectionFeatureInfo;)V
    invoke-static {v9, v2}, Lcom/android/server/im/AppFeature;->access$100(Lcom/android/server/im/AppFeature;Lcom/android/server/im/InjectionFeatureInfo;)V

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v0, v10, v6

    .line 246
    .local v0, "end":J
    # getter for: Lcom/android/server/im/AppFeature;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/im/AppFeature;->access$000()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Time taken to construct "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/android/server/im/InjectionFeatureInfo;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", EndTime ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 249
    .end local v0    # "end":J
    .end local v2    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .end local v6    # "start":J
    :pswitch_a1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "FEATURE_INFO"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 253
    .local v4, "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    # getter for: Lcom/android/server/im/AppFeature;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/im/AppFeature;->access$000()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "KILL_PARENT ForceStopList ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_c9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_27

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 255
    .local v5, "packagename":Ljava/lang/String;
    iget-object v9, p0, this$0:Lcom/android/server/im/AppFeature;

    invoke-virtual {v9, v5}, Lcom/android/server/im/AppFeature;->forceStopTarget(Ljava/lang/String;)V

    goto :goto_c9

    .line 259
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "packagename":Ljava/lang/String;
    :pswitch_db
    iget-object v9, p0, this$0:Lcom/android/server/im/AppFeature;

    iget-object v9, v9, Lcom/android/server/im/AppFeature;->mTargetSpecificFeatureList:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 261
    .local v8, "targetList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    # getter for: Lcom/android/server/im/AppFeature;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/im/AppFeature;->access$000()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "KILL_ALL_PARENT ForceStopList ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_101
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_27

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 263
    .restart local v5    # "packagename":Ljava/lang/String;
    iget-object v9, p0, this$0:Lcom/android/server/im/AppFeature;

    invoke-virtual {v9, v5}, Lcom/android/server/im/AppFeature;->forceStopTarget(Ljava/lang/String;)V

    goto :goto_101

    .line 234
    nop

    :pswitch_data_114
    .packed-switch 0x1
        :pswitch_28
        :pswitch_a1
        :pswitch_db
    .end packed-switch
.end method
