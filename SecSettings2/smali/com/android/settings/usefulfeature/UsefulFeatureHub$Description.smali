.class Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;
.super Ljava/lang/Object;
.source "UsefulFeatureHub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/usefulfeature/UsefulFeatureHub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Description"
.end annotation


# instance fields
.field animation:I

.field db:Ljava/lang/String;

.field feature:Ljava/lang/String;

.field key:Ljava/lang/String;

.field summary:I

.field title:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object v1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->key:Ljava/lang/String;

    .line 88
    iput v0, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    .line 89
    iput v0, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    .line 90
    iput v0, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:I

    .line 91
    iput-object v1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->db:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->feature:Ljava/lang/String;

    .line 93
    return-void
.end method
