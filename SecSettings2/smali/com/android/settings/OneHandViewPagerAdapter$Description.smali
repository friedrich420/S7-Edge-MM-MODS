.class Lcom/android/settings/OneHandViewPagerAdapter$Description;
.super Ljava/lang/Object;
.source "OneHandViewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/OneHandViewPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Description"
.end annotation


# instance fields
.field animation:I

.field key:Ljava/lang/String;

.field summary:I

.field title:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/OneHandViewPagerAdapter$Description;->key:Ljava/lang/String;

    .line 49
    iput v1, p0, Lcom/android/settings/OneHandViewPagerAdapter$Description;->animation:I

    .line 50
    iput v1, p0, Lcom/android/settings/OneHandViewPagerAdapter$Description;->title:I

    .line 51
    iput v1, p0, Lcom/android/settings/OneHandViewPagerAdapter$Description;->summary:I

    .line 52
    return-void
.end method
