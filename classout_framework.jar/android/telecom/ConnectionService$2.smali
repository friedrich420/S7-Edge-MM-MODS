.class Landroid/telecom/ConnectionService$2;
.super Landroid/os/Handler;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/ConnectionService;


# direct methods
.method constructor <init>(Landroid/telecom/ConnectionService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 233
    iput-object p1, p0, this$0:Landroid/telecom/ConnectionService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 236
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_1bc

    .line 359
    :goto_7
    :pswitch_7
    return-void

    .line 238
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;
    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$100(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    invoke-virtual {v2, v1}, Landroid/telecom/ConnectionServiceAdapter;->addAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/telecom/ConnectionService;

    # invokes: Landroid/telecom/ConnectionService;->onAdapterAttached()V
    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$200(Landroid/telecom/ConnectionService;)V

    goto :goto_7

    .line 242
    :pswitch_21
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;
    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$100(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    invoke-virtual {v2, v1}, Landroid/telecom/ConnectionServiceAdapter;->removeAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V

    goto :goto_7

    .line 245
    :pswitch_33
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 247
    .local v8, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_39
    iget-object v3, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    .line 249
    .local v3, "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    iget-object v4, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 250
    .local v4, "id":Ljava/lang/String;
    iget-object v5, v8, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Landroid/telecom/ConnectionRequest;

    .line 251
    .local v5, "request":Landroid/telecom/ConnectionRequest;
    iget v1, v8, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7e

    const/4 v6, 0x1

    .line 252
    .local v6, "isIncoming":Z
    :goto_4b
    iget v1, v8, Lcom/android/internal/os/SomeArgs;->argi2:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_80

    const/4 v7, 0x1

    .line 253
    .local v7, "isUnknown":Z
    :goto_51
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z
    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$300(Landroid/telecom/ConnectionService;)Z

    move-result v1

    if-nez v1, :cond_82

    .line 254
    const-string v1, "Enqueueing pre-init request %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v4, v2, v15

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;
    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$500(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v15

    new-instance v1, Landroid/telecom/ConnectionService$2$1;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Landroid/telecom/ConnectionService$2$1;-><init>(Landroid/telecom/ConnectionService$2;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7a
    .catchall {:try_start_39 .. :try_end_7a} :catchall_8a

    .line 275
    :goto_7a
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_7

    .line 251
    .end local v6    # "isIncoming":Z
    .end local v7    # "isUnknown":Z
    :cond_7e
    const/4 v6, 0x0

    goto :goto_4b

    .line 252
    .restart local v6    # "isIncoming":Z
    :cond_80
    const/4 v7, 0x0

    goto :goto_51

    .line 267
    .restart local v7    # "isUnknown":Z
    :cond_82
    :try_start_82
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/telecom/ConnectionService;

    # invokes: Landroid/telecom/ConnectionService;->createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    invoke-static/range {v2 .. v7}, Landroid/telecom/ConnectionService;->access$400(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    :try_end_89
    .catchall {:try_start_82 .. :try_end_89} :catchall_8a

    goto :goto_7a

    .line 275
    .end local v3    # "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "request":Landroid/telecom/ConnectionRequest;
    .end local v6    # "isIncoming":Z
    .end local v7    # "isUnknown":Z
    :catchall_8a
    move-exception v1

    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 280
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_8f
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->abort(Ljava/lang/String;)V
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->access$600(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 283
    :pswitch_9e
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->answer(Ljava/lang/String;)V
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->access$700(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 286
    :pswitch_ad
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 288
    .restart local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_b3
    iget-object v10, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 289
    .local v10, "callId":Ljava/lang/String;
    iget v14, v8, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 290
    .local v14, "videoState":I
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/telecom/ConnectionService;

    # invokes: Landroid/telecom/ConnectionService;->answerVideo(Ljava/lang/String;I)V
    invoke-static {v1, v10, v14}, Landroid/telecom/ConnectionService;->access$800(Landroid/telecom/ConnectionService;Ljava/lang/String;I)V
    :try_end_c0
    .catchall {:try_start_b3 .. :try_end_c0} :catchall_c5

    .line 292
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_7

    .end local v10    # "callId":Ljava/lang/String;
    .end local v14    # "videoState":I
    :catchall_c5
    move-exception v1

    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 297
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_ca
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->reject(Ljava/lang/String;)V
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->access$900(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 300
    :pswitch_d9
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->disconnect(Ljava/lang/String;)V
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->access$1000(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 303
    :pswitch_e8
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->hold(Ljava/lang/String;)V
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->access$1100(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 306
    :pswitch_f7
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->unhold(Ljava/lang/String;)V
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->access$1200(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 309
    :pswitch_106
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 311
    .restart local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_10c
    iget-object v10, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 312
    .restart local v10    # "callId":Ljava/lang/String;
    iget-object v9, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v9, Landroid/telecom/CallAudioState;

    .line 313
    .local v9, "audioState":Landroid/telecom/CallAudioState;
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/telecom/ConnectionService;

    new-instance v2, Landroid/telecom/CallAudioState;

    invoke-direct {v2, v9}, Landroid/telecom/CallAudioState;-><init>(Landroid/telecom/CallAudioState;)V

    # invokes: Landroid/telecom/ConnectionService;->onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    invoke-static {v1, v10, v2}, Landroid/telecom/ConnectionService;->access$1300(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    :try_end_120
    .catchall {:try_start_10c .. :try_end_120} :catchall_125

    .line 315
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_7

    .end local v9    # "audioState":Landroid/telecom/CallAudioState;
    .end local v10    # "callId":Ljava/lang/String;
    :catchall_125
    move-exception v1

    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 320
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_12a
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    int-to-char v15, v15

    # invokes: Landroid/telecom/ConnectionService;->playDtmfTone(Ljava/lang/String;C)V
    invoke-static {v2, v1, v15}, Landroid/telecom/ConnectionService;->access$1400(Landroid/telecom/ConnectionService;Ljava/lang/String;C)V

    goto/16 :goto_7

    .line 323
    :pswitch_13e
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->stopDtmfTone(Ljava/lang/String;)V
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->access$1500(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 326
    :pswitch_14d
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 328
    .restart local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_153
    iget-object v11, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    .line 329
    .local v11, "callId1":Ljava/lang/String;
    iget-object v12, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    .line 330
    .local v12, "callId2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/telecom/ConnectionService;

    # invokes: Landroid/telecom/ConnectionService;->conference(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v11, v12}, Landroid/telecom/ConnectionService;->access$1600(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_162
    .catchall {:try_start_153 .. :try_end_162} :catchall_167

    .line 332
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_7

    .end local v11    # "callId1":Ljava/lang/String;
    .end local v12    # "callId2":Ljava/lang/String;
    :catchall_167
    move-exception v1

    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 337
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_16c
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->splitFromConference(Ljava/lang/String;)V
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->access$1700(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 340
    :pswitch_17b
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->mergeConference(Ljava/lang/String;)V
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->access$1800(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 343
    :pswitch_18a
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->swapConference(Ljava/lang/String;)V
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->access$1900(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 346
    :pswitch_199
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 348
    .restart local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_19f
    iget-object v10, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 349
    .restart local v10    # "callId":Ljava/lang/String;
    iget v1, v8, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b5

    const/4 v13, 0x1

    .line 350
    .local v13, "proceed":Z
    :goto_1a9
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/telecom/ConnectionService;

    # invokes: Landroid/telecom/ConnectionService;->onPostDialContinue(Ljava/lang/String;Z)V
    invoke-static {v1, v10, v13}, Landroid/telecom/ConnectionService;->access$2000(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    :try_end_1b0
    .catchall {:try_start_19f .. :try_end_1b0} :catchall_1b7

    .line 352
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_7

    .line 349
    .end local v13    # "proceed":Z
    :cond_1b5
    const/4 v13, 0x0

    goto :goto_1a9

    .line 352
    .end local v10    # "callId":Ljava/lang/String;
    :catchall_1b7
    move-exception v1

    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 236
    :pswitch_data_1bc
    .packed-switch 0x1
        :pswitch_8
        :pswitch_33
        :pswitch_8f
        :pswitch_9e
        :pswitch_ca
        :pswitch_d9
        :pswitch_e8
        :pswitch_f7
        :pswitch_106
        :pswitch_12a
        :pswitch_13e
        :pswitch_14d
        :pswitch_16c
        :pswitch_199
        :pswitch_7
        :pswitch_21
        :pswitch_ad
        :pswitch_17b
        :pswitch_18a
    .end packed-switch
.end method
