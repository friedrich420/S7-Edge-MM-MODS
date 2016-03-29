.class public final Lcom/android/systemui/qs/QSPanel$TileRecord;
.super Lcom/android/systemui/qs/QSPanel$Record;
.source "QSPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "TileRecord"
.end annotation


# instance fields
.field public col:I

.field public openingDetail:Z

.field public row:I

.field public scanState:Z

.field public tile:Lcom/android/systemui/qs/QSTile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<*>;"
        }
    .end annotation
.end field

.field public tileView:Lcom/android/systemui/qs/QSTileView;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 859
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSPanel$Record;-><init>(Lcom/android/systemui/qs/QSPanel$1;)V

    return-void
.end method
