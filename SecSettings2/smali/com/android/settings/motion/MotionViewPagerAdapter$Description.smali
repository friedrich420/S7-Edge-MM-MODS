.class Lcom/android/settings/motion/MotionViewPagerAdapter$Description;
.super Ljava/lang/Object;
.source "MotionViewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/motion/MotionViewPagerAdapter;
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

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->key:Ljava/lang/String;

    .line 37
    iput v1, p0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->animation:I

    .line 38
    iput v1, p0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->title:I

    .line 39
    iput v1, p0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->summary:I

    .line 40
    return-void
.end method
