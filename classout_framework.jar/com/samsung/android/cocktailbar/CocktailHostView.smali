.class public Lcom/samsung/android/cocktailbar/CocktailHostView;
.super Landroid/widget/FrameLayout;
.source "CocktailHostView.java"


# static fields
.field static final TAG:Ljava/lang/String; = "CocktailHostView"


# instance fields
.field private mCocktail:Lcom/samsung/android/cocktailbar/Cocktail;

.field private mCocktailId:I

.field private mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/cocktailbar/Cocktail;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, mUser:Landroid/os/UserHandle;

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, setIsRootNamespace(Z)V

    .line 56
    invoke-virtual {p0, p2}, setCocktail(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 57
    return-void
.end method


# virtual methods
.method public getCocktail()Lcom/samsung/android/cocktailbar/Cocktail;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, mCocktail:Lcom/samsung/android/cocktailbar/Cocktail;

    return-object v0
.end method

.method public getCocktailId()I
    .registers 2

    .prologue
    .line 70
    iget v0, p0, mCocktailId:I

    return v0
.end method

.method public setCocktail(Lcom/samsung/android/cocktailbar/Cocktail;)V
    .registers 3
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 84
    const/4 v0, 0x0

    iput v0, p0, mCocktailId:I

    .line 85
    iput-object p1, p0, mCocktail:Lcom/samsung/android/cocktailbar/Cocktail;

    .line 86
    if-eqz p1, :cond_d

    .line 87
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v0

    iput v0, p0, mCocktailId:I

    .line 89
    :cond_d
    return-void
.end method

.method public setUserId(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 63
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v0, p0, mUser:Landroid/os/UserHandle;

    .line 64
    return-void
.end method

.method public viewDataChanged(I)V
    .registers 7
    .param p1, "viewId"    # I

    .prologue
    .line 99
    invoke-virtual {p0, p1}, findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 100
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_1b

    instance-of v4, v3, Landroid/widget/AdapterView;

    if-eqz v4, :cond_1b

    move-object v1, v3

    .line 101
    check-cast v1, Landroid/widget/AdapterView;

    .line 102
    .local v1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 103
    .local v0, "adapter":Landroid/widget/Adapter;
    instance-of v4, v0, Landroid/widget/BaseAdapter;

    if-eqz v4, :cond_1c

    move-object v2, v0

    .line 104
    check-cast v2, Landroid/widget/BaseAdapter;

    .line 105
    .local v2, "baseAdapter":Landroid/widget/BaseAdapter;
    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 110
    .end local v0    # "adapter":Landroid/widget/Adapter;
    .end local v1    # "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    .end local v2    # "baseAdapter":Landroid/widget/BaseAdapter;
    :cond_1b
    :goto_1b
    return-void

    .line 106
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    .restart local v1    # "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :cond_1c
    if-nez v0, :cond_1b

    instance-of v4, v1, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    if-eqz v4, :cond_1b

    .line 107
    check-cast v1, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    .end local v1    # "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-interface {v1}, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;->deferNotifyDataSetChanged()V

    goto :goto_1b
.end method
