.class Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;
.super Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;
.source "CocktailHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/CocktailHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Callbacks"
.end annotation


# instance fields
.field private final mWeakHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, mWeakHandler:Ljava/lang/ref/WeakReference;

    .line 68
    return-void
.end method


# virtual methods
.method public changeVisibleEdgeService(ZI)V
    .registers 7
    .param p1, "visible"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 192
    iget-object v2, p0, mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 193
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_b

    .line 198
    :goto_a
    return-void

    .line 196
    :cond_b
    const/16 v3, 0x66

    if-eqz p1, :cond_18

    const/4 v2, 0x1

    :goto_10
    invoke-virtual {v0, v3, v2, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 197
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_a

    .line 196
    .end local v1    # "msg":Landroid/os/Message;
    :cond_18
    const/4 v2, 0x0

    goto :goto_10
.end method

.method public closeContextualCocktail(III)V
    .registers 8
    .param p1, "cocktailId"    # I
    .param p2, "category"    # I
    .param p3, "userId"    # I

    .prologue
    .line 112
    iget-object v2, p0, mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 113
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_b

    .line 118
    :goto_a
    return-void

    .line 116
    :cond_b
    const/4 v2, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, p1, p2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 117
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_a
.end method

.method public notifyKeyguardState(ZI)V
    .registers 7
    .param p1, "enable"    # Z
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x1

    .line 142
    iget-object v3, p0, mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 143
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_c

    .line 148
    :goto_b
    return-void

    .line 146
    :cond_c
    const/16 v3, 0x64

    if-ne p1, v2, :cond_18

    :goto_10
    invoke-virtual {v0, v3, v2, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 147
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_b

    .line 146
    .end local v1    # "msg":Landroid/os/Message;
    :cond_18
    const/4 v2, 0x0

    goto :goto_10
.end method

.method public notifyWakeUpState(ZII)V
    .registers 9
    .param p1, "bEnable"    # Z
    .param p2, "keyCode"    # I
    .param p3, "reason"    # I

    .prologue
    .line 152
    iget-object v2, p0, mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 153
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_b

    .line 158
    :goto_a
    return-void

    .line 156
    :cond_b
    const/16 v3, 0x65

    if-eqz p1, :cond_1c

    const/4 v2, 0x1

    :goto_10
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v2, p2, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 157
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_a

    .line 156
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1c
    const/4 v2, 0x0

    goto :goto_10
.end method

.method public partiallyUpdateCocktail(ILandroid/widget/RemoteViews;I)V
    .registers 7
    .param p1, "cocktailId"    # I
    .param p2, "contentView"    # Landroid/widget/RemoteViews;
    .param p3, "userId"    # I

    .prologue
    .line 82
    iget-object v2, p0, mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 83
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_b

    .line 88
    :goto_a
    return-void

    .line 86
    :cond_b
    const/4 v2, 0x2

    invoke-virtual {v0, v2, p1, p3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 87
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_a
.end method

.method public removeCocktail(II)V
    .registers 6
    .param p1, "cocktailId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 92
    iget-object v2, p0, mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 93
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_b

    .line 98
    :goto_a
    return-void

    .line 96
    :cond_b
    const/4 v2, 0x3

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 97
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_a
.end method

.method public sendExtraData(ILandroid/os/Bundle;)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "extraData"    # Landroid/os/Bundle;

    .prologue
    .line 172
    iget-object v2, p0, mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 173
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_b

    .line 178
    :goto_a
    return-void

    .line 176
    :cond_b
    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 177
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_a
.end method

.method public setDisableTickerView(II)V
    .registers 6
    .param p1, "state"    # I
    .param p2, "userId"    # I

    .prologue
    .line 182
    iget-object v2, p0, mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 183
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_b

    .line 188
    :goto_a
    return-void

    .line 186
    :cond_b
    const/16 v2, 0x9

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 187
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_a
.end method

.method public showCocktail(II)V
    .registers 6
    .param p1, "cocktailId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 102
    iget-object v2, p0, mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 103
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_b

    .line 108
    :goto_a
    return-void

    .line 106
    :cond_b
    const/4 v2, 0x4

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 107
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_a
.end method

.method public switchDefaultCocktail(I)V
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 162
    iget-object v2, p0, mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 163
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_b

    .line 168
    :goto_a
    return-void

    .line 166
    :cond_b
    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 167
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_a
.end method

.method public updateCocktail(ILcom/samsung/android/cocktailbar/Cocktail;I)V
    .registers 7
    .param p1, "cocktailId"    # I
    .param p2, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p3, "userId"    # I

    .prologue
    .line 72
    iget-object v2, p0, mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 73
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_b

    .line 78
    :goto_a
    return-void

    .line 76
    :cond_b
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, p3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 77
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_a
.end method

.method public updateToolLauncher(I)V
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 132
    iget-object v2, p0, mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 133
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_b

    .line 138
    :goto_a
    return-void

    .line 136
    :cond_b
    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 137
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_a
.end method

.method public viewDataChanged(III)V
    .registers 8
    .param p1, "cocktailId"    # I
    .param p2, "viewId"    # I
    .param p3, "userId"    # I

    .prologue
    .line 122
    iget-object v2, p0, mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 123
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_b

    .line 128
    :goto_a
    return-void

    .line 126
    :cond_b
    const/4 v2, 0x6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, p1, p2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 127
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_a
.end method
