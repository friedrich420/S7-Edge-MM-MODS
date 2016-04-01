.class Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager$MessageHandler;
.super Landroid/os/Handler;
.source "CocktailPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;)V
    .registers 2

    .prologue
    .line 119
    iput-object p1, p0, this$0:Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;
    .param p2, "x1"    # Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager$1;

    .prologue
    .line 119
    invoke-direct {p0, p1}, <init>(Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 122
    iget-object v2, p0, this$0:Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v0

    .line 123
    .local v0, "cocktailBarManager":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_2e

    .line 136
    :cond_d
    :goto_d
    return-void

    .line 125
    :pswitch_e
    if-eqz v0, :cond_d

    .line 126
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->wakeupCocktailBar(ZII)V

    goto :goto_d

    .line 130
    :pswitch_20
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 131
    .local v1, "enabled":Z
    if-eqz v0, :cond_d

    .line 132
    invoke-virtual {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->updateSysfsGripDisable(Z)V

    goto :goto_d

    .line 123
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_e
        :pswitch_20
    .end packed-switch
.end method
