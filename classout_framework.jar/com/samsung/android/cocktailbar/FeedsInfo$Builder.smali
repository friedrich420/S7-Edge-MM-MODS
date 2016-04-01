.class public final Lcom/samsung/android/cocktailbar/FeedsInfo$Builder;
.super Ljava/lang/Object;
.source "FeedsInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/FeedsInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mExtras:Landroid/os/Bundle;

.field private mFeedsText:Ljava/lang/CharSequence;

.field private mIcon:I

.field private mLargeIcon:Landroid/graphics/Bitmap;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .registers 3
    .param p1, "feedsText"    # Ljava/lang/CharSequence;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, mFeedsText:Ljava/lang/CharSequence;

    .line 64
    iput-object p2, p0, mPackageName:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/cocktailbar/FeedsInfo;
    .registers 5

    .prologue
    .line 83
    new-instance v0, Lcom/samsung/android/cocktailbar/FeedsInfo;

    iget-object v1, p0, mFeedsText:Ljava/lang/CharSequence;

    iget-object v2, p0, mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/cocktailbar/FeedsInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/samsung/android/cocktailbar/FeedsInfo$1;)V

    .line 84
    .local v0, "fi":Lcom/samsung/android/cocktailbar/FeedsInfo;
    iget v1, p0, mIcon:I

    iput v1, v0, Lcom/samsung/android/cocktailbar/FeedsInfo;->icon:I

    .line 85
    iget-object v1, p0, mLargeIcon:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/samsung/android/cocktailbar/FeedsInfo;->largeIcon:Landroid/graphics/Bitmap;

    .line 86
    iget-object v1, p0, mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_20

    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, mExtras:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_1d
    iput-object v1, v0, Lcom/samsung/android/cocktailbar/FeedsInfo;->extras:Landroid/os/Bundle;

    .line 87
    return-object v0

    .line 86
    :cond_20
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_1d
.end method

.method public setExtras(Landroid/os/Bundle;)Lcom/samsung/android/cocktailbar/FeedsInfo$Builder;
    .registers 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 78
    iput-object p1, p0, mExtras:Landroid/os/Bundle;

    .line 79
    return-object p0
.end method

.method public setIcon(I)Lcom/samsung/android/cocktailbar/FeedsInfo$Builder;
    .registers 2
    .param p1, "icon"    # I

    .prologue
    .line 68
    iput p1, p0, mIcon:I

    .line 69
    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Lcom/samsung/android/cocktailbar/FeedsInfo$Builder;
    .registers 2
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 73
    iput-object p1, p0, mLargeIcon:Landroid/graphics/Bitmap;

    .line 74
    return-object p0
.end method
