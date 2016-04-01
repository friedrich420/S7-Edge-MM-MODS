.class Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteViewsIndexMetaData"
.end annotation


# instance fields
.field itemId:J

.field typeId:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;J)V
    .registers 4
    .param p1, "v"    # Landroid/widget/RemoteViews;
    .param p2, "itemId"    # J

    .prologue
    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 577
    invoke-virtual {p0, p1, p2, p3}, set(Landroid/widget/RemoteViews;J)V

    .line 578
    return-void
.end method


# virtual methods
.method public set(Landroid/widget/RemoteViews;J)V
    .registers 6
    .param p1, "v"    # Landroid/widget/RemoteViews;
    .param p2, "id"    # J

    .prologue
    .line 581
    iput-wide p2, p0, itemId:J

    .line 582
    if-eqz p1, :cond_b

    .line 583
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    iput v0, p0, typeId:I

    .line 587
    :goto_a
    return-void

    .line 585
    :cond_b
    const/4 v0, 0x0

    iput v0, p0, typeId:I

    goto :goto_a
.end method
