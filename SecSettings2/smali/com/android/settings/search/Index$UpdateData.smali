.class Lcom/android/settings/search/Index$UpdateData;
.super Ljava/lang/Object;
.source "Index.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/Index;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateData"
.end annotation


# instance fields
.field public dataToDelete:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableData;",
            ">;"
        }
    .end annotation
.end field

.field public dataToUpdate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableData;",
            ">;"
        }
    .end annotation
.end field

.field public forceUpdate:Z

.field public isComplete:Z

.field public nonIndexableKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput-boolean v0, p0, Lcom/android/settings/search/Index$UpdateData;->forceUpdate:Z

    .line 227
    iput-boolean v0, p0, Lcom/android/settings/search/Index$UpdateData;->isComplete:Z

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/Index$UpdateData;->dataToUpdate:Ljava/util/List;

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/Index$UpdateData;->dataToDelete:Ljava/util/List;

    .line 232
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/Index$UpdateData;->nonIndexableKeys:Ljava/util/Map;

    .line 233
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/search/Index$UpdateData;)V
    .locals 2
    .param p1, "other"    # Lcom/android/settings/search/Index$UpdateData;

    .prologue
    const/4 v0, 0x0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput-boolean v0, p0, Lcom/android/settings/search/Index$UpdateData;->forceUpdate:Z

    .line 227
    iput-boolean v0, p0, Lcom/android/settings/search/Index$UpdateData;->isComplete:Z

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/settings/search/Index$UpdateData;->dataToUpdate:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/settings/search/Index$UpdateData;->dataToUpdate:Ljava/util/List;

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/settings/search/Index$UpdateData;->dataToDelete:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/settings/search/Index$UpdateData;->dataToDelete:Ljava/util/List;

    .line 238
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/settings/search/Index$UpdateData;->nonIndexableKeys:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/android/settings/search/Index$UpdateData;->nonIndexableKeys:Ljava/util/Map;

    .line 239
    iget-boolean v0, p1, Lcom/android/settings/search/Index$UpdateData;->forceUpdate:Z

    iput-boolean v0, p0, Lcom/android/settings/search/Index$UpdateData;->forceUpdate:Z

    .line 240
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/settings/search/Index$UpdateData;->dataToUpdate:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 248
    iget-object v0, p0, Lcom/android/settings/search/Index$UpdateData;->dataToDelete:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 249
    iget-object v0, p0, Lcom/android/settings/search/Index$UpdateData;->nonIndexableKeys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/search/Index$UpdateData;->forceUpdate:Z

    .line 251
    # getter for: Lcom/android/settings/search/Index;->nonIndexableFragments:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/settings/search/Index;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 252
    return-void
.end method

.method public copy()Lcom/android/settings/search/Index$UpdateData;
    .locals 1

    .prologue
    .line 243
    new-instance v0, Lcom/android/settings/search/Index$UpdateData;

    invoke-direct {v0, p0}, Lcom/android/settings/search/Index$UpdateData;-><init>(Lcom/android/settings/search/Index$UpdateData;)V

    return-object v0
.end method
