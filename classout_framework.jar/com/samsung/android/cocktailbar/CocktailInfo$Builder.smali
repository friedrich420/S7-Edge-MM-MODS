.class public Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
.super Ljava/lang/Object;
.source "CocktailInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/CocktailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCategory:I

.field private mClassInfo:Landroid/content/ComponentName;

.field private mContentInfo:Landroid/os/Bundle;

.field private mContentView:Landroid/widget/RemoteViews;

.field private mContext:Landroid/content/Context;

.field private mDisplayPolicy:I

.field private mHelpView:Landroid/widget/RemoteViews;

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, mContext:Landroid/content/Context;

    .line 58
    iput v1, p0, mOrientation:I

    .line 60
    iput v1, p0, mDisplayPolicy:I

    .line 62
    iput v1, p0, mCategory:I

    .line 64
    iput-object v0, p0, mContentView:Landroid/widget/RemoteViews;

    .line 66
    iput-object v0, p0, mHelpView:Landroid/widget/RemoteViews;

    .line 68
    iput-object v0, p0, mContentInfo:Landroid/os/Bundle;

    .line 70
    iput-object v0, p0, mClassInfo:Landroid/content/ComponentName;

    .line 73
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 74
    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/cocktailbar/CocktailInfo;
    .registers 3

    .prologue
    .line 112
    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailInfo;

    invoke-direct {v0}, Lcom/samsung/android/cocktailbar/CocktailInfo;-><init>()V

    .line 113
    .local v0, "cocktailInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    iget v1, p0, mOrientation:I

    # setter for: Lcom/samsung/android/cocktailbar/CocktailInfo;->mOrientation:I
    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->access$002(Lcom/samsung/android/cocktailbar/CocktailInfo;I)I

    .line 114
    iget v1, p0, mDisplayPolicy:I

    # setter for: Lcom/samsung/android/cocktailbar/CocktailInfo;->mDisplayPolicy:I
    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->access$102(Lcom/samsung/android/cocktailbar/CocktailInfo;I)I

    .line 115
    iget v1, p0, mCategory:I

    # setter for: Lcom/samsung/android/cocktailbar/CocktailInfo;->mCategory:I
    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->access$202(Lcom/samsung/android/cocktailbar/CocktailInfo;I)I

    .line 116
    iget-object v1, p0, mContentView:Landroid/widget/RemoteViews;

    # setter for: Lcom/samsung/android/cocktailbar/CocktailInfo;->mContentView:Landroid/widget/RemoteViews;
    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->access$302(Lcom/samsung/android/cocktailbar/CocktailInfo;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 117
    iget-object v1, p0, mHelpView:Landroid/widget/RemoteViews;

    # setter for: Lcom/samsung/android/cocktailbar/CocktailInfo;->mHelpView:Landroid/widget/RemoteViews;
    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->access$402(Lcom/samsung/android/cocktailbar/CocktailInfo;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 118
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    # setter for: Lcom/samsung/android/cocktailbar/CocktailInfo;->mUserId:I
    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->access$502(Lcom/samsung/android/cocktailbar/CocktailInfo;I)I

    .line 119
    iget-object v1, p0, mContentInfo:Landroid/os/Bundle;

    # setter for: Lcom/samsung/android/cocktailbar/CocktailInfo;->mContentInfo:Landroid/os/Bundle;
    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->access$602(Lcom/samsung/android/cocktailbar/CocktailInfo;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 120
    iget-object v1, p0, mClassInfo:Landroid/content/ComponentName;

    # setter for: Lcom/samsung/android/cocktailbar/CocktailInfo;->mClassInfo:Landroid/content/ComponentName;
    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->access$702(Lcom/samsung/android/cocktailbar/CocktailInfo;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 121
    return-object v0
.end method

.method public setCategory(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    .registers 2
    .param p1, "category"    # I

    .prologue
    .line 87
    iput p1, p0, mCategory:I

    .line 88
    return-object p0
.end method

.method public setClassloader(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    .registers 2
    .param p1, "classInfo"    # Landroid/content/ComponentName;

    .prologue
    .line 107
    iput-object p1, p0, mClassInfo:Landroid/content/ComponentName;

    .line 108
    return-object p0
.end method

.method public setContentInfo(Landroid/os/Bundle;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    .registers 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 97
    iput-object p1, p0, mContentInfo:Landroid/os/Bundle;

    .line 98
    return-object p0
.end method

.method public setContentView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    .registers 2
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 92
    iput-object p1, p0, mContentView:Landroid/widget/RemoteViews;

    .line 93
    return-object p0
.end method

.method public setDiplayPolicy(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    .registers 2
    .param p1, "displayPolicy"    # I

    .prologue
    .line 82
    iput p1, p0, mDisplayPolicy:I

    .line 83
    return-object p0
.end method

.method public setHelpView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    .registers 2
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 102
    iput-object p1, p0, mHelpView:Landroid/widget/RemoteViews;

    .line 103
    return-object p0
.end method

.method public setOrientation(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    .registers 2
    .param p1, "orientation"    # I

    .prologue
    .line 77
    iput p1, p0, mOrientation:I

    .line 78
    return-object p0
.end method
