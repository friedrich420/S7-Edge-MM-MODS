.class Lcom/android/server/wm/Task;
.super Ljava/lang/Object;
.source "Task.java"


# instance fields
.field childCoupledTaskId:I

.field finishWithCoupledTask:Z

.field final mAppTokens:Lcom/android/server/wm/AppTokenList;

.field mDeferRemoval:Z

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mStack:Lcom/android/server/wm/TaskStack;

.field mStartingWindowTargetAppToken:Lcom/android/server/wm/AppWindowToken;

.field final mTaskId:I

.field final mUserId:I

.field parentCoupledTaskId:I


# direct methods
.method constructor <init>(ILcom/android/server/wm/TaskStack;ILcom/android/server/wm/WindowManagerService;)V
    .registers 7
    .param p1, "taskId"    # I
    .param p2, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p3, "userId"    # I
    .param p4, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v1, -0x1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/android/server/wm/AppTokenList;

    invoke-direct {v0}, Lcom/android/server/wm/AppTokenList;-><init>()V

    iput-object v0, p0, mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 48
    iput v1, p0, parentCoupledTaskId:I

    .line 49
    iput v1, p0, childCoupledTaskId:I

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, finishWithCoupledTask:Z

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, mDeferRemoval:Z

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, mStartingWindowTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 58
    iput p1, p0, mTaskId:I

    .line 59
    iput-object p2, p0, mStack:Lcom/android/server/wm/TaskStack;

    .line 60
    iput p3, p0, mUserId:I

    .line 61
    iput-object p4, p0, mService:Lcom/android/server/wm/WindowManagerService;

    .line 62
    return-void
.end method


# virtual methods
.method addAppToken(ILcom/android/server/wm/AppWindowToken;)V
    .registers 8
    .param p1, "addPos"    # I
    .param p2, "wtoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 69
    iget-object v2, p0, mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v0

    .line 70
    .local v0, "lastPos":I
    if-lt p1, v0, :cond_43

    .line 71
    move p1, v0

    .line 82
    :cond_9
    if-le p1, v0, :cond_38

    .line 84
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Task.addAppToken: Out of bounds attempt token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " addPos="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " lastPos="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    move p1, v0

    .line 89
    :cond_38
    iget-object v2, p0, mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/AppTokenList;->add(ILjava/lang/Object;)V

    .line 90
    iput-object p0, p2, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    .line 91
    const/4 v2, 0x0

    iput-boolean v2, p0, mDeferRemoval:Z

    .line 92
    return-void

    .line 73
    :cond_43
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_44
    if-ge v1, v0, :cond_9

    if-ge v1, p1, :cond_9

    .line 74
    iget-object v2, p0, mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-eqz v2, :cond_56

    .line 76
    add-int/lit8 p1, p1, 0x1

    .line 73
    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_44
.end method

.method getCoupledTaskId()I
    .registers 2

    .prologue
    .line 203
    iget v0, p0, childCoupledTaskId:I

    if-lez v0, :cond_7

    .line 204
    iget v0, p0, childCoupledTaskId:I

    .line 208
    :goto_6
    return v0

    .line 205
    :cond_7
    iget v0, p0, parentCoupledTaskId:I

    if-lez v0, :cond_e

    .line 206
    iget v0, p0, parentCoupledTaskId:I

    goto :goto_6

    .line 208
    :cond_e
    const/4 v0, -0x1

    goto :goto_6
.end method

.method getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    return-object v0
.end method

.method getDisplayId()I
    .registers 2

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public getHeaderBounds(Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 236
    iget-object v4, p0, mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->isFloatingStack()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 237
    iget-object v4, p0, mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "appTokenNdx":I
    :goto_10
    if-ltz v0, :cond_47

    .line 238
    iget-object v4, p0, mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v4, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 239
    .local v3, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "windowNdx":I
    :goto_22
    if-ltz v2, :cond_41

    .line 240
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 241
    .local v1, "win":Lcom/android/server/wm/WindowState;
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x3ee

    if-eq v4, v5, :cond_3a

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x3ef

    if-ne v4, v5, :cond_44

    .line 243
    :cond_3a
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 237
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    :cond_41
    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    .line 239
    .restart local v1    # "win":Lcom/android/server/wm/WindowState;
    :cond_44
    add-int/lit8 v2, v2, -0x1

    goto :goto_22

    .line 249
    .end local v0    # "appTokenNdx":I
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    .end local v2    # "windowNdx":I
    .end local v3    # "windows":Lcom/android/server/wm/WindowList;
    :cond_47
    return-void
.end method

.method public getLayer()I
    .registers 3

    .prologue
    .line 226
    invoke-virtual {p0}, getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 227
    .local v0, "appToken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_d

    .line 228
    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getLayer()I

    move-result v1

    .line 232
    :goto_c
    return v1

    .line 229
    :cond_d
    iget-object v1, p0, mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isFloatingStack()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 230
    const/4 v1, 0x1

    goto :goto_c

    .line 232
    :cond_17
    const/4 v1, 0x0

    goto :goto_c
.end method

.method getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;
    .registers 4

    .prologue
    .line 214
    iget-object v2, p0, mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    if-lez v2, :cond_2e

    .line 215
    iget-object v2, p0, mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "tokenNdx":I
    :goto_10
    if-ltz v1, :cond_2e

    .line 216
    iget-object v2, p0, mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    .line 217
    .local v0, "token":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v2, :cond_2b

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-nez v2, :cond_2b

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->willBeHidden:Z

    if-nez v2, :cond_2b

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->finishing:Z

    if-nez v2, :cond_2b

    .line 222
    .end local v0    # "token":Lcom/android/server/wm/AppWindowToken;
    .end local v1    # "tokenNdx":I
    :goto_2a
    return-object v0

    .line 215
    .restart local v0    # "token":Lcom/android/server/wm/AppWindowToken;
    .restart local v1    # "tokenNdx":I
    :cond_2b
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 222
    .end local v0    # "token":Lcom/android/server/wm/AppWindowToken;
    .end local v1    # "tokenNdx":I
    :cond_2e
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method hasVisibleAppTokenForDisplay(I)Z
    .registers 5
    .param p1, "displayId"    # I

    .prologue
    .line 193
    iget-object v2, p0, mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "tokenNdx":I
    :goto_8
    if-ltz v1, :cond_29

    .line 194
    iget-object v2, p0, mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    .line 195
    .local v0, "token":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v2, :cond_26

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-nez v2, :cond_26

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->willBeHidden:Z

    if-nez v2, :cond_26

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getDisplayId()I

    move-result v2

    if-ne v2, p1, :cond_26

    .line 196
    const/4 v2, 0x1

    .line 199
    .end local v0    # "token":Lcom/android/server/wm/AppWindowToken;
    :goto_25
    return v2

    .line 193
    .restart local v0    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_26
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 199
    .end local v0    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_29
    const/4 v2, 0x0

    goto :goto_25
.end method

.method moveTaskToStack(Lcom/android/server/wm/TaskStack;Z)V
    .registers 7
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "toTop"    # Z

    .prologue
    .line 131
    iget-object v0, p0, mStack:Lcom/android/server/wm/TaskStack;

    if-ne p1, v0, :cond_5

    .line 141
    :goto_4
    return-void

    .line 134
    :cond_5
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v0, :cond_30

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveTaskToStack: removing taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_30
    const/16 v0, 0x791b

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, mTaskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "moveTask"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 137
    iget-object v0, p0, mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_50

    .line 138
    iget-object v0, p0, mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskStack;->removeTask(Lcom/android/server/wm/Task;)V

    .line 140
    :cond_50
    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/TaskStack;->addTask(Lcom/android/server/wm/Task;Z)V

    goto :goto_4
.end method

.method removeAppToken(Lcom/android/server/wm/AppWindowToken;)Z
    .registers 7
    .param p1, "wtoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 144
    iget-object v1, p0, mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/AppTokenList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 145
    .local v0, "removed":Z
    iget-object v1, p0, mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v1

    if-nez v1, :cond_2c

    .line 146
    const/16 v1, 0x791b

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, mTaskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "removeAppToken: last token"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 148
    iget-boolean v1, p0, mDeferRemoval:Z

    if-eqz v1, :cond_2c

    .line 149
    invoke-virtual {p0}, removeLocked()V

    .line 153
    :cond_2c
    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->clearStartingWindowTargetAppTokenLocked(Lcom/android/server/wm/AppWindowToken;)V

    .line 154
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    .line 158
    return v0
.end method

.method removeLocked()V
    .registers 2

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, removeLocked(Z)V

    .line 96
    return-void
.end method

.method removeLocked(Z)V
    .registers 7
    .param p1, "move"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 99
    iget-object v0, p0, mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTokenList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 100
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v0, :cond_31

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeTask: deferring removing taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_31
    if-nez p1, :cond_36

    .line 103
    iput-boolean v4, p0, mDeferRemoval:Z

    .line 128
    :goto_35
    return-void

    .line 112
    :cond_36
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v0, :cond_55

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeTask: removing taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_55
    const/16 v0, 0x791b

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, mTaskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const-string/jumbo v2, "removeTask"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 114
    iput-boolean v3, p0, mDeferRemoval:Z

    .line 115
    iget-object v0, p0, mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskStack;->removeTask(Lcom/android/server/wm/Task;)V

    .line 119
    if-nez p1, :cond_7d

    .line 120
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    iget v1, p0, mTaskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_35

    .line 122
    :cond_7d
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p0, v0, Lcom/android/server/wm/WindowManagerService;->mMovingTask:Lcom/android/server/wm/Task;

    goto :goto_35
.end method

.method setSendingToBottom(Z)V
    .registers 4
    .param p1, "toBottom"    # Z

    .prologue
    .line 162
    const/4 v0, 0x0

    .local v0, "appTokenNdx":I
    :goto_1
    iget-object v1, p0, mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 163
    iget-object v1, p0, mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iput-boolean p1, v1, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 165
    :cond_16
    return-void
.end method

.method showForAllUsers()Z
    .registers 4

    .prologue
    .line 168
    iget-object v1, p0, mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v0

    .line 169
    .local v0, "tokensCount":I
    if-eqz v0, :cond_18

    iget-object v1, p0, mAppTokens:Lcom/android/server/wm/AppTokenList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowToken;->showForAllUsers:Z

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " appTokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mdr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, mDeferRemoval:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
