.class final Lcom/android/server/am/ActivityManagerService$UiHandler;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 5

    .prologue
    .line 2075
    iput-object p1, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2076
    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/UiThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2077
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 44
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2081
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_642

    .line 2437
    :cond_7
    :goto_7
    :sswitch_7
    return-void

    .line 2083
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/util/HashMap;

    .line 2084
    .local v34, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "anr_show_background"

    const/4 v8, 0x0

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_77

    const/16 v39, 0x1

    .line 2086
    .local v39, "showBackground":Z
    :goto_25
    move-object/from16 v0, p0

    iget-object v8, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 2087
    :try_start_2a
    const-string v3, "app"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 2088
    .local v6, "proc":Lcom/android/server/am/ProcessRecord;
    const-string/jumbo v3, "result"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/AppErrorResult;

    .line 2089
    .local v5, "res":Lcom/android/server/am/AppErrorResult;
    const-string/jumbo v3, "skipDump"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 2090
    .local v7, "skipDump":Z
    if-eqz v6, :cond_7a

    iget-object v3, v6, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_7a

    .line 2091
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "App already has crash dialog: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    if-eqz v5, :cond_72

    .line 2093
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 2095
    :cond_72
    monitor-exit v8

    goto :goto_7

    .line 2162
    .end local v5    # "res":Lcom/android/server/am/AppErrorResult;
    .end local v6    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v7    # "skipDump":Z
    :catchall_74
    move-exception v3

    monitor-exit v8
    :try_end_76
    .catchall {:try_start_2a .. :try_end_76} :catchall_74

    throw v3

    .line 2084
    .end local v39    # "showBackground":Z
    :cond_77
    const/16 v39, 0x0

    goto :goto_25

    .line 2097
    .restart local v5    # "res":Lcom/android/server/am/AppErrorResult;
    .restart local v6    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v7    # "skipDump":Z
    .restart local v39    # "showBackground":Z
    :cond_7a
    :try_start_7a
    iget v3, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v4, 0x2710

    if-lt v3, v4, :cond_af

    iget v3, v6, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v3, v4, :cond_af

    const/16 v36, 0x1

    .line 2100
    .local v36, "isBackground":Z
    :goto_8c
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v3, Lcom/android/server/am/ActivityManagerService;->mCurrentProfileIds:[I

    move-object/from16 v33, v0

    .local v33, "arr$":[I
    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v37, v0

    .local v37, "len$":I
    const/16 v35, 0x0

    .local v35, "i$":I
    :goto_9b
    move/from16 v0, v35

    move/from16 v1, v37

    if-ge v0, v1, :cond_b4

    aget v41, v33, v35

    .line 2101
    .local v41, "userId":I
    iget v3, v6, Lcom/android/server/am/ProcessRecord;->userId:I

    move/from16 v0, v41

    if-eq v3, v0, :cond_b2

    const/4 v3, 0x1

    :goto_aa
    and-int v36, v36, v3

    .line 2100
    add-int/lit8 v35, v35, 0x1

    goto :goto_9b

    .line 2097
    .end local v33    # "arr$":[I
    .end local v35    # "i$":I
    .end local v36    # "isBackground":Z
    .end local v37    # "len$":I
    .end local v41    # "userId":I
    :cond_af
    const/16 v36, 0x0

    goto :goto_8c

    .line 2101
    .restart local v33    # "arr$":[I
    .restart local v35    # "i$":I
    .restart local v36    # "isBackground":Z
    .restart local v37    # "len$":I
    .restart local v41    # "userId":I
    :cond_b2
    const/4 v3, 0x0

    goto :goto_aa

    .line 2103
    .end local v41    # "userId":I
    :cond_b4
    if-eqz v36, :cond_df

    if-nez v39, :cond_df

    .line 2104
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping crash dialog of "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ": background"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    if-eqz v5, :cond_dc

    .line 2106
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 2108
    :cond_dc
    monitor-exit v8

    goto/16 :goto_7

    .line 2110
    :cond_df
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v3

    if-eqz v3, :cond_149

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mSleeping:Z
    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->access$100(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v3

    if-nez v3, :cond_149

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v3, :cond_149

    .line 2111
    new-instance v2, Lcom/android/server/am/AppErrorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;Z)V

    .line 2115
    .local v2, "d":Landroid/app/Dialog;
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v3

    if-eqz v3, :cond_124

    .line 2117
    new-instance v3, Lcom/android/server/am/ActivityManagerService$UiHandler$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/am/ActivityManagerService$UiHandler$1;-><init>(Lcom/android/server/am/ActivityManagerService$UiHandler;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 2132
    new-instance v3, Lcom/android/server/am/ActivityManagerService$UiHandler$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/am/ActivityManagerService$UiHandler$2;-><init>(Lcom/android/server/am/ActivityManagerService$UiHandler;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2142
    :cond_124
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 2143
    iput-object v2, v6, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 2146
    const/16 v3, 0x3e8

    iget v4, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v3, v4, :cond_138

    .line 2147
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->forceResetEasyOneHandService()V

    .line 2158
    .end local v2    # "d":Landroid/app/Dialog;
    :cond_138
    :goto_138
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->mIsSPDError:Z

    if-eqz v3, :cond_13f

    .line 2159
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/server/am/ActivityManagerService;->mIsSPDError:Z

    .line 2162
    :cond_13f
    monitor-exit v8
    :try_end_140
    .catchall {:try_start_7a .. :try_end_140} :catchall_74

    .line 2164
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    .line 2153
    :cond_149
    if-eqz v5, :cond_138

    .line 2154
    const/4 v3, 0x0

    :try_start_14c
    invoke-virtual {v5, v3}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_14f
    .catchall {:try_start_14c .. :try_end_14f} :catchall_74

    goto :goto_138

    .line 2169
    .end local v5    # "res":Lcom/android/server/am/AppErrorResult;
    .end local v6    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v7    # "skipDump":Z
    .end local v33    # "arr$":[I
    .end local v34    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v35    # "i$":I
    .end local v36    # "isBackground":Z
    .end local v37    # "len$":I
    .end local v39    # "showBackground":Z
    :sswitch_150
    const-string v3, "AASAMSGAASA"

    const-string v4, " SHOW_CMPERMISSION_ERROR_MSG is called"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2171
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/util/HashMap;

    .line 2172
    .restart local v34    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "anr_show_background"

    const/4 v8, 0x0

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1ce

    const/16 v39, 0x1

    .line 2174
    .restart local v39    # "showBackground":Z
    :goto_174
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 2175
    :try_start_179
    const-string/jumbo v3, "errorpermission"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 2176
    .local v12, "permission":Ljava/lang/String;
    const-string/jumbo v3, "errorpackagename"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 2177
    .local v13, "packagename":Ljava/lang/String;
    const-string v3, "app"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 2178
    .restart local v6    # "proc":Lcom/android/server/am/ProcessRecord;
    const-string/jumbo v3, "result"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/AppErrorResult;

    .line 2179
    .restart local v5    # "res":Lcom/android/server/am/AppErrorResult;
    if-eqz v6, :cond_1d1

    iget-object v3, v6, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_1d1

    .line 2180
    const-string v3, "AASAMSGAASA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "App already has crash dialog: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2181
    if-eqz v5, :cond_1c8

    .line 2182
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 2184
    :cond_1c8
    monitor-exit v4

    goto/16 :goto_7

    .line 2226
    .end local v5    # "res":Lcom/android/server/am/AppErrorResult;
    .end local v6    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v12    # "permission":Ljava/lang/String;
    .end local v13    # "packagename":Ljava/lang/String;
    :catchall_1cb
    move-exception v3

    monitor-exit v4
    :try_end_1cd
    .catchall {:try_start_179 .. :try_end_1cd} :catchall_1cb

    throw v3

    .line 2172
    .end local v39    # "showBackground":Z
    :cond_1ce
    const/16 v39, 0x0

    goto :goto_174

    .line 2187
    .restart local v5    # "res":Lcom/android/server/am/AppErrorResult;
    .restart local v6    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v12    # "permission":Ljava/lang/String;
    .restart local v13    # "packagename":Ljava/lang/String;
    .restart local v39    # "showBackground":Z
    :cond_1d1
    :try_start_1d1
    iget v3, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v8, 0x2710

    if-lt v3, v8, :cond_206

    iget v3, v6, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v8, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v3, v8, :cond_206

    const/16 v36, 0x1

    .line 2190
    .restart local v36    # "isBackground":Z
    :goto_1e3
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v3, Lcom/android/server/am/ActivityManagerService;->mCurrentProfileIds:[I

    move-object/from16 v33, v0

    .restart local v33    # "arr$":[I
    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v37, v0

    .restart local v37    # "len$":I
    const/16 v35, 0x0

    .restart local v35    # "i$":I
    :goto_1f2
    move/from16 v0, v35

    move/from16 v1, v37

    if-ge v0, v1, :cond_20b

    aget v41, v33, v35

    .line 2191
    .restart local v41    # "userId":I
    iget v3, v6, Lcom/android/server/am/ProcessRecord;->userId:I

    move/from16 v0, v41

    if-eq v3, v0, :cond_209

    const/4 v3, 0x1

    :goto_201
    and-int v36, v36, v3

    .line 2190
    add-int/lit8 v35, v35, 0x1

    goto :goto_1f2

    .line 2187
    .end local v33    # "arr$":[I
    .end local v35    # "i$":I
    .end local v36    # "isBackground":Z
    .end local v37    # "len$":I
    .end local v41    # "userId":I
    :cond_206
    const/16 v36, 0x0

    goto :goto_1e3

    .line 2191
    .restart local v33    # "arr$":[I
    .restart local v35    # "i$":I
    .restart local v36    # "isBackground":Z
    .restart local v37    # "len$":I
    .restart local v41    # "userId":I
    :cond_209
    const/4 v3, 0x0

    goto :goto_201

    .line 2194
    .end local v41    # "userId":I
    :cond_20b
    if-eqz v36, :cond_236

    if-nez v39, :cond_236

    .line 2195
    const-string v3, "AASAMSGAASA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping crash dialog of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": background"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2196
    if-eqz v5, :cond_233

    .line 2197
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 2199
    :cond_233
    monitor-exit v4

    goto/16 :goto_7

    .line 2203
    :cond_236
    const-string v3, "AASAMSGAASA"

    const-string v8, "AppPermissionManagedDialog was creadted by SHOW_CMPERMISSION_ERROR_MSG"

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v3

    if-eqz v3, :cond_308

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mSleeping:Z
    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->access$100(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v3

    if-nez v3, :cond_308

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v3, :cond_308

    .line 2206
    const/4 v2, 0x0

    .line 2208
    .restart local v2    # "d":Landroid/app/Dialog;
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v8, "emergency_mode"

    const/4 v9, 0x0

    invoke-static {v3, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v8, 0x1

    if-eq v3, v8, :cond_284

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v8, "ultra_powersaving_mode"

    const/4 v9, 0x0

    invoke-static {v3, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_2f8

    .line 2210
    :cond_284
    const-string v3, "AASAMSGAASA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Settings.System.getInt(getContext().getContentResolver(),Settings.System.EMERGENCY_MODE,0)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "emergency_mode"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    const-string v3, "AASAMSGAASA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Settings.System.getInt(getContext().getContentResolver(),Settings.System.EMERGENCY_MODE,0)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "ultra_powersaving_mode"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    new-instance v2, Lcom/android/server/am/AppPermissionManagedDialog;

    .end local v2    # "d":Landroid/app/Dialog;
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v14, 0x1

    move-object v8, v2

    move-object v10, v5

    move-object v11, v6

    invoke-direct/range {v8 .. v14}, Lcom/android/server/am/AppPermissionManagedDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2217
    .restart local v2    # "d":Landroid/app/Dialog;
    :goto_2e7
    if-eqz v2, :cond_2ee

    .line 2218
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 2219
    iput-object v2, v6, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 2226
    .end local v2    # "d":Landroid/app/Dialog;
    :cond_2ee
    :goto_2ee
    monitor-exit v4
    :try_end_2ef
    .catchall {:try_start_1d1 .. :try_end_2ef} :catchall_1cb

    .line 2227
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    .line 2214
    .restart local v2    # "d":Landroid/app/Dialog;
    :cond_2f8
    :try_start_2f8
    new-instance v2, Lcom/android/server/am/AppPermissionManagedDialog;

    .end local v2    # "d":Landroid/app/Dialog;
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    move-object v8, v2

    move-object v10, v5

    move-object v11, v6

    invoke-direct/range {v8 .. v14}, Lcom/android/server/am/AppPermissionManagedDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Z)V

    .restart local v2    # "d":Landroid/app/Dialog;
    goto :goto_2e7

    .line 2224
    .end local v2    # "d":Landroid/app/Dialog;
    :cond_308
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_30c
    .catchall {:try_start_2f8 .. :try_end_30c} :catchall_1cb

    goto :goto_2ee

    .line 2250
    .end local v5    # "res":Lcom/android/server/am/AppErrorResult;
    .end local v6    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v12    # "permission":Ljava/lang/String;
    .end local v13    # "packagename":Ljava/lang/String;
    .end local v33    # "arr$":[I
    .end local v34    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v35    # "i$":I
    .end local v36    # "isBackground":Z
    .end local v37    # "len$":I
    .end local v39    # "showBackground":Z
    :sswitch_30d
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 2251
    :try_start_312
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/util/HashMap;

    .line 2252
    .restart local v34    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "app"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 2253
    .restart local v6    # "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v6, :cond_348

    iget-object v3, v6, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_348

    .line 2254
    const-string v3, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "App already has anr dialog: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    monitor-exit v4

    goto/16 :goto_7

    .line 2306
    .end local v6    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v34    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_345
    move-exception v3

    monitor-exit v4
    :try_end_347
    .catchall {:try_start_312 .. :try_end_347} :catchall_345

    throw v3

    .line 2258
    .restart local v6    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v34    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_348
    :try_start_348
    new-instance v17, Landroid/content/Intent;

    const-string v3, "android.intent.action.ANR"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2259
    .local v17, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v3, :cond_360

    .line 2260
    const/high16 v3, 0x50000000

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2263
    :cond_360
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, -0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    sget v28, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v29, 0x3e8

    const/16 v30, 0x0

    # invokes: Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I
    invoke-static/range {v14 .. v30}, Lcom/android/server/am/ActivityManagerService;->access$200(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 2267
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v3

    if-eqz v3, :cond_3e7

    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->LIBC_DEBUG_ENABLED:Z

    if-nez v3, :cond_3e7

    .line 2268
    new-instance v2, Lcom/android/server/am/AppNotRespondingDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v3, "activity"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_3e4

    const/16 v23, 0x1

    :goto_3b4
    move-object/from16 v18, v2

    move-object/from16 v21, v6

    invoke-direct/range {v18 .. v23}, Lcom/android/server/am/AppNotRespondingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Z)V

    .line 2273
    .restart local v2    # "d":Landroid/app/Dialog;
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v3

    if-eqz v3, :cond_3d5

    .line 2275
    new-instance v3, Lcom/android/server/am/ActivityManagerService$UiHandler$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/am/ActivityManagerService$UiHandler$3;-><init>(Lcom/android/server/am/ActivityManagerService$UiHandler;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 2290
    new-instance v3, Lcom/android/server/am/ActivityManagerService$UiHandler$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/am/ActivityManagerService$UiHandler$4;-><init>(Lcom/android/server/am/ActivityManagerService$UiHandler;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2300
    :cond_3d5
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 2301
    iput-object v2, v6, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    .line 2306
    .end local v2    # "d":Landroid/app/Dialog;
    :goto_3da
    monitor-exit v4
    :try_end_3db
    .catchall {:try_start_348 .. :try_end_3db} :catchall_345

    .line 2308
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    .line 2268
    :cond_3e4
    const/16 v23, 0x0

    goto :goto_3b4

    .line 2304
    :cond_3e7
    :try_start_3e7
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v8}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V
    :try_end_3ef
    .catchall {:try_start_3e7 .. :try_end_3ef} :catchall_345

    goto :goto_3da

    .line 2311
    .end local v6    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v34    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :sswitch_3f0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/util/HashMap;

    .line 2312
    .restart local v34    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 2313
    :try_start_3fd
    const-string v3, "app"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 2314
    .restart local v6    # "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v6, :cond_416

    .line 2315
    const-string v3, "ActivityManager"

    const-string v8, "App not found when showing strict mode dialog."

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2316
    monitor-exit v4

    goto/16 :goto_7

    .line 2333
    .end local v6    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_413
    move-exception v3

    monitor-exit v4
    :try_end_415
    .catchall {:try_start_3fd .. :try_end_415} :catchall_413

    throw v3

    .line 2318
    .restart local v6    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_416
    :try_start_416
    iget-object v3, v6, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_435

    .line 2319
    const-string v3, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "App already has strict mode dialog: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2320
    monitor-exit v4

    goto/16 :goto_7

    .line 2322
    :cond_435
    const-string/jumbo v3, "result"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/AppErrorResult;

    .line 2323
    .restart local v5    # "res":Lcom/android/server/am/AppErrorResult;
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v3

    if-eqz v3, :cond_47a

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mSleeping:Z
    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->access$100(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v3

    if-nez v3, :cond_47a

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v3, :cond_47a

    .line 2324
    new-instance v2, Lcom/android/server/am/StrictModeViolationDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v2, v3, v8, v5, v6}, Lcom/android/server/am/StrictModeViolationDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    .line 2326
    .restart local v2    # "d":Landroid/app/Dialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 2327
    iput-object v2, v6, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 2333
    .end local v2    # "d":Landroid/app/Dialog;
    :goto_470
    monitor-exit v4
    :try_end_471
    .catchall {:try_start_416 .. :try_end_471} :catchall_413

    .line 2334
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    .line 2331
    :cond_47a
    const/4 v3, 0x0

    :try_start_47b
    invoke-virtual {v5, v3}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_47e
    .catchall {:try_start_47b .. :try_end_47e} :catchall_413

    goto :goto_470

    .line 2337
    .end local v5    # "res":Lcom/android/server/am/AppErrorResult;
    .end local v6    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v34    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :sswitch_47f
    new-instance v2, Lcom/android/server/am/FactoryErrorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v8, "msg"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/server/am/FactoryErrorDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 2339
    .restart local v2    # "d":Landroid/app/Dialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 2340
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    .line 2343
    .end local v2    # "d":Landroid/app/Dialog;
    :sswitch_4a1
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 2344
    :try_start_4a6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/server/am/ProcessRecord;

    .line 2345
    .local v31, "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_4dd

    .line 2346
    move-object/from16 v0, v31

    iget-boolean v3, v0, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    if-nez v3, :cond_4d7

    .line 2347
    new-instance v2, Lcom/android/server/am/AppWaitingForDebuggerDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v8, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v31

    invoke-direct {v2, v3, v8, v0}, Lcom/android/server/am/AppWaitingForDebuggerDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V

    .line 2350
    .restart local v2    # "d":Landroid/app/Dialog;
    move-object/from16 v0, v31

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    .line 2351
    const/4 v3, 0x1

    move-object/from16 v0, v31

    iput-boolean v3, v0, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    .line 2352
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 2360
    .end local v2    # "d":Landroid/app/Dialog;
    :cond_4d7
    :goto_4d7
    monitor-exit v4

    goto/16 :goto_7

    .end local v31    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_4da
    move-exception v3

    monitor-exit v4
    :try_end_4dc
    .catchall {:try_start_4a6 .. :try_end_4dc} :catchall_4da

    throw v3

    .line 2355
    .restart local v31    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_4dd
    :try_start_4dd
    move-object/from16 v0, v31

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_4d7

    .line 2356
    move-object/from16 v0, v31

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 2357
    const/4 v3, 0x0

    move-object/from16 v0, v31

    iput-object v3, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;
    :try_end_4ef
    .catchall {:try_start_4dd .. :try_end_4ef} :catchall_4da

    goto :goto_4d7

    .line 2363
    .end local v31    # "app":Lcom/android/server/am/ProcessRecord;
    :sswitch_4f0
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2364
    new-instance v2, Lcom/android/server/am/BaseErrorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 2365
    .local v2, "d":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7da

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 2366
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 2367
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v4, 0x104012e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2368
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v4, 0x1040596

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2369
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v8, 0x104000a

    invoke-virtual {v4, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const/16 v8, 0x30

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v2}, obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v2, v3, v4, v8}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 2371
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_7

    .line 2375
    .end local v2    # "d":Landroid/app/AlertDialog;
    :sswitch_550
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2376
    new-instance v2, Lcom/android/server/am/BaseErrorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 2377
    .restart local v2    # "d":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7da

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 2378
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 2379
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v4, 0x104012e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2380
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v4, 0x1040597

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2381
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v8, 0x104000a

    invoke-virtual {v4, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const/16 v8, 0x30

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v2}, obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v2, v3, v4, v8}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 2383
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_7

    .line 2387
    .end local v2    # "d":Landroid/app/AlertDialog;
    :sswitch_5b0
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 2388
    :try_start_5b5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Lcom/android/server/am/ActivityRecord;

    .line 2389
    .local v32, "ar":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    if-eqz v3, :cond_5f3

    .line 2390
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    iget-object v3, v3, Lcom/android/server/am/CompatModeDialog;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v32

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e3

    .line 2392
    monitor-exit v4

    goto/16 :goto_7

    .line 2411
    .end local v32    # "ar":Lcom/android/server/am/ActivityRecord;
    :catchall_5e0
    move-exception v3

    monitor-exit v4
    :try_end_5e2
    .catchall {:try_start_5b5 .. :try_end_5e2} :catchall_5e0

    throw v3

    .line 2394
    .restart local v32    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_5e3
    :try_start_5e3
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    invoke-virtual {v3}, Lcom/android/server/am/CompatModeDialog;->dismiss()V

    .line 2395
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    iput-object v8, v3, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    .line 2397
    :cond_5f3
    if-eqz v32, :cond_5f5

    .line 2411
    :cond_5f5
    monitor-exit v4
    :try_end_5f6
    .catchall {:try_start_5e3 .. :try_end_5f6} :catchall_5e0

    goto/16 :goto_7

    .line 2415
    .end local v32    # "ar":Lcom/android/server/am/ActivityRecord;
    :sswitch_5f8
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    # invokes: Lcom/android/server/am/ActivityManagerService;->showUserSwitchDialog(ILjava/lang/String;)V
    invoke-static {v4, v8, v3}, Lcom/android/server/am/ActivityManagerService;->access$300(Lcom/android/server/am/ActivityManagerService;ILjava/lang/String;)V

    goto/16 :goto_7

    .line 2419
    :sswitch_60b
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/Dialog;

    .line 2420
    .local v2, "d":Landroid/app/Dialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_7

    .line 2424
    .end local v2    # "d":Landroid/app/Dialog;
    :sswitch_616
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->dispatchProcessesChanged()V
    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->access$400(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_7

    .line 2428
    :sswitch_61f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v38, v0

    .line 2429
    .local v38, "pid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v40, v0

    .line 2430
    .local v40, "uid":I
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, v38

    move/from16 v1, v40

    # invokes: Lcom/android/server/am/ActivityManagerService;->dispatchProcessDied(II)V
    invoke-static {v3, v0, v1}, Lcom/android/server/am/ActivityManagerService;->access$500(Lcom/android/server/am/ActivityManagerService;II)V

    goto/16 :goto_7

    .line 2434
    .end local v38    # "pid":I
    .end local v40    # "uid":I
    :sswitch_638
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->dispatchUidsChanged()V
    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->access$600(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_7

    .line 2081
    nop

    :sswitch_data_642
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_30d
        0x3 -> :sswitch_47f
        0x6 -> :sswitch_4a1
        0xe -> :sswitch_4f0
        0xf -> :sswitch_550
        0x1a -> :sswitch_3f0
        0x1e -> :sswitch_5b0
        0x1f -> :sswitch_616
        0x20 -> :sswitch_61f
        0x2e -> :sswitch_5f8
        0x30 -> :sswitch_60b
        0x36 -> :sswitch_638
        0x40 -> :sswitch_150
        0x41 -> :sswitch_7
    .end sparse-switch
.end method
