.class final Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;
.super Landroid/os/Handler;
.source "AbsCocktailBarStatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CocktailBarStateHandler"
.end annotation


# static fields
.field private static final MSG_COCKTAIL_CHANGE_VISIBILITY:I = 0x34

.field private static final MSG_COCKTAIL_HIDE_TIMER_EXPIRED:I = 0x64

.field private static final MSG_COCKTAIL_NOTIFY_STATE_TO_BINDER:I = 0x33

.field private static final MSG_COCKTAIL_REFRESH_STATE:I = 0x32

.field private static final MSG_COCKTAIL_UPDATE_ACTIVATE:I = 0x31

.field private static final MSG_COCKTAIL_UPDATE_COCKTAIL_BAR_WINDOW_TYPE:I = 0x6

.field private static final MSG_COCKTAIL_UPDATE_POSITION:I = 0x4

.field private static final MSG_COCKTAIL_UPDATE_STATE:I = 0x3

.field private static final MSG_COCKTAIL_UPDATE_STATE_FROM_SYSTEM:I = 0x2

.field private static final MSG_COCKTAIL_UPDATE_STATE_FROM_SYSTEM_DELAYED:I = 0x5

.field private static final MSG_COCKTAIL_UPDATE_VISIBILITY:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;


# direct methods
.method constructor <init>(Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 285
    iput-object p1, p0, this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    .line 286
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 287
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 290
    # getter for: Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleMessage: entry what = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_b6

    .line 335
    :goto_24
    return-void

    .line 293
    :sswitch_25
    iget-object v3, p0, this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->handleUpdateVisibility(I)V

    goto :goto_24

    .line 296
    :sswitch_2c
    iget-object v3, p0, this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->handleUpdateVisibility(I)V

    goto :goto_24

    .line 299
    :sswitch_34
    iget-object v3, p0, this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v5, v4}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->handleUpdateStateFromSystem(IZ)V

    goto :goto_24

    .line 302
    :sswitch_3c
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v3, :cond_4c

    move v2, v3

    .line 303
    .local v2, "shift":Z
    :goto_41
    iget v5, p1, Landroid/os/Message;->arg2:I

    if-ne v5, v3, :cond_4e

    move v1, v3

    .line 304
    .local v1, "dimBackground":Z
    :goto_46
    iget-object v3, p0, this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->handleUpdateState(ZZ)V

    goto :goto_24

    .end local v1    # "dimBackground":Z
    .end local v2    # "shift":Z
    :cond_4c
    move v2, v4

    .line 302
    goto :goto_41

    .restart local v2    # "shift":Z
    :cond_4e
    move v1, v4

    .line 303
    goto :goto_46

    .line 307
    .end local v2    # "shift":Z
    :sswitch_50
    iget-object v3, p0, this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->handleUpdatePosition(I)V

    .line 308
    iget-object v3, p0, this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    iget-object v3, v3, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iput v4, v3, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    goto :goto_24

    .line 311
    :sswitch_60
    iget-object v4, p0, this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5, v3}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->handleUpdateStateFromSystem(IZ)V

    goto :goto_24

    .line 314
    :sswitch_68
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v3, :cond_79

    move v0, v3

    .line 315
    .local v0, "activate":Z
    :goto_6d
    iget-object v3, p0, this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    invoke-virtual {v3, v0}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->handleUpdateActivate(Z)V

    .line 316
    iget-object v3, p0, this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    iget-object v3, v3, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iput-boolean v0, v3, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    goto :goto_24

    .end local v0    # "activate":Z
    :cond_79
    move v0, v4

    .line 314
    goto :goto_6d

    .line 319
    :sswitch_7b
    iget-object v4, p0, this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_93

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    :goto_87
    invoke-virtual {v4, v5, v3}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->handleUpdateCocktailBarWindowType(ILjava/lang/String;)V

    .line 320
    iget-object v3, p0, this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    iget-object v3, v3, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iput v4, v3, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    goto :goto_24

    .line 319
    :cond_93
    const/4 v3, 0x0

    goto :goto_87

    .line 323
    :sswitch_95
    iget-object v3, p0, this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    invoke-virtual {v3}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->handleRefreshState()V

    .line 324
    iget-object v3, p0, this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->handleNotifyState(I)V

    goto :goto_24

    .line 327
    :sswitch_a2
    iget-object v4, p0, this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/IBinder;

    invoke-virtual {v4, v3}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->handleNotifyCurrentStateToBinder(Landroid/os/IBinder;)V

    goto/16 :goto_24

    .line 330
    :sswitch_ad
    iget-object v3, p0, this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->handleChangeVisibility(I)V

    goto/16 :goto_24

    .line 291
    :sswitch_data_b6
    .sparse-switch
        0x1 -> :sswitch_2c
        0x2 -> :sswitch_34
        0x3 -> :sswitch_3c
        0x4 -> :sswitch_50
        0x5 -> :sswitch_60
        0x6 -> :sswitch_7b
        0x31 -> :sswitch_68
        0x32 -> :sswitch_95
        0x33 -> :sswitch_a2
        0x34 -> :sswitch_ad
        0x64 -> :sswitch_25
    .end sparse-switch
.end method
