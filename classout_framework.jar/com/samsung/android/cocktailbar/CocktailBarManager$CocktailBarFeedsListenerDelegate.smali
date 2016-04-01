.class Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
.super Lcom/samsung/android/cocktailbar/ICocktailBarFeedsCallback$Stub;
.source "CocktailBarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/CocktailBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CocktailBarFeedsListenerDelegate"
.end annotation


# static fields
.field private static final MSG_LISTEN_COCKTAIL_BAR_FEED_UPDATED:I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;

.field final synthetic this$0:Lcom/samsung/android/cocktailbar/CocktailBarManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/cocktailbar/CocktailBarManager;Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;Landroid/os/Handler;)V
    .registers 6
    .param p2, "listener"    # Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1688
    iput-object p1, p0, this$0:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    .line 1689
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarFeedsCallback$Stub;-><init>()V

    .line 1690
    iput-object p2, p0, mListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;

    .line 1691
    if-nez p3, :cond_19

    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->access$000(Lcom/samsung/android/cocktailbar/CocktailBarManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1693
    .local v0, "looper":Landroid/os/Looper;
    :goto_11
    new-instance v1, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate$1;-><init>(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/cocktailbar/CocktailBarManager;)V

    iput-object v1, p0, mHandler:Landroid/os/Handler;

    .line 1706
    return-void

    .line 1691
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_19
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_11
.end method

.method static synthetic access$200(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;)Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;

    .prologue
    .line 1680
    iget-object v0, p0, mListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;

    return-object v0
.end method


# virtual methods
.method public getListener()Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;
    .registers 2

    .prologue
    .line 1709
    iget-object v0, p0, mListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;

    return-object v0
.end method

.method public onFeedsUpdated(ILjava/util/List;)V
    .registers 5
    .param p1, "cocktailId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/cocktailbar/FeedsInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p2, "feedsInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/cocktailbar/FeedsInfo;>;"
    const/4 v1, 0x0

    .line 1715
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-static {v0, v1, p1, v1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1717
    return-void
.end method
