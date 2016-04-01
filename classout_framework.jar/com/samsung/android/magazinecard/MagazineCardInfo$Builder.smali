.class public Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;
.super Ljava/lang/Object;
.source "MagazineCardInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/magazinecard/MagazineCardInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCardId:I

.field private mCategory:I

.field private mContentView:Landroid/widget/RemoteViews;

.field private mContext:Landroid/content/Context;

.field private mExpandedContentView:Landroid/widget/RemoteViews;

.field private mLaunchIntent:Landroid/app/PendingIntent;

.field private mSecurityLevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object v1, p0, mContext:Landroid/content/Context;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, mCardId:I

    .line 70
    sget v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->SECURITY_LEVEL_NORMAL:I

    iput v0, p0, mSecurityLevel:I

    .line 71
    sget v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_NONE:I

    iput v0, p0, mCategory:I

    .line 72
    iput-object v1, p0, mContentView:Landroid/widget/RemoteViews;

    .line 73
    iput-object v1, p0, mExpandedContentView:Landroid/widget/RemoteViews;

    .line 74
    iput-object v1, p0, mLaunchIntent:Landroid/app/PendingIntent;

    .line 77
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 78
    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/magazinecard/MagazineCardInfo;
    .registers 3

    .prologue
    .line 107
    new-instance v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;

    invoke-direct {v0}, Lcom/samsung/android/magazinecard/MagazineCardInfo;-><init>()V

    .line 109
    .local v0, "card":Lcom/samsung/android/magazinecard/MagazineCardInfo;
    iget v1, p0, mCardId:I

    iput v1, v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCardId:I

    .line 110
    iget v1, p0, mSecurityLevel:I

    iput v1, v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mSecurityLevel:I

    .line 111
    iget v1, p0, mCategory:I

    iput v1, v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCategory:I

    .line 112
    iget-object v1, p0, mContentView:Landroid/widget/RemoteViews;

    iput-object v1, v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mContentView:Landroid/widget/RemoteViews;

    .line 113
    iget-object v1, p0, mExpandedContentView:Landroid/widget/RemoteViews;

    iput-object v1, v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mExpandedContentView:Landroid/widget/RemoteViews;

    .line 114
    iget-object v1, p0, mLaunchIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mLaunchIntent:Landroid/app/PendingIntent;

    .line 116
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mUserId:I

    .line 118
    return-object v0
.end method

.method public setCardId(I)Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;
    .registers 2
    .param p1, "id"    # I

    .prologue
    .line 81
    iput p1, p0, mCardId:I

    .line 82
    return-object p0
.end method

.method public setCategory(I)Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;
    .registers 2
    .param p1, "category"    # I

    .prologue
    .line 90
    iput p1, p0, mCategory:I

    .line 91
    return-object p0
.end method

.method public setContentView(Landroid/widget/RemoteViews;)Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;
    .registers 2
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 94
    iput-object p1, p0, mContentView:Landroid/widget/RemoteViews;

    .line 95
    return-object p0
.end method

.method public setExpandedContentView(Landroid/widget/RemoteViews;)Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;
    .registers 2
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 98
    iput-object p1, p0, mExpandedContentView:Landroid/widget/RemoteViews;

    .line 99
    return-object p0
.end method

.method public setLaunchIntent(Landroid/app/PendingIntent;)Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;
    .registers 2
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 102
    iput-object p1, p0, mLaunchIntent:Landroid/app/PendingIntent;

    .line 103
    return-object p0
.end method

.method public setSecurityLevel(I)Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;
    .registers 2
    .param p1, "level"    # I

    .prologue
    .line 86
    iput p1, p0, mSecurityLevel:I

    .line 87
    return-object p0
.end method
